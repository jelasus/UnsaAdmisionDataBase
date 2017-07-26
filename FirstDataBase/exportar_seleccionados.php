<?php
    $nombre_arch = "exportar_seleccionados.csv";
    $arch = fopen($nombre_arch, 'w') 
    or die ("No se puede crear el archivo");
    
    if($arch){
    
        include 'login_conexion.php';       
        
        fputcsv($arch, array('idParticipacion','Seleccionado'));
        
        $rows = mysqli_query($bd,"SELECT idParticipacion, Seleccionado FROM Participacion");
        
        while($row = mysqli_fetch_array($rows))
        {
            if($row[1])
                fputcsv($arch, array($row[0],"1"));
            else
                fputcsv($arch, array($row[0],"0"));
        }
        
        if(fclose($arch))
            echo "<script type='text/javascript'>alert('Se exportó correctamente')</script>";
        else
            echo "<script type='text/javascript'>alert('No se ha exportado')</script>";
    }
    
?>
