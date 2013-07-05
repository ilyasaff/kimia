<?php
// session_start();
if(isset($_GET['clear']))
	unset($_SESSION['total_itung']);
require 'inc/koneksi.php';	
	if (isset($_POST['cur'])){
	if (isset($_POST['ya'])){
		$next = $_POST['yaval'];
			array_push($_SESSION['listgejala'], $_POST['cur']);
		}else if(isset($_POST['tidak'])){
			$next = $_POST['tidakval'];
		}
		if ($next==""){
			echo "<script>window.location.href = 'home.php?page=hasil_diagnosa';</script>";
		}
	}else{
		$mulai = "G004";
		$next = $mulai;
		$_SESSION['listgejala'] = Array();
	}

	$sqli = mysql_query('SELECT idk FROM kimia') or die(mysql_error());
	$listsakit = $_SESSION['listgejala'];
	if (count($listsakit)==1) {
		$cf = array();
		while ($data = mysql_fetch_array($sqli)){
			$idk = $data['idk'];
			$req = mysql_query("SELECT mb,md FROM relasi WHERE idk = '$idk' AND idg='".$listsakit[0]."'") or die(mysql_error());
			$mbmd = mysql_fetch_array($req);			
			$mb = $mbmd['mb'];
			$md = $mbmd['md'];
			// array_push($cf, $mb-$md."_".$mb."_".$md."_".$idk);
			array_push($cf, $mb-$md."_".$mb."_".$md."_".$idk);
			// echo "<pre>pertama"; print_r("mb = ".$mbmd['mb']." md = ".$mbmd['md']." idk = ".$idk); echo "</pre>";
		}
		// echo "<pre>"; print_r($cf); echo "</pre>";		
		rsort($cf, SORT_NUMERIC); 
		$_SESSION['new_itung'] = $cf[0];
		$_SESSION['new_itung_full'] = $cf;
		$_SESSION['total_itung'] = 0;
		// echo "<pre>pertama"; print_r($cf); echo "</pre>";
		// echo "<strong>".$cf[0]."</strong>";
	}
	if (count($listsakit)>1 && !isset($_POST['tidak']))
	{				
		$_SESSION['total_itung']++;
		if(isset($_POST['tidak']))
			$_SESSION['total_itung']--;
		$cf = array();
		$mbmdprev = explode("_", $_SESSION['new_itung']);
		
		$output = array_slice($_SESSION['listgejala'], $_SESSION['total_itung']);		
		$nlistgejala = implode(", ", $_SESSION['listgejala']);
		$full = $_SESSION['new_itung_full'];
		// echo "<pre>before"; print_r($full); echo "</pre>";
		$init = count($_SESSION['listgejala']) - 1;
		while ($data = mysql_fetch_array($sqli)){
			$idk = $data['idk'];			
				$sql = "SELECT mb,md,idg FROM relasi WHERE idk = '".$idk."' AND idg IN ('" . implode("', '", $_SESSION['listgejala']) . "')";
				$req = mysql_query($sql) or die(mysql_error());
				// echo $sql."<br>";
				if(mysql_num_rows($req) >= $_SESSION['total_itung'])
				{
					while($mbmd = mysql_fetch_array($req))
					{			
						foreach ($full as $key => $value) {
							$val = explode("_", $value);
							if($val[3] == $idk && $mbmd['idg'] == $_SESSION['listgejala'][$init])
							{									
								$mb_from_prev = $val[1];
								$mb = $mbmd['mb'];
								$mb_new = $mb_from_prev + ( $mb * (1-$mb_from_prev) );

								$md_from_prev = $val[2];
								$md = $mbmd['md'];
								$md_new = $md_from_prev + ( $md * (1-$md_from_prev) );

								$cf_new = $mb_new - $md_new;
								
								array_push($cf, $cf_new."_".$mb_new."_".$md_new."_".$idk);

							}
						}
					}
				}				
		}
				
		rsort($cf, SORT_NUMERIC); 		
		$_SESSION['new_itung'] = (count($cf)>0) ? $cf[0] : "Nonono";
		$_SESSION['new_itung_full'] = (count($cf)>0) ? $cf : "Nonono";
		// echo "<pre>"; print_r($_SESSION['new_itung_full']); echo "</pre>";	
	}

	if(isset($_POST['tidak']))
	{
		$cf = $_SESSION['new_itung_full'];
		$_SESSION['new_itung'] = (count($cf)>0) ? $cf[0] : "Nonono";
		$_SESSION['new_itung_full'] = (count($cf)>0) ? $cf : "Nonono";
	}

	// echo "<pre>after"; print_r($cf); echo "</pre>";

	$qry = mysql_query("SELECT t.idg idg,t.g_ya,t.g_tidak,g.pertanyaan FROM `t_pertanyaan` t
						LEFT JOIN gejala g ON t.idg = g.idg WHERE t.idg='$next'") or die(mysql_error());
	$result = mysql_fetch_array($qry);
?>
<br><br><br>
<div class="content-box-header"><center><h3>IDENTIFIKASI KERACUNAN KIMIA<center></h3></div>

<form action="" id="form" method="post">	
	<input type="hidden" name="cur" value="<?php echo $result['idg'];?>"/>
	<input type="hidden" name="yaval" value="<?php echo $result['g_ya'];?>"/>
	<input type="hidden" name="tidakval" value="<?php echo $result['g_tidak'];?>"/>
	<table width="100%">
	<tr valign="top">
	<td>
		<h4 align="center"><?php echo $result['idg'];?>&nbsp;&nbsp; <?php echo $result['pertanyaan'];?></h4><br/>
	</td> 
	</tr>			
	<tr valign="top">
	<td align="center"><?php echo '<input class="button" type="submit" value="Ya" name="ya" />
					<input class="button" type="submit" value="Tidak" name="tidak" />';
	?></td>
	</tr>
	</table>
</form>