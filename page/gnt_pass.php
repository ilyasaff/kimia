<?php
session_start();
mysql_connect("localhost","root","") or die("Nggak bisa koneksi");
mysql_select_db("kimia");//sesuaikan dengan nama database anda

$user = $_SESSION['userid'];
$selek=mysql_query("SELECT * FROM user where userid='$user'");
while ($data=mysql_fetch_array($selek)){
	$nananina=$data['password'];
}
if (isset($_POST['ganti'])){
	$passlama = ($_POST['passlama']);
	$passbaru = ($_POST['passbaru']);
	$confpassbaru = ($_POST['passbaruconf']);
		if (($passlama==$nananina) && ($passbaru==$confpassbaru)){

				$qgantipass = mysql_query("UPDATE user SET password='$passbaru' WHERE userid='$user'");
			if ($qgantipass){
					echo "<script>window.location.href = 'home.php?page=home_L&sukses=Berhasil merubah password';</script>";
			}else{
					echo "<script>window.location.href = 'home.php?page=home_L&gagal=Gagal Merubah password, karena password tidak sama';</script>";
			}
		}else{
			echo "<script>window.location.href = 'home.php?page=home_L&gagal=Password lama anda salah';</script>";
		}
}
?>

<body>
	
	<form class="register_form" action="" id="form" method="post">
		<h2><center>Ganti Password <?php echo $user;?></h2>
		
		
		<table width="70%" align="left" border="0" cellpadding="1" cellspacing="1">
			 <tr>
			  <td colspan="3">&nbsp;</td>
			 </tr>
			 <tr>
			  <td><div align="left" class="caption">password lama anda</div></td>
			  
			  <td><input name="passlama" type="password  placeholder="" required /></td>
			 </tr>
			 <td colspan="3">&nbsp;</td>
			 <tr>
			  <td><div align="left" class="caption">password baru anda</div></td>
			  
			  <td><input name="passbaru" type="password" placeholder="" required  /></td>
			 </tr>
			 <td colspan="3">&nbsp;</td>
			 <tr>
			  <td><div align="left" class="caption">password baru konfirm</div></td>
			  <td><input name="passbaruconf" type="password" placeholder="" required  /></td>
			 </tr>
			 <td colspan="3">&nbsp;</td>
			 <tr>
			 <td><button type="submit" value="Ganti Password" name="ganti">Ganti password</button></td>
			 </tr>
		</table>	 
		<!--<ul>
			
			
			<li>
				<label for="name">Password lama </label>
				<input name="passlama" type="password  placeholder="" required />
				<span class="form_hint">inputkan password lama</span>
			</li>
			<li>
				<label for="username">Password baru </label>
						<input name="passbaru" type="password" placeholder="" required  />
				
			</li>
			<li>
				<label for="umur">Password baru konfirm </label>
				<input name="passbaruconf" type="password" placeholder="" required  />
				
			</li>
			
			<li>
			  
				<button type="submit" value="Ganti Password" name="ganti">Ganti password</button>
			  
			</li>
		</ul>-->
	</form>
	
</body>
</html>
