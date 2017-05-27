<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
if ( !empty ( $_GET['username'] ) ) {
  $username = $_GET['username']; 
  $sql = "select * from users where username = '$username'";
$result = $conn->query($sql);
$data = $result->fetch_assoc();
}
else {
$username = $_SESSION['username'];
$sql = "select * from users where username = '$username'";
$result = $conn->query($sql);
$data = $result->fetch_assoc();
}
?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title> View Profile</title>
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
  
</head>

<body>
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
            
            <!--Profile Picture: <a href="uploads/" target="_blank">View Profile Picture</a>-->
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
