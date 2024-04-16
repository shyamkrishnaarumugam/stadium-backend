<?php
    include 'conn.php';
    $sql="SELECT * FROM alert";
    $e=mysqli_query($conn,$sql);

    if(mysqli_num_rows($e)>0){
        $data = array();
        while($fin=mysqli_fetch_assoc($e)){
        
            $data[]=$fin;
    }
    $result=json_encode($data)  ;
    echo $result;
    }
    else{
        echo "something error";
    }
?>