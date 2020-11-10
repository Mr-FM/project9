<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Home</title>
</head>
<body>
    <?php
      include'menu.html';
    ?>
    <h1>Titre</h1>
    <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Saefdgfgpe, perferendis modi dolor deleniti aliquam ab molestias odio! Animi ipsam soluta beatae iure, accusantium perspiciatis adipisci recusandae qui. Esse, aperiam voluptas?</p>
    <!-- <form action="" method="POST">
    <input type="search" name="search" placeholder="Type a movie name" id="search">
    </form> -->
    <?php

    require_once 'database.php';
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    $db_name = 'project9';
    $db_found = mysqli_select_db($conn, $db_name);

    
    $query = "SELECT category.id, category.name, COUNT(category.name) COUNT1 FROM movies
    JOIN categoriesandmovies ON movies.id = categoriesandmovies.moviesid
    JOIN category ON category.id = categoriesandmovies.categoryid 
    GROUP BY category.id ";
    $results = mysqli_query($conn, $query);
    $categories = mysqli_fetch_all($results, MYSQLI_ASSOC);
    foreach ($categories as $category)
      {
         echo $category['name'].'('.$category['COUNT1'].') ';
      }
     
        
      
    ?>
    <form action="" method="POST">
       <select name="filter" id="filter">
         <option value="0" default>Choose category</option>
       <?php
        require_once 'database.php';
        $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
        $db_name = 'project9';
        $db_found = mysqli_select_db($conn, $db_name);
        $query = "SELECT name,id FROM category";
        $result = mysqli_query($conn, $query);
        while ($categories = mysqli_fetch_assoc($result)) 
       {
        echo '<option value="'.$categories['id'].'">'; 
        echo $categories['name'];
        echo '</option>';
       } 
      ?>
       </select>  
    </form>
    <div id="movieZone">
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

    <script>
        // Wait for the dom to be loaded/ready before executing javascript
        $(function () {
                       $.ajax({ url: 'homepage2.php', method: 'post', data: $('input').serialize()})
                        .done(function(result){console.log('SUCCESS : ' + result);$("#movieZone").html(result);})
                        .fail(function (result){console.log('AJAX ERROR');});
            
                       $("#search").keyup(function (e) 
                        {  
                        e.preventDefault();
                        $.ajax({ url: 'homepage2.php', method: 'post', data: $('input').serialize()})
                        .done(function(result) { console.log('SUCCESS : ' + result); $("#movieZone").html(result);})
                        .fail(function (result) {console.log('AJAX ERROR');}); 
                        }); 
                        
                       $("#filter").change(function (e) 
                        {  
                        e.preventDefault();
                        $.ajax({ url: 'filtermovies.php', method: 'post', data: $('#filter').serialize()})
                        .done(function(result) { console.log('SUCCESS : ' + result); $("#movieZone").html(result);})
                        .fail(function (result) {console.log('AJAX ERROR');});
                        });    
                              
                       
                      });    
          
                    
    </script>
</body>
</html>