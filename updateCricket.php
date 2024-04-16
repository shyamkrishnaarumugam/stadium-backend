<?php
include 'conn.php';
if($_SERVER['REQUEST_METHOD']==='GET'){
    $id=$_GET['id'];
    $name=$_GET['name'];
    $sql="UPDATE cricket SET  WHERE id='$id'";
}
else{
    echo 'not correct';
}
?>