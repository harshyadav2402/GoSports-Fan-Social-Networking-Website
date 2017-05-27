<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title> Notifications</title>
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
<br>
</head>
<body>
    <style>
        input, textarea, select {
    width: 15%;
}
    </style>
<br><br>
<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];
$query = "select u.FirstName as firstname, u.LastName as lastname, f.username as username, f.friend_id as friend_id from friends f inner join users u on u.username=f.username where friend_id = '$username' and status = '1'";
$result=mysqli_query($conn,$query);
if(mysqli_num_rows($result)>0) {
    while($row=mysqli_fetch_assoc($result)) {
        $friend_id = $row['username'];?>
<div style="width:55%">
    <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['firstname']; ?> <?php echo $row['lastname']; ?></a></li><br><br>
        <form method=post >
            <input type="submit" name="accept" value="Accept"><input type="submit" name="decline" value="Decline"> </form>
</div>
    <?php }
}?>

<?php
if(isset($_POST["accept"]))
{
	//$_POST['friend_id'];
        $query = "update friends set status='2' where username='$_SESSION[username]' and friend_id='$friend_id' or username='$friend_id' and friend_id='$_SESSION[username]'";
        $result = mysqli_query($conn, $query);
        if($result) {
            header("Refresh:0");
        }

	echo" You are now Friends";

}
else  if(isset($_POST["decline"]))
{   
    $_POST['friend_id'];
        $query = "delete from friends where username='$_SESSION[username]' and friend_id='$friend_id' or username='$friend_id' and friend_id='$_SESSION[username]'";
        if($result) {
            header("Refresh:0");
        }
	echo "Friend Request Declined";
}
?>
</body>
</html>
