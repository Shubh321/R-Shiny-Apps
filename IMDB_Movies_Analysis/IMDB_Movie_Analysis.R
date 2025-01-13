library(shiny)
library(DBI)
library(RSQLite)
library(ggplot2)

# Define UI
ui <- fluidPage(
  titlePanel("IMDB Movies Analysis"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("min_votes", "Minimum Votes:",
                  min = 0, max = 10000, value = 1000, step = 100),
      sliderInput("top_n", "Number of Top Genres:",
                  min = 1, max = 20, value = 10, step = 1)
    ),
    mainPanel(
      tableOutput("movies_table"),
      plotOutput("movies_plot")
    )
  )
)

# Define Server
server <- function(input, output) {
  # Path to your dataset
  dataset_path <- "C:/Users/Shubh/Downloads/archive (3)/imdb_top_1000.csv"
  
  # Connect to SQLite database
  conn <- dbConnect(SQLite(), "imdb_movies.db")
  
  # Check if the database already has the "movies" table
  if (!"movies" %in% dbListTables(conn)) {
    # Load the dataset
    movies_data <- read.csv(dataset_path)
    
    # Save the dataset into the SQLite database
    dbWriteTable(conn, "movies", movies_data, overwrite = TRUE)
  }
  
  # Reactive SQL query based on user input
  filtered_data <- reactive({
    query <- paste0(
      "SELECT Genre, AVG(IMDB_Rating) AS Avg_Rating, COUNT(*) AS Movie_Count
       FROM movies
       WHERE No_of_Votes >= ", input$min_votes, "
       GROUP BY Genre
       ORDER BY Avg_Rating DESC
       LIMIT ", input$top_n, ";"
    )
    dbGetQuery(conn, query)
  })
  
  # Render the table
  output$movies_table <- renderTable({
    filtered_data()
  })
  
  # Render the plot
  output$movies_plot <- renderPlot({
    data <- filtered_data()
    ggplot(data, aes(x = reorder(Genre, -Avg_Rating), y = Avg_Rating, fill = Movie_Count)) +
      geom_col() +
      labs(title = "Top Genres by Average IMDB Rating", x = "Genre", y = "Average Rating") +
      theme_minimal() +
      theme(axis.text.x = element_text(angle = 45, hjust = 1))
  })
  
  # Disconnect when the app closes
  onStop(function() {
    dbDisconnect(conn)
  })
}

# Run the app
shinyApp(ui = ui, server = server)
