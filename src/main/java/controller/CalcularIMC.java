package controller;

public class CalcularIMC {

	public static String Calcular(float peso, float altura, int sexo) {
		float imc = peso / (altura * altura);
		String resultado = "";

		if (sexo == 1) {
			if (imc < 20.7) {
				resultado = "Abaixo do peso!";
			} else if (imc >= 20.7 && imc < 26.4) {
				resultado = "Peso normal!";
			} else if (imc >= 26.4 && imc < 27.8) {
				resultado = "Marginalmente acima do peso";
			} else if (imc >= 27.8 && imc < 31.1) {
				resultado = "Acima do peso ideal";
			} else if (imc > 31.1) {
				resultado = "Obeso";
			}
		} else if (sexo == 2) {
			if (imc < 19.1) {
				resultado = "Abaixo do peso!";
			} else if (imc >= 19.1 && imc < 25.8) {
				resultado = "Peso normal!";
			} else if (imc >= 25.8 && imc < 27.3) {
				resultado = "Marginalmente acima do peso";
			} else if (imc >= 27.9 && imc < 32.3) {
				resultado = "Acima do peso ideal";
			} else if (imc > 32.3) {
				resultado = "Obeso";
			}
		}
		return resultado;
	}

}
