<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];

if(isset($_POST['chat']))
{
	$result = mysqli_query($conn , "INSERT INTO `chat`
            (`chat_id`,
             `chat_person_name`,
             `chat_value`,
			 `chat_time`
			 )
VALUES (NULL,
        '$_SESSION[username]',
		'$_POST[chat]',
		NOW()
		);");
	
	}
 
?>

