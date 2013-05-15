<?php
session_start();
require 'inc/koneksi.php';
require 'page/cf.php';

	if (count($_SESSION['listgejala'])!=0){
		$hasil = CF($_SESSION['listgejala']);
		$hasilmax = doublemax($hasil['h']);
		$idpeny = $hasil['p'][$hasilmax['i']];

	$penyakit = mysql_query("SELECT * FROM kimia WHERE idk = '".$hasil['p'][$hasilmax['i']]."' LIMIT 0,1") or die(mysql_error());
	$datap = mysql_fetch_array($penyakit);
	
?>
<div class="content-box-header"><center>HASIL IDENTIFIKASI<center><p></div>

<table width="100%">
	<tr valign="top">
	<td colspan="3">
		<h4> Berdasarkan Gejala yang anda pilih adalah :</h4><br/>
	</td> 
	</tr>
	<tr valign="center">
		<td colspan="3"><?php 
			for ($i=0;$i<count($_SESSION['listgejala']);$i++){
				$idgejx = $_SESSION['listgejala'][$i];
				$lgej = mysql_query("SELECT idg, gejala FROM gejala WHERE idg='$idgejx'") or die(mysql_error());
				$dlgej = mysql_fetch_array($lgej);
				echo "[".$dlgej['idg']."] ".$dlgej['gejala']."<br/>";
			}
		
		?></td>
	</tr>
	<tr valign="top">
	<td colspan="3">
		<br/><h4>Kemungkinan anda terkena </h4><br/>
	</td> 
	</tr>
	<tr valign="center">
		<td>Penyakit</td>
		<td> : </td>
		<td><?php echo $datap ['nm_kimia'];?></td>
	</tr>
	<tr valign="center">
		<td>Nama Lain</td>
		<td> : </td>
		<td><?php echo $datap['nama_lain'];?></td>
	</tr>
	<tr valign="center">
		<td>Definisi</td>
		<td> : </td>
		<td><?php echo $datap['definisi'];?></td>
	</tr>
	<tr valign="center">
		<td>Pengamanan</td>
		<td> : </td>
		<td><?php echo $datap['pencegahan'];?></td>
	</tr>
	<tr valign="center">
		<td>Solusi</td>
		<td> : </td>
		<td><?php echo $datap['solusi'];?></td>
	</tr>
	<tr valign="center">
		<td>Nilai CF</td>
		<td> : </td>
		<td><?php echo $hasilmax['m'];?></td>
	</tr>
</table>
<div align="center"><b>Segera Periksakan Kondisi Anda Ke Dokter Untuk Mendapatkan Perawatan Yang Lebih Intensif</b></div>

<?php
	}else{
?>
<div class="content-box-header"><h2><center>HASIL IDENTIFIKASI</center></h2></div>

<table width="100%">
	<tr valign="top">
	<td colspan="3">
		<h4 align="center">Kemungkinan anda tidak sakit !</h4><br/>
	</td> 
	</tr>
</table>	
<?php	
	}
 unset($_SESSION['listgejala']);
?>