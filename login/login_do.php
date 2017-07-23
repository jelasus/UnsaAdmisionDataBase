<?php
    if (isset($_POST['submit']))
    {     

        include 'login_conexion.php';

        session_start();
        $usuario=$_POST["usuario"];
        $password=$_POST["password"];

        $_SESSION['login_user']=$usuario;
 
        $query = mysqli_query($bd,"SELECT * FROM Usuario WHERE Nombre='$usuario' AND Contrasenha='$password'");

        if (mysqli_num_rows($query) >0){

            //registramos en la bd que está online,
            //asumimos que solo uno puede estar online
            mysqli_query($bd,"UPDATE Usuario SET Online = 1 WHERE Nombre = '$usuario'");

            echo "<script language='javascript' type='text/javascript'> location.href='cspage.html' </script>";
        }else{
            echo "<script type='text/javascript'>alert('Usuario o clave inválida')</script>";
            echo "<script language='javascript' type='text/javascript'> location.href='login.php' </script>";
        }
    }
?>
