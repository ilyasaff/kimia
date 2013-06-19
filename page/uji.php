<form action="" id="form" method="post">
		<?php 
		require 'inc/koneksi.php';
		require 'inc/buatid.php';
		if (isset($_GET['aksi'])=="edit"){
			$idk = $_GET['idk'];
			$sql = "select * from kimia WHERE idk='$idk'";
			$result = mysql_query($sql);
		if( mysql_num_rows($result) > 0){
    ?>
				<table center>
				<h2 align="center">INFORMASI BAHAN KIMIA</h2>
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