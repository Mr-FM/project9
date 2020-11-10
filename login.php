<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body> 
     <form action="" method="POST">
       <input type="email" name="email" placeholder="Email">
       <br>
       <input type="password" name="password" placeholder="Mot de passe">
       <br>
       <input type="submit" name="submitBtn" id="butn">
     </form>


<?php

if(isset($_POST['submitBtn']))
{

require_once 'database.php';
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$db_name = 'project9';
$db_found = mysqli_select_db($conn, $db_name);

$email = $_POST['email'];
$password = $_POST['password'];



if(empty($email)||empty($password))
   {
   echo 'ERREUR, merci de saisir email et password.';
   }
   else
   {
     if ($db_found)
     {
      $query = "SELECT * FROM users WHERE '$email' = email";
      $result_query = mysqli_query($conn, $query);
      $result_array = mysqli_fetch_assoc($result_query);
      $hashPass = $result_array['password'];
      if($result_array==null)
      {
       echo 'email invalid';
      }
      elseif(!password_verify($password, $hashPass))
      {
        echo 'password invalid';
      }
      else
      {
        echo 'Bienvenue '.$result_array['firstname'].'!';      
      }
     }
     else
     {
      echo 'database error';
     }
    
    }
}
?>

</body>
</html>