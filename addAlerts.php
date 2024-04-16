<?php
include 'conn.php';
$alert=$_POST['alert'];
$sql="INSERT INTO alert(alert) VALUE('$alert')";
$result=mysqli_query($conn,$sql);
if($result){
    echo "alter ok";
}
else{
    echo "alter Not ok";
}
?>