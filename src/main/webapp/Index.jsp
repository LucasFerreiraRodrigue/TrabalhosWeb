<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"> 
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
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

<form id="IMC" action="/TarefaWeb/ServletCalculadora">
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
	<button class="btn" type="submit"> Resultado </button>
	<br> <br>
	<b>Resultado: ${resultado}</b>
	
</form>	
</body>
</html>