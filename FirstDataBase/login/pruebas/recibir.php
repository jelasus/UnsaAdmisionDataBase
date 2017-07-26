<?php
//inicio php_check_syntax
$idusuario=rand(100000,999999);
$nombre=$_POST["nombre"];
$paterno=$_POST["paterno"];
$materno=$_POST["materno"];
$contra=$_POST["contra"];

include "conexion.php";
$sql="INSERT INTO usuario(idusuario,nombre,paterno,materno,contra) VALUES('$idusuario','$nombre','$paterno', '$materno', '$contra')";
$insertar=mysqli_query($conexion,$sql);

if($insertar){
  echo "insertado";
}
else{
  echo "no insertado";
}

?>
