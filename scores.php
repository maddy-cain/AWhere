<!-- 
	File: scores.php
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
	<style> 
		.button:hover {
			opacity: 0.8;
		}

		.button {
			background-color: #636534;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			cursor: pointer;
			width: 50%;
			font-family: 'Optima';
		}
		.topnav {
			padding: 30px;
		}
		.topnav a {
			float: center;
			color: #636534;
			text-align: center;
			padding: 14px 16px;
			font-size: 20px;
			font-family: 'Optima';
		}
		.topnav a:hover {
			color: #A4A95C;
		}
		.hero-image {
			filter: blur(5px);
			-webkit-filter: blur(7px);
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			position: relative;
		}
		.hero-logo {
			position: absolute;
			top: 30%;
			left: 50%;
			transform: translate(-50%, -50%);
			width: 75%;
			padding: 10px;
		}
		footer p {
			padding: 0px;
			font-family: 'Optima';
			color: #636534;
			font-size: 15px;
		}
		footer {
			text-align: center;
			padding: 3px;
		}

		h1 {
			padding: 20px;
			font-family: 'Optima';
			color: #636534;
			font-size: 25px;
		}

		h2 {
			padding: 20px;
			font-family: 'Optima';
			color: #636534;
			font-size: 40px;
		}

		h3 {
			font-family: 'Optima';
			color: #636534;
			font-size: 60px;
		}

		h4 {
			font-family: 'Optima';
			color: #636534;
			font-size: 20px;
		}
		td {
			font-family: 'Optima';
			color: #636534;
			font-size: 20px;
		}
	</style>
</head>
<body style="background-color: oldlace;">
	<div class = "hero-image"><img src="images/wolfville.png" alt="Wolfville"></div>
		<div class="hero-logo">
				<div class="col-md-12 p-2 text-center">
					<a href=index.php><img src="images/AWhere-logo-white.png" alt="AWhere"></a>
				</div>
		</div>
	</div>
	<div class="topnav">
		<a class = "active" href="index.php">Home</a></li>
		<a href="about.html">About</a></li>
	</div>
	<div>
		<!-- Fetches restaurant name from restarant database based on selection from index.php -->
		<h2><?=$_GET['name']?></h2>
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

		// Calculate overall safety score based on all questions' results
		$overall = "SELECT sum(q_val)/count(q_val) as pct, 'q1' as q_id, question FROM response r JOIN response_value rv on r.resp_id = rv.resp_id JOIN question q on rv.q_id = q.q_id WHERE rest_id = " . $_GET['rest_id'] .  " and rv.q_id = 1";
		$overall .= " UNION SELECT sum(q_val)/count(q_val) as pct, 'q2' as q_id, question FROM response r JOIN response_value rv on r.resp_id = rv.resp_id JOIN question q on rv.q_id = q.q_id WHERE rest_id = " . $_GET['rest_id'] .  " and rv.q_id = 2";
		$overall .= " UNION SELECT sum(q_val)/count(q_val) as pct, 'q3' as q_id, question FROM response r JOIN response_value rv on r.resp_id = rv.resp_id JOIN question q on rv.q_id = q.q_id WHERE rest_id = " . $_GET['rest_id'] .  " and rv.q_id = 3";
		$overall .= " UNION SELECT sum(q_val)/count(q_val) as pct, 'q4' as q_id, question FROM response r JOIN response_value rv on r.resp_id = rv.resp_id JOIN question q on rv.q_id = q.q_id WHERE rest_id = " . $_GET['rest_id'] .  " and rv.q_id = 4";
		$overall .= " UNION SELECT sum(q_val)/count(q_val) as pct, 'q5' as q_id, question FROM response r JOIN response_value rv on r.resp_id = rv.resp_id JOIN question q on rv.q_id = q.q_id WHERE rest_id = " . $_GET['rest_id'] .  "  and rv.q_id = 5;";

		// Initialize variables
		$score = $conn->query($overall);
		$total = 0;

		echo "<table>";

		if ($score->num_rows > 0) {
			// Prints indiviual question's score to 2 decimal places
			while($row = $score->fetch_assoc()) {
			echo "<tr><td>". $row['question'] . "</td><td></td><td></td><td>". round($row['pct']*100, 2) . "%</td></tr>";
		    //Collect score data to calculate overall
		    $total += $row['pct'];
		}

		// Prints overall score to 2 decimal places
		$total = ($total/5)*100;
		echo('<h3>' . round($total, 2) . '%</h3>');
		echo('<h4>Safe Overall</h4>');
		} 

		//If connection to database fails
		else {
			echo "No results found.";
		}

		echo "</table>";

		// Button to move to rank_form.php		
		echo "<p><a href=\"rank_form.php?rest_id=" . $_GET['rest_id'] . "&name=" . $_GET['name'] . "\"> <button type=\"button\" class = \"button\">Rate This Place</button></a></p>";

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