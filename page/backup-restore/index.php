<body>
<form action="" method="post" name="postform">
	<div align="center">
	  <p>Menu ini untuk <strong><a href="home.php?page=backup-restore/index">backup</a></strong> dan <strong><a href="home.php?page=backup-restore/recovery_data">restore</a></strong> semua data didalam database &quot;<strong>SISTEM PAKAR</strong>&quot;.</p>
	  <p>
	    <input type="submit" name="backup"  onClick="return confirm('Apakah Anda yakin?')"value="Proses Backup" />
	  </p>
  </div>
</form>
</p>
<?php
if(isset($_POST['backup'])){

	//membuat nama file
	$file=date("DdMY").'_ri32_backup_data_'.time().'.sql';
	
	//panggil fungsi dengan memberi parameter untuk koneksi dan nama file untuk backup
	backup_tables("localhost","root","","pakar",$file);
	
	?>
	<p align="center">&nbsp;</p>
	<p align="center"><a style="cursor:pointer" onclick="location.href='home.php?page=backup-restore/download_backup_data&nama_file=<?php echo $file;?>'" title="Download">Backup database telah selesai. <font color="#0066FF">Download file database</font></a>
</p>
	<?php
}else{
	unset($_POST['backup']);
}

/*
untuk memanggil nama fungsi :: jika anda ingin membackup semua tabel yang ada didalam database, biarkan tanda BINTANG (*) pada variabel $tables = '*'
jika hanya tabel-table tertentu, masukan nama table dipisahkan dengan tanda KOMA (,) 
*/
function backup_tables($host,$user,$pass,$name,$nama_file,$tables = '*')
{
	//untuk koneksi database
	$link = mysql_connect($host,$user,$pass);
	mysql_select_db($name,$link);
	
	if($tables == '*')
	{
		$tables = array();
		$result = mysql_query('SHOW TABLES');
		while($row = mysql_fetch_row($result))
		{
			$tables[] = $row[0];
		}
	}else{
		//jika hanya table-table tertentu
		$tables = is_array($tables) ? $tables : explode(',',$tables);
	}
	
	//looping dulu ah
	foreach($tables as $table)
	{
		$result = mysql_query('SELECT * FROM '.$table);
		$num_fields = mysql_num_fields($result);
		
		//menyisipkan query drop table untuk nanti hapus table yang lama
		$return.= 'DROP TABLE '.$table.';';
		$row2 = mysql_fetch_row(mysql_query('SHOW CREATE TABLE '.$table));
		$return.= "\n\n".$row2[1].";\n\n";
		
		for ($i = 0; $i < $num_fields; $i++) 
		{
			while($row = mysql_fetch_row($result))
			{
				//menyisipkan query Insert. untuk nanti memasukan data yang lama ketable yang baru dibuat. so toy mode : ON
				$return.= 'INSERT INTO '.$table.' VALUES(';
				for($j=0; $j<$num_fields; $j++) 
				{
					//akan menelusuri setiap baris query didalam
					$row[$j] = addslashes($row[$j]);
					$row[$j] = preg_replace("/n/","n",$row[$j]);
					if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
					if ($j<($num_fields-1)) { $return.= ','; }
				}
				$return.= ");\n";
			}
		}
		$return.="\n\n\n";
	}
	
	//simpan file di folder yang anda tentukan sendiri. kalo saya sech folder "DATA"
	$nama_file;
	
	$handle = fopen('./page/backup-restore/backup/'.$nama_file,'w+');
	fwrite($handle,$return);
	fclose($handle);
}
?>
</body>


