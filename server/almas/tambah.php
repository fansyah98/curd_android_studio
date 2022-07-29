<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
//Mendapatkan Nilai Variable

$name = $_POST['name'];
$kategori = $_POST['kategori'];
$harga = $_POST['harga'];

//Pembuatan Syntax SQL
$sql = "INSERT INTO tb_burung (  name ,kategori, harga ) VALUES ( '$name','$kategori','$harga')";
//Import File Koneksi database
require_once('koneksi.php');
//Eksekusi Query database
if(mysqli_query($con,$sql)){
echo 'Data Burung Berhasil di tambhkan !!';
}else{
echo 'Gagal Menambahkan Data Burung';
}
mysqli_close($con);
}
?>