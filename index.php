<!-- 
	File: index.php
	Author: Maddy Cain 149010c@acadiau.ca
	Prepared for COMP 4983 X2
-->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, inital-scale=1">
	<meta name="keywords" content="list,of,keywords,here">
	<meta name="description" content="this is my description">
	<meta name="author" content="name here">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>

	<title>AWhere</title>
	<link rel="stylesheet" href="styles.css">
</head>
<body style="background: oldlace">
	<div class = "hero-image"><img src="images/wolfville.png" alt="Wolfville"></div>
		<div class="hero-logo">
				<div class="col-md-12 p-2 text-center">
					<a href=index.php><img src="images/AWhere-logo-white.png" alt="AWhere"></a>
				</div>
		</div>
	</div>
	<div class="topnav">
		<li><a class = "active" href="index.php">Home</a></li>
		<li><a href="about.html">About</a></li>
	</div>
	<div class="text-center">
		<h1><u>Popular Restaurants in Wolfville</u></h1>
	</div>
	<div class="center-screen">
		<?php
		$servername = "localhost";
		$username = "root";
		$password = "mysql";
		$dbname = "rankings";

		// Create connection to rankings database
		$conn = new mysqli($servername, $username, $password, $dbname);
		
		// Check database connection
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 

		// Selects restaurant id and name from restaurant table in rankings database
		$sql = "SELECT rest_id, name FROM restaurant";
		$result = $conn->query($sql);

		echo "<table>";

		if ($result->num_rows > 0) {
			// Prints out name of each restaurant in restaurant table along with link to corresponding scores.php page
			while($row = $result->fetch_assoc()) {
				echo "<tr><td><a href=\"scores.php?rest_id=" . $row['rest_id'] . "&name=" . $row['name'] . "\">" . $row['name'] ."\n</a></td></tr>";
			}
		}

		else {
			echo "0 results";
		}

		echo "</table>";

		$conn->close();
		
		?>
	</div>
	<br>
	<br>
	<br>
	<footer>
	  <p>Maddy Cain, 2021</p>
	</footer>
</body>
</html>