function comprobarContraseña(){
	var contraseña1 = document.getElementById("contraseña").value;
	var contraseña2 = document.getElementById("confirmarContraseña").value;
	if (contraseña1 == contraseña2){
		document.getElementById("alertaContraseña").innerHTML = "Las contraseñas coinciden. Correcto";
		document.getElementById("alertaContraseña").style.color = "green";
	}
	else {
		document.getElementById("alertaContraseña").innerHTML = "Las contraseñas no coinciden. Vuelva a ingresarlas";
		document.getElementById("alertaContraseña").style.color = "red";
	}
}