<?php
include "conn.php";
if($_SERVER['REQUEST_METHOD']==='GET'){

  
$sql="SELECT * FROM badminton";

$e=mysqli_query($conn,$sql);
if(mysqli_num_rows($e)>0){
    // echo "corr";
    $data=array();
    while($result=mysqli_fetch_assoc($e)){

        $data[]=$result;
    }
    echo json_encode($data);



}
else{
    echo "not corr";
}
}
?>