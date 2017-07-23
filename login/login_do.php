<?php
    if (isset($_POST['submit']))
    {     
        $servidor = "localhost";
        $usuario = "ii";
        $password = "chalenyer";
        $bd_nombre = "ii_admision_unsa";
           
        $bd = mysqli_connect($servidor, $usuario, $password, $bd_nombre)
        or die("No se puede conectar al servidor.");

        session_start();
        $usuario=$_POST["usuario"];
        $password=$_POST["password"];

        $_SESSION['login_user']=$usuario;
 
        $query = mysqli_query($bd,"SELECT * FROM Usuario WHERE Nombre='$usuario' AND Contrasenha='$password'");

        if (mysqli_num_rows($query) >0){
            echo "<script language='javascript' type='text/javascript'> location.href='cspage.html' </script>";   
        }else{
            echo "<script type='text/javascript'>alert('Usuario o clave inválida')</script>";
            echo "<script language='javascript' type='text/javascript'> location.href='login.php' </script>";
        }
    }
?>
