<?php
//untuk mendapatkan nilai ID dari table mahasiswa
$id = $_GET['id'];
//Importing database
require_once('koneksi.php');
//Sql query dengan table mhs
$sql = "SELECT * FROM tb_burung WHERE id=$id";
//Mendapatkan Hasil
$r = mysqli_query($con,$sql);
//Memasukkan Hasil Kedalam Array
$result = array();
$row = mysqli_fetch_array($r);
array_push($result,array(
"id"=>$row['id'],
"name"=>$row['name'],
"kategori"=>$row['kategori'],
"harga"=>$row['harga'],
));
//Menampilkan data dalam format JSON
echo json_encode(array('result'=>$result));
mysqli_close($con);
?>