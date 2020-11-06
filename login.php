<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<header>

    <nav>
        <ul>
            <li><a href="./register.php">Register</a></li>
            <li><a href="./login.php">Login</a></li>
            <li><a href="./account.php">Account</a></li>
        </ul>
    </nav>

</header>

<body>

    <h2>Sign-in</h2>
    <form action="" method="POST">
        <input type="Email" name="email" placeholder="Your Email"><br>
        <input type="text" name="password" placeholder="Your password"><br>
        <input type="submit" name="submitBtn" value="signin">
    </form>

    <?php

    require_once 'database.php';
    //connect to the DATABASE project9
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    //echo 'Connexion successfull <br>';
    $db_name = 'project9';
    $db_found = mysqli_select_db($conn, $db_name);

    if ($db_found) {
        //Make sure i clicked the button
        if (isset($_POST['submitBtn'])) {
            //Get info from the form(and remove white spaces)
            $mail = trim($_POST['email']);
            $password = trim($_POST['password']);

            //execute QUERY 
            $sql_query = "SELECT * FROM users WHERE email = '$email' AND password = '$password' ";

            //execute the query
            $currentUser = mysqli_query($conn, $sql_query);

            // fetch results as associative array
            $_SESSION['users'] = mysqli_fetch_assoc($currentUser);


            $message = 'you are not allow on the website';

            //echo $mail . '/' . $password . '<br>';

            // Check if there is a match
            if ($email == trim($email) && $password == trim($password)) {
                $message = 'You are online';
                echo $message;
            } else {
                echo 'Something went wrong try again.';
            }
        }
    }
    ?>
</body>

</html>