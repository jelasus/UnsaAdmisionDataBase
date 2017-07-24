<?php
    include 'login_conexion.php';

    session_start();
    $apellido="Looo";//$_POST["apellido"];
    $dni= 56431326;//$_POST["dni"];

    //tomo el usuario del login y veo su privilegio
    include 'usuario_privilegio.php';

    if($privilegio > 0){
        $sql = mysqli_query($bd,"UPDATE Participante SET Apellidos = '$apellido' WHERE DNI = $dni");
        if($sql)
            echo "<script type='text/javascript'>alert('Se modificó correctamente')</script>";
        else
            echo "<script type='text/javascript'>alert('No se ha modificado')</script>";
    }
    else 
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>";
    

?>
