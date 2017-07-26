<?php
$conexion=mysqli_connect("localhost","root","") or die("no hay conexion");
$bd=mysqli_select_db($conexion,"mydb") or die("no existe base de datos");
?>
