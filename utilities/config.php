<?php
//session_start();

//$dbhost = "localhost";
//$user = "root";
//$pass = "";
//$dbname = "manga_proj";

 $dbhost = "us-cdbr-east-02.cleardb.com";
 $user = "be9d3bc6ef6d71";
 $pass = "bb43538f";
 $dbname = "heroku_8306e03e292f018";

$conn = mysqli_connect($dbhost, $user, $pass);
mysqli_select_db($conn, $dbname);
//$imagePath = "images/data_img";
$title = 'Home';
//$currentUser = $_SESSION['userId'] ?? '';
// $pageno = 1;
// $limit = 10;
// $limit_u = 9;
?>
