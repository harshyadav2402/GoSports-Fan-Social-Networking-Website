<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}

$sql2 = "update users set FirstName='$_POST[FirstName]', LastName='$_POST[LastName]', EmailId='$_POST[EmailId]', country='$_POST[country]', State='$_POST[State]', city='$_POST[city]', Interests='$_POST[Interests]', privacy='$_POST[privacy]', photo='$_POST[photo]' where username = '$_SESSION[username]'";
$conn->query($sql2);
header("location: profile-view.php");
?>