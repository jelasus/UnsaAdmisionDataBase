<!DOCTYPE html>
<html>
  <head>
    <title>login</title>
    <style type="text/css">
    #caja
    {
      background: #f0f0f0;
      width: 200px;
      border 1px solid white;
      margin: 200px auto;
      padding: 1em;
      border-radius: 6px;
    }
    body{
      background: #a2a2a2;
    }
    h1{
      font-family: arial;
      color: red;
    }
    input[type=text],input[type=submit],input[type=password]{
      border-radius: 3px;
      padding: 2px;
    }
    input[type=submit]:hover,form a:hover{
      background: green;
      cursor: pointer;
    }
    </style>
  </head>
  <body>
    <div id="caja">
      <h1>login</h1>
      <form method = "POST">
        <input id="usuario" name ="usuario" type="text" placeholder="Nombre de usuario"/>
        <input id="password" name="password" type="password" placeholder="Password"/>
        <input name="submit" type="submit" value="Entrar"/>
      </form>
    </div>
    <?php
    if (isset($_POST['submit']))
    {     
        include("login_config.php");
        session_start();
        $usuario=$_POST["usuario"];
        $password=$_POST["password"];
        $_SESSION['login_user']=$usuario; 
        $query = mysql_query("SELECT Nombre FROM Usuario WHERE Nombre='$usuario' and Contraseña='$password'");
        if (mysql_num_rows($query) == 1){
            echo "<script language='javascript' type='text/javascript'> location.href='cspage.php' </script>";   
        }else
            echo "<script type='text/javascript'>alert('Usuario o clav inválida')</script>";    
    }
    ?>
  </body>
</html>
