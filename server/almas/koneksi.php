<?php
//Mendefinisikan Konstanta
define('HOST','localhost');
define('USER','root');
define('PASS','');
define('DB','14519068_almasfairuz');
//membuat koneksi untuk database
$con = mysqli_connect(HOST,USER,PASS,DB) or die('Unable to Connect');
?>