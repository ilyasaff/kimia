<?php
session_start();
require 'inc/koneksi.php';
// echo "<pre>"; print_r($_SESSION['new_itung']); echo "</pre>";
$final_penyakit = array();
$final_cf = array();
foreach ($_SESSION['new_itung_full'] as $key => $value) {
	$penyakit = explode("_", $value);
	array_push($final_penyakit, $penyakit[3]);
	array_push($final_cf, $penyakit[0]);
}
$jml_gejala = count($final_penyakit);
$penyakit = mysql_query('SELECT * FROM kimia WHERE idk IN ("' . implode('", "', $final_penyakit) . '") HAVING COUNT(idk) = '.$jml_gejala.' ') or die(mysql_error());
// $datap = mysql_fetch_array($penyakit);
	
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
	 
	</tr>
<?
	$init = 0;
	while($datap = mysql_fetch_array($penyakit)){
	echo 
		'<tr type="hidden">'.$datap['id'].'
		<td><b>KEMUNGKINAN TERIDENTIFIKASI KERACUNAN : </b></td></tr>
		<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		<tr width="75%">
			<td>BAHAN KIMIA</td>
			<td>:</td>
			<td>'.$datap['nm_kimia'].'</td>
			<td><a href="home.php?page=uji&aksi=edit&idk='.$datap['idk'].'">lihat info</a></td>
		</tr>
		<tr>
			<td>Nilai CF</td>
			<td>:</td>
			<td>'.$final_cf[$init].'</td>
		</tr>
	<tr><td align="center"><b>Segera Periksakan Kondisi Anda Ke Dokter </b></td></tr>';
	$init++;
	}
?>
</table>


<?php
if(mysql_num_rows($penyakit) == 0)
{
?>
<div class="content-box-header"><h2><center>TIDAK DAPAT DITEMUKAN</center></h2></div>

<table width="100%">
	<tr valign="top">
	<td colspan="3">
		<h4 align="center">Berarti Kemungkinan anda tidak sakit!</h4><br/>
	</td> 
	</tr>
</table>	
<?php	
}
 unset($_SESSION['listgejala']);
 unset($_SESSION['total_hitung']);
 unset($_SESSION['new_itung_full']);
 unset($_SESSION['new_itung']);
?>