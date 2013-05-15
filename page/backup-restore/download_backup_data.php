<?php
	$path_link = $_SERVER['SCRIPT_FILENAME'];
	$path = str_replace('home.php','',$path_link);
	$file= $path."page/backup-restore/backup/".$_GET['nama_file'];

if (file_exists($file)) {
    header('Content-Description: File Transfer');
    header('Content-Type: application/octet-stream');
    header('Content-Disposition: attachment; filename='.basename($file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($file));
    ob_clean();
    flush();
    readfile($file);
    exit;
}else{
	echo 'tidak ada';
}
?>
