<?php 
session_start();

require_once "dbcon.php";

// User Creation
if(isset($_POST['submit'])){
    $firstname = mysqli_real_escape_string($con, $_POST['firstname']);
    $lastname = mysqli_real_escape_string($con, $_POST['lastname']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $phone = mysqli_real_escape_string($con, $_POST['phone']);

    $query = "INSERT INTO customers (firstname, lastname, email, phone) VALUES ('$firstname','$lastname', '$email', '$phone')";
    
    $query_run = mysqli_query($con, $query);
    
    if($query_run) {
        $_SESSION['message'] = "User created successfully.";
        header("Location: setting.php");
        exit(0);
    }
    else {
        $_SESSION['message'] = "Error creating user.";
        header("Location: index.php");
        exit(0);
    }
}

// Save Score
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $customer = mysqli_real_escape_string($con, $_POST['customer']);
    $option = mysqli_real_escape_string($con, $_POST['option']);
    $displayData = $option === 'time' ? mysqli_real_escape_string($con, $_POST['timeDisplay']) : mysqli_real_escape_string($con, $_POST['countDisplay']);

    if ($customer != "" && $option != "" && $displayData != "") {
        $sql = "INSERT INTO results (customer_id, score_type, display_data) VALUES ('$customer', '$option', '$displayData')";
        if (mysqli_query($con, $sql)) {
            $_SESSION['message'] = "Data saved successfully.";
            header("Location: result_details.php");
            exit(0);
        } else {
            $_SESSION['message'] = "Error saving data.";
            header("Location: setting.php");
            exit(0);
        }
    } else {
        $_SESSION['message'] = "Customer, option, and display data cannot be empty!";
        header("Location: setting.php");
        exit(0);
    }
}
?>
