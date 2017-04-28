import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Paciente;
import bean.Receta;

@WebServlet("/MostrarTerapeuta")
public class MostrarTerapeuta extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/" + base;

			Connection con = DriverManager.getConnection(url, usuario, password);

			Statement stat = con.createStatement();
			
			int IDTerapeuta=Integer.parseInt(request.getParameter("idTerapeuta").toString());
			
			request.setAttribute("idTerapeuta", IDTerapeuta);
			
			
			stat.close();
			con.close();

			RequestDispatcher disp = getServletContext().getRequestDispatcher("/descripTerapeuta.jsp");

			if (disp != null) {
				disp.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}