<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta charset="iso-8559-1"/>
    <meta name="description" content="pagina de prueba html5"/>
    <meta name="keywords" content="computacion, alimentacion, diabetes, salud, arequipa"/>
    
    <title>CS-UNSA</title>
    <script src="cspagerespald.js"></script>
    <link rel="stylesheet" href="cspagerespald.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div id = "background-page">
        <div id = "head-page">
            <div id = "logo">
                <figure id = "logounsa"> 
                    <img src="unsa_logo.jpg" alt="logo unsa" height="95%" width="95%">
                </figure>
            </div>
            
            
            <div id = "menu-head">
                <div id = "login">
                    <li id = "li-sesion">User:</li>
                        <ul id = "ul-sesion">
                            <li id = "li-sesion2">Cerrar sesion</li>
                            <li id = "li-sesion2">Configuracion</li>
                        </ul>
                </div>
                
                <div id = "sesion">
                    <figure id = "logouser"> 
                            <img src="unsa_logo.jpg" alt="logo unsa" height="95%" width="95%">
                    </figure> 
                </div>
            </div>
            
            
            <div id = "main-menu">
                <nav id="nav-mainmenu">
                    <!--
                    <ul id ="ul-mainmenu"  class="btn-group" data-toggle="buttons"> -->
                    <ul id ="ul-mainmenu" >
                         <label class="btn btn-primary active">
                            <input type="radio" name="entidad" id="proceso" autocomplete="off"> PROCESO
                         </label>
                         <label class="btn btn-primary">
                             <input type="radio" name="entidad" id="pregunta" autocomplete="off"> PREGUNTA
                         </label>
                         <label class="btn btn-primary">
                             <input type="radio" name="entidad" id="personal" autocomplete="off"> PERSONAL
                         </label>
                        <!--<div id = "main">
                            <br>
                            <br>
                            <li id ="li-main" class = "btn active">Pregunta</li>
                        </div>-->
                        
                    </ul>
                </nav>
                
            </div>
            
            <div id = "sub-menu" >
                <nav id="nav-submenu">
                    <ul id="ul-navmenu">
                        <!--
                        <br>
                        <li class="btn btn-success btn-lg btn-block">                 <br>
                            <large class = "lead">Ver</large>
                        </li>
                        <br>
                        <li class="btn btn-success btn-lg btn-block">
                            <br>
                            <large class = "lead">Modificar</large>
                        </li>
                        <br>
                        <li class="btn btn-success btn-lg btn-block">
                            <br>
                            <large class = "lead">Registrar</large>
                        </li>
                        -->
                        <label class="btn btn-primary active">
                            <input type="radio" name="options" id="ver" autocomplete="off" onclick="search(this.id)"> VER
                         </label>
                         <label class="btn btn-primary">
                             <input type="radio" name="options" id="modificar" autocomplete="off"
                             onclick="search(this.id)"> MODIFICAR
                         </label>
                         <label class="btn btn-primary">
                             <input type="radio" name="options" id="registrar" autocomplete="off" onclick="search(this.id)"> REGISTRAR
                         </label>
                    </ul>
                </nav>
                
            </div>
            
            <div id = "search">
                <canvas width="150" height="120" id="lienzo">
                su navegador no soporta canvas html5
                </canvas> 
            </div>
        </div>
        <div id = "body-page">
            <div id = "page1" class="container">
                <div id = "page-personal" class="btn-group-vertical">
                    <div id="page-personal-registrar" >
                        <button id="RegistrarPersonal" type="button" class="btn btn-primary" onclick="FormPersonalRegistrar(this.id)">Registrar una nueva persona</button>
                    </div>
                    <div id = "page-personal-modificar-ver" class="btn-group-vertical">
                        <button id="DNI" type="button" class="btn btn-primary" onclick="FormPersonalDni(this-id)">Por DNI</button>
                        <button id="apellido" type="button" class="btn btn-primary" onclick="FormPersonalApellido(this.id)">Por Apellido</button>
                        <button id="nombre" type="button" class="btn btn-primary" onclick="FormPersonalNombre(this.id)">Por Nombre</button>
                        <button id="dependencia" type="button" class="btn btn-primary" onclick="FormPersonalDependencia(this.id)">Por dependencia</button>
                        <button id="correo" type="button" class="btn btn-primary" onclick="FormPersonalCorreo(this.id)">Por correo</button>
                        <button id="categoria" type="button" class="btn btn-primary" onclick="FormPersonalCategoria(this.id)">Por categoria</button>
                        <button id="regimen" type="button" class="btn btn-primary" onclick="FormPersonalRegimen(this.id)">Por regimen</button>
                        <button id="estado" type="button" class="btn btn-primary" onclick="FormPersonalEstado(this.id)">Por estado</button>
                        <button id="cui" type="button" class="btn btn-primary" onclick="FormPersonalCui(this.id)">Por CUI</button>
                        <button id="cargo-proceso" type="button" class="btn btn-primary" onclick="FormPersonalCargoProceso(this.id)">Por Cargo-Proceso</button>
                        <button id="cargo-unsa" type="button" class="btn btn-primary" onclick="FormPersonalCargoUnsa(this.id)">Por Cargo-Unsa</button>
                        <button id="infoHistorica" type="button" class="btn btn-primary" onclick="FormPersonalInfoHistorica(this.id)">Por Informacion Historica</button>
                        <div id = "page-personal-ver" class="btn-group-vertical">
                            <button id="A" type="button" class="btn btn-primary" onclick="FormPersonalA(this.id)">A</button>
                            <button id="B" type="button" class="btn btn-primary" onclick="FormPersonalB(this.id)">B</button>
                            <button id="C" type="button" class="btn btn-primary" onclick="FormPersonalC(this.id)">C</button>
                        </div>
                    </div>
                </div>
                <div id = "page-pregunta" class="btn-group-vertical">
                    <div id="page-pregunta-registrar" >
                        <button id="RegistrarPregunta" type="button" class="btn btn-primary" onclick="FormPreguntaRegistrar(this.id)">Registrar una nueva pregunta</button>
                    </div>
                    <div id="page-pregunta-modificar-ver" class="btn-group-vertical">
                        <button id="ID Pregunta" type="button" class="btn btn-primary" onclick="FormPreguntaId(this.id)">Por ID de la pregunta</button>
                        <button id="preguntas-elegidas" type="button" class="btn btn-primary" onclick="FormPreguntaPreguntasElegidas(this.id)">Por Preguntas Elegidas</button>
                        <button id="dificultad" type="button" class="btn btn-primary" onclick="FormPreguntaDificultad(this.id)">Por Dificultad</button>
                        <button id="enunciado" type="button" class="btn btn-primary" onclick="FormPreguntaEnunciado(this.id)">Por Enunciado</button>
                        <button id="distractor A" type="button" class="btn btn-primary" onclick="FormPreguntaDistractorA(this.id)">Por distractor A</button>
                        <button id="distractor B" type="button" class="btn btn-primary" onclick="FormPreguntaDistractorB(this.id)">Por distractor B</button>
                        <button id="distractor C" type="button" class="btn btn-primary" onclick="FormPreguntaDistractorC(this.id)">Por distractor C</button>
                        <button id="distractor D" type="button" class="btn btn-primary" onclick="FormPreguntaDistractorD(this.id)">Por distractor D</button>
                        <button id="distractor E" type="button" class="btn btn-primary" onclick="FormPreguntaDistractorE(this.id)">Por distractor E</button>
                        <button id="fecha" type="button" class="btn btn-primary" onclick="FormPreguntaFecha(this.id)">Por Fecha</button>
                        <button id="resolucion" type="button" class="btn btn-primary" onclick="FormPreguntaResolucion(this.id)">Por Resolucion</button>
                        <button id="dniPregunta" type="button" class="btn btn-primary" onclick="FormPreguntaDni(this.id)">Por DNI</button>
                        <button id="nombrePregunta" type="button" class="btn btn-primary" onclick="FormPreguntaNombre(this.id)">Por Nombre de la pregunta</button>
                        <div id = "page-pregunta-modificar" >
                            <button id="no-elegida" type="button" class="btn btn-primary" onclick="FormPreguntaNoElegida(this.id)">Por Pregunta no Elegida</button>
                        </div>
                        <div id = "page-pregunta-ver" >
                            <button id="area" type="button" class="btn btn-primary" onclick="FormPreguntaArea(this.id)">Por Area</button>
                        </div>
                    </div>
                </div>
                <div id = "page-proceso" class="btn-group-vertical">
                    <div id="page-proceso-registrar" >
                        <button id="RegistrarProceso" type="button" class="btn btn-primary" onclick="FormProcesoRegistrar(this.id)">Registrar un nuevo proceso</button>
                    </div>
                    <div id = "page-proceso-modificar-ver" class="btn-group-vertical">
                        <button id="año" type="button" class="btn btn-primary" onclick="FormProcesoAño(this.id)">Por Año</button>
                        <button id="fecha-inicio" type="button" class="btn btn-primary" onclick="FormProcesoFechaInicio(this.id)">Por Fecha de Inicio</button>
                        <button id="fecha-final" type="button" class="btn btn-primary" onclick="FormProcesoFechaFinal(this.id)">Por Fecha del Final</button>
                        <div id ="page-proceso-ver" >
                            <button id="procesoProceso" type="button" class="btn btn-primary" onclick="FormProcesoProceso(this.id)">Por Proceso</button>
                        </div>
                        <div id ="page-proceso-modificar" >
                            <button id="cantidadSelecionados" type="button" class="btn btn-primary" onclick="FormProcesoCantidadSeleccionados(this.id)">Por Cantidad de Seleccionados por Funcion</button>
                            <button id="definirCantidad" type="button" class="btn btn-primary" onclick="FormProcesoCantidadSeleccionados(this.id)">Por Cantidad de Areas en las Funciones</button>
                        </div>
                    </div>
                </div>
                <div id = "recibir-texto">
                    <form id ="entradaDatos" method="POST">
                CLAVE(ID): <input id="a" type="text" name="a" value=""><br>
                Buscar: <input id="b" type="text" name="b" value=""><br>
                        <input id = "texto-submit" type="submit" value="Escribir">
                    </form>
                </div>
                <div id = "buscar-texto">
                    <form id ="BusquedaDatos" method="POST">
                Buscar: <input id = "c" type="text" name="c" value=""><br>
                        <input id = "valor-submit" type="submit" value="Buscar">
                    </form>
                </div>
                <div id ="FormularioPersonal">
                    <form id = "FPersonal" method = "POST">
                      <div class="form-group">
                        <label for="DNI">DNI</label>
                        <input type="DNI" class="form-control" id="DNI" aria-describedby="DNIhelp" placeholder="Ingresar DNI">
                      </div>
                      <div class="form-group">
                        <label for="Nombre">Nombre</label>
                        <input type="Nombre" class="form-control" id="Nombre" aria-describedby="Nombrehelp" placeholder="Ingresar Nombre">
                      </div>
                      <div class="form-group">
                        <label for="Apellido">Apellido</label>
                        <input type="Apellido" class="form-control" id="Apellido" aria-describedby="Apellidohelp" placeholder="Ingresar Apellido">
                      </div>
                      <div class="form-group">
                        <label for="Cargo_Unsa">Cargo_Unsa</label>
                        <select class="form-control" id="Cargo_Unsa1">
                          <option>Administrativo</option>
                          <option>Docente</option>
                          <option>Estudiante</option>
                        </select>
                      </div>

                      <fieldset class="form-group">
                        <legend>Estado</legend>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optionsParticipa" id="optionsParticipa1" value="opcion1" checked>
                            Si participa en el proceso actual.
                          </label>
                        </div>
                        <div class="form-check">
                          <label class="form-check-label">
                            <input type="radio" class="form-check-input" name="optionsParticipa" id="optionsParticipa2" value="option2">
                            No participa en el proceso actual.
                          </label>
                        </div>

                      <div class="form-group">
                        <label for="Facultad">Facultad</label>
                        <input type="Facultad" class="form-control" id="Facultad" aria-describedby="Facultadhelp" placeholder="Ingresar Facultad">
                      </div>

                      <div class="form-group">
                        <label for="E_mail">E_mail</label>
                        <input type="E_mail" class="form-control" id="E_mail" aria-describedby="E_mailhelp" placeholder="Ingresar E_mail">
                      </div>    

                      <div class="form-group">
                        <label for="CUI">CUI</label>
                        <input type="CUI" class="form-control" id="CUI" aria-describedby="CUIhelp" placeholder="Ingresar CUI">
                      </div>

                      <div class="form-group">
                        <label for="Cargo_Proceso">Cargo_Proceso</label>
                        <select multiple class="form-control" id="Cargo_Proceso">
                          <option>FORMULADOR</option>
                          <option>TECNICO</option>
                          <option>CONTROLADOR</option>
                          <option>CONTADOR</option>
                          <option>CONSERJE</option>
                          <option>PORTERO</option>
                          <option>CONTROLADOR DE PUERTA</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="Descripcion">Descripcion del participante</label>
                        <textarea class="form-control" id="Descripcion" rows="3"></textarea>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputFile">Subir Archivo</label>
                        <input type="file" class="form-control-file" id="Subir_Archivo" aria-describedby="Subir_ArchivoHelp">
                      </div>
                      <input id = "FPersonalSubmit" type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div id = "FormularioPregunta">
                    <form id = "FPregunta" method = "POST">
                      <div class="form-group">
                        <label for="ID_pregunta">ID_pregunta</label>
                        <input type="ID_pregunta" class="form-control" id="ID_pregunta" aria-describedby="DNIhelp" placeholder="Ingresar ID_pregunta">
                      </div>

                      <div class="form-group">
                        <label for="ID_proceso">ID_proceso</label>
                        <input type="ID_proceso" class="form-control" id="ID_proceso" aria-describedby="ID_procesohelp" placeholder="Ingresar ID_proceso">
                      </div>

                      <div class="form-group">
                        <label for="ID_cursoArea">ID_cursoArea</label>
                        <input type="ID_cursoArea" class="form-control" id="ID_cursoArea" aria-describedby="ID_cursoAreahelp" placeholder="Ingresar ID_cursoArea">
                      </div>

                      <div class="form-group">
                        <label for="DNI">DNI</label>
                        <input type="DNI" class="form-control" id="DNI" aria-describedby="DNIhelp" placeholder="Ingresar DNI">
                      </div>

                      <div class="form-group">
                        <label for="Fecha">Fecha</label>
                        <input type="Fecha" class="form-control" id="Fecha" aria-describedby="Fechahelp" placeholder="Ingresar Fecha">
                      </div>

                      <div class="form-group">
                        <label for="Nombre">Nombre</label>
                        <input type="Nombre" class="form-control" id="Nombre" aria-describedby="Nombrehelp" placeholder="Ingresar Nombre">
                      </div>

                      <div class="form-group">
                        <label for="Apellido">Apellido</label>
                        <input type="Apellido" class="form-control" id="Apellido" aria-describedby="Apellidohelp" placeholder="Ingresar Apellido">
                      </div>

                      <div class="form-group">
                        <label for="exampleInputFile">Subir Pregunta</label>
                        <input type="file" class="form-control-file" id="Subir_Archivo1" aria-describedby="Subir_ArchivoHelp">
                      </div>

                      <div class="form-group">
                        <label for="Dificultad">Dificultad</label>
                        <select class="form-control" id="Dificultad">
                          <option>Baja</option>
                          <option>Mediana</option>
                          <option>Alta</option>
                        </select>
                      </div>   

                      <div class="form-group">
                        <label for="Enunciado">Enunciado</label>
                        <textarea class="form-control" id="Enunciado" rows="3" required></textarea>
                      </div>

                      <div class="form-group">
                        <label for="Distractores">Distractores</label>
                        <textarea class="form-control" id="Distractores" rows="5" required></textarea>
                      </div>

                      <div class="form-group">
                        <label for="exampleInputFile">Subir Resolucion</label>
                        <input type="file" class="form-control-file" id="Subir_Archivo2" aria-describedby="Subir_ArchivoHelp">
                      </div>

                      <input id = "FPreguntaSubmit" type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div id = "FormularioProceso">
                    <form id = "FProceso">
                      <div class="form-group">
                        <label for="ID_proceso">ID_proceso</label>
                        <input type="ID_proceso" class="form-control" id="ID_proceso" aria-describedby="ID_procesohelp" placeholder="Ingresar ID_proceso">
                      </div>

                      <div class="form-group">
                        <label for="Anio">Anio</label>
                        <input type="Anio" class="form-control" id="Anio" aria-describedby="Aniohelp" placeholder="Ingresar Anio">
                      </div>

                      <div class="form-group">
                        <label for="Fecha_Inicial">Fecha_Inicial</label>
                        <input type="Fecha_Inicial" class="form-control" id="Fecha_Inicial" aria-describedby="Fecha_Inicialhelp" placeholder="Ingresar Fecha_Inicial">
                      </div>
                       <div class="form-group">
                        <label for="Fecha_Final">Fecha_Final</label>
                        <input type="Fecha_Final" class="form-control" id="Fecha_Final" aria-describedby="Fecha_Finalhelp" placeholder="Ingresar Fecha_Final">
                      </div>

                      <div class="form-group">
                        <label for="Tipo_Proceso">Tipo_Proceso</label>
                        <select class="form-control" id="Tipo_Proceso">
                          <option>Ordinario 1</option>
                          <option>Ordinario 2</option>
                          <option>ExtraOrdinario</option>
                          <option>CeprUnsa 1</option>
                          <option>CepreUnsa 1</option>
                        </select>
                      </div>   

                      <input id = "FProcesoSubmit" type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div> 
            
            <div id = "page2">
            
            
            
            </div>
            
            
            <!--<br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Iniciar Sesion
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Crear Nuevo Proceso
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Ver Personal
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Ingresar Nuevo Participante
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Importar Participantes
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Exportar Participantes
            </a>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <a href="#" class="button blue radius">
            <span class="icon-brand84"></span>Enviar Mensaje
            </a>-->
            
            
            
            
        </div>
    </div>
    
  
</body>
<footer>
    <div id = "footer-page">
        <p>Copyright 2017, CS-UNSA</p>
        <p>Copyright 2017, CS-UNSA</p>
        <p>Copyright 2017, CS-UNSA</p>   
    </div>
    
</footer>

</html>
