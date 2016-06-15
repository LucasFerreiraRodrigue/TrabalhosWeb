package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletCalculadora")
public class CalculadoraIMCController extends HttpServlet {
	private static final long serialVersionUID = -1818883872434040284L;

	private String valor(HttpServletRequest req, String param, String padrao) {
		String result = req.getParameter(param);
		if (result == null) {
			result = padrao;
		}
		return result;
	}

	private float toFloat(HttpServletRequest req, String param, String padrao) {

		return Float.parseFloat(valor(req, param, padrao));
	}

	private int toInt(HttpServletRequest req, String param, String padrao) {

		return Integer.parseInt(valor(req, param, padrao));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		float altura = toFloat(req, "altura", "0");
		float peso = toFloat(req, "peso", "0");
		int sexo = toInt(req, "sexo", "0");

		String resultadoCalculo = CalcularIMC.Calcular(peso, altura, sexo);

		// Passando parâmetro para o JSP.
		req.setAttribute("resultado", resultadoCalculo);

		req.getRequestDispatcher("Index.jsp").forward(req, resp);
	}
}
