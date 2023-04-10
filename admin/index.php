<?php session_start();


if(!isset($_SESSION['user_id'])){
header('location:../index.php');	
}
include "dbcon.php";

?>

<!DOCTYPE html>

<html lang="en">
<head>
<title>Admin</title>








</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Admin</a></h1>
</div>
<!--close-Header-part--> 







<!--end-Footer-part-->




</body>
</html>