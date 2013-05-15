<title> Bahan Kimia</title>
                   <div>
                        <center>Form Input Bahan Kimia<center>
                    </div> <!-- End .content-box-header -->
 <p><table id="tablemn" >
	<thead >
		<th width="10%" >No.</th>
		<th width="10%">idp</th>
		<th width="70%">Nama Bahan Kimia</th>
		<th width="60%">Aksi</th>
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
			<td><a href="home.php?page=bahan_kimia&aksi=edit&idk='.$row['idk'].'" title="Edit"><img src="images/icons/pencil.png" alt="Edit" /></a>
            <a href="home.php?page=bahan_kimia&aksi=del&idk='.$row['idk'].'" onclick="return confirm(\'Apakah kamu yakin ingin menghapus '.$row['nm_kimia'].' ?\');" title="Delete"><img src="images/icons/cross.png" alt="Delete" /></a></td></tr>';
$no++;
			}
}


?>
	</tbody>
</table><br/>
<?php
$file="?page=bahan_kimia";

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

                       

                

                    <div class="content-box-header"> <!-- Add the class "closed" to the Content box header to have it closed by default -->

                        <p><h3>INPUT BAHAN KIMIA</h3></p>

                    </div> <!-- End .content-box-header -->
<?php 
require 'inc/koneksi.php';

if (isset($_POST['simpan'])){
	$idk    		= buatID("kimia","K");
	$nama			= $_POST['nm_kimia'];
	$nama_lain		= $_POST['nama_lain'];
	$definisi		= $_POST['definisi'];
	$pencegahan		= $_POST['pencegahan'];
	$solusi			= $_POST['solusi'];
    $insql=  mysql_query("insert into kimia(idk,nm_kimia,nama_lain,definisi,pencegahan,solusi) values('$idk','$nama','$nama_lain','$definisi','$pencegahan','$solusi')");
    if ($insql){
		  echo "<script>window.location.href = 'home.php?page=bahan_kimia';</script>";
	}else{
	
	}	
}

if (isset($_POST['update'])){
	$idk    		= $_POST['idk'];
	$nm_kimia		= $_POST['nm_kimia'];
	$nama_lain		= $_POST['nama_lain'];
	$definisi		= $_POST['definisi'];
	$pencegahan		= $_POST['pencegahan'];
	$solusi			= $_POST['solusi']; 
	$id 			= preg_replace('/\s+/','',$idk);;
    $edsql=  mysql_query("UPDATE kimia SET nm_kimia='$nm_kimia', 
	nama_lain='$nama_lain', definisi='$definisi', pencegahan='$pencegahan', solusi='$solusi' WHERE idk = '$id'") or die(mysql_error());
	if ($edsql){
		  echo "<script>window.location.href = 'home.php?page=bahan_kimia';</script>";
	}else{
	
	}	    
}

if ($_GET['aksi']=="del"){
	$idk	= $_GET['idk'];
	$delsql = mysql_query("DELETE FROM kimia WHERE idk='$idk'");
	if ($delsql){
		  echo "<script>window.location.href = 'home.php?page=bahan_kimia';</script>";	
	}else{
	
	}
}
?>

<form action="" id="form" method="post">
	<input type="hidden" name="idk" value="
		<?php 
			if (isset($_GET['aksi'])=="edit"){
			$idk 	= $_GET['idk'];
			$qedit	= mysql_query("SELECT * from kimia WHERE idk='$idk'");
			$redit	= mysql_fetch_assoc($qedit); echo $idk;
			$idk	= $redit['idk'];
			$nm_kimia	= $redit['nm_kimia'];
			$nama_lain	= $redit['nama_lain'];
			$definisi	= $redit['definisi'];
			$pencegahan	= $redit['pencegahan'];
			$solusi		= $redit['solusi'];
	}?>">	
				<table center>
			<tr valign="top">
			<td width="100">Kode Kimia</td>
			<td width="5">: </td>
			<td><input name="idk" type="text"  value="<? echo buatID("kimia","K"); ?>"  maxlength="4" disabled>
			</td>
			</tr>
			<tr valign="top">
			<td width="100">Nama Kimia</td>
			<td width="5">: </td>
			<td><textarea name="nm_kimia"  cols="25"  required ><?php echo $nm_kimia;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="100">Nama Lain</td>
			<td width="5">: </td>
			<td><textarea name="nama_lain"  cols="45"  required><?php echo $nama_lain;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="100">Definisi</td>
			<td width="5">: </td>
			<td><textarea name="definisi"  cols="45"  required><?php echo $definisi;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="100">Pengamanan</td>
			<td width="5">: </td>
			<td><textarea name="pencegahan"  cols="45"  required><?php echo $pencegahan;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="100">Solusi</td>
			<td width="5">: </td>
			<td><textarea name="solusi"  cols="45"  required><?php echo $solusi;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="75"></td>
			<td width="5"></td>
			<td>
			<?php if (isset($_GET['aksi'])=='edit'){
				echo '<input class="button" type="submit" value="Update" name="update" />';
				}else{
				echo '<input class="button" type="submit" value="Tambahkan" name="simpan" />';}
			?></td>
			</tr>
				</table>
			</form>
