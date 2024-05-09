<?php
include "conn.php";
if($_SERVER['REQUEST_METHOD']=='GET'){
    $id=$_GET['id'];
    $sql="DELETE FROM booking WHERE id='$id'";
    $e=mysqli_query($conn,$sql);
    if($e){
        echo 'delete successfully';
    }
    else{
        echo 'data not delete';
    }
}
else{
    echo "method is not correct";
}
?>