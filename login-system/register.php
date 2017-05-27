<?php
/* Registration process, inserts user info into the database 
   and sends account confirmation email message
 */
// Set session variables to be used on profile.php page
$conn = new mysqli("localhost", "root", "jayesh", "project");
$_SESSION['username'] = $_POST['username'];
$_SESSION['firstname'] = $_POST['firstname'];
$_SESSION['lastname'] = $_POST['lastname'];

// Escape all $_POST variables to protect against SQL injections
/*$first_name = $mysqli->escape_string($_POST['firstname']);
$last_name = $mysqli->escape_string($_POST['lastname']);
$email = $mysqli->escape_string($_POST['email']);
$password = $mysqli->escape_string(password_hash($_POST['password'], PASSWORD_BCRYPT));
$hash = $mysqli->escape_string( md5( rand(0,1000) ) );*/
      
// Check if user with that email already exists
$result = $mysqli->query("SELECT * FROM users WHERE username='$_POST[username]'");
$file = rand(1000,100000)."-".$_FILES['file']['name'];
$file_loc = $_FILES['file']['tmp_name'];
$file_size = $_FILES['file']['size'];
$file_type = $_FILES['file']['type'];
$folder="uploads/";
move_uploaded_file($file_loc,$folder.$file);
//$result = mysqli_query($conn, $sql);

// We know user email exists if the rows returned are more than 0
if ($row = mysqli_fetch_assoc($result)) {
    
    $_SESSION['message'] = 'User with this username already exists!';
    header("location: error.php");
    
}
else { // Email doesn't already exist in a database, proceed...

    // active is 0 by DEFAULT (no need to include it here)
    $sql = "INSERT INTO users(`FirstName`,`LastName`,`username`,`password`,`age`,`city`,`EmailId`,`Interests`,`privacy`,`country`,`State`,`photo`) VALUES ('$_POST[firstname]','$_POST[lastname]','$_POST[username]','$_POST[password]','$_POST[age]','$_POST[city]','$_POST[email]','$_POST[interests]','$_POST[privacy]','$_POST[country]','$_POST[state]','$file')";
    $sql2 = "INSERT INTO image values('$_POST[username]', '$file','$file_type','$file_size')";
    $mysqli->query($sql2);
    // Add user to the database
    if ( $mysqli->query($sql) ){

        $_SESSION['active'] = 0; //0 until user activates their account with verify.php
        $_SESSION['logged_in'] = true; // So we know the user has logged in
        //$_SESSION['message'] = "Confirmation link has been sent to $email, please verify your account by clicking on the link in the message!";

        // Send registration confirmation link (verify.php)
        /*$to      = $email;
        $subject = 'Account Verification ( clevertechie.com )';
        $message_body = '
        Hello '.$first_name.',

        Thank you for signing up!

        Please click this link to activate your account:

        http://localhost/login-system/verify.php?email='.$email.'&hash='.$hash;  

        mail( $to, $subject, $message_body );

        header("location: profile.php");*/

    }

    else {
        $_SESSION['message'] = 'Registration failed!';
        header("location: error.php");
    }

}