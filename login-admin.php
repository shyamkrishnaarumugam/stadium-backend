<?php
include 'conn.php';
$uname = $_GET['username'];
$pass = $_GET['password'];

$sql = "SELECT * FROM admin where username='$uname' AND password='$pass'";
$e = mysqli_query($conn, $sql);
if($e){
    echo "ok";
}
else{
    echo "not ok";
}

?>