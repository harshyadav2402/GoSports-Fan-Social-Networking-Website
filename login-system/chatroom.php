<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title> Chat Room</title>
  <!--<?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>-->
  
</head>
<ul>
        <li><a href="profile1.php">Home</a></li>
    <li><a>Profile</a>
        <ul>
            <li><a href="profile-view.php">View Profile</a></li>
            <li><a href="profile-edit.php">Edit Profile</a></li>
        </ul>
    <li><a href="post-status.php">Post Status</a></li>
    <li><a href="friends.php">Friends</a></li>
    <li><a href="members.php">Fans</a></li>
    <li><a href="notifications.php">Notifications</a></li>
    <li><a href="chatroom.php">Chat Room</a></li>
    <li><a href="search.php">Search</a></li>
    <li><a href="logout.php">Logout</a></li>
    </ul>
<br>
<script>
	
function getText() {
		
	var $a = document.getElementById('text').value;
	
	xhr = new XMLHttpRequest();
	xhr.open('POST' , 'chatdb.php',true);
	xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr.send('chat='+$a);
	xhr.onreadystatechange=function(){
		if (xhr.responseText)
		{
		//	document.getElementById('chatarea').innerHTML=xhr.responseText;
		}
	}
}

function setText(){
	
	xhr = new XMLHttpRequest();
	xhr.open('POST' , 'chatFetch.php' , true);
	xhr.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr.send();
	xhr.onreadystatechange = function()
	{
		document.getElementById('chatarea').innerHTML = xhr.responseText;
	}
		
	}
	setInterval("setText()",2000);
	setInterval("users()",3000);
        
function users(){
	xhr1 = new XMLHttpRequest();
	xhr1.open('POST' , 'userFetch.php' , true);
	xhr1.setRequestHeader('content-type','application/x-www-form-urlencoded');
	xhr1.send();
	xhr1.onreadystatechange = function()
	{
		document.getElementById('loginperson').innerHTML = xhr1.responseText;
	}
}
</script>

<div id="chatbox">
	
	<div id ="chatarea">
	</div>
 
	<div id="loginperson">
	</div>
 
	<div id="textbox">
	<form>
		<textarea rows="4" cols="100" id="text"></textarea>
		<input type="button" value="send"  onclick="getText()" />
	</form>
	</div></center>
</div>
<style>
    #chatbox
{
	border:double;
	height:500px;
	width:1000px;
        
}
#chatarea 
{
	width:750px;
	height:400px;
	border:double;
	float:left;
	overflow:auto;
        
}
#loginperson 
{
	width:238px;
	height:497px;
	border:double;
	float:right;
}
#textbox 
{
	width:750px;
	height:89px;
	border:double;
	float:left;
}
#chatting 
{
	float:left;
        
}
body {
  background: #ffffff; /* #c1bdba */
  font-family: 'Titillium Web', sans-serif;
  background:url('http://clevertechie.com/img/bnet-bg.jpg') #0f2439 no-repeat center top;
}
p {
    text-align: center;
    color: #ffffff;
    margin: 0px 0px 50px 0px;
}
ul {
    margin: 0px;
    padding: 0px;
    list-style: none;
}
ul li {
    float: left;
    width: 120px;
    height: 40px;
    background-color: black;
    opacity: .8;
    line-height: 40px;
    text-align: center;
    font-size: 19px;
    margin-right: 2px;
}
ul li a {
    text-decoration: none;
    color: white;
    display: block;
}
ul li a:hover {
    background-color: green;
}
ul li ul li {
    display: none;
}
ul li:hover ul li {
    display: block;
}
</style>
</html>



