<?php 
session_start();
  require_once "dbcon.php";

  if(isset($_POST['submit'])){

    $firstname = mysqli_real_escape_string($con, $_POST['firstname']);
    $lastname = mysqli_real_escape_string($con, $_POST['lastname']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $phone = mysqli_real_escape_string($con, $_POST['phone']);

    $query = "INSERT INTO customers (firstname,lastname,email,phone) VALUES('$firstname','$lastname', '$email', $phone)";
    
    $query_run = mysqli_query($con,$query);
    
    if($query_run) {
        $_SESSION['message'] = "User Create Successfully";
        header("Location: setting.php");
        exit(0);
    }
    else {
        $_SESSION['message'] = "User Create Failed";
        header("Location: index.php");
        exit(0);
    }
  }
?>