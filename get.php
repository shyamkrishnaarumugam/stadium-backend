<?php
include "conn.php";

// $get = $_GET['data'];

$sql = "SELECT * FROM register";

$e = mysqli_query($conn, $sql);

if(mysqli_num_rows($e)>0){
    $data = array();
    while($result=mysqli_fetch_assoc($e)){
        // echo "\n" ;
        // echo $result['name'];
        $data[]=$result;
    }
    echo json_encode($data);
}

else{
    echo "not selected";
}
?>