<?php
//inserccion de seguridad para validar: 1'or'1'='1 
include ('seguridad.php');
$nom=mysql_real_escape_string (quitarcadena($_POST ['usuario']));
$psw=mysql_real_escape_string (quitarcadena($_POST ['password1']));

//Encriptacion de contraseña
//$pass=md5($psw);
$pass=$psw;
$band=0;

if ($nom=='' or $psw=='')
{
    $msg='Llenar todos los campos';
    $band=1;
    header ("location:index.php?msg=$msg");
    exit;
}

if ($band==0)
{
    include 'bd/bd.php';

    $sql="SELECT id, Nivel, Estatus
			FROM usuario
			WHERE Usuario LIKE '$nom' AND Contrasena LIKE '$pass' ";
    $result=mysql_query($sql);
    $filas=mysql_num_rows($result);
    if ($filas==0)
    {
        $msg="El usuario o password no es valido.";
        $band=1;
        header ("location:index.php?msg=$msg");
        exit;
    }
}

if ($band==0)
{
    $act=mysql_result($result,0,'Estatus');
    if ($act!=1)
    {
        $msg="El usuario no esta activo";
        $band=1;
        header("location:index.php?msg=$msg");
        exit;
    }
}

if($band==0)
{
    $id=mysql_result($result,0,'id');
    $tp=mysql_result($result,0,'Nivel');
    if($tp==3)
    {
        header("location:cookiealumno.php?idu=$id");
        exit;
    }
    else
    {
        $msg="El usuario no pertenece a este tipo de plataforma";
        $band=1;
        header("location:index.php?msg=$msg");
        exit;
    }
}

?>
 