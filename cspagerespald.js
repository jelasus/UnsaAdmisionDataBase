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
    var persona = document.getElementById("persona");
    var proceso = document.getElementById("proceso");
    var pregunta = document.getElementById("pregunta");
    if (pregunta.checked){
        show("pregunta");    
    }
    else if (proceso.checked){
        show("proceso");
    }
    else{
        show("persona");
    }
}

function show(elem){
    var process = document.getElementById("page1");
    if (elem == "proceso"){
        process.style.backgroundColor = "red"; 
    }
    else if (elem == "pregunta"){
        process.style.backgroundColor = "green"; 
    }
    else {
        process.style.backgroundColor = "yellow"; 
    }
}