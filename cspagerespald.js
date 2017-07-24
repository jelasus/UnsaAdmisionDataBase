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

}
function FormPersonalDni(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalApellido(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalNombre(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalDependencia(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalCorreo(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalCategoria(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalRegimen(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalEstado(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalCui(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalCargoProceso(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalCargoUnsa(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalInfoHistorica(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPersonalA(elem){
    document.getElementById("entradaDatos").action = ;
}
function FormPersonalB(elem){
    document.getElementById("entradaDatos").action = ;
}
function FormPersonalC(elem){
    document.getElementById("entradaDatos").action = ;
}
/////////////PREGUNTA-FUNCIONES//////////////
function FormPreguntaRegistrar(elem){
    document.getElementById("entradaDatos").action = ;
}
function FormPreguntaId(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaPreguntasElegidas(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDificultad(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaEnunciado(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDistractorA(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDistractorB(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDistractorC(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDistractorD(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaDistractorE(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}
function FormPreguntaFecha(elem){
    if (elem == "modificar"){
        document.getElementById("entradaDatos").action = ;
    }
    else{
        document.getElementById("entradaDatos").action = ;
    }
}