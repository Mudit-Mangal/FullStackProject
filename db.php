<?php
$con =  new mysqli("localhost","root","","clothes");

//check connection
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}


?>