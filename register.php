<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!--My css at the bottom -->
  <link rel="stylesheet" href="styles/style.css" />
  <title>Register</title>
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
    <input type="text" name="firstname" placeholder="Prénom">
    <br>
    <input type="text" name="lastname" placeholder="Nom">
    <br>
    <input type="email" name="email" placeholder="Email">
    <br>
    <input type="password" name="password" placeholder="Mot de passe">
    <br>
    <input type="password" name="cPassword" placeholder="Confirmez mot de passe">
    <br>
    <select name="auth" id="auth">
      <option value="user">User</option>
      <option value="admin">Admin</option>
    </select>
    <br>
    <input type="submit" name="submitBtn" id="butn">
  </form>


  <?php

  if (isset($_POST['submitBtn'])) {

    require_once 'database.php';
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
    $db_name = 'nico9';
    $db_found = mysqli_select_db($conn, $db_name);

    $firstname = $_POST['firstname'];

    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $cPassword = $_POST['cPassword'];
    $auth = $_POST['auth'];

    //check nom et prénom non vides
    if (empty($firstname) || empty($lastname)) {
      echo 'ERREUR, vous devez taper le nom et le prénom.';
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) //check mail
    {
      echo 'ERREUR, votre email est invalide!';
    } elseif (strlen($password) < 8) //check mot de passe > 8 caractères
    {
      echo 'ERREUR, votre mot de passe est trop court (8 caractères minimum)';
    } elseif ($password != $cPassword) //check mot de passe == confirmation de mot de passe 
    {
      echo 'ERREUR, vos mots de passe sont différents!';
    } elseif ($db_found) {
      $password = password_hash($password, PASSWORD_DEFAULT);
      $query = "INSERT INTO users(firstname,lastname,email,password,auth) VALUES('$firstname','$lastname','$email','$password','$auth')";
      $result_query = mysqli_query($conn, $query);
      echo 'Inscription OK! Bienvenue ' . $firstname . '!';
    } else {
      echo 'database error';
    }
  }
  ?>

</body>

</html>