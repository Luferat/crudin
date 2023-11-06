package control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Item;
import tools.DbConnect;

public class NewItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Item item = new Item();

	public NewItemController() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Transações HTTP em UTF-8.
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// Recuperar os dados do formulário.
		String name = request.getParameter("itemname");
		String description = request.getParameter("itemdescription");
		String location = request.getParameter("itemlocation");

		// Adicionar validações aqui, se necessário.

		// Salvar os dados no banco de dados.
		Connection conn = DbConnect.getConnection();

		if (conn != null) {

			try {
				String sql = "INSERT INTO item (item_name, item_description, item_location) VALUES (?, ?, ?)";
				PreparedStatement stmt = conn.prepareStatement(sql);
				stmt.setString(1, name);
				stmt.setString(2, description);
				stmt.setString(3, location);
				stmt.executeUpdate();
				stmt.close();
				conn.close();
				request.setAttribute("feedback", "Item cadastrado com sucesso!");
			} catch (Exception e) {
				request.setAttribute("error", "Falha ao salvar no banco de dados!");
			}

		} else {
			request.setAttribute("error", "Falha ao conectar com banco de dados!");
		}

		request.getRequestDispatcher("new.jsp").forward(request, response);

	}

}
