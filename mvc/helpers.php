<?php
    function view($plantilla, $variable = array()){
        extract($variable);//Convierte un arreglo en variables independientex
        require('../View/'.$plantilla.'.tpl.php');
    }
    function controller($nombre){
        if(empty($nombre))
            $nombre = 'home';
        $archivo = "../Controllers/$nombre.php";

        if(file_exists($archivo))
                require($archivo);
        else
            echo"Error archivo no encontrado";
    }
?>