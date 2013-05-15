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
					<li class="current_page_item"><a href="index.php?page=home">Beranda</a></li>
					<li><a href="index.php?page=daftar">Daftar</a></li>
					<li><a href="index.php?page=bantuan">Bantuan</a></li>
					<li><a href="index.php?page=tentang">Tentang</a></li>
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
					include 'page/home.php'; 
				}
				
				?>
					</div>
				</div>
				<div style="clear: both;">&nbsp;</div>
			</div>
			<!-- end #content -->
			<div id="sidebar">
				<ul>
					<li>
						<div id="search" >
							<form action="login.php?op=in" method="post" class="form1">
							
								<div class="notification <?php if(isset($_GET['notif'])) echo $_GET['notif']; else echo "information";?> png_bg">
								<div>
									&nbsp;&nbsp;&nbsp;<?php if(isset($_GET['status'])) echo $_GET['status']; else echo "Silahkan Login Lebih Dahulu";?>
								</div>
								<div>
									
									<p>User_Name <input type="text" name="userid"  placeholder="username"/></p>
									<p>Password <input type="password" name="password" placeholder="password"/></p>
									<p><input type="submit" name="login" id="GO" value="GO" /></p>
								</div>
							</form>
						</div>
						<div style="clear: both;">&nbsp;</div>
					</li>
					
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