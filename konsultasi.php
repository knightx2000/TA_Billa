<?php
	include("inc/koneksi.php")
?>
<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.3.0.60745 -->
    <meta charset="utf-8">
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
                                
                                
                                                
                                <div class="art-postcontent art-postcontent-0 clearfix"><p>
                                <?php
								if(!isset($_GET['id_gejala'])){
									$sql="select * from tb_gejala where mulai='Y'";
									$result=mysql_query($sql);
									$data=mysql_fetch_array($result);
									
									echo "<form>";
									//echo "<legend>DIAGNOSA <small> Mari mulai Mendiagnosa </small></legend>";
									echo "<center>";
									echo '</br><div class=" well">';
									echo "<h1>Apakah pasien / anda mengalami ".$data['nama_gejala']."?</h1></center><br>";
									echo '</div>';
			
		
			// echo "<input type='radio' name='idpertanyaan' value='".$data['bila_benar']."'>Ya<br>";
			// echo "<input type='radio' name='idpertanyaan' value='".$data['bila_salah']."'>Tidak<br>";
			// echo "<input type='submit' value='Lanjut ' >";		
			// echo "</form>";
			// echo "<p>copyright &copy; Juni 2010, by David, S.Kom., M.Cs.</p>";

									echo '
										<div class="span5"> <div class="alert alert-info">
										<div class="control-group "> 
										<div class="controls" style="margin-left:150px;">
									';

									echo "<input type='radio' name='id_gejala' value='".$data['jika_ya']."'>
											Benar<br>";
											echo '
										</div>
										</div>
										</div>
										</div>
										<div class="span5"> <div class="alert alert-warning">
										<div class="control-group "> 
										<div class="controls" style="margin-left:150px;">
									';
									echo "<input type='radio' name='id_gejala' value='".$data['jika_tidak']."'>Tidak<br>";
									echo '
									</div>
									</div>
									</div>
									</div>';
			
									echo "<input type='submit' class='btn btn-primary btn-block btn-large' value='Lanjut ' >";
									
								}else{
									$idsolusi=$_GET['id_gejala'];
									$sqlp = "select * from tb_gejala where id_gejala='".$idsolusi."'";
			
									$rs=mysql_query($sqlp);

									$data=mysql_fetch_array($rs);
			
									echo "<form>";
									//echo "<legend>DIAGNOSA <small> Mari mulai Mendiagnosa </small></legend>";
									echo "<center>";
									echo '</br><div class=" well">';
									echo "<h1>Apakah anda mengalami ".$data['nama_gejala']."?</h1></center><br>";
									echo '</div>';
			// echo "<a href='' class='btn btn-success btn-large btn-block' /> Kembali Melakukan Diagnosa </a>";

									//if($data['selesai']!="Y"){
									if(ereg("P",$_GET['id_gejala'])){
										echo '<script> window.location.href="hasil.php?id='.$_GET['id_gejala'].'" </script>';
										echo "<a href='konsultasi.php' class='btn  btn-block btn-large' /> <H1>Kembali Melakukan Diagnosa</H1> </a>
										";
										
				
									}else{
										//if(ereg("P",$_GET['id_gejala'])){
										/*echo '<script> window.location.href="hasil.php?id='.$_GET['id_gejala'].'" </script>';
										echo "<a href='konsultasi.php' class='btn  btn-block btn-large' /> <H1>Kembali Melakukan Diagnosa</H1> </a>
										";*/
										//echo "hohoho";	
										//}else{
											
										echo '
											<div class="span5"> <div class="alert alert-info">
											<div class="control-group "> 
											<div class="controls" style="margin-left:150px;">
										';

										echo "<input type='radio' name='id_gejala' value='".$data['jika_ya']."'>
											Benar<br>";
										echo '
										</div>
										</div>
										</div>
										</div>
										<div class="span5"> <div class="alert alert-warning">
										<div class="control-group "> 
										<div class="controls" style="margin-left:150px;">
										';
										echo "<input type='radio' name='id_gejala' value='".$data['jika_tidak']."'>Tidak<br>";
										echo '
										</div>
										</div>
										</div>
										</div>';
			if(ereg("Z",$_GET['id_gejala'])){
										echo '<script> window.location.href="hasil1.php?id='.$_GET['id_gejala'].'" </script>';
										echo "<a href='konsultasi.php' class='btn  btn-block btn-large' /> <H1>Kembali Melakukan Diagnosa</H1> </a>
										";}
										echo "<input type='submit' class='btn btn-primary btn-block btn-large' value='Lanjut ' >";
										//}
									}
									echo "</form>";		
									
								}
								?>
                                
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