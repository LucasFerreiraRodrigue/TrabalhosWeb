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
    <select id="sexo" >	
	<option value="masculino"> Masculino </option>
	<option value="feminino" > Feminino  </option>
	</select>
	<br> <br>
	<button name="Resultado" onclick="calculoIMC()" class="btn" > Resultado </button>
	
</form>
	
	
</body>



<script type="text/javascript">
	function calculoIMC()
	{ 
		var altura = document.IMC.altura.value;
		var peso = document.IMC.peso.value;
		var sexo = document.IMC.sexo.value;
		var resultado = peso / (altura * altura);
		
			if(sexo == "masculino")
			{
				if(resultado<20.7)
				{
					alert("Abaixo do peso!");
				}
				else if(resultado>=20.7 && resultado<26.4)
				{
					alert("Peso normal!");
				}
				else if(resultado>=26.4 && resultado<27.8) 
				{
					alert("Marginalmente acima do peso");
				}
				else if(resultado>=27.8 && resultado<31.1) 
				{
					alert("Acima do peso ideal");
				}
				else if (resultado>31.1)
				{
					alert("Obeso");
				}	
			}		
			else if(sexo == "feminino")
			{
				if(resultado<19.1)
				{
					alert("Abaixo do peso!");
				}
				else if(resultado>=19.1 && resultado<25.8)
				{
					alert("Peso normal!");
				}
				else if(resultado>=25.8 && resultado<27.3) 
				{
					alert("Marginalmente acima do peso");
				}
				else if(resultado>=27.9 && resultado<32.3) 
				{
					alert("Acima do peso ideal");
				}
				else if (resultado>32.3)
				{
					alert("Obeso");
				}
			}
	}

</script>
</html>