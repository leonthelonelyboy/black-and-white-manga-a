<?php
//session_start();

//$dbhost = "localhost";
//$user = "root";
//$pass = "";
//$dbname = "manga_proj";

 $dbhost = "us-cdbr-east-04.cleardb.com";
 $user = "b315cc8efc76f9";
 $pass = "60732d24";
 $dbname = "heroku_f9dfc34899b2484";

$conn = mysqli_connect($dbhost, $user, $pass);
mysqli_select_db($conn, $dbname);
//$imagePath = "images/data_img";
$title = 'Home';
//$currentUser = $_SESSION['userId'] ?? '';
// $pageno = 1;
// $limit = 10;
// $limit_u = 9;
?>
