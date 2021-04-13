<!-- 
	File: save_rank.php
	Author: Maddy Cain 149010c@acadiau.ca
	Prepared for COMP 4983 X2
-->

<?php
// Connect to database
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
$con = mysqli_connect('localhost', 'root', 'mysql','rankings');

// Get the post records
$rest_id = $_POST['rest_id'];
$txtQ1 = $_POST['txtQ1'];
$txtQ2 = $_POST['txtQ2'];
$txtQ3 = $_POST['txtQ3'];
$txtQ4 = $_POST['txtQ4'];
$txtQ5 = $_POST['txtQ5'];

$sql = "INSERT INTO response(rest_id) VALUES(".$rest_id.");";

$sql .= "SET @response_id  = LAST_INSERT_ID();";

$sql .= "INSERT INTO response_value(resp_id, q_id, q_val) VALUES (@response_id, 1, ".$txtQ1.");";
$sql .= "INSERT INTO response_value(resp_id, q_id, q_val) VALUES (@response_id, 2, ".$txtQ2.");";
$sql .= "INSERT INTO response_value(resp_id, q_id, q_val) VALUES (@response_id, 3, ".$txtQ3.");";
$sql .= "INSERT INTO response_value(resp_id, q_id, q_val) VALUES (@response_id, 4, ".$txtQ4.");";
$sql .= "INSERT INTO response_value(resp_id, q_id, q_val) VALUES (@response_id, 5, ".$txtQ5.");";

// Insert data in database 
$rs = mysqli_multi_query($con, $sql);

if($rs) {
	header("Location: http://localhost/awhere/scores.php?rest_id=" . $_POST['rest_id'] . "&name=" . $_POST['name']);
	die();
}

mysqli_close($con);

?>