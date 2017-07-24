<?php
$idPregunta=$_POST['idpregunta'];
$elegida=$_POST["elegida"];
$dificultad=$_POST["dificultad"];
$enunciado=$_POST["enunciado"];
$distractor_A=$_POST['distractor_A'];
$distractor_B=$_POST['distractor_B'];
$distractor_C=$_POST['distractor_C'];
$distractor_D=$_POST['distractor_D'];
$distractor_E=$_POST['distractor_E'];
$fecha=$_POST['fecha'];
$dni=$_POST['dni'];
$idproceso=$_POST['idproceso'];
$nombre=$_POST['nombre'];
$idresolucion=$_POST['idresolucion'];
$idcursoArea=$_POST['idcursoarea'];
if($idPregunta AND $elegida AND $dificultad AND $enunciado AND $distractor_A AND $distractor_B AND $distractor_C AND $distractor_D AND $distractor_E AND $fecha AND $dni AND $idproceso AND $nombre AND $idresolucion AND $idcursoArea){
  include "conexion.php";
  $sql="INSERT INTO Participante(DNI,apellidos,Nombre,Dependencia/facultad,Correo,Categoria,Regimen,Estado,CUI) VALUES('$dni','$apellidos','$nombre', '$facultad','$correo','$categoria','$regimen','$estado','$cui')";
  $insertar=mysqli_query($conexion,$sql);

  if($insertar){
    echo "
      <html>
        <head>
          <meta http-equiv='REFRESH' content='0 ; url=../cspagerespald.php'>
          <script>
            alert('registro de pregunta exitosa');
          </script>
        </head>
      </html>
    ";
  }
}
else{
  echo "
    <html>
      <head>
        <meta http-equiv='REFRESH' content='0 ; url=../cspagerespald.php'>
        <script>
          alert('registro de pregunta fallida vuelva a intentarlo');
        </script>
      </head>
    </html>
  ";
}
?>
