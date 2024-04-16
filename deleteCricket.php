<?php
include 'conn.php';
if($_SERVER['REQUEST_METHOD']==='GET'){
    $id=$_GET['id'];
    $sql="DELETE FROM cricket WHERE id='$id'";
    $e=mysqli_query($conn,$sql);
    if($e){
        echo "data deleted";
    }
    else{
        echo "data not deleted";
    }

}
else{
    echo "method not correct";
}
?>