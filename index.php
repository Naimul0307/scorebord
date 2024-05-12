<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- Add your custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        h1 {
            text-align: center;
            margin: 50px 0;
            color: #007bff;
        }

        .card {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            color: #495057;
        }

        input[type="text"],
        input[type="email"] {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            width: 100%;
            margin-bottom: 20px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%; /* Set width to 100% */
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo img {
            width: 150px;
            margin-bottom: 10px;
        }

        .title {
            text-align: center;
            margin-bottom: 30px;
        }

        /* Add underline to the title */
        .title h2 {
            position: relative;
        }

        .title h2::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 100%; /* Change width to 100% */
            height: 2px;
            background-color: #007bff;
        }
    </style>
</head>

<body>
    <section>
        <h1>DATA INPUT</h1>
        <div class="card">
            <div class="logo">
                <img src="image/logo.jpg" alt="Logo">
            </div>
            <div class="title">
                <h2>DATA INPUT</h2>
            </div>
            <form action="code.php" method="post" id="myForm">
                <div class="form-group">
                    <label for="firstname">First Name</label>
                    <input type="text" name="firstname" id="firstname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="lastname">Last Name</label>
                    <input type="text" name="lastname" id="lastname" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" name="phone" id="phone" class="form-control" required>
                </div>
                <div class="form-group">
                    <input type="submit" name="submit" id="submit" class="btn btn-primary" value="Submit">
                </div>
            </form>
        </div>
    </section>
</body>
</html>
