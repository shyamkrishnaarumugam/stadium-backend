<?php
include 'conn.php';
if($_SERVER['REQUEST_METHOD']==='POST'){
    $id=$_POST['id'];
    $name=$_POST['name'];
    $games=$_POST['games'];
    $address=$_POST['address'];
    $city=$_POST['city'];
    $direction=$_POST['direction'];
    $contact=$_POST['contact'];
    $description=$_POST['description'];
    $image=$_POST['image'];
    $amount=$_POST['amount'];

    if (isset($_FILES["image"]) && $_FILES["image"]["error"] === UPLOAD_ERR_OK) {
        
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);
        move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    }



    $sql="UPDATE cricket SET name='$name', games='$games',address='$address',city='$city', direction='$direction', contact='$contact', description='$description', image='$image', amount='$amount'   WHERE id='$id'";
    $e=mysqli_query($conn, $sql);
    if($e){
        echo "data updated";

    }
    else{
        echo "data not added";
    }
}
else{
    echo 'not correct';
}
?>