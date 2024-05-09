




<?php

include 'conn.php';

if($_SERVER['REQUEST_METHOD']==='POST'){

     echo "succ";
    $name =  $_POST['name'];
    $games = $_POST['games'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $direction = $_POST['direction'];
    $contact = $_POST['contact'];
    $description = $_POST['description'];
    $amount=$_POST['amount'];
    $image=$_POST['image'];


    //  if (isset($_FILES["image"]) && $_FILES["image"]["error"] === UPLOAD_ERR_OK) {
        
    //     $target_dir = "uploads/";
    //     $target_file = $target_dir . basename($_FILES["image"]["name"]);
    //     move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    // }

  
    //  $name = mysqli_real_escape_string($conn, $name);
    // $games = mysqli_real_escape_string($conn, $games);
    // $address = mysqli_real_escape_string($conn, $address);
    // $city = mysqli_real_escape_string($conn, $city);
    // $direction = mysqli_real_escape_string($conn, $direction);
    // $description = mysqli_real_escape_string($conn, $description);
    // $target_file = mysqli_real_escape_string($conn, $target_file);
    
    if (isset($_FILES["image"]) && $_FILES["image"]["error"] === UPLOAD_ERR_OK) {
        
        $target_dir = "uploads/";
        $target_file = $target_dir . basename($_FILES["image"]["name"]);
        move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    }

     
    $sql = "INSERT INTO cricket(name, games,address,city,direction,contact,description,image,amount)
    VALUES('$name','$games','$address','$city','$direction','$contact','$description','$target_file','$amount')";

    $e=mysqli_query($conn,$sql);

    if($e){
        echo "data  added";

    }
    else{
        echo "data not added";
    }
}
else{
    echo "not success";
}
    

     
     ?>
