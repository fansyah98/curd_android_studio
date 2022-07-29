<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
//MEndapatkan Nilai Dari Variable
$id = $_POST['id'];
$name = $_POST['name'];
$kategori = $_POST['kategori'];
$harga = $_POST['harga'];
//import file koneksi database
require_once('koneksi.php');
//Membuat SQL Query
$sql = "UPDATE tb_burung SET  name = '$name', harga = '$harga', kategori = '$kategori' WHERE id = $id;";
//Meng-update Database
if(mysqli_query($con,$sql)){
echo 'Berhasil Update Data Burung !!!';
}else{
echo 'Gagal Update Data Burung';
}
mysqli_close($con);
}
?>