<?php
    $user=$_GET['idu'];
    if($user=='')
    {
        $msg="No iniciaste secion";
        header("location:acceso.php?msg=$msg");
        exit;
    }
    setCookie(usuario,$user);
    setCookie(acceso,3);
    setCookie (tipo,'3');
    SESSION_start();
    $_SESSION['usuario']=$user;
    $_SESSION['acceso']=3;
    header ("location:mvc/index.php");
    exit;
?>