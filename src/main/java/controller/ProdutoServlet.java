package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Produto;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String nome = request.getParameter("nome");
		Integer quantidade = Integer.parseInt(request
				.getParameter("quantidade"));
		Double preco = Double.parseDouble(request.getParameter("preco"));

		Produto produtos = new Produto();
		produtos.setNome(nome);
		produtos.setQuantidade(quantidade);
		produtos.setPreco(preco);

		ProdutoControler pc = new ProdutoControler();
		pc.insert(produtos);

		response.sendRedirect("ProdutoSelectServlet");

	}

}
