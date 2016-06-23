<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" > 
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="app.css">
	<title>Cadastro de Produto</title>
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
<header>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="collapse navbar-collapse" id="navbar-collapse">
			  <ul class="nav navbar-nav">
				<li><a href="Index.jsp" class="negrito">Cadastro de Produto</a></li>
			  </ul>
			</div>
		</div>
	</nav>
</header>

<h1 style="margin-top: 75px;">Cadastro de Produtos</h1> 
<br>

<form id="Produtos" action="/TarefaWeb/ProdutoServlet" method="post">
	<label>Nome &nbsp&nbsp&nbsp</label>  
	<input type="text" id="nome" name="nome" class="form-control" style="width:15%"> <br> 
	<label>Quantidade &nbsp</label>	
	<input type="text" id="quantidade" name="quantidade" class="form-control" style="width:15%"> <br> 
	<label>Preço &nbsp</label>	
	<input type="text" id="preco" name="preco" class="form-control" style="width:15%"> <br> 
	<br>
	<button class="btn" type="submit"> Salvar </button>
	
</form>	
</body>
</html>