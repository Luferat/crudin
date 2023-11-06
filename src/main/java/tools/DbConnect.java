package tools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbConnect {

	private static final String JDBC_URL = "jdbc:h2:file:C:/Java/workspace/crudin/data/database";
	private static final String USER = "sa";
	private static final String PASSWORD = "";

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.getConnection(JDBC_URL, USER, PASSWORD);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static void main(String[] args) {

		Connection conn = DbConnect.getConnection();

		if (conn != null) {
			try {
				// Execute consultas, atualizações, ou qualquer operação no banco de dados aqui
				String query = "SELECT * FROM item";
				PreparedStatement stmt = conn.prepareStatement(query);
				ResultSet res = stmt.executeQuery();

				while (res.next()) {
					int id = res.getInt("item_id");
					String name = res.getString("item_name");
					System.out.println("Id: " + id + ", Name: " + name);
				}

				res.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("Falha ao obter conexão com o banco de dados.");
		}

	}

}