<?

session_start();
require 'inc/koneksi.php';
if(isset($_SESSION['userid']) & isset($_SESSION['level'])){	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : FruityBlue 
Description: A two-column, fixed-width design with dark color scheme.
Version    : 1.0
Released   : 20120307

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Sistem Pakar</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
	<div id="wrapper2">
		<div id="header" class="container">
			<div id="logo">
				<h1><a>SistemPakar </a></h1>
				<p>Identifikasi Keracunan Bahan Kimia</p>
			</div>
			<div id="menu">
				<ul>
					<li class="current_page_item"><a href="home.php?page=home_L">Beranda</a></li>
					
					<li><a href="home.php?page=InfoPakar">InfoPakar</a></li>
					<li><a href="home.php?page=profil">Profil</a></li>
					<li><a href="home.php?page=bantuan1">Bantuan</a></li>
					<li><a href=login.php?op=out>Logout</a></li>
				</ul>
			</div>
		</div>
		<!-- end #header -->
		<div id="page">
			<div id="content">
				<div class="post">
					<div class="entry">
				<?php  
                $page=$_GET['page'];
                if(isset($_GET['page'])){
					include 'page/'.$page.'.php';
				}else{
					include 'page/home_L.php'; 
				}
				
				?>
					</div>
				</div>
				<div style="clear: both;">&nbsp;</div>
			</div>
			<!-- end #content -->
			<div id="sidebar">
				<ul>
				<?php
						if ($_SESSION['level']==10){
						include "user.php";
						}else if ($_SESSION['level']==20){
						include "admin.php";
						}
				?>
					<div style="clear: both;">&nbsp;</div>	
				</ul>
			</div>
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
		<!-- end #page -->
	</div>
</div>
<div id="footer-content">
	<div id="footer">
		<p>Copyright (c) UIN Sunan Kalijaga. Teknik Informatika. Ilyas Affuandy (08651018).</p>
	</div>
</div>
<!-- end #footer -->
</body>
</html>
<?php
}else{
	echo "Anda dilarang mengakses halaman ini";
	header("location:index.php");
}
?>
