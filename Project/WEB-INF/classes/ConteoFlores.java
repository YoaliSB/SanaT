import javax.servlet.*;
import javax.servlet.http.*;

import bean.Pregunta;
import bean.Respuesta;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/Conteo")
public class ConteoFlores extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response){
		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");


			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base;

			Connection con = DriverManager.getConnection(url,usuario,password);
			
			
			con.close();

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/descripPaciente.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
			
}