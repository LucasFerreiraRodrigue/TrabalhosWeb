package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Produto;


@WebServlet("/ProdutoSelectServlet")
public class ProdutoSelectServlet extends HttpServlet {
		
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			ProdutoControler pc = new ProdutoControler();
			List<Produto> produtos = pc.selectTodos();
			
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			request.setAttribute("produtos", produtos);
			
			rd.forward(request, response);
		}


	}
