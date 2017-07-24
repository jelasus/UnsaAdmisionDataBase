<?php
        $servidor = "localhost";
        $usuario = "root";
        $password = "";
        $bd_nombre = "ii_admision_unsa";

        $bd = mysqli_connect($servidor, $usuario, $password, $bd_nombre)
        or die("No se puede conectar al servidor.");
?>
