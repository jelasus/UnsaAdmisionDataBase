<?php
    include 'login_conexion.php';

    session_start();
    $cantidadSelect=$_POST["cantidad"];
    $idareaCargo=$_POST["idareacargo"];
    $query = mysqli_query($bd,"SELECT * FROM Area&Cargo_Proceso WHERE idarea&Cargo_Proceso = '$idareaCargo'");
    $filas=mysqli_fetch_array($query);
    $cantidadSelectsbd=$filas['Cant_seleccionados'];
    //tomo el usuario del login y veo su privilegio
    include 'usuario_privilegio.php';

    if($privilegio > 0){
        $sql = mysqli_query($bd,"UPDATE Area&Cargo_Proceso SET Cant_seleccionados = '$cantidadSelect' WHERE Cant_seleccionados='$cantidadSelectsbd'");
        if($sql)
            echo "<script type='text/javascript'>alert('Se modificó correctamente')</script>";
        else{
            echo "<script type='text/javascript'>alert('No se ha modificado')</script>";
        }
    }
    else{
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>";
    }
    echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.html' </script>";

?>
