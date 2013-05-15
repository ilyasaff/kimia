<?php 
require 'inc/koneksi.php';

if (isset($_POST['simpan'])){
	$nama    		= $_POST['xnama'];
	$alamat			= $_POST['xalamat'];
	$password		= $_POST['xpassword'];
	$umur			= $_POST['xumur'];
	$telepon		= $_POST['xtelepon'];
    $insql=  mysql_query("insert into anggota(nama,alamat,password,umur,telepon) values('$nama','$alamat','$password','$umur','$telepon')");
    
   $inusrsql=  mysql_query("insert into user values('$nama','$password','10')") or die(mysql_error());
    if ($insql){
		echo "<script>window.location.href = 'index.php?page=daftar&sukses=Guru baru telah ditambahkan';</script>";
	}else{
	
	}	
}

?>

<!DOCTYPE HTML>
<!--<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>Form Register</title>
	
	<!-- Include CSS 
	<link rel="stylesheet" href="css/register.css"/>
	<link rel="stylesheet" href="css/saran.css"/>
	
</head>
<body>-->
<script>
            function validasi(){
                var xnama = document.getElementById('xnama');
                var xalamat = document.getElementById('xalamat');
                var xpassword = document.getElementById('xpassword');
                var xumur = document.getElementById('xumur');
				var xtelepon = document.getElementById('xtelepon');
				
                if (harusDiisi(xnama, "nama belum diisi")) {
                    if (harusDiisi(xalamat, "alamat belum diisi")) {
                        if (harusDiisi(xpassword, "password belum diisi")) {
								if (harusDiisi(xumur, "umur belum diisi")) {
									if (harusDiisi(xtelepon, "no tlp belum diisi")) {
                            return true;
								};
							};
                        };
                    };
                };
                return false;
            }

            function harusDiisi(att, msg){
                if (att.value.length == 0) {
                    alert(msg);
                    att.focus();
                    return false;
                }

                return true;
            }
</script>
	<form class="register_form" onsubmit="return validasi()" id="form" method="post">
	<h2><center>Form Pendaftaran</center></h2>
	<table width="100%" align="left" border="0" cellpadding="1" cellspacing="1">
	 <tr>
	  <td colspan="3">&nbsp;</td>
	 </tr>
	 <tr>
	  <td><div align="left" class="caption">Nama</div></td>
	  <td>:</td>
	  <td><input type="text" name="xnama" size="40" maxlength="40" id="xnama"/></td>
	 </tr>
	 <tr>
	  <td><div align="left" class="caption">Alamat</div></td>
	  <td>:</td>
	  <td><textarea name="xalamat" cols="30" rows="5" id="xalamat"/></textarea></td>
	 </tr>
	 <tr>
	  <td><div align="left" class="caption">Password</div></td>
	  <td>:</td>
	  <td><input type="password" name="xpassword" size="30" maxlength="30" id="xpassword"/></td>
	 </tr>
	 <tr>
	  <td><div align="left" class="caption">Umur</div></td>
	  <td>:</td>
	  <td><input type="text" name="xumur" size="3" maxlength="3" id="xumur"/></td><td><span>*masukkan angka</span></td>
	 </tr>
	 <tr>
	  <td><div align="left" class="caption">Telepon</div></td>
	  <td>:</td>
	  <td><input type="text" name="xtelepon" size="20" maxlength="20" id="xtelepon"/></td><td><span>*masukkan angka</span></td>
	 </tr>
	 <tr>
	  <td colspan="3">&nbsp;</td>
	 </tr>
	 <tr>
	  <td>&nbsp;</td>
	  <td>&nbsp;</td>	
	  <td><input type="submit" name="simpan" value="simpan"></td>
	 </tr>
	 <tr>
	  <td colspan="3">&nbsp;</td>
	 </tr>
	</table>
		<!--<ul>
			<h2 class="title" align="center">Form Pendaftaran</h2>
			<li>
				<label for="name">Nama :</label>
				<input type="text" name="xnama"/>
			</li>
			<li>
				<label for="username">Alamat :</label>
				<input type="text" name="xusername"/>
				
			</li>
			<li>
				<label for="umur">Password :</label>
				<input type="password" name="xpassword"/>
				
			</li>
			<li>
				<label for="pekerjaan">Umur :</label>
				<input type="text" name="xumur"/>
				
			</li>
			
			<li>
				<label for="email">Telepon :</label>
				<input type="text" name="xtelepon"/>
			</li>
			
				<button type="submit" name="simpan">Submit</button>
		</ul>-->
	</form>