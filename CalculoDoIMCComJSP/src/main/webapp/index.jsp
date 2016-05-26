<html>
  <head>
    <meta charset="utf-8">
    <title>CalculaIMC</title>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
     <link rel="stylesheet" type="text/css" href="estilo.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"> </script>
    <script type="text/javascript" src = CalculaImc.js> </script>

  </head>
  <body>

<form name = "imcForm" class="form-horizontal">
<fieldset>

<!-- Nome do Formulario -->
<legend>ICM</legend>

<!-- Informar o Peso -->
<div class="form-group">
  <label class="col-md-4 control-label" for="peso">PESO</label>  
  <div class="col-md-4">
  <input id="peso" name="peso" type="number" class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="altura">ALTURA</label>  
  <div class="col-md-4">
  <input id="altura" name="altura" type="number" step=0.01 class="form-control input-md" required="">
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="sexo">SEXO</label>
  <div class="col-md-4">
    <select id="sexo" name="sexo" class="form-control">
      <option value="1">Feminino</option>
      <option value="2">Masculino</option>
    </select>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="bcalcular"></label>
  <div class="col-md-4">
    <button class="btn btn-primary"> CALCULA</button>
  </div>
</div>
</body>
</fieldset>
</form>

<%
String pesoStr = request.getParameter("peso");
String alturaStr = request.getParameter("altura");
String sexoStr = request.getParameter("sexo");

float peso = pesoStr == null ? 0 : Float.parseFloat(pesoStr);
float altura = alturaStr == null ? 0 : Float.parseFloat(alturaStr);
float sexo = sexoStr == null ? 0 : Float.parseFloat(sexoStr);
float quadrado = (altura * altura);
float calculo = (peso/quadrado);

if(sexo == 1 ) {
	if(calculo<19.1){
		out.print("Abaixo do peso");
	}
	else if(calculo>=19.1 && calculo<25.9){
		out.print("Peso saudável");
	}
	else if(calculo>=25.9 && calculo<27.4) {
		out.print("Pouco acima do peso");
	}
	else if(calculo>=27.4 && calculo<32.4) {
		out.print("Acima do peso");
	}
	else if (calculo>=32.4){
		out.print("Obesidade");
	}
	
}
else 
    if(calculo<20.7){
		out.print("Abaixo do peso");
	}
	else if(calculo>=20.7 && calculo<26.5){
		out.print("Peso saudável");
	}
	else if(calculo>=26.5 && calculo<27.9) {
		out.print("Pouco acima do peso");
	}
	else if(calculo>=27.9 && calculo<31.2) {
		out.print("Acima do peso");
	}
	else if (calculo>=31.2)
		out.print("Obesidade");
	
%>
</html>
