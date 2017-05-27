
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
    //$sql3 = 
    //$sql3 = "select * from comments_diary where "
    
}
?>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Welcome <?= $username ?></title>
  
  
  <?php include ('navigation.php'); ?>
  <?php include 'css/css.html'; ?>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<script>
    $(document).ready(function(){
        //alert('sa');
    $(".like").click(function(){
        
        if( $(this).val()== 'Like'){
            $(this).val('Unlike') ;
            //alert($(this).attr('val'));
           //alert($('#like_'+$(this).attr('val')).attr('value'));
           var count = parseInt($('#like_'+$(this).attr('val')).attr('value'));
           count++;
           //$('#like_'+$(this).attr('val')).attr('value')=count;
           $('#like_'+$(this).attr('val')).html(count);
           $('#like_'+$(this).attr('val')).attr('value',count);
           //$('#like_'+$(this).attr('val')).val() = count;
           //alert(count);
        }else{
            $(this).val('Like');
           // alert($(this).attr('val'));
        //alert($('#like_' + $(this).attr('val') ).attr('value'));
        var count = parseInt($('#like_'+$(this).attr('val')).attr('value'));
           count--;
           //$('#like_'+$(this).attr('val')).attr('value') = count;
           $('#like_'+$(this).attr('val')).html(count);
           $('#like_'+$(this).attr('val')).attr('value',count);
           //$('#like_'+$(this).attr('val')).val() = count;
            //alert(count);
        }
        
    });
    $(".like_count").click(function(){
        //alert($(this).attr('value'));
    })
});
</script>
<style>
    .comment{
        background-color: lightblue;
        padding-left:200px;
    }
</style>

<body>
  
      <br><br>
      <p><h1>Your Feeds</h1></p>
          
          <?php while ($row = mysqli_fetch_array($query2,MYSQLI_ASSOC)) {
              $sql4 = "select count(*) as Likes from likes where entry_id='$row[entry_id]'";
              $query4 = mysqli_query($conn,$sql4);
              $data4 = mysqli_fetch_array($query4,MYSQLI_ASSOC);
              $sql5 = "select * from comments_post where entry_id='$row[entry_id]'";
              $query5 = mysqli_query($conn,$sql5);
              $data5 = mysqli_fetch_array($query5,MYSQLI_ASSOC);
              //var_dump($data5);
              $temp=[];
             if($query5->num_rows>0) {
                 while($x=$query5->fetch_assoc()) {
                     $temp[]=$x;
                 }
             }
            // var_dump($temp);
              ?>
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
  
                </video><br>
         <?php   }?>
               
        <?php  echo "<div style='width:15%'><div id='like_".$row['entry_id']."' class='like_count' value='".$data4['Likes']."'>".$data4['Likes']."</div><input type='button' val='".$row['entry_id']."' id='like_count_block_".$row['entry_id']."' class='like' name='like' value='Like' ></div><br>";  ?>
            <?php 
            foreach( $temp as $x){
                 echo "<div class='comment' style='' >".$x['content']."</div>";
                //echo $x['content'];
            }
           
            echo "<form method='post'>
                <input type ='hidden' value='".$row['entry_id']."' name='entry_id'>
                <div style='width:60%'><input type='text' name='comment' ></div>
                <div style='width:15%'><input type='submit' name='comment_' value='Comment'></div>
            </form>";
            //var_dump($data5);
            //echo $data5['content'];
            } ?>
               <?php 
if(isset($_POST['comment_']))
{

    $sql6 = "insert into comments_post(`entry_id`,`commenter`,`content`) values('$_POST[entry_id]','$_SESSION[username]','$_POST[comment]')";
    //echo $sql6;
    $query6 = mysqli_query($conn,$sql6);
    if($query6)
    {
        header("Refresh:0");
    }
    
}
?>
    
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/index.js"></script>

</body>
</html>