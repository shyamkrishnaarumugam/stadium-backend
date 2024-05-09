<?php
include "conn.php";
if($_SERVER['REQUEST_METHOD']=='GET'){
    $id=$_GET['id'];
    $sql="SELECT * FROM cricket WHERE id='$id'";
    $e=mysqli_query($conn, $sql);
    if($e){
        // echo "successfull select";
        $data=array();
        while($result=mysqli_fetch_assoc($e)){
    
            $data[]=$result;
        }
        echo json_encode($data);
    
    }
    else{
        echo "some errors occurs";
    }
}
else{
    echo "method is not correct";
}
?>