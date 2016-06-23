package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.Conector;
import bean.Produto;

public class ProdutoDao {

	public void insert(Produto produto) {

		String sql = "insert into produtos (nome, quantidade, preco) values (?, ?, ?)";

		try {
			PreparedStatement ps = Conector.getConexao().prepareStatement(sql);
			ps.setString(1, produto.getNome());
			ps.setInt(2, produto.getQuantidade());
			ps.setDouble(3, produto.getPreco());

			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public List<Produto> selectTodos() {
		List<Produto> produtos = new ArrayList<Produto>();
		String sql = "select * from produtos";

		try {
			PreparedStatement ps = Conector.getConexao().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();
				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setQuantidade(rs.getInt("quantidade"));
				produto.setPreco(rs.getDouble("preco"));

				produtos.add(produto);
			}

			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return produtos;

	}

	public void delete(Produto produto) {

		String sql = "delete from produtos where id=?";
		try {
			PreparedStatement ps = Conector.getConexao().prepareStatement(sql);
			ps.setInt(1, produto.getId());

			ps.execute();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
