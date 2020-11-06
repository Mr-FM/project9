<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
</head>
<body> 
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

if(isset($_POST['submitBtn'])){

require_once 'database.php';
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);
$db_name = 'project9';
$db_found = mysqli_select_db($conn, $db_name);

$firstname = $_POST['firstname'];

$lastname = $_POST['lastname'];
$email = $_POST['email'];
$password = $_POST['password'];
$auth = $_POST['auth'];

//check nom et prénom non vides
if(empty($firstname)||empty($lastname)){

}
//check mail
//check mot de passe > 8 caractères
//check mot de passe == confirmation de mot de passe 







if ($db_found)
{
 $query = "INSERT INTO users(firstname,lastname,email,password,auth) VALUES('$firstname','$lastname','$email','$password','$auth')";
 
 $result_query = mysqli_query($conn, $query);
}

}
?>

</body>
</html>