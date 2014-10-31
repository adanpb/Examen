<?php
	 $acceso= $_COOKIE['acceso'];
	 $tipo= $_COOKIE['tipo']; 
	 $user=$_COOKIE['usuario']; 
	if($acceso !='3')
	{
		$msg="No iniciaste secion";
		header('location:../index.php');
		exit;
	}
	session_start();
	if($_SESSION['acceso']=="" or $_SESSION['usuario']=="")
	{
		$msg="No iniciaste secion";
		header('location:../index.php');
		exit;
	}	
?>