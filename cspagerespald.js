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
    var proceso = document.getElementById("page-proceso");
    var pregunta = document.getElementById("page-pregunta");
    var personal = document.getElementById("page-personal");
    if (elem1.id == "proceso"){
        actualizarProceso(elem2);
        pregunta.style.display = "none";
        personal.style.display = "none";
        proceso.style.display = "initial";
    }
    else if (elem1.id == "pregunta"){
        actualizarPregunta(elem2);
        proceso.style.display = "none";
        personal.style.display = "none";
        pregunta.style.display = "initial";
    }
    else if (elem1.id == "personal"){
        actualizarPersonal(elem2);
        pregunta.style.display = "none";
        proceso.style.display = "none";
        personal.style.display = "initial";
    }

}
function actualizarPregunta(elem){
    var funcion1 = document.getElementById("page-pregunta-modificar");
    var funcion2 = document.getElementById("page-pregunta-ver");
    funcion1.style.display="none";
    funcion2.style.display="none";
    if (elem == "modificar"){
        funcion1.style.display = "initial";
    }
    else if (elem == "ver"){
        funcion2.style.display = "initial";
    }
}
function actualizarProceso(elem){
    var funcion1 = document.getElementById("page-proceso-modificar");
    var funcion2 = document.getElementById("page-proceso-ver");
    funcion1.style.display="none";
    funcion2.style.display="none";
    if (elem == "modificar"){
        funcion1.style.display = "initial";
    }
    else if (elem == "ver"){
        funcion2.style.display = "initial";
    }
}
function actualizarPersonal(elem){
    var funcion = document.getElementById("page-personal-ver");
    funcion.style.display="none";
    if (elem == "ver"){
        funcion.style.display = "initial";
    }
}
///////////////////////////////////////////7
function Modificar(elem){
    alert("modificando");
}
//////////////////////7
function Ver(elem){
    alert("leyendo");
}
//////////////////////////7
function Registrar(elem){
    var space = document.getElementById("buscar-texto");
    space.style.display="initial";
}
///////////////////////////
function hacer(elem){
    var modificar_b = document.getElementById("modificar");
    var ver_b = document.getElementById("ver");
    var registrar_b = document.getElementById("registrar");
    if (modificar_b.checked){
        Modificar(elem);
    }
    else if (ver_b.checked){
        Ver(elem);
    }
    else if (registrar_b.checked){
        Registrar(elem);
    }
    else{
        showNothing();
    }
}
////////////////////////////////////
/*function getDir(){
    document.getElementById("entradaDatos").action = colocar aqui
}*/
function formulario(){

}
////////////////PERSONAL-FUNCIONES////////////////////
function FormPersonalRegistrar(elem){
    document.getElementById("entradaDatos").action = "index.php";
}
function FormPersonalDni(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalApellido(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalNombre(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalDependencia(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalCorreo(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalCategoria(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalRegimen(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalEstado(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalCui(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalCargoProceso(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalCargoUnsa(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalInfoHistorica(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPersonalA(elem){
    document.getElementById("BusquedaDatos").action = "index.php";
}
function FormPersonalB(elem){
    document.getElementById("BusquedaDatos").action = "index.php";
}
function FormPersonalC(elem){
    document.getElementById("BusquedaDatos").action = "index.php";
}
/////////////PREGUNTA-FUNCIONES//////////////
function FormPreguntaRegistrar(elem){
    document.getElementById("entradaDatos").action = "index.php";
}
function FormPreguntaId(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaPreguntasElegidas(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDificultad(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaEnunciado(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDistractorA(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDistractorB(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDistractorC(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDistractorD(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDistractorE(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaFecha(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaResolucion(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaDni(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaNombre(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormPreguntaNoElegida(elem){
    document.getElementById("entradaDatos").action = "index.php";
}
function FormPreguntaArea(elem){
    document.getElementById("BusquedaDatos").action = "index.php";
}
function FormProcesoRegistrar(elem){
    document.getElementById("entradaDatos").action = "index.php";
}
function FormProcesoFechaInicio(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormProcesoFechaFinal(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = "index.php";
    }
    else{
        document.getElementById("BusquedaDatos").action = "index.php";
    }
}
function FormProcesoProceso(elem){
    document.getElementById("BusquedaDatos").action = "index.php";
}
function FormProcesoCantidadSeleccionados(elem){
    document.getElementById("entradaDatos").action = "index.php";
}
function FormProcesoDefinirCantidad(elem){
    document.getElementById("entradaDatos").action = "index.php";
}