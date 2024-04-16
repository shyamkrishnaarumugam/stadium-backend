<?php
include "conn.php";


$username = "admin";

$password ="admin";

$sql = "INSERT INTO admin(username,password) VALUES ('$username','$password')";

$connect = mysqli_query($conn, $sql);

if($connect){
    echo "data added";
}
else{
    echo "not added";

}
?>