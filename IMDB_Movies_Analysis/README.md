# IMDB Movies Analysis Shiny App
This repository contains a Shiny application that analyzes the IMDB Top 1000 Movies dataset. The app provides an interactive interface to explore movie genres, average IMDB ratings, and the number of votes for movies.

## Features
Interactive Filters: Minimum Votes Slider: Filter movies based on a minimum number of votes.

Top Genres Slider: Display the top genres based on average IMDB ratings.

Dynamic Outputs: A table summarizing the top genres, their average ratings, and the total number of movies and a bar chart visualizing the top genres sorted by average ratings.

## Dataset:
The app uses the IMDB Top 1000 Movies dataset (imdb_top_1000.csv) taken from Kaggle.
It contains information about movie genres, ratings, votes, and other metadata.

## SQL Queries:
The app uses SQL to filter and summarize the data based on user inputs.

## Filters:
Set the minimum number of votes for movies to be included.
Choose how many top genres to display in the analysis.
## Outputs:
A table that displays:
Genre: Movie genre.
Avg_Rating: Average IMDB rating for the genre.
Movie_Count: Number of movies in the genre that meet the filter criteria.
A bar chart:
X-axis: Movie genres.
Y-axis: Average IMDB ratings.
Bar colors represent the number of movies in each genre.

The dataset contains the following key columns:

Genre: The genre of the movie.
IMDB_Rating: The IMDB rating of the movie.
No_of_Votes: The total number of votes for the movie.
Additional metadata such as Series_Title, Released_Year, Meta_score, and Gross.

## Usage Instructions
### Filters
Set Minimum Votes:
Use the slider to set a minimum threshold for the number of votes a movie must have.
For example, setting the slider to 1000 will only include movies with at least 1000 votes.
Select Number of Top Genres:
Adjust the slider to display the desired number of top genres by average IMDB rating.




