<?php
	include("inc/koneksi.php");
	include("inc/function.php");
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
                                <h2 class="art-postheader">Daftar Keluhan Yang Mungkin Menjurus Pada Penyakit Hipertensi</h2>
                                                
                                <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p></div>
                                <p>Representasi pengetahuan yang digunakan pada tugas akhir ini adalah production rule. Metode inferensi yang digunakan untuk mendapatkan konklusi yaitu penalaran maju (forward chaining) yang dapat di-update sesuai perkembangan pengetahuan. Sistem pakar ini akan menampilkan pilihan gejala, yang setiap gejala akan mengarah pada pilihan lebih lanjut untuk mendapatkan gejala penyakit kesimpulan, solusi dan penjelasan.</p>
								<p>
Diharapkan dengan masukan yang tepat maka sistem pakar ini akan mampu memberikan diagnosis awal dan solusi awal penanganan untuk penyakit hipertensi melalui metode Certainty Factor dan Forward Chaining. </p>
<div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p></div>
                               <table style="width:100%;">
                               		<thead>
                                    	<tr>
                                        	<th>ID</th>
                                            <th>Nama Penyakit</th>
                                            <th>Solusi</th>
                                            <th>Obat</th>
                                            <th>Kategori Penyakit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<?php
											$param="P";
            								$sql = mysql_query("SELECT * FROM tb_penyakit where id_penyakit LIKE'%".$param."%'");
            								while($rows = mysql_fetch_array($sql)){            
            							?>
         								<tr>
         									<td><?php echo $rows['id_penyakit'];?></td>
         									<td><?php echo $rows['nama_penyakit'];?></td>
                                            <td><?php echo $rows['solusi'];?></td>
                                            <td><?php echo $rows['obat'];?></td>
                                            <td><?php echo $rows['kategori'];?></td>
        								</tr>     
        								<?php } ?>
                                    </tbody>
                               </table>
                
<p>Keterangan : Jika ada keterangan tambahan</p>
</article></div>

<div class="art-layout-cell art-sidebar1"><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        
</div>
<div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        <!-- <div class="art-blockcontent"><p><img width="253" height="168" alt="" src="images/shutterstock_38529010.jpg" class=""></p></div> -->
</div>
<div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t"> </h3>
        </div>
        
		
</div></div>
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
    <p class="art-page-footer">
    </p>
  </div>
</footer>

</div>


</body></html>