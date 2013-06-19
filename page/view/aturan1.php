
<table height="auto"  width="200px" align="center">
<td colspan="2"><div align="center"><font size="3px" color="black">DAFTAR ATURAN</div></td> 
</table>
<p></p>
<!--form searching-->
<form method="POST" action="">
<b>Cari Gejala : </b><input type="text" name="search"> 
<input type="submit" name="oke" value="Cari">
</form><br/>
<form style=' padding-left:5px; text-align:left;'> <a href='home.php?page=aturan'><img src='images/icons/active.png'>TAMBAH ATURAN</a></form>
<table><tr bgcolor="#356251" color="Black">
<td style=' padding-left:5px; font-size:13px;'>No</td>
<td style=' width:200px; padding-left:5px; padding-right:5px;font-size:13px;font-color=black'>gejala</td>
<td style=' width:200px; padding-left:5px; padding-right:5px;font-size:13px;font-color=black'>kimia</td>
<td style=' width:100px; padding-left:7px; font-size:13px; padding-right:7px;text-align:center;'>mb</td>
<td style=' width:100px; padding-left:7px; font-size:13px; padding-right:7px;text-align:center;'>md</td>
<td style='width:50px; padding-left:5px; font-size:12px; text-align:center;'>Edit</td>
</tr>

<?php
mysql_connect("localhost","root","");
mysql_select_db("pakar");

$warnaGenap = "#CCCCCC";   // warna abu-abu
$warnaGanjil = "#FFFFFF";  // warna putih
$warnaHeading = ""; // warna merah untuk heading tabel
$batas=5;
$hal=$_GET['hal'];
if(empty($hal))
{
$posisi=0;
$hal=1;
}
else
{
$posisi = ($hal-1) * $batas;
}

//$tampil="select id_r, idg, idk, mb, md, gejala from gejala, relasi where gejala.idg=relasi
//.idg order by relasi.id_r asc limit $posisi,$batas";
//$tampil = "SELECT DISTINCT r.idk AS id_penyakit, r.id_r AS id_gejala, g.gejala AS nama_gejala, k.nm_kimia AS nama_penyakit FROM relasi r
	//		LEFT JOIN gejala g ON r.idg = g.idg
		//	LEFT JOIN kimia k ON r.idk = k.idk ORDER BY r.idk";
		
if(isset($_POST['oke'])){
	$cari = $_POST['search'];
	if(!empty($cari)){
		$gejala = mysql_query("SELECT * FROM gejala where gejala like '%".$cari."%'");
	}else{
		echo "<script>alert('Data tidak ada');</script>";
		$gejala = mysql_query("SELECT * FROM gejala");
	}
}else{
	$gejala = mysql_query("SELECT * FROM gejala");
}

$no=$posisi+1;
while ($data = mysql_fetch_array($gejala)){
$id=$data['id_r'];
if ($no % 2 == 0) $warna = $warnaGenap;
else $warna = $warnaGanjil;
echo "<tr bgcolor='".$warna."' >";
echo "<td style=' padding-left:5px; font-size:12px;'>$no</td>";
echo "<td style=' padding-left:5px; font-size:12px;'>".$data['gejala']."</td>";
echo "<td style=' padding-left:5px; font-size:12px;'><ol>";
$tamp = mysql_query ("SELECT r.mb AS mb, r.md AS md, k.idk as id_gejala, k.nm_kimia AS nama_gejala FROM relasi r 
LEFT JOIN gejala g ON r.idg = g.idg 
LEFT JOIN kimia k ON r.idk = k.idk 
WHERE r.idg = '$data[idg]'");
while($dat=mysql_fetch_array($tamp)){
		echo "<li>".$dat['nama_gejala']."</li>";
		}
		echo "</ol></span></td>";
echo "<td style=' padding-left:5px; font-size:12px;' align='center'>";
$mbmd = mysql_query ("SELECT r.mb AS mb, r.md AS md, k.idk as id_gejala, k.nm_kimia AS nama_gejala FROM relasi r 
LEFT JOIN gejala g ON r.idg = g.idg 
LEFT JOIN kimia k ON r.idk = k.idk 
WHERE r.idg = '$data[idg]'");
while($dat_mbmd=mysql_fetch_array($mbmd)){
	echo $dat_mbmd['mb']."<br/><br/>";
	}
echo "</td>";

echo "<td style=' padding-left:5px; font-size:12px;' align='center'>";
$mbmd = mysql_query ("SELECT r.mb AS mb, r.md AS md, k.idk as id_gejala, k.nm_kimia AS nama_gejala FROM relasi r 
LEFT JOIN gejala g ON r.idg = g.idg 
LEFT JOIN kimia k ON r.idk = k.idk 
WHERE r.idg = '$data[idg]'");
while($dat_mbmd=mysql_fetch_array($mbmd)){
	echo $dat_mbmd['md']."<br/><br/>";
	}
echo "</td>";
echo "<td style=' width:50px; padding-left:5px; font-size:12px; text-align:center;'>";
echo "<a href='../ney/home.php?page=aturan&action=edit&id_gejala=$data[idg]' title = 'Edit Kategori' alt='edit'>edit</a>";
echo "</td>";	
echo "</tr>";
$no++;
}
echo "</table><br>";

$page="index.php?page=view/aturan";

$tampil2="select * FROM relasi";
$hasil2=mysql_query($tampil2);
$jmldat=mysql_num_rows($hasil2);

$jmlhalama=ceil($jmldat/$batas);


//link ke halaman sebelumnya (previous)
if($hal > 1)
{
$previous=$hal-1;
echo "<a href=$page&&hal=1><< First</a> | 
<a href=$page&&hal=$previous>< Previous</a> | ";
}

echo "<p>Total Relasi : <b>$jmldat</b> Relasi</p>";

?>
