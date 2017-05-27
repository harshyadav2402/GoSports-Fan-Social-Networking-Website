<?php
/* User login process, checks if user exists and password is correct */

// Escape email to protect against SQL injections
//$username = $mysqli->escape_string($_POST['username']);
//$password = $mysqli->escape_string($_POST['password']);
$result = $mysqli->query("SELECT * FROM users WHERE username = '$_POST[username]' and password = '$_POST[password]'");

$_SESSION['firstname'] = $_POST['FirstName'];
$_SESSION['lastname'] = $_POST['LastName'];
//$result = $mysqli->query("SELECT * FROM users WHERE username='$_POST[username]'");

//if ( $result->num_rows == 0 ){
if ($result->num_rows > 0) {	// User doesn't exist
    
	$sql = "INSERT INTO access(`username`) values ('$_POST[username]')";
	
	if ( $mysqli->query($sql) ){
		$_SESSION['username'] = $_POST['username'];
                
		$_SESSION['authen']=True;
		echo "$_SESSION[username]";
		$_SESSION['logged_in'] = true;
		header("location: profile1.php");
	}
	else {
		$_SESSION['message'] = "Cannot login";
		header("location: error.php");
	}
	
}
else {
	$_SESSION['message'] = "Username or password is not correct!!";
    header("location: error.php");
}
/*else { // User exists
    $user = $result->fetch_assoc();

    if (password_verify(jayesh123, jayesh123)) {
        
        $_SESSION['username'] = $user['username'];
        $_SESSION['first_name'] = $user['firstname'];
        $_SESSION['last_name'] = $user['lastname'];
        //$_SESSION['active'] = $user['active'];
        
        // This is how we'll know the user is logged in
        $_SESSION['logged_in'] = true;

        header("location: profile.php");
    }
    else {
        $_SESSION['message'] = "You have entered wrong password, try again!";
        header("location: error.php");
    }
}*/