<?php
include "conn.php";


$username = $_POST['username'];
$email = $_POST['email'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$password =$_POST['password'];

$sql = "INSERT INTO register(username, email, name,phone, password) VALUES ('$username','$email','$name','$phone','$password')";

$connect = mysqli_query($conn, $sql);

if($connect){
    echo "data added";
}
else{
    echo "not added";

}
?>