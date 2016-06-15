<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<link rel="stylesheet" type="text/css" href="file:\\C:\Users\MSI\Desktop\bootstrap.min.css">
	<title>Cadastro de Aluno</title>
	<style>
			body {
				background-size: 100%;
				background-color:#4682B4;
			}
			button {
				background-color:#ADD8E6;
			}
	</style>
</head>
<body>

<h1>IMC</h1> 
<br>

<form id="IMC" name="IMC">
	<label>Peso &nbsp&nbsp&nbsp</label>  
	<input type="text" id="peso" name="peso" class="form-control" style="width:15%"> <br> 
	<label>Altura &nbsp</label>	
	<input type="text" id="altura" name="altura" class="form-control" style="width:15%"> <br> 
	<label>Sexo &nbsp&nbsp</label> 
    <select id="sexo" name ="sexo">	
	<option value="1"> Masculino </option>
	<option value="2" > Feminino  </option>
	</select>
	<br> <br>
	<button class="btn" > Resultado </button>
	<br> <br>
	
</form>
	
	
</body>




<%
	
		String alturaSTR = request.getParameter("altura");
		String pesoSTR = request.getParameter("peso");
		String sexoSTR = request.getParameter("sexo");
		
		float altura = alturaSTR == null ? 0 : Float.parseFloat(alturaSTR);
		float peso = pesoSTR == null ? 0 : Float.parseFloat(pesoSTR);
		int sexo = sexoSTR == null ? 0 : Integer.parseInt(sexoSTR); 
		float resultado = peso / (altura * altura);
		
		
		
		
		
		
			if(sexo == 1)
			{
				if(resultado<20.7)
				{
					out.print("Abaixo do peso!");
				}
				else if(resultado>=20.7 && resultado<26.4)
				{
					out.print("Peso normal!");
				}
				else if(resultado>=26.4 && resultado<27.8) 
				{
					out.print("Marginalmente acima do peso");
				}
				else if(resultado>=27.8 && resultado<31.1) 
				{
					out.print("Acima do peso ideal");
				}
				else if (resultado>31.1)
				{
					out.print("Obeso");
				}	
			}		
			else if(sexo == 2)
			{
				if(resultado<19.1)
				{
					out.print("Abaixo do peso!");
				}
				else if(resultado>=19.1 && resultado<25.8)
				{
					out.print("Peso normal!");
				}
				else if(resultado>=25.8 && resultado<27.3) 
				{
					out.print("Marginalmente acima do peso");
				}
				else if(resultado>=27.9 && resultado<32.3) 
				{
					out.print("Acima do peso ideal");
				}
				else if (resultado>32.3)
				{
					out.print("Obeso");
				}
			}
	

%>
</html>