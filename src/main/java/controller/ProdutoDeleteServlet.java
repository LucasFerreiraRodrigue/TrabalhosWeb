package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Produto;

@WebServlet("/ProdutoDeleteServlet")
public class ProdutoDeleteServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String [] marcado;  
		   marcado = request.getParameterValues("marcado");  
		   if (marcado != null) 
		   {  
		        for (int i = 0; i < marcado.length; i++) 
		        {             	
		            	Produto produto = new Produto();
		                ProdutoControler pc = new ProdutoControler();
		                produto.setId(Integer.parseInt(marcado[i]));
		                pc.delete(produto);     
		       } 
		   }

		   response.sendRedirect("ProdutoSelectServlet");
		}
	}