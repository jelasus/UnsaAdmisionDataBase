<?php
    
    include 'login_conexion.php';

    session_start();
    if(session_destroy()){
        
        $resultado = mysqli_query($bd,"SELECT Nombre FROM Usuario WHERE Online = 1");

        $row = mysqli_fetch_assoc($resultado);

        $usuario = $row["Nombre"];

        mysqli_query($bd,"UPDATE Usuario SET Online = 0 WHERE Nombre = '$usuario'");

        header("Location: login.php");
    }
?>
