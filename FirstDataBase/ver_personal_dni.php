<?php
    include 'login_conexion.php';

    session_start();
    $dni=$_POST["c"];

    include 'usuario_privilegio.php';

    if($privilegio >= 0){

        $resultado = mysqli_query($bd,"SELECT * FROM Participante WHERE DNI = $dni");

        echo "<table border='1'>
        <tr>
        <th>DNI</th>
        <th>Apellidos</th>
        <th>Nombres</th>
        <th>Dependecia/Facultad</th>
        <th>Correo</th>
        <th>Categoria</th>
        <th>Regimen</th>
        <th>Estado</th>
        <th>CUI</th>
        </tr>";

        while($row = mysqli_fetch_assoc($resultado))
        {
            echo "<tr>";
            echo "<td>" . $row['DNI'] . "</td>";
            echo "<td>" . $row['Apellidos'] . "</td>";
            echo "<td>" . $row['Nombres'] . "</td>";
            echo "<td>" . $row['Dependencia/Facultad'] . "</td>";
            echo "<td>" . $row['Correo'] . "</td>";
            echo "<td>" . $row['Categoria'] . "</td>";
            echo "<td>" . $row['Regimen'] . "</td>";
            echo "<td>" . $row['Estado'] . "</td>";
            echo "<td>" . $row['CUI'] . "</td>";
            echo "</tr>";
        }
            echo "</table>";
    }
    else{
        echo "<script type='text/javascript'>alert('No tiene los sufcientes privilegios.')</script>"; 
        echo "<script language='javascript' type='text/javascript'> location.href='cspagerespald.php' </script>"; 
    }
?>
