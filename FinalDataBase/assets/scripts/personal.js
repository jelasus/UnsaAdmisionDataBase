function elegirPabellon(elem){
	var pabellon = document.getElementById("pabellon");
	pabellon.options.length = 0;
	var area = document.getElementById(elem).value;
	var i;
	if (area=="Ingenierias"){
		var escuelas = ["Ciencia de la Computacion", "Matematica"];
		var newOption;
		for (i=0;i<escuelas.length;++i){
			newOption = document.createElement("option");
			newOption.text=escuelas[i];
			newOption.value=escuelas[i];
			if (typeof newOption.innerText === 'undefined'){
    			newOption.textContent = escuelas[i];
			}
			else{
    			newOption.innerText = escuelas[i];
			}
			pabellon.appendChild(newOption);
		}
	}
	else if (area=="Sociales"){
		var escuelas = ["Derecho", "Filosofia"];
		var newOption;
		for (i=0;i<escuelas.length;++i){
			newOption = document.createElement("option");
			newOption.text=escuelas[i];
			newOption.value=escuelas[i];
			if (typeof newOption.innerText === 'undefined'){
    			newOption.textContent = escuelas[i];
			}
			else{
    			newOption.innerText = escuelas[i];
			}
			pabellon.appendChild(newOption);
		}
	}
	else if (area=="Biomedicas"){
		var escuelas = ["Medicina", "Biologia"];
		var newOption;
		for (i=0;i<escuelas.length;++i){
			newOption = document.createElement("option");
			newOption.text=escuelas[i];
			newOption.value=escuelas[i];
			if (typeof newOption.innerText === 'undefined'){
    			newOption.textContent = escuelas[i];
			}
			else{
    			newOption.innerText = escuelas[i];
			}
			pabellon.appendChild(newOption);
		}
	}
}