<?php
    $servidor = "localhost";
    $usuario = "ii";
    $password = "chalenyer";
    $bd_nombre = "ii_admision_unsa";
       
    $bd = mysqli_connect($servidor, $usuario, $password, $bd_nombre)
    or die("No se puede conectar al servidor.");
?>
