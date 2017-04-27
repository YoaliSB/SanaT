import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.Flor;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/MostrarFlores")
public class MostrarFlores extends HttpServlet{
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

			ResultSet resultSet = stat.executeQuery("SELECT * FROM flor");
			Vector<Flor> flores = new Vector<Flor>();

			while(resultSet.next()){

				Flor aux = new Flor();

				aux.setNombreFlor(resultSet.getString("NombreFlor"));
				aux.setDescripcionFlor(resultSet.getString("DescripcionFlor"));
				aux.setIDFlor(resultSet.getInt("IDFlor"));

				flores.add(aux);

			}
			stat.close();
			con.close();

			request.setAttribute("flores", flores);

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/flores.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}