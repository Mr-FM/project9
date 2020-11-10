<?php
require_once 'database.php';
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$db_name = 'project9';
$db_found = mysqli_select_db($conn, $db_name);

$query = "SELECT * FROM movies JOIN categoriesandmovies ON moviesid = movies.id WHERE $_POST[filter] = categoryid";
$result = mysqli_query($conn, $query);

while ($movies = mysqli_fetch_assoc($result)) 
 {
  echo '<div class="movieCard">'; 
  echo '<figure><img src="'.$movies['poster'].'">';
  echo '<figcaption>'.$movies['title'].' ('.$movies['releasedate'].')</figcaption></figure>';
  //echo '<figcaption>' . $movies['synopsis'] . '(' . $movies['path'] . ')</figcaption></figure>';
  echo '</div>';
 } 
?>