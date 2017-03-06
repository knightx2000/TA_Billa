<?php
include_once '../inc/koneksi.php';
include_once '../inc/function.php';

//$tabel=$_GET['tabel'];
//$field=$_GET['field'];
$id=$_GET['id'];
$list=$_GET['list'];
$id_penyakit=$_GET['id_penyakit'];

$sql="delete from tb_aturan where id_aturan='".$id."'";
$result=mysql_query($sql)or die (mysql_error());

/*echo "<meta http-equiv='refresh' content='0;
	url=home.php?list=$list>";
	exit;*/
	header("location:form_ubah.php?list=$list&id=$id_penyakit");

?>