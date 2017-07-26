<?php
    if (isset($_POST['submit']))
    {
        include 'login_conexion.php';
        //recuperacion de clave
        $palabraclave=$_POST['palabraclave'];

        $query = mysqli_query($bd,"SELECT * FROM Usuario WHERE Palabraclave='$palabraclave'");
        $filas=mysqli_fetch_array($query);

        $palabraclavebd = $filas['Palabraclave'];
        $contrasenhabd = $filas['Contrasenha'];
        if($palabraclave==$palabraclavebd){
          echo "<script type='text/javascript'>alert('su clave es..$contrasenhabd')</script>";
          echo "<script language='javascript' type='text/javascript'> location.href='login.php' </script>";
        }
        else{
          echo "<script type='text/javascript'>alert('su clave es incorrecta')</script>";
          echo "<script language='javascript' type='text/javascript'> location.href='recuperacion.php' </script>";
        }
    }
?>
