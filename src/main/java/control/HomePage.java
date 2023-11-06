package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SingleItem;
import model.SingleOwner;
import tools.DbConnect;

public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HomePage() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Transações HTTP em UTF-8.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// Obtém registros do banco de dados.
		Connection conn = DbConnect.getConnection();

		ArrayList<SingleItem> items = new ArrayList<>();
		ArrayList<SingleOwner> owners = new ArrayList<>();

		if (conn != null) {
			try {

				// Obtém a lista de itens.
				String sql = "SELECT item_id, item_name FROM item WHERE item_status = 'on' ORDER BY item_date DESC";
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet res = stmt.executeQuery();
				while (res.next()) {
					int id = res.getInt("item_id");
					String name = res.getString("item_name");
					items.add(new SingleItem(id, name));
				}
				
				sql = "SELECT owner_id, owner_name FROM owner WHERE owner_status = 'on' ORDER BY owner_name";
				PreparedStatement stmt2 = conn.prepareStatement(sql);
				ResultSet res2 = stmt2.executeQuery();
				while (res2.next()) {
					int id = res2.getInt("owner_id");
					String name = res2.getString("owner_name");
					owners.add(new SingleOwner(id, name));
				}

				res.close();
				stmt.close();
				conn.close();
				
				request.setAttribute("items", items);
				request.setAttribute("owners", owners);

			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			request.setAttribute("items_error", "Falha ao conectar com o banco de dados.");
		}
		
		request.getRequestDispatcher("home.jsp").forward(request, response);

	}

}
