<?php 

$dbhost= 'localhost';
$dbname='web_techproject';
$dbuser= 'root';
$dbpassword='';


function getConnection() {

    global $dbhost;
    global $dbname;
    global $dbuser;
    global $dbpassword;

    $con = mysqli_connect($dbhost, $dbuser, $dbpassword, $dbname);
    return $con;

}



 ?>