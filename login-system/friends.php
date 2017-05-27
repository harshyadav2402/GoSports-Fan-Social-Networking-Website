<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];
if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}
else {
$username = $_SESSION['username'];
$sql = "select u.FirstName, u.LastName, u.username from users u inner join friends f on u.username=f.friend_id where f.username='$username' and status = '2'
union all
select u.FirstName, u.LastName, u.username from users u inner join friends f on u.username=f.username where f.friend_id='$username' and status = '2'";
//$result = $conn->query($sql);
//$data = $result->fetch_assoc();
$query2 = mysqli_query($conn,$sql);
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
    
        <?php while ($row = mysqli_fetch_array($query2,MYSQLI_ASSOC)) {?>
    <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ".$row['LastName']; ?></a></li>          
        <?php }
        ?>
    
        <br><br>
        <button type="submit" class="" name="ok"/>OK</button></div></form>
    <div style="width:55%">
    <h1>People you may know</h1>
    <?php $sql2 = "select username, FirstName, LastName from users where ((username in (select friend_id from friends where username in (select username from my_friends) and status='2'))
or (username in (select username from friends where friend_id in (select username from my_friends) and status='2')))
and username not in (select username from my_friends)
and username != '$username'";
    $query3 = mysqli_query($conn,$sql2);
        while($row = mysqli_fetch_array($query3,MYSQLI_ASSOC)) {?>
<li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ". $row['LastName']; ?></a>
       <?php }
    
    ?>
    </div>
</body>
</html>