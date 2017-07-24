<?php
    include 'login_conexion.php';

    session_start();
    $idP_C=$_POST["idParticipante&Cargos"];
    $idCargo_Proceso=$_POST["idCargo_Proceso"];
    $dni=$_POST["dni"];

    include 'usuario_privilegio.php';

    if($privilegio > 0){

        $sql = mysqli_query($bd,"UPDATE Participante&Cargos SET idCargo_Proceso = $idCargo_Proceso WHERE idParticipante&Cargos = idP_C AND DNI = $dni");

        if($sql)
            echo "<script type='text/javascript'>alert('Se modificó correctamente')</script>";
        else{
            echo "<script type='text/javascript'>alert('No se ha modificado')</script>";
            echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.html' </script>";  
        }
    }
    else{
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>";
        echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.html' </script>";  
    }

?>
