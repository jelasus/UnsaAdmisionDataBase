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
      <form action= "login_do.php"method = "POST">
        <input id="usuario" name ="usuario" type="text" placeholder="Nombre de usuario"/>
        <input id="password" name="password" type="password" placeholder="Password"/>
        <input name="submit" type="submit" value="Entrar"/>
      </form>
    </div>
    
  </body>
</html>
