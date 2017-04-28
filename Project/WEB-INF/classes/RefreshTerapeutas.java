import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.Paciente;
import bean.Terapeuta;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/RefreshTerapeutas")
public class RefreshTerapeutas extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response){

		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");


			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/"+base;

			System.out.println(url);
			Connection con = DriverManager.getConnection(url,usuario,password);
			

			Statement stat = con.createStatement();
			
			ResultSet resultSet = stat.executeQuery("SELECT * FROM terapeuta WHERE NOT Login='admin';");

			Vector<Terapeuta> terapeutas = new Vector<Terapeuta>();

			while (resultSet.next()) {

				Terapeuta aux = new Terapeuta();

				aux.setNombreTerapeuta(resultSet.getString("NombreTerapeuta"));
				aux.setIDTerapeuta(resultSet.getInt("IDTerapeuta"));

				terapeutas.add(aux);

			}
			request.setAttribute("listTera", terapeutas);

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/admin.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
