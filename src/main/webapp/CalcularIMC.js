//alert("Carregando script num arquivo externo.");
function calcularIMC() {
    
	var peso = document.formulario.peso.value;
	var altura = document.formulario.altura.value;
	var sexo = document.formulario.sexo.value;

	var quadrado = (altura * altura);
	var calculo = (peso/quadrado);

	if(sexo == 1 ) {
		if(calculo<19.1){
			alert("Abaixo do peso");
		}
		else if(calculo>=19.1 && calculo<25.9){
			alert("Peso saudável");
		}
		else if(calculo>=25.9 && calculo<27.4) {
			alert("Pouco acima do peso");
		}
		else if(calculo>=27.4 && calculo<32.4) {
			alert("Acima do peso");
		}
		else if (calculo>=32.4){
			alert("Obesidade");
		}
		
	}
	else {
		if(calculo<20.7){
			alert("Abaixo do peso");
		}
		else if(calculo>=20.7 && calculo<26.5){
			alert("Peso saudável");
		}
		else if(calculo>=26.5 && calculo<27.9) {
			alert("Pouco acima do peso");
		}
		else if(calculo>=27.9 && calculo<31.2) {
			alert("Acima do peso");
		}
		else if (calculo>=31.2){
			alert("Obesidade");
		}
	}
}