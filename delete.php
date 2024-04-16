<?php
include "conn.php";

$sql = "DELETE FROM suge WHERE name='balaji'";

$e = mysqli_query($conn, $sql);

if($e){
    echo "deleted";
}

else{
    echo "not deleted";
}

?>