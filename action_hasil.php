<?php
	include("inc/koneksi.php");
	include("inc/function.php");
	if(isset($_GET['id'])){
		if(!empty($_GET['id'])){
			$id_sispak= _kd_auto('id_sispak','tb_sispak','S');
			$tanggal=date('Y-m-d');
			$id_user=$_SESSION['s_id_user'];
			$id_penyakit=$_GET['id'];
			$nilai=$_GET['nilai'];
			$sql="insert into tb_sispak(id_sispak,tanggal,id_user,id_penyakit,nilai_kepastian)values('".$id_sispak."','".$tanggal."','".$id_user."','".$id_penyakit."','".$nilai."')";
			$result=mysql_query($sql);
			echo '<script> window.location.href="index.php" </script>';
		}
	}
?>
