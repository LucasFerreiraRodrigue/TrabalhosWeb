<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.List" %>
<%@ page import ="bean.Produto" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8"> 
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="app.css">
	<title>Cadastro de Aluno</title>
	<style>
			body {
				background-size: 100%;
				background-color:#4682B4;
			}
			button {
				background-color:#ADD8E6;
			}
			table{
				background-color: white;
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

<div class="container" style="margin-top: 75px;">            
  <form action="ProdutoDeleteServlet" method="post">
	<table border="1" class="table table-bordered" >
	<%
	List<Produto> produtos = (List) request.getAttribute("produtos");
		out.print(	"<tr>"+
				"<td>Nome</td>" +
				"<td>Quantidade</td>" +
				"<td>Preço</td>" +
				"<td>Marcar</td>"+
				"</tr>");
	if(produtos != null){
		for (Produto produto : produtos){
			out.print("<tr>" +
						"<td>" + produto.getNome() + "</td>" +
						"<td>" + produto.getQuantidade() + "</td>" +
						"<td>" + produto.getPreco()+ "</td>" +
						"<td><input type='checkbox' name='marcado' value='"+ produto.getId()+ "'></td>"+
						"</tr>");
		}
	}
	%>
	</table>
	<input type="submit" value="Deletar" class="btn">
</form>
</div>
</body>
</html>