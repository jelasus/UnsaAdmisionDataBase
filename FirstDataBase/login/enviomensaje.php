<!DOCTYPE html>
 <head>
   <meta charset="utf-8" />
   <link rel="stylesheet" href="estilos.css"/>
  </head>
  <body>
   <div id="container">
    <h1>Redactar Mensaje</h1>
    <form action="enviasms_conect.php" method="POST">
     <ul>
      <li>
       <label for="email">E-mail</label>
       <input type="text" name="email" id="email" placeholder="ingrese correo" /></li>
      <li>
      <label for="asunto">Asunto</label>
       <input type="text" name="asunto" id="asunto" />
      </li>
      <li>
       <label for="mensaje">Mensaje</label>
       <textarea name="mensaje" id="mensaje" cols="25" rows="5"></textarea>
      </li>
     <li><input type="submit" name="Enviar" id="Enviar" value="Enviar Mensaje" /></li>
    </ul>
   </form>
  </div>
 </body>
</html>
