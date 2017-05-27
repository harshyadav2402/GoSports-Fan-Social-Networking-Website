<?php
$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}
else {
    // Makes it easier to read
    $first_name = $_SESSION['firstname'];
    $last_name = $_SESSION['lastname'];
    $username = $_SESSION['username'];
    //$active = $_SESSION['active'];
    $sql = "select * from friends_diary_self2 order by posted_on desc";
    $query2 = mysqli_query($conn,$sql);
    $sql2 = "select * from users where username = '$username'";
    $query3 = mysqli_query($conn,$sql2);
    $data = mysqli_fetch_array($query3,MYSQLI_ASSOC);
    //$sql3 = "select * from comments_diary where "
}
$comm = "select * from comments_diary inner join users on users.username=comments_diary.commenter ORDER by comments_diary.entry_id";
       $result2= $conn->query($comm);
       if ($result2->num_rows > 0) {
            // output data of each row
            while($row = $result2->fetch_assoc()) {
                $comments[]=$row;
            }
        }
        
?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Welcome <?= $username ?></title>
  
  
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
</head>
<style>

.name{
	width:20%;
	float: left;
}
.title{
	float: left;
	width:80%;
}
.main-container{
	border-width: 1px;
	border:solid;
	padding-top: 0px;
	margin-top: 10px;
	background-color: #f9ecf2;
	margin-left: 100px;
}
.comment-container-inside{
	background-color:  #f0f0f5;
	margin-top: 10px;
}
.glyphicon-remove{
	float:right;
}
div.friend_sugg
{
  background-color: #ffeecc;
  position:fixed;
  top: 100px;
  width:200px;
  right: 5px;
  font-weight:bold;
}
.comments{
}

div.up_birth
{
  background-color: #ffeecc;
  position: fixed;
  top: 400px;
  width:200px;
  right: 5px;
  font-weight:bold;

}
.remove-post{
    color:red;
}
.green{
    color:green;
}
.red{
    color:red;
}.img{
    
}
.multimedia{
 padding-left: 100px;   
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript">
    

<body>
  
      <br><br>
      <p><h1>Your Feeds</h1></p>
          
          <?php while ($row = mysqli_fetch_array($query2,MYSQLI_ASSOC)) {?>
<?php $sql2 = "select * from users where username = '$row[username]'";
    $query3 = mysqli_query($conn,$sql2);
    $data = mysqli_fetch_array($query3,MYSQLI_ASSOC);
    ?>
<p>   <li><a href="/Sport/login-system/friends-profile.php?username=<?php echo $row['username']; ?>" ><img src="uploads/<?php echo $data['photo']; ?>" width="60" height="60" /></a> <a href="/Sport/login-system/profile-view.php?username=<?php echo $row['username']; ?>" ><?php echo $row['FirstName']." ".$row['LastName']; ?></a> <b>has posted: </b><?php echo $row['description'] ?> <b>titled </b><?php echo $row['title'] ?> <b> on </b><?php echo $row['posted_on'] ?> <b> in </b><?php echo $row['location'] ?></li><br>
<?php if($row['image']!==NULL) { ?>
               <img src="uploads/<?php echo $row['image']; ?>" width="300" height="300" /> 
           <?php }
        
            if($row['video']!==NULL) { ?>
                <video width="320" height="240" controls>
                    <source src="uploads/videos/<?php echo $row['video'] ?>" type="video/mp4">
  <source src="uploads/<?php echo $row['video'] ?>" type="video/ogg">
  
</video>
         <?php   }
          } ?>    
    
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>

</body>
</html>