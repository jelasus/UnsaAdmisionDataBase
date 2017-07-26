<?php
        include 'login_conexion.php';

        //tomamos el usuario que esta online, tomamos su tipo de usua_
        // rio, tomamos su privilegio

        $r1 = mysqli_query($bd,"SELECT idTipo_Usuario FROM Usuario WHERE Online = '1'");
  
        $row1 = mysqli_fetch_array($r1);     

        $r2 = mysqli_query($bd,"SELECT Privilegio FROM Tipo_Usuario WHERE idTipo_Usuario = '$row1[0]'");

        $pri = mysqli_fetch_array($r2);  
        $privilegio = $pri[0];

        //PARA TODOS LOS USUARIOS, PUES VEO EN BD

?>
