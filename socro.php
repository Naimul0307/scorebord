
<?php
require_once "dbcon.php"; // Ensure this file exists and contains the database connection code
session_start();
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $customer = $_POST['customer'];
    $option = $_POST['option'];
    $displayData = $option === 'time' ? $_POST['timeDisplay'] : $_POST['countDisplay'];

    if ($customer != "" && $option!= "" && $displayData != "") {
        $sql = "INSERT INTO results (customer_id, score_type, display_data) VALUES ('$customer', '$option', '$displayData')";
        if (mysqli_query($con, $sql)) {
            $_SESSION['message'] = "Data saved successfully.";
            header("Location: result_details.php");
            exit(0);
        } else {
            $_SESSION['message'] = "Error: " . $sql . "<br>" . mysqli_error($con);
            header("Location: index.php");
            exit(0);
        }
    } else {
        $_SESSION['message'] = "Customer, option, and display data cannot be empty!";
        header("Location: index.php");
        exit(0);
    }
}
?>
