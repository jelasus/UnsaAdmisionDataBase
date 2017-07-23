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

function entity(elem){
    var entidad = document.getElementById("elem");
    if (entidad.checked){
        search(elem);
    }
    else {
        showNothing();
    }
}

function showNothing(){
    var estado = document.getElementById("page1");
    estado.style.backgroundColor= "red";
}

function search(){
    var personal = document.getElementById("personal");
    var proceso = document.getElementById("proceso");
    var pregunta = document.getElementById("pregunta");
    if (pregunta.checked){
        show(pregunta);    
    }
    else if (proceso.checked){
        show(proceso);
    }
    else if (personal.checked){
        show(personal);
    }
    else{
        showNothing();
    }
}

function show(elem){
    var proceso = document.getElementById("page-proceso");
    var pregunta = document.getElementById("page-pregunta");
    var personal = document.getElementById("page-personal");
    if (elem.id == "proceso"){
        pregunta.style.display = "none"; 
        personal.style.display = "none"; 
        proceso.style.display = "initial";
    }
    else if (elem.id == "pregunta"){
        proceso.style.display = "none"; 
        personal.style.display = "none"; 
        pregunta.style.display = "initial";
    }
    else if (elem.id == "personal"){
        pregunta.style.display = "none"; 
        proceso.style.display = "none";
        personal.style.display = "initial";
    }
    else{
        showNothing();
    }
}

function modificar(elem){
    alert("modificando");
}

function ver(elem){
    alert("leyendo");
}

function registrar(elem){
    alert("registrando");
}

function hacer(elem){
    var modificar_b = document.getElementById("modificar");
    var ver_b = document.getElementById("ver");
    var registrar_b = document.getElementById("registrar");
    if (modificar_b.checked){
        modificar(elem);
    }
    else if (ver_b.checked){
        ver(elem);
    }
    else if (registrar_b.checked){
        registrar(elem);
    }
    else{
        showNothing();
    }
}


