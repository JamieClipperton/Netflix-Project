# Netflix-Project
ETL Netflix Project Report

![image](https://user-images.githubusercontent.com/101610081/182189394-40b731aa-2d86-4d52-9bd7-9c9ef39a88cd.png)


This ETL project combines two Netflix data sources from Kaggle into a single PostgreSQL table.

COLLABORATORS
-----------------------------------------------------------------------------------------
This project completed by Jamie Clipperton, Adriana Alcantara, David James & Michele Allen


EXTRACT
-----------------------------------------------------------------------------------------------------------------------------------------------------------

The type of sources being used are CSV files provided by Kaggle.com. The CSV files include data pertaining a list of movies and series streaming on Netflix as well as main actor and character names. These files are saved in the CSV file folder of the repository and listed below.

![image](https://user-images.githubusercontent.com/101610081/182188470-75fdeec7-b020-43b2-b5df-aae479212ef9.png)


TRANSFORM
-----------------------------------------------------------------------------------------------------------------------------------------------------------
The titles.csv file contains movies and series streaming on Netflix, description of the movies and series as well as imdb ratings. The credits.csv file contains the main actor/character of each movie/series streaming on Netflix. We opted to merge these data sources into a single table and clean the data. The transform includes:
•	Used Pandas functions in Jupyter Notebook to load both CSV files.
•	Reviewed the files and transformed into two data frames.
•	Merged both data frames together based off their ID column and created a new data frame.
•	Dropped unnecessary data columns, removed duplicates from the merged data frame.
•	Filtered out all movie content and focused on series only.


LOAD
-----------------------------------------------------------------------------------------------------------------------------------------------------------
Transferring our final output to PostgreSQL was our last step. In PostgreSQL, we created a database and used our final Panda’s new merged data frame (netflix_df). In Jupyter notebook, the sqlalchemy module was used to connect to the database and append the data frame to PostgreSQL. We stored our clean data set in PostgreSQL and created several queries to display different data based off our new dataset.

![image](https://user-images.githubusercontent.com/101610081/182188683-92c3a403-2e13-4b09-a60c-920ee9419d1b.png)

Top 10 Netflix Series Based off Imdb Votes
 
 ![image](https://user-images.githubusercontent.com/101610081/182188710-d5e7078f-e1f3-44ed-9b01-5ecba09ec89a.png)
![image](https://user-images.githubusercontent.com/101610081/182188748-a2ab2362-8f09-4fb6-8bf4-c555be897305.png)


Top Series with Name of Main Actor/Character
 
 ![image](https://user-images.githubusercontent.com/101610081/182188802-0f36beb0-dab0-434f-8010-3856e4e8f4de.png)
![image](https://user-images.githubusercontent.com/101610081/182188823-2931f216-5410-4d00-b1da-50518728ddda.png)

Series with Most Seasons
  
 ![image](https://user-images.githubusercontent.com/101610081/182188914-9b6f4ddb-cbc3-4e46-8517-8ed1a6282c45.png)
 ![image](https://user-images.githubusercontent.com/101610081/182188953-56635c2d-dd44-4b1c-a8fc-4c38710dbac2.png)
 
 

