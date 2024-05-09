<?php
include 'conn.php';
session_start();

$json = file_get_contents('php://input');
$obj = json_decode($json, true); 

$action = isset($obj['action']) ? $obj['action'] : '';

if ($action === 'login') {
    $username = isset($obj['username']) ? $obj['username'] : '';
    $password = isset($obj['password']) ? $obj['password'] : '';

    if (!empty($username) && !empty($password)) {
        $stmt = $conn->prepare("SELECT * FROM admin WHERE username=? AND password=?");
        $stmt->bind_param("ss", $username, $password);
        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $response = array(
                'status' => 'success',
                'message' => 'Login successful',
                'user_details' => $row
            );
            echo json_encode($response);
        } else {
            $response = array(
                'status' => 'error',
                'message' => 'Invalid login credentials'
            );
            echo json_encode($response);
        }
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Username or password is empty'
        );
        echo json_encode($response);
    }
} elseif ($action === 'logout') {
    session_unset();
    session_destroy();
    echo json_encode(['success' => false]);
}
mysqli_close($conn);
?>
