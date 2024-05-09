<?php
include 'conn.php';
if($_SERVER['REQUEST_METHOD']==='POST'){

    $name= $_POST['name'];
    $phone=$_POST['phone'];
    $venue=$_POST['venue'];
    $date=$_POST['date'];
    $slot=$_POST['slot'];
    $amount=$_POST['amount'];


    $sql="INSERT INTO booking(name,phone,venue,date,slot,amount)VALUES('$name','$phone','$venue','$date','$slot','$amount')";
    $e=mysqli_query($conn,$sql);
    if($e){
        echo 'data added';
    }
    else{
        echo 'data not added';
    }
}
else{
    echo "Method is not correct";
}
?>