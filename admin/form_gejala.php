<?php
include_once 'header.php';
include("../inc/koneksi.php");
if(isset($_GET['id'])){
	$param="G";
$sql="select * from tb_gejala order by id_gejala Asc";
$result=mysql_query($sql);
//$data=mysql_fetch_assoc($result);
}

if(isset($_POST['update'])){
	$id_penyakit= $_GET['id'];
	$sql_del="delete from tb_aturan where id_penyakit='".$id_penyakit."'";
	mysql_query($sql_del);
	
	$jmlAr=COUNT($_POST['chk']);
	for($i=0;$i<$jmlAr;$i++){
		$sql_s="insert into tb_aturan(id_penyakit,id_gejala)values('".$id_penyakit."','".$_POST['chk'][$i]."')";
		mysql_query($sql_s);
	}
	$_SESSION ['add']='<div class="alert alert-success"> Data berhasil disimpan </div>';
}
?>
<html>
<head>

</head>
<body>
<form class="form-horizontal" id="frm_aturan" name="frm_aturan" action="form_gejala.php?list=<?php echo $_GET['list'];?>&id=<?php echo $_GET['id'];?>" method="post">
            <input type="hidden" name="list" value="<?php echo $_GET['list'];?>" />
            <input type="hidden" name="id_penyakit" value="<?php echo $_GET['id'];?>" />
<table class="table table-bordered">
        	<thead>
            	<th></th>
				<th>Gejala</th>
            </thead>
		<tbody>
        <?php
		$ck="";
        	while($data=mysql_fetch_object($result)){
				$sql_cek="select id_aturan from tb_aturan where id_penyakit='".$_GET['id']."' and id_gejala='".$data->id_gejala."'";
				$result_cek=mysql_query($sql_cek);
				$data_cek=mysql_num_rows($result_cek);
				if($data_cek>0){
						$ck="checked";	
					}else{
						$ck="";	
				}
				?>
            <tr>
				<td style="width:10px;"><input style="padding-right:0px;" type="checkbox" name="chk[]" onClick="pilih_semua()" title="Pilih" value='<?php echo $data->id_gejala;?>' <?php echo $ck;?>/></td>
				<td><?php echo $data->nama_gejala;?></td>
			</tr>
       <?php };?>
       		<tr>
            	<td colspan="2"><input class="btn btn-primary" value="Simpan" name="update" type="submit" /><a href="home.php?list=<?php echo $_GET['list']?>" class="btn">Kembali</a></td>
            </tr>
        </tbody>
        </table>
</form>
</body>
</html>
