<?php
$email=$_POST['email'];
$email1=$_POST['email1'];

if ($email) {
  include "login_conexion.php";

  $consulta = mysqli_query($bd,"SELECT * FROM Participante WHERE Correo='$email'");
  $filas=mysqli_fetch_array($consulta);
  $emailbd = $filas['Correo'];
  if($email==$emailbd){
    $emailreceptor=$email;
    $emailenvia=$email1;
    $mensaje=$_POST['mensaje'];
    $asunto=$_POST['asunto'];
    $mensaje=wordwrap($mensaje,100);
    $para=$emailreceptor;
    $cabeceras = 'From: '.$emailenvia."\r\n".
    'Reply-To: '.$emailreceptor. "\r\n".
    'X-Mailer: PHP/';
    mail($para,$asunto,$mensaje,$cabeceras);
    $texto= $emailreceptor.'<br>'.$mensaje;
    mail($emailreceptor,'SMS enviado!!!',$texto,'FROM: $emailenvia');
    echo "<script type='text/javascript'>alert('el mensaje fue enviado a: $emailreceptor')</script>";
    echo "<script language='javascript' type='text/javascript'> location.href='formulario.php' </script>";
  }
  else{
    echo "<script type='text/javascript'>alert('el correo al que desea enviar no existe')</script>";
    echo "<script language='javascript' type='text/javascript'> location.href='formulario.php' </script>";
  }
}
else{
  echo "<script type='text/javascript'>alert('no ingreso correo')</script>";
  echo "<script language='javascript' type='text/javascript'> location.href='formulario.php' </script>";
}

?>
