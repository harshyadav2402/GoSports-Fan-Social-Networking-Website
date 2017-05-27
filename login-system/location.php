<?php

$conn = new mysqli("localhost", "root", "jayesh", "project");
session_start();
$q = $_REQUEST["q"];
$location=[];
$query=" select location_name from userlocation where location_name like '%$q%' ";
$result=mysqli_query($con,$query);
if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        $location[] = $row;
    }
}
echo json_encode($location);
?>