<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$username = $_SESSION['username'];

if ( $_SESSION['logged_in'] != 1 ) {
  $_SESSION['message'] = "You must log in before viewing your profile page!";
  header("location: error.php");    
}

else if (isset($_POST['post_data'])) {
    $sql2 = "select entry_id from diary order by posted_on desc limit 1";
    
    $file = rand(1000,100000)."-".$_FILES['image']['name'];
$file_loc = $_FILES['image']['tmp_name'];
$file_size = $_FILES['image']['size'];
$file_type = $_FILES['image']['type'];
$folder="uploads/";
move_uploaded_file($file_loc,$folder.$file);

//uploading video
$video = rand(1000,100000)."-".$_FILES['video']['name'];
 $video_loc = $_FILES['video']['tmp_name'];
 $video_size = $_FILES['video']['size'];
 $video_type = $_FILES['video']['type'];
 $folderv="uploads/videos/";
 move_uploaded_file($video_loc,$folderv.$video);
    
    $result2 = $conn->query($sql2);
    $data = $result2->fetch_assoc();
    //echo $data['entry_id'];
    $sql = "INSERT INTO diary(`entry_id`,`username`,`description`,`privacy`,`title`,`image`,`video`,`location`) VALUES ('$data[entry_id]'+1,'$username','$_POST[status_content]','$_POST[privacy]','$_POST[post_title]','$file','$video','$_POST[location]')";
    $result = $conn->query($sql);
    $location=$_POST['location'];
  $query="select location_name from userlocation where location_name like '%$location%' ";
  $result=mysqli_query($conn,$query);
  if( mysqli_num_rows($result) <= 0 )
  {
    $query2=" insert into userlocation(location_name) values ('$location')";
    mysqli_query($conn,$query2);
  }
}

?>

<html>
<head>
  <meta charset="UTF-8">
  <title>Welcome <?= $username ?></title>
  
  
  <?php include 'navigation.php'; ?>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script>
function showHint(str) {
    if (str.length == 0) { 
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        var html = "";
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var data = JSON.parse(this.responseText);
                //document.getElementById("txtHint").innerHTML = data['loc_name'];
                var len=0;
                for(var key in data)
                {
                    len ++;
                    //document.getElementById("txtHint").innerHTML = data[key]['loc_name'];
                    console.log(data[key]['location_name']);
                    html += "<option value='"+data[key]['location_name']+"'>"+data[key]['location_name']+"</option>";
                }
                
            }
            $('#dropdown').html(html);
            $('#dropdown').attr("size", len); // open dropdown

        };

        xmlhttp.open("GET", "location.php?q=" + str, true);
        xmlhttp.send();
    }
}
</script>
  
</head>


<body>
  
      <br><br>
      <p><h1>Post Status</h1>
          <div class="content">
			<form method="post" enctype="multipart/form-data">
					<input name="status_time" type="hidden" value="<?php echo time() ?>" />
				<p>What's on your mind?</p>
                                <p>Post Title:<input type="text" autocomplete="off" name="post_title"></p>
                                <p>Your Post:<textarea name="status_content"></textarea></p>
                                <P>Select Privacy Level:<select name="privacy">
                <option value="1">Visible to Everyone</option>
                <option value="2">Visible to Friends</option>
                <option value="3">Visible to Friends of Friends</option>
                                    </select>
                                <input type="text" list='dropdown' placeholder='Location' onkeyup="showHint(this.value)" name='location'><br>
<datalist id='dropdown'>

</datalist></p>
                                Upload Image: <input type="file" name="image"/>
                                Upload Video: <input type="file" name="video"/>
                                <!--Upload Video: <input type="file" name="file"/>-->
				<p>
					<input type="submit" value="Submit" name="post_data" />
				</p>
			</form>
		</div>
	</body>
</html>
          

