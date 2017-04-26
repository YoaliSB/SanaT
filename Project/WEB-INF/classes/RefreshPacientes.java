import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.Paciente;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/RefreshPacientes")
public class RefreshPacientes extends HttpServlet{
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
			int IDTerapeuta = Integer.parseInt(request.getParameter("idTerapeuta"));
			
			ResultSet resultSet=stat.executeQuery("SELECT * FROM paciente WHERE IDTerapeuta="+IDTerapeuta);
			Vector<Paciente> pacientes = new Vector<Paciente>();

			while(resultSet.next()){

				Paciente aux = new Paciente();

				aux.setNombrePaciente(resultSet.getString("NombrePaciente"));
				aux.setEdad(resultSet.getInt("Edad"));
				aux.setSexo(resultSet.getString("Sexo"));
				aux.setDireccion(resultSet.getString("Direccion"));
				aux.setTelefono(resultSet.getString("Telefono"));
				aux.setMail(resultSet.getString("Mail"));
				aux.setIDPaciente(resultSet.getInt("IDPaciente"));

				pacientes.add(aux);

			}
			stat.close();
			con.close();
			request.setAttribute("pacientes",pacientes);
			request.setAttribute("idTerapeuta", IDTerapeuta);

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/terapeuta.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
