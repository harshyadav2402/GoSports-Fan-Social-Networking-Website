<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title> Friends</title>
  <?php include ('navigation.php'); ?>
  
</head>
<body>
    <form action='' method='post'><br><br>
   <p>Search: <input type="text" name="keyword"  Placeholder="Keyword" >
   By
   <select name="key">
    <option value='post'> Posts </option>
    <option value='people'> People </option>
    <option value='interests'> Interests </option>
    <option value='location'> Country </option>
    <input type='submit' value='Search' name='Search'></p>
</form>
</body>
</html>
<?php
session_start();
$conn = new mysqli("localhost", "root", "jayesh", "project");

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}
else {
    $keyword=$_POST["keyword"];
}
if ($keyword==null) { ?>
    <h2> Kindly insert a keyword to search</h2>
<?php }

else if($_POST['key']=='post') {
    $query = "select d.username as username, d.description as description, d.title as title, d.posted_on as posted_on, d.image as image, d.video as video, u.FirstName as firstname, u.LastName as lastname, u.photo as photo from diary d inner join users u on d.username=u.username where (d.description like '%$keyword%') or (d.title like '%$keyword%')";
    $result = mysqli_query($conn,$query);
    if (mysqli_num_rows($result) > 0) { ?>
    <h2> Search results for your query:</h2>
    <?php 
    while($row = mysqli_fetch_assoc($result)) { ?>
        <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>" ><img src="uploads/<?php echo $row['photo']; ?>" width="60" height="60" /></a> <a href="/Sport/login-system/profile-view.php?username=<?php echo $row['username']; ?>" ><?php echo $row['firstname']." ".$row['lastname']; ?></a> <b>has posted: </b><?php echo $row['description'] ?> <b>titled </b><?php echo $row['title'] ?> <b> on </b><?php echo $row['posted_on'] ?></li><br>
    <?php }
    }
    else { ?>
        <h3> No results found!! </h3>
    <?php }
}
else if($_POST['key']=='people') {
    $query = "SELECT * from users where (username like '%$keyword%') OR (FirstName like '%$keyword%') OR (LastName like '%$keyword%')";
    $result = mysqli_query($conn,$query);
    if (mysqli_num_rows($result) > 0) { ?>
        <h3> Search results for users:</h3>
    <?php 
    while($row = mysqli_fetch_assoc($result)) { ?>
        <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ".$row['LastName']; ?></a></li>
    <?php }
    }
    else {
        ?>
        <h3> No users found!! </h3>
    <?php
    }
}

else if($_POST['key']=='interests') {
    $query = "select * from users where Interests like '%$keyword%'";
    $result = mysqli_query($conn,$query);
    if (mysqli_num_rows($result) > 0) { ?>
        <h3> Below are the users with similar interests:</h3>
    <?php 
    while($row = mysqli_fetch_assoc($result)) { ?>
        <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ".$row['LastName']; ?></a></li>
    <?php }
    }
    else {
        ?>
        <h3> No users with similar interests found!! </h3>
    <?php
    }
}

else if($_POST['key']=='location') {
    $query = "select * from users where country like '%$keyword%'";
    $result = mysqli_query($conn,$query);
    if (mysqli_num_rows($result) > 0) { ?>
        <h3> Below are the users found in the provided location:</h3>
    <?php 
    while($row = mysqli_fetch_assoc($result)) { ?>
        <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>"><?php echo $row['FirstName']." ".$row['LastName']; ?></a></li>
    <?php }
    }
    else {
        ?>
        <h3> No users in this location found!! </h3>
    <?php
    }
}
?>