<!-- 
	File: rank_form.php
	Author: Maddy Cain 149010c@acadiau.ca
	Prepared for COMP 4983 X2
-->


<?php
	// Stores restaurant id and name from scores.php
	$rest_id = $_GET['rest_id'];
	$name = $_GET['name'];

?>

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
	<link rel="stylesheet" href="css/styles.css">
</head>
<body style="background-color:oldlace;">
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
	<div class = "center-screen">
		<!-- Fetches restaurant name from restaurant database based on selection from index.php -->
		<h2><?=$_GET['name']?></h2>
	</div>
	<div class = "center-screen">
		<form name="frmRank" method="post" action="save_rank.php">
			<h5>
				<p>
					Were you required to wear a mask?   
					<input type="radio" id="q1yes" name="txtQ1" value="1"> <label for="q1yes">Yes</label>
					<input type="radio" id="q1no" name="txtQ1" value="0"> <label for="q1no">No</label>
				</p>
				<p>
					Were you required to sanitize your hands?   
					<input type="radio" id="q2yes" name="txtQ2" value="1"> <label for="q2yes">Yes</label>
					<input type="radio" id="q2no" name="txtQ2" value="0"> <label for="q2no">No</label>
				</p>
				<p>
					Was social distancing enforced?   
					<input type="radio" id="q3yes" name="txtQ3" value="1"> <label for="q3yes">Yes</label>
					<input type="radio" id="q3no" name="txtQ3" value="0"> <label for="q3no">No</label>
				</p>
				<p>
					Were you required to provide contact tracing information?   
					<input type="radio" id="q4yes" name="txtQ4" value="1"> <label for="q4yes">Yes</label>
					<input type="radio" id="q4no" name="txtQ4" value="0"> <label for="q4no">No</label>
				</p>
				<p>
					Was your temperature taken upon arrival?   
					<input type="radio" id="q5yes" name="txtQ5" value="1"> <label for="q5yes">Yes</label>
					<input type="radio" id="q5no" name="txtQ5" value="0"> <label for="q5no">No</label>
				</p>
			</h5>
			<p>&nbsp;</p>
			<p>
				<input type="submit" name="Submit" id="Submit" value="Submit" onclick="alert('Thank you! Your responses have been saved.')">
			</p>
			<!-- Hidden fields to pass restaurant id and name to save_rank.php -->
			<input type="hidden" name="rest_id" value="<?=$rest_id?>">
			<input type="hidden" name="name" value="<?=$name?>">
		</form>
	</div>
	<br>
	<br>
	<br>
	<footer>
	  <p>Maddy Cain, 2021</p>
	</footer>
</body>
</html>
