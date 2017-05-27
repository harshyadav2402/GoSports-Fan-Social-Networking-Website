<?php 
/* Main page with two forms: sign up and log in */
require 'db.php';
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <title>Sign-Up/Login Form</title>
  <?php include 'css/css.html'; ?>
</head>

<?php 
if ($_SERVER['REQUEST_METHOD'] == 'POST') 
{
    if (isset($_POST['login'])) { //user logging in

        require 'login.php';
        
    }
    
    elseif (isset($_POST['register'])) { //user registering
        
        require 'register.php';
        
    }
}
?>
<body>
  <div class="form">
      
      <ul class="tab-group">
        <li class="tab"><a href="#signup">Sign Up</a></li>
        <li class="tab active"><a href="#login">Log In</a></li>
      </ul>
      
      <div class="tab-content">

         <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="index.php" method="post" autocomplete="off">
          
            <div class="field-wrap">
            <label>
              Username<span class="req">*</span>
            </label>
            <input type="text" required autocomplete="off" name="username"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" required autocomplete="off" name="password"/>
          </div>
          
          <p class="forgot"><a href="forgot.php">Forgot Password?</a></p>
          
          <button class="button button-block" name="login" />Log In</button>
          
          </form>

        </div>
          
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          <form action="index.php" method="post" autocomplete="off" enctype="multipart/form-data">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name='firstname' />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name='lastname' />
            </div>
          </div>
		  
		  <div class="field-wrap">
              <label>
                Username<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name='username' />
            </div>
          
		  
		  <div class="field-wrap">
              <label>
                Set Password<span class="req">*</span>
              </label>
              <input type="password" required name='password' autocomplete="new-password" />
            </div>
          

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" name='email' />
          </div>
		  
		  <div class="field-wrap">
              <label>
                Age<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name='age' />
            </div>
          
          
          <div class="field-wrap">
              
              <select name="country" class="countries" id="countryId">
        <option value="">Select Country</option>
        </select>
            </div>
          
		  
		  <div class="field-wrap">
              
              <select name="state" class="states" id="stateId">
			<option value="">Select State</option>
			</select>
            </div>
          
		  
		  <div class="field-wrap">
              
              <select name="city" class="cities" id="cityId">
			<option value="">Select City</option>
			</select>
            </div>
          
		  
		  <div class="field-wrap">
              <label>
                Interests<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off" name='interests' />
            </div>
          
		  
		  <div class="field-wrap">
              
              <select name="privacy">
                <option value="1">Visible to Everyone</option>
                <option value="2">Visible to Friends</option>
                <option value="3">Visible to Friends of Friends</option>
			</select>
            </div>
          
		  <div class="field-wrap">
            
            <input type="file" autocomplete="off" name="file" value='Upload Picture' />
          </div>
		  
          
          <button type="submit" class="button button-block" name="register" />Register</button>
          
          </form>

        </div>  
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
  <script src="//geodata.solutions/includes/countrystatecity.js"></script>

    <script src="js/index.js"></script>

</body>
</html>
