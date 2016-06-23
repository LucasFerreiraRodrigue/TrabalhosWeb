package controller;

import java.util.List;

import dao.ProdutoDao;
import bean.Produto;

public class ProdutoControler {

	public void insert(Produto produto) {

		ProdutoDao pd = new ProdutoDao();
		pd.insert(produto);

	}

	public List<Produto> selectTodos() {
		ProdutoDao pd = new ProdutoDao();

		return pd.selectTodos();
	}

	public void delete(Produto produto) {

		ProdutoDao pd = new ProdutoDao();
		pd.delete(produto);

	}
}
