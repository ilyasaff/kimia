<title>Sistem Pakar</title>

                    <div>

                        <h2 align="center">DATA AKSES</h2>

                    </div> <!-- End .content-box-header -->

                    
 <p><table id="tablemn" >
	<thead >
		<th width="10%" >No.</th>
		<th width="15%">Userid</th>
		<th width="10%">Password</th>
		<th width="10%">Level</th>
		<th width="10%">Aksi</th>
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
$sql=  mysql_query("SELECT * FROM user ORDER BY level ASC limit $posisi,$batas") or die (mysql_query());
if (mysql_num_rows($sql) == 0){
	echo '<tr><td colspan=4><center><br/><h4>Tidak ada data</h4></center></td></tr>';
	}else{

while ($row = mysql_fetch_assoc($sql)) {
     echo '<tr>
			<td>'.$no.'</td>
			<td>'.$row['userid'].'</td>
			<td>'.$row['password'].'</td>	
			<td>'.$row['level'].'</td>	
			<td>
            <a href="home.php?page=user&aksi=del&userid='.$row['userid'].'" onclick="return confirm(\'Apakah kamu yakin ingin menghapus '.$row['userid'].' ?\');" title="Delete"><img src="images/icons/cross.png" alt="Delete" /></a></td></tr>';
$no++;
			}
}


?>
	</tbody>
</table><br/>
<?php
$file="?page=user";

$tampil2="SELECT * FROM user ORDER BY level ASC";
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
echo "<p><font color=red>Total User : <b>$jmldata</b> User</font></p>";
?>
	</tbody>
</table>


<?php 
require 'inc/koneksi.php';

if ($_GET['aksi']=="del"){
	$userid	= $_GET['userid'];
	$delsql = mysql_query("DELETE FROM user WHERE userid='$userid'");
	if ($delsql){
		  echo "<script>window.location.href = 'home.php?page=user';</script>";	
	}else{
	
	}
}
?>
                       
