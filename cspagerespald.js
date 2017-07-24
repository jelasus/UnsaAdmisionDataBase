function start() {
    var elemento = document.getElementById("lienzo");
    lienzo = elemento.getContext("2d");
    
    lienzo.beginPath();
    lienzo.lineWidth = 5;
    lienzo.strokeStyle = "gray";
    lienzo.moveTo(100, 100);
    lienzo.lineTo(77, 77);
    lienzo.stroke();
    
    lienzo.beginPath();
    lienzo.arc(60, 60, 25, 0, Math.PI*2,false);
    //lienzo.lineWidth = 5;
    lienzo.stroke();        
}

window.addEventListener("load", start, false);
////////////////////////////////////////////////
function showNothing(){
}
///////////////////////////////////////////////77
function search(elem){
    desactivarTodo();
    var personal = document.getElementById("personal");
    var proceso = document.getElementById("proceso");
    var pregunta = document.getElementById("pregunta");
    if (pregunta.checked){
        show(pregunta,elem);
    }
    else if (proceso.checked){
        show(proceso,elem);
    }
    else if (personal.checked){
        show(personal,elem);
    }
}
function show(elem1,elem2){
    var pagePersonalMV = document.getElementById("page-personal-modificar-ver");
    var pageProcesoMV = document.getElementById("page-proceso-modificar-ver");
    var pagePreguntaMV = document.getElementById("page-pregunta-modificar-ver");
    var pagePersonalRegistrar = document.getElementById("page-personal-registrar");
    var pageProcesoRegistrar = document.getElementById("page-proceso-registrar");
    var pagePreguntaRegistrar = document.getElementById("page-pregunta-registrar");
    var PreguntaModificar = document.getElementById("page-pregunta-modificar");
    var PreguntaVer = document.getElementById("page-pregunta-ver");
    var ProcesoModificar = document.getElementById("page-proceso-modificar");
    var ProcesoVer = document.getElementById("page-proceso-ver");
    var PersonalVer = document.getElementById("page-personal-ver");
    var pagePersonal = document.getElementById("page-personal");
    var pagePregunta = document.getElementById("page-pregunta");
    var pageProceso = document.getElementById("page-proceso");
    pagePreguntaMV.style.display="none";
    pagePersonalMV.style.display="none";
    pageProcesoMV.style.display="none";
    pagePreguntaRegistrar.style.display="none";
    pageProcesoRegistrar.style.display="none";
    pagePersonalRegistrar.style.display="none";
    PersonalVer.style.display="none";
    ProcesoVer.style.display="none";
    ProcesoModificar.style.display="none";
    PreguntaVer.style.display="none";
    PreguntaModificar.style.display="none";
    if (elem2 == "registrar"){
        if (elem1.id == "personal"){
            pagePersonal.style.display="initial";
            pagePersonalRegistrar.style.display="initial";
        }
        else if (elem1.id == "pregunta") {
            pagePregunta.style.display="initial";
            pagePreguntaRegistrar.style.display="initial";
        }
        else {
            pageProceso.style.display="initial";
            pageProcesoRegistrar.style.display="initial";
        }
    }
    else {
        if (elem1.id == "proceso"){
            pageProceso.style.display="initial";
            pageProcesoMV.style.display="initial";
            if (elem2 == "modificar"){
                ProcesoModificar.style.display = "initial";
            }
            else if (elem2 == "ver"){
                ProcesoVer.style.display = "initial";
            }
        }
        else if (elem1.id == "personal"){
            pagePersonal.style.display="initial";
            pagePersonalMV.style.display="initial";
            if (elem2 == "ver"){
                PersonalVer.style.display = "initial";
            }
        }
        else{
            pagePregunta.style.display="initial";
            pagePreguntaMV.style.display="initial";
            if (elem2 == "modificar"){
                PrenguntaModificar.style.display = "initial";
            }
            else if (elem2 == "ver"){
                PrreguntaVer.style.display = "initial";
            }
        }
    }
}
////////////////PERSONAL-FUNCIONES////////////////////
function FormPersonalRegistrar(elem){
    if (document.getElementById("registrar").checked){
        activarFPersonal();
        document.getElementById("FPersonal").action = "index.php";
        document.getElementById("FPersonalSubmit").value = elem;
    }
}
function FormPersonalDni(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalApellido(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalNombre(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalDependencia(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalCorreo(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalCategoria(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalRegimen(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalEstado(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalCui(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalCargoProceso(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalCargoUnsa(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalInfoHistorica(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPersonalA(elem){
    activarBuscar();
    document.getElementById("BusquedaDatos").action = "index.php";
    document.getElementById("valor-submit").value = elem;
}
function FormPersonalB(elem){
    activarBuscar();
    document.getElementById("BusquedaDatos").action = "index.php";
    document.getElementById("valor-submit").value = elem;
}
function FormPersonalC(elem){
    activarBuscar();
    document.getElementById("BusquedaDatos").action = "index.php";
    document.getElementById("valor-submit").value = elem;
}
/////////////PREGUNTA-FUNCIONES//////////////
function FormPreguntaRegistrar(elem){
    if (document.getElementById("registrar").checked){
        activarFPregunta();
        document.getElementById("FPregunta").action = "index.php";
        document.getElementById("FPreguntaSubmit").value = elem;
    }
}
function FormPreguntaId(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaPreguntasElegidas(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDificultad(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaEnunciado(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDistractorA(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDistractorB(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDistractorC(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDistractorD(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDistractorE(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaFecha(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaResolucion(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaDni(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaNombre(elem){
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormPreguntaNoElegida(elem){
    activarTexto();
    document.getElementById("entradaDatos").action = "index.php";
    document.getElementById("texto-submit").value = elem;
}
function FormPreguntaArea(elem){
    activarBuscar();
    document.getElementById("BusquedaDatos").action = "index.php";
    document.getElementById("valor-submit").value = elem;
}
/////////////PROCESO-FUNCIONES//////////////7
function FormProcesoRegistrar(elem){
    desactivarTodo();
    if (document.getElementById("registrar").checked){
        activarFProceso();
        document.getElementById("FProceso").action = "index.php";
        document.getElementById("FProcesoSubmit").value = elem;
    }
}
function FormProcesoAño(elem){
    desactivarTodo();
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormProcesoFechaInicio(elem){
    desactivarTodo();
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormProcesoFechaFinal(elem){
    desactivarTodo();
    if (document.getElementById("modificar").checked){
        activarTexto();
        document.getElementById("entradaDatos").action = "index.php";
        document.getElementById("texto-submit").value = elem;
    }
    else if (document.getElementById("ver").checked){
        activarBuscar();
        document.getElementById("BusquedaDatos").action = "index.php";
        document.getElementById("valor-submit").value = elem;
    }
}
function FormProcesoProceso(elem){
    desactivarTodo();
    activarBuscar();
    document.getElementById("BusquedaDatos").action = "index.php";
    document.getElementById("valor-submit").value = elem;
}
function FormProcesoCantidadSeleccionados(elem){
    desactivarTodo();
    activarTexto();
    document.getElementById("entradaDatos").action = "index.php";
    document.getElementById("texto-submit").value = elem;
}
function FormProcesoDefinirCantidad(elem){
    desactivarTodo
    activarTexto();
    document.getElementById("entradaDatos").action = "index.php";
    document.getElementById("texto-submit").value = elem;
}
/////////////////////////////////7
function activarTexto(){
    document.getElementById("recibir-texto").style.display = "initial";
}
function activarBuscar(){
    document.getElementById("buscar-texto").style.display = "initial";
}
function activarFPersonal(){
    document.getElementById("FormularioPersonal").style.display = "initial";
}
function activarFPregunta(){
    document.getElementById("FormularioPregunta").style.display = "initial";
}
function activarFProceso(){
    document.getElementById("FormularioProceso").style.display = "initial";
}
function desactivarTodo(){
    document.getElementById("FormularioProceso").style.display = "none";
    document.getElementById("FormularioPregunta").style.display = "none";
    document.getElementById("FormularioPersonal").style.display = "none";
    document.getElementById("recibir-texto").style.display = "none";
    document.getElementById("buscar-texto").style.display = "none";
}
////////////////////////////////
