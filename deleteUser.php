<?php
include 'conn.php';
$id=$_GET['id'];
$sql="DELETE  FROM register WHERE id=$id";

$result=mysqli_query($conn,$sql);

if($result){
   
}
else{
}
?>