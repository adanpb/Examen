<?php
    require('accal.php');
    require('helpers.php');
    require('../templete/header.php');
    require('../templete/menu.php');
    require('../clases/Alumno.php');
    require('../bd/bd.php');


    if(empty($_GET['url']))
        $_GET['url'] = 'home';
        controller($_GET['url']);

    require('../templete/footer.php');
?>