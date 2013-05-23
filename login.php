<?php
session_start();
mysql_connect("localhost","root","") or die("Nggak bisa koneksi");
mysql_select_db("kimia");//sesuaikan dengan nama database anda

$userid = $_POST['userid'];
$psw = $_POST['password'];
$op = $_GET['op'];

if($op=="in"){
    $cek = mysql_query("SELECT * FROM user WHERE userid='$userid' AND password='$psw'");
    if(mysql_num_rows($cek)==1){//jika berhasil akan bernilai 1
        $c = mysql_fetch_array($cek);
        $_SESSION['userid'] = $c['userid'];
        $_SESSION['level'] = $c['level'];
        if($c['level']=="10"){
            header("location:home.php");
        }else if($c['level']=="20"){
            header("location:home.php");
        }
    }else{
         		header('location:index.php?notif=error&status=Username dan Password salah.&u='.$_GET['u']);	

    }
}else if($op=="out"){
    unset($_SESSION['userid']);
    unset($_SESSION['level']);
    unset($_SESSION['total_itung']);
    header("location:index.php");
}
?>