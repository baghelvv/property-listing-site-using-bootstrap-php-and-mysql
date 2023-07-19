<?php
 session_start();
include 'Admin/connection.php';

$IP = $_SERVER['REMOTE_ADDR'];
$user = $_SESSION['use'];

 $sql= ("UPDATE `user` SET `Last Login`= CURRENT_TIMESTAMP , `Login Ip` = '{$IP}' WHERE `username` = '$user' ");
$result = mysqli_query($conn, $sql);
$result = $conn->query($result);

  echo "Logout Successfully ";
  
  session_destroy();   
  header("Location: index.php");
?>