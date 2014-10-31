<?php
    $usuarioal = new Alumno();
?>
<html>
    <head></head>
    <body>
        <h1><?php $usuarioal->showUsuario(); ?> </h1>
        <p><?php echo$contenido ?></p>
        <br>
        <?php $usuarioal->showCuestionario(); ?>
    </body>
</html>