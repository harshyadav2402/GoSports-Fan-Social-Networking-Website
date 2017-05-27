<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];

$result= mysqli_query($conn , "SELECT c.chat_person_name, c.chat_value as chat_value, u.FirstName as FirstName FROM chat c inner join users u"
        . " on c.chat_person_name=u.username");
while ($row = mysqli_fetch_assoc($result)){
	echo "<font color='#009900'>". $row['FirstName']." :";
	echo "<font color='white'>". $row['chat_value']."<br>";
	
	}
?>
