
<!--form searching
SISTEM Pakar Infeksi Susunan Saraf
Disusun guna memenuhi Tugas Akhir Skripso
Sebagai Salah Satu Syarat Meraih Gelar Sarjana Strata 1
oleh : Umi Solihah
Mahasiswa UIN SUNAN KALIJAGA YOGYAKARTA

willbean_umisolihah@rocketmail.com
-->
<?php
//session_start();
//include '../koneksi.php';
// $query=mysql_query("select * from mahasiswa where id='$id'")or die (mysql_error());
// $data=mysql_fetch_array($query)or die (mysql_error());
mysql_connect("localhost","root","");
mysql_select_db("kimia");
?>
<table height="20px"  width="170px" bgcolor="#E1E9E2" align="center">
<td colspan="2"><div align="center"><font size="3px" color="black">Tambah Aturan</div></td></fieldset> 
</table>
<p></p>
<form method="post" action="?page=simpan/sim_aturan" >
<table align="center">	
<tr>
<td>Gejala</td><td>:</td> <td><select name="gej">
<?php
$query = "select * FROM gejala";
$id = mysql_query ($query);
$x=1;
while ($data = mysql_fetch_array ($id))
{
	echo "<OPTION value='".$data['idg']."' name='id'.$x' /> [G0".$data['idg']."]&nbsp;&nbsp;".$data['gejala']."<br />";
	}
?>
</td></select>
<tr>
<td>Penyakit</td><td>:</td> <td>
<?php
$query = "SELECT * FROM kimia";
$hasil = mysql_query($query);
$no = 1;
while ($data = mysql_fetch_array($hasil))
{
  echo "<input type='checkbox' value='".$data['idk']."' name='mk".$no."' />[P0".$data['idk']."]&nbsp;&nbsp; ".$data['nm_kimia']."<br />";
  $no++;
}
?>
<input type="hidden" name="jumMK" value="<?php echo $no; ?>" />
</td>
</tr>
<tr>
<td>Densitas</td><td>:</td>
<td><input type="text" name="densitas" size="20" id="name">				
</td>
</tr>
<tr>
<td>Jika Ya Maka</td><td>:</td>
<td><select name="iya" size=5>
<?php
$query = "select * FROM gejala";
$id = mysql_query ($query);
$x=1;
while ($data = mysql_fetch_array ($id))
{
	echo "<OPTION value='".$data['idg']."' name='id'.$x' />[G0".$data['idg']."]&nbsp;&nbsp; ".$data['gejala']."<br />";
	}
?>
</td></select>
</tr>
<tr>
<td>Jika Tidak Maka</td><td>:</td>
<td><select name="tidak" size=5>
<?php
$query = "select * FROM gejala";
$id = mysql_query ($query);
$x=1;
while ($data = mysql_fetch_array ($id))
{
	echo "<OPTION value='".$data['idg']."' name='id'.$x' />[G0".$data['idg']."]&nbsp;&nbsp;".$data['gejala']."<br />";
	}
?>
</td></select>
</tr>
</table><br/>				
<tr align="center">
<td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value="Batal" name="kosongkan">&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" name="simpan" value="simpan" class="button">
</td>
</tr>			
</form>	
