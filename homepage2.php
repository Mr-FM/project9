<?php
require_once 'database.php';
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$db_name = 'project9';
$db_found = mysqli_select_db($conn, $db_name);
$search = $_POST['search'];

if( preg_match( '/[a-zA-Z]/', $search )|| preg_match( '/\d/', $search ))
  $query = "SELECT * FROM movies WHERE title LIKE '%$search%'";  
else
  $query = "SELECT * FROM movies ORDER BY dateajout DESC LIMIT 3";

$result = mysqli_query($conn, $query);
while ($movies = mysqli_fetch_assoc($result)) 
 {
  echo '<div class="movieCard">'; 
  echo '<figure><img src="'.$movies['poster'].'">';
  echo '<figcaption>'.$movies['title'].' ('.$movies['releasedate'].')</figcaption></figure>';
  echo '</div>';
   } 
?>