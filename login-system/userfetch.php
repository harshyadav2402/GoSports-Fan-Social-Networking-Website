<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];
$result= mysqli_query($conn , "select * from users");

while ($row = mysqli_fetch_assoc($result)){
		echo "<font color='#009900'>".$row['FirstName']."</font><br>";
	}
 
?>
