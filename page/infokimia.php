<h2 align="center">INFO BAHAN KIMIA</h2>
<table width="100%" align="left" border="0" cellpadding="1" cellspacing="1">
	<thead >
		<th width="10%" >No.</th>
		<th width="10%">idp</th>
		<th width="70%">Nama Bahan Kimia</th>
		<th width="40%"align="center">Informasi</th>
	</thead>
<tbody>
<?php
require 'inc/koneksi.php';
require 'inc/buatid.php';

$batas=10;
$halaman = $_GET['halaman'];
if(empty($halaman))
{
$posisi=0;
$halaman=1;
}
else
{
$posisi = ($halaman-1) * $batas;
}
$no=$posisi+1;
$sql=  mysql_query("SELECT * FROM kimia ORDER BY idk ASC limit $posisi,$batas") or die (mysql_query());
if (mysql_num_rows($sql) == 0){
	echo '<tr><td colspan=4><center><br/><h4>Tidak ada data</h4></center></td></tr>';
	}else{

while ($row = mysql_fetch_assoc($sql)) {
     echo '<tr>
			<td>'.$no.'</td>
			<td>'.$row['idk'].'</td>
			<td>'.$row['nm_kimia'].'</td>	
			<td align="center"><a href="home.php?page=infokimia&aksi=edit&idk='.$row['idk'].'" title="lihat"><img src="images/icons/information.png" alt="lihat" /></a><td></tr>';
$no++;
			}
}


?>
	</tbody>
</table>
<table><tbody>
<?php
$file="?page=infokimia";

$tampil2="SELECT * FROM kimia ORDER BY idk ASC";
$hasil2=mysql_query($tampil2);
$jmldata=mysql_num_rows($hasil2);

$jmlhalaman=ceil($jmldata/$batas);


//link ke halaman sebelumnya (previous)
if($halaman > 1)
{
$previous=$halaman-1;
echo "<A HREF=$file&&halaman=1><< First</A> | 
<A HREF=$file&&halaman=$previous>< Previous</A> | ";
}
else
{ 
echo "<< First | < Previous | ";
}

$angka=($halaman > 3 ? " ... " : " ");
for($i=$halaman-2;$i<$halaman;$i++)
{
if ($i < 1) 
continue;
$angka .= "<a href=$file&&halaman=$i>$i</A> ";
}

$angka .= " <b>$halaman</b> ";
for($i=$halaman+1;$i<($halaman+3);$i++)
{
if ($i > $jmlhalaman) 
break;
$angka .= "<a href=$file&&halaman=$i>$i</A> ";
}

$angka .= ($halaman+2<$jmlhalaman ? " ... 
<a href=$file&&halaman=$jmlhalaman>$jmlhalaman</A> " : " ");

echo "$angka";

//link kehalaman berikutnya (Next)
if($halaman < $jmlhalaman)
{
$next=$halaman+1;
echo " | <A HREF=$file&&halaman=$next>Next ></A> | 
<A HREF=$file&&halaman=$jmlhalaman>Last >></A> ";
}
else
{ 
echo " | Next > | Last >>";
}
echo "<p><font color=red>Total Data : <b>$jmldata</b> Bahan Kimia</font></p>";
?>
</tbody>
</table>
	<form action="" id="form" method="post">
		<?php 
		if (isset($_GET['aksi'])=="edit"){
			$idk 	= $_GET['idk'];
			$sql = "select * from kimia WHERE idk='$idk'";
			$result = mysql_query($sql);
		if( mysql_num_rows($result) > 0){
    ?>
				<table center>
				<h2 align="center">DATA BAHAN KIMIA</h2>
	<?php
			while($data = mysql_fetch_array($result)){?>
			
			<tr valign="top">
			<td width="100">Nama Kimia</td>
			<td width="5">: </td>
			<td><div align="left"><?php echo $data['nm_kimia'];?></div></td>
			</tr>
			<tr valign="top">
			<td width="100">Nama Lain</td>
			<td width="5">: </td>
			<td><div align="left"><?php echo $data['nama_lain'];?></div></td>
			</tr>
			<tr valign="top">
			<td width="100">Definisi</td>
			<td width="5">: </td>
			<td><div align="left"><?php echo $data['definisi'];?></div></td>
			</tr>
			<tr valign="top">
			<td width="100">Pengamanan</td>
			<td width="5">: </td>
			<td><div align="left"><?php echo $data['pencegahan'];?></div></td>
			</tr>
			<tr valign="top">
			<td width="100">Solusi</td>
			<td width="5">: </td>
			<td><div align="left"><?php echo $data['solusi'];?></div></td>
			</tr>
			<tr valign="top">
			<td width="75"></td>
			<td width="5"></td>
			<td>
		</td>
		</tr>
		<?php }?>
	</table>
	<?php
    }else{
    echo 'Data Tidak Ditemukan!';
    }
    }
    ?>
</form>