<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--My css at the bottom -->
    <link rel="stylesheet" href="style/styles.css" />
    <title>Add a movie</title>
</head>

<body>
    <header>
        <div class="topnav">
            <a class="active" href="#home">Home</a>
            <a href="#categories">Categories</a>
            <a href="#addmovie">Addmovie</a>
        </div>
        <div>
            <nav id="top-navigation">
                <form action="" method="POST">
                    <input type="text" name="search" placeholder="Search">

                    <input type="submit" name="submitBtn" value="OK">
                </form>
            </nav>
            </hr>
        </div>
    </header>

    <form action="" method="POST">
        <input type="text" name="title" placeholder="Add a Title">
        <br>
        <input type="text" name="releasedate" placeholder="Add a Release Date">
        <br>
        <input type="text" name="poster" placeholder="Add a Poster">
        <br>
        <input type="text" name="synopsis" placeholder="Add a Synopsis">
        <br>
        <input type="text" name="path" placeholder="Add a path">
        <br>
        <input type="text" name="dateajout" placeholder="Add a addDate">
        <br>
        <input type="submit" name="submitBtn" id="butn">
    </form>

    <?php

    if (isset($_POST['submitBtn'])) {

        require_once 'database.php';
        $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
        $db_name = 'project9';
        $db_found = mysqli_select_db($conn, $db_name);

        $title = $_POST['title'];
        $releasedate = $_POST['releasedate'];
        $poster = $_POST['poster'];
        $synopsis = $_POST['synopsis'];
        $path = $_POST['path'];
        $dateajout = $_POST['dateajout'];


        //check le nom du film non vides
        if (empty($title)) {
            echo 'ERREUR, vous devez taper le titre du film.';
        } elseif (empty($releasedate)) //check releasedate
        {
            echo 'ERREUR, votre releasedate est vide !';
        } elseif (empty($poster)) //check poster 
        {
            echo 'ERREUR, votre lien du poster est vide !';
        } elseif (empty($synopsis)) //check synopsis
        {
            echo 'ERREUR, votre synopsis est vide !';
        } elseif (empty($path)) //check path
        {
            echo 'ERREUR, votre path est vide !';
        } elseif (empty($dateajout)) //check dateajout
        {
            echo 'ERREUR, votre dateajout est vide !';
        } elseif ($db_found) {
            $query = "INSERT INTO movies (title,releasedate,poster,synopsis,path,dateajout) VALUES('$title','$releasedate','$poster','$synopsis','$path','$dateajout')";
            $result_query = mysqli_query($conn, $query);
            echo 'Enregistrement du film effectué : ' . $title . '!';
        } else {
            echo 'database error try again';
        }
    }
    ?>

</body>

</html>