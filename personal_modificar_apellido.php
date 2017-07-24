<?php
    include 'login_conexion.php';

    session_start();
    $apellido=$_POST["apellido"];
    $dni=$_POST["dni"];

    //tomo el usuario del login y veo su privilegio
    include 'usuario_privilegio.php';

    if($privilegio > 0){
        $sql = mysqli_query($bd,"UPDATE Participante SET Apellidos = '$apellido' WHERE DNI = $dni");
        if($sql)
            echo "<script type='text/javascript'>alert('Se modificó correctamente')</script>";
        else{
            echo "<script type='text/javascript'>alert('No se ha modificado')</script>";
        }
    }
    else{ 
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>"; 
    }
    echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.php' </script>"; 

?>
