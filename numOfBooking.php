<?php
include "conn.php";
if($_SERVER['REQUEST_METHOD']=='GET'){
    $sql="SELECT * FROM booking";
    $e=mysqli_query($conn,$sql);
    if($e){
        $result=mysqli_num_rows($e);
        echo json_encode($result);
    }
}
else{
    echo "method is not correct";
}
?>