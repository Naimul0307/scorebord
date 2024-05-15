<?php 
  session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Meter</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="asset/bootstrap/css/bootstrap.min.css">
    <style>
    .meter {
        width: 100%; /* Cover full width */
        height: 300px; /* Increase height for a larger size */
        background-image: url('image/background.jpg'); /* Update URL with the correct path */
        background-size: cover; /* Ensure background image covers the entire container */
        background-repeat: no-repeat; /* Prevent background image from repeating */
        border-radius: 20px;
        display: flex;
        align-items: center; /* Center text vertically */
        justify-content: center; /* Center text horizontally */
        font-weight: bold; /* Make text bold */
        font-size: 85px; /* Increase font size for a larger size */
        color: #000000; /* Change text color to black */
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Add text shadow */
        box-shadow: 0px 0px 20px rgba(0, 123, 255, 0.5); /* Add box shadow */
    }

    .meter-inner {
        height: 100%;
        width: 100%;
        background-image: url('images/background.jpg'); /* Update URL with the correct path */
        background-size: cover; /* Ensure background image covers the entire container */
        background-repeat: no-repeat; /* Prevent background image from repeating */
        border-radius: 20px; /* Match border radius of outer container */
    }

    h2 {
        text-align: center; /* Center the text */
        background-color: #f0f0f0; /* Add background color */
        padding: 10px; /* Add padding for spacing */
        border-radius: 10px; /* Add border radius for rounded corners */
    }

    .logo {
        text-align: center;
        margin-bottom: 20px;
    }
    .logo img {
        width: 150px;
        margin-bottom: 10px;
    }
    </style>
</head>
<body>
<?php include('message.php') ?>
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-lg-6">
                <div class="card p-4">
                    <section>
                        <div class="logo">
                        <img src="image/logo.jpg" alt="Logo">
                        </div>
                        <h1 class="text-center mb-5">Setting</h1>
                        <form id="myForm" method="post">
                            <div class="row g-3">
                                <div class="col-lg-6">
                                    <label for="userSelect" class="form-label">First Name</label>
                                    <select class="form-select" id="userSelect" name="customer">
                                        <option value="">Select an option</option>
                                        <?php 
                                        include('dbcon.php');
                                        $users = mysqli_query($con, "SELECT * FROM customers");
                                        while($u = mysqli_fetch_array($users)){
                                        ?>
                                        <option value="<?php echo $u['customer_id']; ?>"><?php echo $u['firstname'].' '.$u['lastname']; ?></option>
                                        <?php }?>
                                    </select>
                                </div>
                                <div class="col-lg-6">
                                    <label for="optionSelect" class="form-label">Grade</label>
                                    <select class="form-select" id="optionSelect" onchange="startMeter()" name="option">
                                        <option value="">Select an option</option>
                                        <option value="time">Time</option>
                                        <option value="count">Counter</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row mt-3">
                                <div class="col-lg-12">
                                <div class="card">  
                                <div id="timeContainer" class="d-none">
                                    <h2>Time:</h2>
                                    <div id="timeDisplay" class="meter display-text">00:00:00 SEC</div>
                                    <input type="hidden" id="timeDisplayValue" name="timeDisplay" value="">
                                </div>
                                <div id="countContainer" class="d-none">
                                    <h2>Count:</h2>
                                    <div id="countDisplay" class="meter display-text">0</div>
                                    <input type="hidden" id="countDisplayValue" name="countDisplay" value="">
                                </div>
                                <button id="stopButton" class="btn btn-danger d-none mt-2 mb-2" type="button" onclick="stopMeter()">Stop</button>
                            </div>
                                </div>
                                <div class="col-lg-12 mt-2">
                                    <button type="button" onclick="submitForm()" class="btn btn-primary w-100">Submit</button>
                                </div>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="asset/bootstrap/js/bootstrap.min.js"></script>
    <script src="asset/function.js"></script>
</body>
</html>
