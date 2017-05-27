<?php 

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
if (isset($_POST['reset'])) {
    $sql = "UPDATE users set password = '$_POST[newpassword]' WHERE username = '$_POST[username]'";
    $conn->query($sql);
    header("location: index.php");
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Reset Your Password</title>
  <?php include 'css/css.html'; ?>
</head>

<body>
    
  <div class="form">

    <h1>Reset Your Password</h1>

    <form action="forgot.php" method="post">
     <div class="field-wrap">
      <label>
        Username<span class="req">*</span>
      </label>
      <input type="text"required autocomplete="off" name='username'/>
    </div>
    
    
    <div class="field-wrap">
            <label>
              New Password<span class="req">*</span>
            </label>
            <input type="password" autocomplete="off" name='newpassword'/>
          </div>
              
          <div class="field-wrap">
            <label>
              Confirm New Password<span class="req">*</span>
            </label>
            <input type="password" autocomplete="off" name='confirmpassword'/>
          </div>
    <button type="submit" class="button button-block" name="reset" />Reset</button>
    </form>
    
  </div>
          
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>
</body>

</html>