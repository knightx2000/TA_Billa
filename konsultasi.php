<?php
	include("inc/koneksi.php");
	include("inc/function.php");
?>
		
<?php

$sqltruncate = "TRUNCATE TABLE `tb_diagnosa`";
$ekse = mysql_query($sqltruncate);

if(isset($_GET['id'])){
	$param="G";
	$sql="select * from tb_gejala order by id_gejala Asc";
	$result=mysql_query($sql);
	//$data=mysql_fetch_assoc($result);
}

if(isset($_GET['id_penyakit'])){
	$id_penyakit_before=$_GET['id_penyakit'];
}else{
	$id_penyakit_before='P000004';
}
$nm_penyakit = _tampil_nama_penyakit($id_penyakit_before);

if(isset($_POST['update'])){	
	$jmlAr=COUNT($_POST['chk']);
	for($i=0;$i<$jmlAr;$i++){
		$sql_s="insert into tb_diagnosa(id_gejala)values('".$_POST['chk'][$i]."')";
		mysql_query($sql_s);
	}
	$_SESSION ['add']='<div class="alert alert-success"> Data berhasil disimpan </div>';
	$nilai_cf=_hit_cf($id_penyakit_before);
	if((float)$nilai_cf<0.5){
		$id_next='';
		if($id_penyakit_before=='P000004'){
			$id_next = 'P000003';
			$id_penyakit_before = 'P000003';
			$nm_penyakit = _tampil_nama_penyakit($id_penyakit_before);
		}else if($id_penyakit_before=='P000003'){
			$id_next = 'P000002';
			$id_penyakit_before = 'P000002';
			$nm_penyakit = _tampil_nama_penyakit($id_penyakit_before);
		}else if($id_penyakit_before=='P000002'){
			$id_next = 'P000001';
			$id_penyakit_before = 'P000001';
			$nm_penyakit = _tampil_nama_penyakit($id_penyakit_before);
		}else if($id_penyakit_before=='P000001'){
			header("Location: hasil1.php"); 
		}
	}else{
		header("Location: hasil2.php?id_penyakit=".$id_penyakit_before); 
	}
}
?>
<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.3.0.60745 -->
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-wysihtml5-0.0.2.css">
        <link rel="stylesheet" type="text/css" href="css/datepicker.css">
        <link rel="stylesheet" type="text/css" href="css/docs.css">
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="js/wysihtml5-0.3.0_rc2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-wysihtml5-0.0.2.min.js"></script>
    <title>Implementasi Sistem Pakar 
untuk Diagnosis Penyakit Hipertensi 
dengan Metode Certainty Factor dan Forward Chaining Berbasis Web</title>
    <meta name="viewport" content="initial-scale = 1.0, maximum-scale = 1.0, user-scalable = no, width = device-width">

    <!--[if lt IE 9]><script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="style.css" media="screen">
    <!--[if lte IE 7]><link rel="stylesheet" href="style.ie7.css" media="screen" /><![endif]-->
    <link rel="stylesheet" href="style.responsive.css" media="all">


    <script src="jquery.js"></script>
    <script src="script.js"></script>
    <script src="script.responsive.js"></script>

<style type="text/css">
   .left    { 
   text-align: left;
   font-size:16px;
   margin-left:100px;
   }
   .gejala{
	text-align:left;
	font-size:12px;
	margin-left:200px;   
   }
   .right   { text-align: right;}
   .center  { text-align: center;}
   .justify { text-align: justify;}
</style>

</head>
<body>
<div id="art-main">
<?php
	include("menu.php");
?>
<header class="art-header">

    <div class="art-shapes">
        <div class="art-object0"></div>

            </div>

<h1 class="art-headline">
    <a href="#">Implementasi Sistem Pakar</a>
	<br>
	<a href="#">untuk Diagnosis Penyakit Hipertensi</a>
	<br>
	<a href="#">dengan Metode Certainty Factor dan Forward Chaining Berbasis Web</a>
</h1>
<h2 class="art-slogan"></h2>
                   
</header>

<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
								<form class="form-horizontal" id="frm_aturan" name="frm_aturan" action="konsultasi.php?id_penyakit=<?php echo $id_penyakit_before;?>" method="post">
										<input type="hidden" name="list" value="<?php echo $_GET['list'];?>" />
										<input type="hidden" name="id_penyakit" value="<?php echo $_GET['id'];?>" />
										<input type="hidden" name="id_penyakit_before" value="<?php echo $_GET['id_penyakit_before'];?>" />
									<table class="table table-bordered">
										<thead>
											<th></th>
											<th>Gejala <?php echo $nm_penyakit;?></th>
										</thead>
									<tbody>
									<?php
										$ck="";
										//$sql="select * from tb_gejala order by id_gejala Asc";
										$sql="select * from tb_gejala a,tb_aturan b where a.id_gejala = b.id_gejala and b.id_penyakit = '".$id_penyakit_before."' order by a.id_gejala Asc";
										$result=mysql_query($sql);
										while($data=mysql_fetch_object($result)){
										//$sql_cek="select id_aturan from tb_aturan where id_penyakit='".$_GET['id']."' and id_gejala='".$data->id_gejala."'";
										//$sql_cek="select id_aturan from tb_aturan where id_penyakit='".$_GET['id']."' and id_gejala='".$data->id_gejala."'";
										//$result_cek=mysql_query($sql_cek);
										// $data_cek=mysql_num_rows($result_cek);
										$data_cek=0;
										if($data_cek>0){
												$ck="checked";	
											}else{
												$ck="";	
										}
									?>
										<tr>
											<td style="width:10px;"><input style="padding-right:0px;" type="checkbox" name="chk[]" title="Pilih" value='<?php echo $data->id_gejala;?>' <?php echo $ck;?>/></td>
											<td><h4><?php echo $data->nama_gejala;?></h4></td>
										</tr>
								   <?php };?>
										<tr>
											<td colspan="4"><input class="btn btn-primary" value=" Submit " name="update" type="submit" />
											<a href="index.php" class="btn btn-primary">Kembali</a></td>
										</tr>
									</tbody>
									</table>
							</form>
                                
                                <br/></p></div>
                                
                

</article></div>
                        <div class="art-layout-cell art-sidebar1"><div class="art-block clearfix">
        </div>
        </div>
        </div>
        </div>
    </div>
<footer class="art-footer">
  <div class="art-footer-inner">
<p><a href="#">Fakultas Teknik Informatika</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Universitas Telkom</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">2016</a></p>
<br>
<p>Oleh : Nabila Farapasyet -- 103114259 &nbsp;</p>
<br>
<br>
<!--
    <p class="art-page-footer">
        <span id="art-footnote-links"><a href="http://www.artisteer.com/" target="_blank">Web Template</a> created with Artisteer.</span>
    </p>
	-->
  </div>
</footer>

</div>


</body></html>