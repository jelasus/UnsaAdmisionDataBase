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
      <h1>Cual es su clave secreta</h1>
      <form action= "login_re.php"method = "POST">
        <input id="palabraclave" name ="palabraclave" type="password" placeholder="palabraclave"/>
        <!--<input id="palabraclave" type="text" name="palabraclave" placeholder="palabraclave" /-->
        <input name="submit" type="submit" value="recuperacion"/>
      </form>
    </div>

  </body>
</html>
