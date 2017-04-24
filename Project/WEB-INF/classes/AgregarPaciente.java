import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.Paciente;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/AgregarPaciente")
public class AgregarPaciente extends HttpServlet{
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
			String nombre = request.getParameter("nombre");
			String edad = request.getParameter("edad");
			String sexo = request.getParameter("sexo");
			String direccion = request.getParameter("direccion");
			String telefono = request.getParameter("telefono");
			String mail = request.getParameter("mail");
			int IDTerapeuta = Integer.parseInt(request.getSession().getAttribute("id").toString());
			request.setAttribute("terapeuta", request.getSession().getAttribute("terapeuta").toString());
			
			if(!nombre.equals("")){
				String sql = "INSERT INTO paciente(NombrePaciente,Edad,Sexo,Direccion,Telefono,Mail,IDTerapeuta) VALUES('"+nombre+"','"+edad+"','"+sexo+"','"+direccion+"','"+telefono+"','"+mail+"','"+IDTerapeuta+"');";
				stat.executeUpdate(sql);
			}
						
			stat.close();
			
			stat = con.createStatement();
			
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
