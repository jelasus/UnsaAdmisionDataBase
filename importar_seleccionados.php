<?php
    $nombre_arch = "seleccionados.csv";
    $arch = fopen($nombre_arch, "r");

    if($arch){
        
        include 'login_conexion.php';
        
        
        while(($row = fgetcsv($arch, 1000, ",")) !== false)
        {
            
            $id = $row[0];
            $seleccionado = $row[1];

            $sql = mysqli_query($bd,"UPDATE Participacion Set Seleccionado = 1 WHERE idParticipacion = '$id'");
        }
        
        if($sql)
            echo "<script type='text/javascript'>alert('Se importó correctamente')</script>";
        else
            echo "<script type='text/javascript'>alert('No se ha importado')</script>";
    }
    fclose($arch);
?>
