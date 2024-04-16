<?php
include 'conn.php';
if($_SERVER['REQUEST_METHOD']==='GET'){
    
    $sql="UPDATE * FROM cricket WHERE id='$id'";
}
else{
    echo 'not correct';
}
?>