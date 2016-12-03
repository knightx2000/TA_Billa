<?php
	include("inc/koneksi.php");
	include("inc/function.php");
?>
<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head> <!-- Created by Artisteer v4.3.0.60745 -->
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
    <a href="/">Implementasi Sistem Pakar</a>
	<br>
	<a href="/">untuk Diagnosis Penyakit Hipertensi</a>
	<br>
	<a href="/">dengan Metode Certainty Factor dan Forward Chaining Berbasis Web</a>
</h1>
<h2 class="art-slogan"></h2>

</header>


<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">Riwayat Konsultasi</h2>
                                                
                                <div class="art-postcontent art-postcontent-0 clearfix"><p> </p></div>
                                <p></p>
<div class="art-postcontent art-postcontent-0 clearfix"></div>
                               <table style="width:100%;">
                               		<thead>
                                    	<tr>
                                        	<th>No.</th>
                                            <th>Tanggal</th>
                                            <th>Hasil Konsultasi</th>
                                            <th>Nilai Kepastian</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
											$no=0;
            								$sql = mysql_query("SELECT * FROM tb_sispak where id_user ='".$_SESSION['s_id_user']."' order by id_sispak DESC");
            								while($rows = mysql_fetch_array($sql)){
												$no++;            
            							?>
         								<tr>
                                        	<td><?php echo $no;?></td>
         									<td><?php echo tampil_tanggal($rows['tanggal']);?></td>
         									<td><?php echo _tampil_nama_penyakit($rows['id_penyakit']);?></td>
            								<td><?php echo $rows['nilai_kepastian'];?></td>
        								</tr>     
        								<?php } ?>
                                    </tbody>
                               </table>
                

</article></div>
                        <div class="art-layout-cell art-sidebar1"><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        <!-- <div class="art-blockcontent"><p><img width="60" height="60" alt="" src="images/rss-2.png">&nbsp;<img width="60" height="60" alt="" src="images/facebook-2.png" class="">&nbsp;<img width="60" height="60" alt="" src="images/twitter-2.png">&nbsp;<img width="60" height="60" alt="" src="images/youtube-2.png" class=""></p></div> -->
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        <!-- <div class="art-blockcontent"><p><img width="253" height="168" alt="" src="images/shutterstock_38529010.jpg" class=""></p></div> -->
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        
		 
                    </div>
                </div>
            </div>
    </div>
	<div class="art-postcontent art-postcontent-0 clearfix"><p> </br> </br> </p></div>
	
<footer class="art-footer">
  <div class="art-footer-inner">
<p><a href="#">Fakultas Teknik Informatika</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Universitas Telkom</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">2016</a></p>
<br>
<p>Oleh : Nabila Farapasyet -- 103114259 &nbsp;</p>
<br>
<br>
    <p class="art-page-footer">
    </p>
  </div>
</footer>

</div>


</body></html>