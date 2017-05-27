<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title> View Profile</title>
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
  <script type="text/javascript">
      {
    var elem = document.getElementById("#mybutton");
    if (elem.value=="Send Request")  elem.value = "Cancel Request";
    else if (elem.value==" Cancel Request") elem.value='Send Request';
    else if (elem.value==" Unfriend") elem.value='Send Request';

    
}
</script>
<style>
 
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}

</style>
  
</head>

<body>

<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();

$friend_id = $_GET['username'];
if ( $friend_id!=$_SESSION['username']) {
    $username = $_SESSION['username'];
$sql = "select * from users where username = '$username'";
$result = $conn->query($sql);
$data = $result->fetch_assoc();
}
if ( !empty ( $_GET['username'] ) ) {
  $username = $_GET['username']; 
  $sql = "select * from users where username = '$username'";
$result = $conn->query($sql);
$data = $result->fetch_assoc();
}

if(!$_SESSION['username']){
    header('location: http://localhost:8080/Sport/login-system/index.php');
}
    $sql="select status from friends where (username=$_SESSION[username] and friend_id=$friend_id) or (username=$friend_id and friend_id=$_SESSION[username])";
    $result=mysqli_query($conn,$sql);
    if(mysqli_num_rows($result)!=0) {
        while($row=mysqli_fetch_assoc($result))
    {
        $action=$row['status'];
    }
    }
    else {
        static $action=null;
    }
?>

<!-- Checking Friend Status -->


<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  if(isset($_POST["Send_Request"])) {
      $query="insert into friends(`username`,`friend_id`,`status`,`request_sent`) values ('$_SESSION[username],'$friend_id',1)";
      $result=mysqli_query($conn,$query);
  }
  
  else if(isset($_POST["Cancel_Request"])) {
      $query="delete from friends where username='$_SESSION[username]' and friend_id='$friend_id'";
      $result=mysqli_query($conn,$query);
  }
  
  else if(isset($_POST["Unfriend"])) {
      $query="delete from friends where username='$_SESSION[username]' and friend_id='$friend_id'";
      $result=mysqli_query($conn,$query);
  }
}
?>

<form method='post' action=''>
    <input type="submit" name="<?php if ($action==2) { echo 'Unfriend';} else if ($action==null) {echo 'Send_Request';} else if ($action==1) {echo 'Cancel_Request';} ?>" 
                         value="<?php if ($action==2) { echo 'Unfriend';} else if ($action==null) {echo 'Send Request';} else if ($action==1) {echo 'Cancel Request';} ?>" onclick="change()" id="mybutton" >
</form>


    <div id="signup">
        
        <br>
        <form method="post" autocomplete="off" action="profile1.php">
              <div class="input, textarea, select">
                  <div style="width:35%"><br><br>
                      <h1>Your Profile!!</h1>
          <div class="top-row">
            <div class="field-wrap">
              
              First Name: <?php echo $data['FirstName']; ?>
            </div>
        
            <div class="field-wrap">
              
              Last Name: <?php echo $data['LastName']; ?>
            </div>
          </div>
                      <div class="field-wrap">
            
            Username: <?php echo $data['username']; ?>
          </div>
              <div class="field-wrap">
            
            Email Address: <?php echo $data['EmailId']; ?>
          </div>
              <div class="field-wrap">
              
              Country: <?php echo $data['country']; ?>
            </div>
          
		  
		  <div class="field-wrap">
              
              State: <?php echo $data['State']; ?>
            </div>
          
		  
		  <div class="field-wrap">
              
              City: <?php echo $data['city']; ?>
            </div>
          
		  
		  <div class="field-wrap">
              
              Interests: <?php echo $data['Interests']; ?>
            </div>
              <div class="field-wrap">
              
              Profile Privacy: <?php echo $data['privacy']; ?>
            </div>
          
		  <div class="field-wrap">
            
            <!--Profile Picture: <a href="uploads/<?php echo $data['photo']; ?>" target="_blank">View Profile Picture</a>-->
                      Profile Picture: <img src="uploads/<?php echo $data['photo']; ?>" width="200" height="200" />
            <br><br>
            <a href="uploads/<?php echo $row['file'] ?>"
          </div>
		  
          
          <button type="submit" class="button button-block" name="ok" />OK</button>
                  <br><br>
          

        </div>
              </div></form>
    </div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
  <script src="//geodata.solutions/includes/countrystatecity.js"></script>

    <script src="js/index.js"></script>

</body>
</html>
