<?php
require_once "dbcon.php";

// Fetch distinct score types
$sql_score_types = "SELECT DISTINCT score_type FROM results";
$result_score_types = $con->query($sql_score_types);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Results</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: auto;
        }
        .card {
            margin-top: 40px; /* Adjust as needed */
        }
        .table-medium {
            font-size: medium; /* Set table size to medium */
        }
        .table-title {
            font-size: 24px; /* Set title font size */
            font-weight: bold; /* Make title bold */
            text-align: center; /* Center title */
            text-transform: uppercase; /* Capitalize title */
        }
    </style>
</head>
<body>
    <section>
        <div class="container">
            <!-- Logo and Heading -->
            <div class="text-center mb-4">
                <img src="image/logo.jpg" alt="Logo" width="150">
                <h2 class="mt-3">SORE BOADR</h2>
            </div>

            <!-- Card containing tables -->
            <div class="card">
                <div class="card-body">
                    <?php while ($row_score_types = $result_score_types->fetch_assoc()): ?>
                        <?php
                        $score_type = $row_score_types['score_type'];
                        $sql_query = "SELECT result_id, CONCAT(customers.firstname, ' ', customers.lastname) AS customer_name, results.display_data
                                      FROM results 
                                      INNER JOIN customers ON results.customer_id = customers.customer_id
                                      WHERE results.score_type = '$score_type'
                                      ORDER BY results.display_data DESC"; // Order by display_data in descending order
                        $result = $con->query($sql_query);
                        ?>

                        <h2 class="table-title"><?php echo strtoupper($score_type); ?></h2>
                        <table class="table table-bordered table-striped table-medium">
                            <thead class="table-dark">
                                <tr>
                                    <th>Customer Name</th>
                                    <th>Display Data</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php while ($row = $result->fetch_assoc()): ?>
                                    <?php
                                    $Name = $row['customer_name'];
                                    $DisplayData = strtoupper($row['display_data']); // Convert to uppercase
                                    ?>

                                    <tr>
                                        <td><?php echo $Name; ?></td>
                                        <td><?php echo $DisplayData; ?></td>
                                    </tr>
                                <?php endwhile; ?>
                            </tbody>
                        </table>
                    <?php endwhile; ?>

                    <!-- Pagination -->
                    <!-- You can add pagination here -->
                </div>
            </div>
        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
