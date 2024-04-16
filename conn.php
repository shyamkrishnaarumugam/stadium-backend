<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

$host = "localhost";
$uname = "username";
$pass = "password";
$db = "stadium";

$conn = mysqli_connect($host, $uname, $pass, $db );


?>