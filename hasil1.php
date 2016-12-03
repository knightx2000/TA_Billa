<!DOCTYPE html>
<html dir="ltr" lang="en-US"><head><!-- Created by Artisteer v4.3.0.60745 -->
    <meta charset="utf-8">
    <title>Sistem Pakar Penyakit Anjing</title>
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
<nav class="art-nav">
<?php
	include("inc/koneksi.php");
	include("inc/function.php");
	include("menu.php");
?>
<header class="art-header">

    <div class="art-shapes">
        <div class="art-object0"></div>
			
            
            </div>

<h1 class="art-headline">
    <a href="/">Sistem Pakar Penyakit Anjing</a>
</h1>
<h2 class="art-slogan"></h2>





                        
                    
</header>
<div class="art-sheet clearfix">
            <div class="art-layout-wrapper">
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content"><article class="art-post art-article">
                                <h2 class="art-postheader">Hasil Diagnosa</h2>
                                                
                                <div class="art-postcontent art-postcontent-0 clearfix"><p><br/></p></div>
                                
           
<?php
$penyakit=_tampil_nama_penyakit($_GET['id']);
$gejala=_tampil_gejala($_GET['id']);
?>
<div class="container">
<center>
</br><div class="well">
	<table style="border:none;">
    	<tr>
        <td colspan="2" height="50px" style="border:none; margin:10px; "><center><font size="+3" face="MS Serif, New York, serif">
	Mohon Maaf, Gejala yang anda pilih kurang spesifik</font></center>
    	</td>
        </tr>
        <tr>
        	<td colspan="2" height="50px" style="border:none; margin:10px; "><center><font size="+2" face="MS Serif, New York, serif"><b><?php echo $penyakit;?></b></font></center></td>
        </tr>
    </br>
    	
    	<td colspan="2" height="30px" style="border:none;"><a href='konsultasi.php' class='btn  btn-block btn-large' /> <H3>Kembali Melakukan Diagnosa</H3> </a></td>
    </tr>
    </table>
</div>
	
</div>

</article></div>
                        <div class="art-layout-cell art-sidebar1"><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">Follow US</h3>
        </div>
        <div class="art-blockcontent"><p><img width="60" height="60" alt="" src="images/rss-2.png">&nbsp;<img width="60" height="60" alt="" src="images/facebook-2.png" class="">&nbsp;<img width="60" height="60" alt="" src="images/twitter-2.png">&nbsp;<img width="60" height="60" alt="" src="images/youtube-2.png" class=""></p></div>
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">Featured Photo</h3>
        </div>
        <div class="art-blockcontent"><p><img width="253" height="168" alt="" src="images/shutterstock_38529010.jpg" class=""></p></div>
</div><div class="art-block clearfix">
        <div class="art-blockheader">
            <h3 class="t">Featured Video</h3>
        </div>
        <div class="art-blockcontent"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="253" height="214"><param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<param name="movie" value="http://www.youtube.com/v/89kKUeT2sxk">
<!--[if !IE]>          --><object type="application/x-shockwave-flash" data="http://www.youtube.com/v/89kKUeT2sxk" width="253" height="214"><param name="allowFullScreen" value="true">
<param name="allowscriptaccess" value="always">
<!--<![endif]          --><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player"></a><!--[if !IE]>          --></object> <!--<![endif]          --></object></div>
</div></div>
                    </div>
                </div>
            </div>
    </div>
<footer class="art-footer">
  <div class="art-footer-inner">
<p><a href="#">Privacy Policy</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">TOS</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Feedback</a></p>
<br>
<p>Copyright © 2015. All Rights Reserved.&nbsp;</p>
<br>
<br>
    <p class="art-page-footer">
    </p>
  </div>
</footer>

</div>


</body></html>