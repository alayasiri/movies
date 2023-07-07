<h1>Data Analysis on Movies</h1>

<h2>Description:</h2>

Running analysis on the MovieLens dataset taht contains 20 million ratings spanning across 25,000 movies. The data was collected from users between January 9, 1995 to March 31, 2015. The data was pulled towards the end of 2015. The data included in the dataset includes:
- tag.csv: userId, movieId, tag, timestamp (tags that given to movies by users)
- rating.csv: userId, movieId, rating, timestamp (ratings given to movies by users)
- movie.csv: movieId, title, genres (movie information)
- link.csv: movieid, imdbId, tmdbId (identifiers that can be used to link to other sources)
- genome_source.csv: movieId, tagId, relevance (contains movie-tag relevance data)
- geneome_tag.csv: tagId, tag (contains tag descriptions)

<br /><a>
[Link to Dataset](https://www.kaggle.com/datasets/grouplens/movielens-20m-dataset)</a>


<h2>Languages and Utilities Used:</h2>

- <b>MySQL</b> 
- <b>Excel</b> 
- <b>Canva (presentation designing platform)</b>

<h2>The Scope:</h2>

<a> In this project, we are analyzing the movies dataset with the intent of finding valuable insights about user preferences and patterns when viewing movies. By doing so, we can make data-driven decisions. For example, if we were looking to offer users recommendations for movies to watch, by analyzing their past movie ratings and taggings, we can offer recommendations that are better curated for each user. If we wanted to offer recommendations for each of the movie genres, we could rank the best-rated movies by user-given tags.</a>
<br />
<a> It is important to note that there were several limitaitons to this dataset that the team noticed. Some of these limitations include:
- No Financial Data: This dataset did not capture any financial data about the movies that were featured on the streaming platforms. For example, if the movie was shown in-theatres, there was no data about box-office sales, revenue generated, etc.
- No Temporal Data: This dataset did not capture any date values. Therefore, the team was not able to see if there were any trends, spikes, or patterns in users' movie preferences in certain years or time periods.
- Not Normalized: The "genres" column in the movie table (i.e. movie.csv) captured data about the genre categorization of the different movies. However, in each cell for this column in the csv, there were multiple genres listed. This violates the first normal form.

<br />
<h2>The Process:</h2>
<a>After identifying the scope of the project and the business requirements, the team began to map out the schema and enetity relationship diagram. Here, we defined the relationships, primary and foreign keys, cardinality, and other relevant metadata. Using MySQL's reverse engineering capabilities, we were able to create the data definition language (DDL) from the logical and conceptual schema. From there, using the Data Import Wizard in MySQL, we were able to load the csv files into the database. 
We were then able to query, create joins and views, and peform our analysis on the data. 
</a>

<h2>Final Presentation:</h2>
<a>
  After performing our analysis, we presented the relevant insights and recommendations into a presentation.
</a>
<br />
<a> 
  
  [You can downlad the final presentation here](https://github.com/alayasiri/movies-buan/blob/4e1362a169d5acc9f1ccdd15b999c89ba7e8dfef/movie_presentation.pdf).
</a>

<!--
<h2>Cleaning and Normalizing:</h2>

<a> First, I had to clean and normalize the data by removing reduant data, building reference tables, and fixing encoded data. I used MySQL and Python to normalize the data; I used Python, Tableau Prep, and Excel to clean the data. I had to normalize the artist, track, and genre data by building reference tables. When I load the CSV files into MySQL, this will improve execution and simplify the querying process. Then, I changed the tracks' duration from being recorded in milliseconds to minutes. This will make any analysis done on track duration to be more meaningful and easier to understand. 

I then loaded the CSV files into MySQL and was able access the database through Tableau to conduct all the analysis. I used Tableau to create visuals that offer insights into the data. Tableau was used to offer insights into relationships between track features, understanding the track features of popular tracks, and analyzing patterns found in the track features of popular music. All of these visualizations were used in creating the story board.</a>

<h2>Data Visualization:</h2>

<p align="center">
Correlation between Duration and Popularity: <br/>
<img src="https://i.imgur.com/pUYeQGl.png" height="80%" width="80%" alt="Tableau"/>
<br />
<br />
Number of Artists and Avg.Popularity by Genre:  <br/>
<img src="https://i.imgur.com/qmZnBlk.png" height="80%" width="80%" alt="Tableau"/>
<br />
<br />
Track Features of the '23 Coachella Artists:  <br/>
<img src="https://i.imgur.com/9YQSqqJ.png" height="80%" width="80%" alt="Tableau"/>
<br />
<br />
Chart-Topping Artist's Most and Least Popular Songs' Features:  <br/>
<img src="https://i.imgur.com/a2guNIK.png" height="80%" width="80%" alt="Tableau"/>
<br />
<br />

<h2>Tableau Storyboard:</h2>

<a> You can [downlad the Tableau storyboard here](https://github.com/alayasiri/bi-music/blob/main/spotify%20tableau.twbx). </a>



<p align="center">
Conceptual Diagram: <br/>
<img src="https://i.imgur.com/y6PFfWt.jpeg" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br />
Schema:  <br/>
<img src="https://i.imgur.com/8p3eMOu.png" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br />

<h2>Create and Insert:</h2>

<b>Building a Database for a Clinic</b>
- [Create Tables](https://github.com/alayasiri/ClinicDatabase/blob/c352ca6e6d38b99bc8dd34ec7708f6dd89f94e9d/Create%20Table)
- [Insert Statements](https://github.com/alayasiri/ClinicDatabase/blob/main/Inserts)

<p align="center">
Example using Patient's Table: <br/>
<img src="https://i.imgur.com/cJ5SKKs.png" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br />
  
<h2>Writing Queries and Views:</h2>

<b>Code to All Queries and Views</b>
- [Queries](https://github.com/alayasiri/ClinicDatabase/blob/main/Create%20Table)
- [Views](https://github.com/alayasiri/ClinicDatabase/blob/main/Views)
  
<p align="center">
Example Query:  <br/>
<img src="https://i.imgur.com/6FKnmUf.png" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br />
Example View:  <br/>
<img src="https://i.imgur.com/RqlX2TO.png" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br /> 

<br/>
<img src="https://i.imgur.com/nSyMgA3.png" height="80%" width="80%" alt="Clinic DB"/>
<br />
<br /> 
  
<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
