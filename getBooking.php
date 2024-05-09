<?php
include "conn.php";
if($_SERVER['REQUEST_METHOD']=='GET'){

    $sql="SELECT * FROM booking ORDER BY id DESC";
    $e=mysqli_query($conn,$sql);
    
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
        echo "data not selected";
    }
    

}
else{
    echo "Method is not correct";
}
?>