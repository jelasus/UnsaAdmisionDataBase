<?php
    include 'login_conexion.php';

    session_start();
    $dni=$_POST["c"];

    include 'usuario_privilegio.php';

    if($privilegio >= 0){

        $resultado2 = mysqli_query($bd,"SELECT idParticipante&Cargos FROM Participante&Cargos WHERE DNI = $c");

        $row1 = mysqli_fetch_array($resultado2);     

        $resultado = mysqli_query($bd,"SELECT idParticipacion FROM Participacion WHERE idParticipante&Cargos = '$row1[0]'");

        $num = mysqli_num_rows($resultado);

        echo "<table border='1'>
        <tr>
        <th>DNI</th>
  
        </tr>";

            echo "<tr>";
            echo "<td>" . $c . "</td>";
            echo "<td>" . $n . "</td>";
            echo "</tr>";
     
            echo "</table>";
    }
    else{
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>"; 
        echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.php' </script>"; 
    }
?>
