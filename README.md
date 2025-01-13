Baseball Statistics Comparison for the 2018 Season
This Shiny application provides an interactive comparison of baseball statistics for the 2018 season. Users can select and compare statistics of batters and pitchers through dynamic visualizations and tables.

Features
Pitcher Comparison:

Displays a bar chart showing the distribution of pitch types (e.g., 4-Seam Fastball, Sinker, Slider) for two selected pitchers.
Each pitch type is represented as a percentage of the total pitches thrown by each pitcher.
Batter Comparison:

A dynamic table displays the statistics of two selected batters, including:
Average Launch Speed
Average Launch Angle
Technologies Used
R and Shiny: For creating the interactive web application.
ggplot2: For creating the visualizations.
dplyr: For efficient data manipulation.
readr: For reading CSV files into the app.
How It Works
Input Selection:

Select two pitchers from a dropdown menu to compare their pitch distributions.
Select two batters from a dropdown menu to compare their key performance statistics.
Outputs:

A table showing detailed batter statistics.
A bar chart showing the pitch type percentages for the selected pitchers.
Interactivity:

All inputs and outputs update dynamically based on user selections.
Example Output

Files in the Repository
app.R: The main Shiny app code.
df_2018_filt.csv: Dataset containing pitch information for the 2018 season.
top_batters.csv: Dataset containing batting statistics for the 2018 season.
README.md: This documentation file.
image.png: Example output of the Shiny app.
Installation
Clone this repository:

bash
Copy code
git clone https://github.com/your-username/baseball-stats-comparison.git
cd baseball-stats-comparison
Open app.R in RStudio or your preferred R environment.

Install the required R packages:

r
Copy code
install.packages(c("shiny", "ggplot2", "dplyr", "readr"))
Run the Shiny app:

r
Copy code
shiny::runApp("app.R")
Data Sources
df_2018_filt.csv: Contains data about pitches thrown by pitchers in the 2018 baseball season.
top_batters.csv: Contains data about batting performance in the 2018 baseball season.
Ensure the CSV files are in the same directory as the app.R file before running the app.

Future Improvements
Add more statistical comparisons for pitchers and batters (e.g., strikeout rates, home runs).
Enhance UI/UX with advanced filtering options.
Incorporate data from other seasons for longitudinal comparisons.
