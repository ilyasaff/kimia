<title>Manipulasi Gejala Penyakit</title>
    <div>
        <center><b>INPUT DATA GEJALA</b><center>
    </div> <!-- End .content-box-header -->
 <p><table id="tablemn" >
	<thead>
		<th width="5%" >No.</th>
		<th width="10%">Kode </th>
		<th width="35%">Nama Gejala</th>
		<th width="42%">Pertanyaan</th>
		<th width="15%">Aksi</th>
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
$sql=  mysql_query("SELECT * FROM gejala ORDER BY idg ASC limit $posisi,$batas") or die (mysql_query());
if (mysql_num_rows($sql) == 0){
	echo '<tr><td colspan=4><center><br/><h4>Tidak ada data</h4></center></td></tr>';
	}else{

while ($row = mysql_fetch_array($sql)) {
     echo '<tr>
			<td>'.$no.'</td>
			<td>'.$row['idg'].'</td>
			<td>'.$row['gejala'].'</td>
			<td>'.$row['pertanyaan'].'</td>
			<td><a href="home.php?page=gejala&aksi=edit&idg='.$row['idg'].'" title="Edit"><img src="images/icons/pencil.png" alt="Edit" /></a>
            <a href="home.php?page=gejala&aksi=del&idg='.$row['idg'].'" onclick="return confirm(\'Apakah kamu yakin ingin menghapus '.$row['gejala'].' ?\');" title="Delete"><img src="images/icons/cross.png" alt="Delete" /></a></td></tr>';
$no++;
			}
}


?>
	</tbody>
</table><br/>
<?php
$file="?page=gejala";

$tampil2="SELECT * FROM gejala ORDER BY idg ASC";
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
echo "<p><font color=red>Total Gejala : <b>$jmldata</b> Gejala</font></p>";
?>

                    <div>
                        <p><h3>INPUT GEJALA</h3></p>

                    </div> <!-- End .content-box-header -->
               
<?php 
require 'inc/koneksi.php';

if (isset($_POST['simpan'])){
	$idg    		= buatID("gejala","G");
	$gejala			= $_POST['gejala'];
	$pertanyaan		= $_POST['pertanyaan'];
    $insql=  mysql_query("insert into gejala(idg,gejala,pertanyaan) values('$idg','$gejala','$pertanyaan')");
    if ($insql){
		  echo "<script>window.location.href = 'home.php?page=gejala';</script>";
	}else{
	
	}	
}

if (isset($_POST['update'])){
	$idg			= $_POST['idg'];
	$gejala    		= $_POST['gejala'];
	$pertanyaan    	= $_POST['pertanyaan'];
	    
    $edsql=  mysql_query("UPDATE `kimia`.`gejala` SET idg='$idg', gejala='$gejala', pertanyaan='$pertanyaan' WHERE `gejala`.`idg` = '$idg';") or die(mysql_error());
    if ($edsql){
		  echo "<script>window.location.href = 'home.php?page=gejala';</script>";
	}else{
	
	}	    
}

if ($_GET['aksi']=="del"){
	$idg		= $_GET['idg'];
	$delsql = mysql_query("DELETE FROM gejala WHERE idg='$idg'");
	if ($delsql){
		  echo "<script>window.location.href = 'home.php?page=gejala';</script>";	
	}else{
	
	}
}
?>


            <form action="" id="form" method="post">
			<input type="hidden" name="idg" value="<?php 
			if (isset($_GET['aksi'])=="edit"){
			$idg 	= $_GET['idg'];
			$qedit	= mysql_query("SELECT * from gejala WHERE idg='$idg'");
			$redit	= mysql_fetch_assoc($qedit); echo $idg;
			$idg	= $redit['idg'];
			$gejala	= $redit['gejala'];
			$pertanyaan	= $redit['pertanyaan'];}?>">	
				<table>
			<tr valign="top">
			<td width="100">Kode gejala</td>
			<td width="5">: </td>
			<td><input name="idg" type="text"  value="<? echo buatID ("gejala","G"); ?>"  maxlength="4" disabled>
			</td>
			</tr>
			<tr valign="top">
			<td width="100">Gejala</td>
			<td width="5">: </td>
			<td><textarea name="gejala"  cols="45" id=""><?php echo $gejala;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="100">Pertanyaan</td>
			<td width="5">: </td>
			<td><textarea name="pertanyaan"  cols="45" id=""><?php echo $pertanyaan;?></textarea></td>
			</tr>
			<tr valign="top">
			<td width="75"></td>
			<td width="5"></td>
			<td><?php if (isset($_GET['aksi'])=='edit'){
				echo '<input class="button" type="submit" value="Simpan" name="update" />';
				}else{
				echo '<input class="button" type="submit" value="Tambahkan" name="simpan" />';}
			?></td>
			</tr>
				</table>
			</form>


