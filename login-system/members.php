<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}
else {
$username = $_SESSION['username'];
$sql = "select * from users";
$query = mysqli_query($conn,$sql);
}
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title> Friends</title>
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
  
</head>
<body><br><br>
    <br><form method="post" autocomplete="off" action="profile1.php">
        <div style="width:55%">
    <h1>Friends List</h1>
    
        <?php while ($row = mysqli_fetch_array($query,MYSQLI_ASSOC)) {?>
    <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ".$row['LastName']; ?></a></li>          
        <?php }
        ?>
    
        <br><br>
        <button type="submit" class="" name="ok"/>OK</button></div></form>
</body>
</html>