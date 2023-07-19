<?php
session_start();


include 'Admin/connection.php';

//====================code for fetching auth details=====================================

if(isset($_POST['signin'])){


	$Email = $_REQUEST['email'];
	$password = MD5($_REQUEST['password']);


$sql = "SELECT * FROM User Where `Email` = '$Email' AND `user type` = 'Subscriber' ";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
   $ID =$row["id"];
    $User =$row["username"];
     $Gmail =$row["Email"];
     $dPass=$row["Password"];
     
    }
} else {
  echo "0 results";
}

// echo $ID. " ". $User ." ".$Gmail. " ". $dPass;

if ($Gmail == $Email AND $dPass == $password) {
// $sql= ("UPDATE `user` SET `Last Login`= CURRENT_TIMESTAMP , `Login Ip` = '{$IP}' WHERE `Email` = '$Email' ");
// $result = mysqli_query($conn, $sql);
// $result = $conn->query($result);
	 //$result = mysqli_query($conn, $sql);
   $_SESSION['use'] = $User;



	echo '
	<script type="text/javascript">
alert("Login Successfull");
location="index.php";
</script>';
 
} else{
		echo '
	<script type="text/javascript">
alert("Please Check The Details");
location="login.php";
</script>';

} 




if($_POST["remember_me"]=='1' || $_POST["remember_me"]=='on')
                    {
                    $hour = time() + 3600 * 24 * 30;
                    setcookie('username', $login, $hour);
                         setcookie('password', $password, $hour);
                         echo"cookie seted";
                    }

}
		


//===================== code for registering user =====================================

if(isset($_POST['signup'])){

$username = $_POST['username'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$password = MD5($_POST['password']);
$ip = $_SERVER['REMOTE_ADDR'];
$profile = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDhPz7CL8gVPIQ3wkwqaslgqc8DJ_XlzT9rg&usqp=CAU';

//echo $username."<br> ".$name."<br> ".$phone."<br> ".$email." <br>".$password. " <br>".$ip."<br> ".$profile ;





$sql = "INSERT INTO `user` (`id`, `username`, `Name`, `phone`, `Email`, `Password`, `user type`, `Last Login`, `IP address`, `User Create on`, `Modification date`, `Profile`) VALUES (NULL, '$username', '$name', '$phone', '$email', '$password', 'Subscriber', NOW(), '$ip', NOW(), NOW(), '$profile')";

if($result = mysqli_query($conn, $sql))

  echo '
  <script type="text/javascript">
alert("Registered Successfully continue with login");
location="login.php";
</script>';
 

}else{
  echo "there was an error";
}




//======================code for forgot password ======================================

if(isset($_POST['resetpwdbtn'])){
	echo "forgot pwd hitted";
}




?>