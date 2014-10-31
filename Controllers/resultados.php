<?php
    $titulo = '';
    $contenido = '';//Todas las conexiones a la BD deben estar en los controladores

    $variables = array('titulo'=>$titulo,'contenido'=>$contenido);

    view('resultados',$variables);
?>