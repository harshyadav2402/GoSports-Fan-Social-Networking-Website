<?php
$conn = new mysqli("localhost", "root", "jayesh", "project");
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
session_start();
//require_once('class-query.php');
//require_once('class-insert.php');
//require_once('class-insert.php');

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}

else {
    $username = $_SESSION['username'];
    //$user = $query->load_user_object($username);
    $sql = "select * from users where username = '$username'";
    $result = $conn->query($sql);
    $data = $result->fetch_assoc();
    
    
    //echo $data['FirstName'];
    //$result = $mysqli->query("select * from users where username = '$username'");
    //$user = mysqli_fetch_assoc($result);
}

?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title> Edit Profile</title>
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
  
</head>

<body>
    <div id="signup">  
        
        <br>
        <form method="post" autocomplete="off" action="user-edit.php">
              <div class="input, textarea, select">
                  <div style="width:35%">
                      <h1>Edit Your Profile here!!</h1>
          <div class="top-row">
            <div class="field-wrap">
              
              First Name:<input type="text" autocomplete="off" name="FirstName" id="FirstName" value="<?php echo $data['FirstName']; ?>" />
            </div>
        
            <div class="field-wrap">
              
              Last Name:<input type="text" autocomplete="off" name="LastName" value="<?php echo $data['LastName']; ?>" />
            </div>
          </div>
              <div class="field-wrap">
            
            Email Address:<input type="email" autocomplete="off" name="EmailId" value="<?php echo $data['EmailId']; ?>" />
          </div>
              <div class="field-wrap">
              
              Country:<select name="country" class="countries" id="countryId">
        <option  value="<?php echo $data['country']; ?>"><?php echo $data['country']; ?></option>
        </select>
            </div>
          
		  
		  <div class="field-wrap">
              
              State:<select name="State" class="states" id="stateId">
			<option value="<?php echo $data['State']; ?>"><?php echo $data['State']; ?></option>
			</select>
            </div>
          
		  
		  <div class="field-wrap">
              
              City:<select name="city" class="cities" id="cityId">
			<option  value="<?php echo $data['city']; ?>"><?php echo $data['city']; ?></option>
			</select>
            </div>
          
		  
		  <div class="field-wrap">
              
              Interests:<input type="text" name="Interests" value="<?php echo $data['Interests']; ?>" />
            </div>
              <div class="field-wrap">
              
              Profile Privacy:<select name="privacy">
                 <option value="<?php echo $data['privacy']; ?>" selected><?php echo $data['privacy']; ?></option>
                <option value="1">Visible to Everyone</option>
                <option value="2">Visible to Friends</option>
                <option value="3">Visible to Friends of Friends</option>
			</select>
            </div>
          
		  <div class="field-wrap">
            
            Profile Picture:<input type="file" autocomplete="off" name="photo" value="Change Picture" /><img src="uploads/<?php echo $data['photo']; ?>" width="200" height="200" />
          </div>
		  
          
          <button type="submit" class="button button-block" name="update_profile" />Update</button>
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