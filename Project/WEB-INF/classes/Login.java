import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import bean.Paciente;
import bean.Terapeuta;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/Login")
public class Login extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) {

		try {
			RequestDispatcher disp = null;
			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/" + base;

			System.out.println(url);
			Connection con = DriverManager.getConnection(url, usuario, password);

			Statement stat = con.createStatement();
			if (request.getParameter("user").equals("admin")) {
				ResultSet pass=stat.executeQuery("SELECT * FROM terapeuta WHERE Login='admin'");
				pass.next();
				if (request.getParameter("password")
						.equals(pass.getString("Pass"))) {
					ResultSet resultSet = stat.executeQuery("SELECT * FROM terapeuta WHERE NOT Login='admin';");

					Vector<Terapeuta> terapeutas = new Vector<Terapeuta>();

					while (resultSet.next()) {

						Terapeuta aux = new Terapeuta();

						aux.setNombreTerapeuta(resultSet.getString("NombreTerapeuta"));
						aux.setIDTerapeuta(resultSet.getInt("IDTerapeuta"));

						terapeutas.add(aux);

					}
					request.setAttribute("listTera", terapeutas);
					disp = getServletContext().getRequestDispatcher("/" + request.getParameter("user") + ".jsp");
				}else{
					request.setAttribute("logged",
							"El usuario o la contraseña son incorrectos. Si no los recuerda contacte al administrador");
					disp = getServletContext().getRequestDispatcher("/index.jsp");
				}
			} else {
				ResultSet terapeutas = stat.executeQuery("SELECT * FROM terapeuta WHERE NOT IDTerapeuta=1");
				int loggedid = -1;
				String nomter="";
				while (terapeutas.next()) {
					if (request.getParameter("user").equals(terapeutas.getString("Login"))
							&& request.getParameter("password").equals(terapeutas.getString("Pass"))) {
						loggedid = terapeutas.getInt("IDTerapeuta");
						nomter = terapeutas.getString("NombreTerapeuta");
						break;
					}
				}

				if (loggedid != -1) {
					ResultSet resultSet = stat.executeQuery("SELECT * FROM paciente WHERE IDTerapeuta=" + loggedid);
					Vector<Paciente> pacientes = new Vector<Paciente>();

					while (resultSet.next()) {

						Paciente aux = new Paciente();

						aux.setIDPaciente(resultSet.getInt("IDPaciente"));
						aux.setNombrePaciente(resultSet.getString("NombrePaciente"));
						aux.setEdad(resultSet.getInt("Edad"));
						aux.setSexo(resultSet.getString("Sexo"));
						aux.setDireccion(resultSet.getString("Direccion"));
						aux.setTelefono(resultSet.getString("Telefono"));
						aux.setMail(resultSet.getString("Mail"));						

						pacientes.add(aux);

					}
					request.setAttribute("idTerapeuta", loggedid);
					request.setAttribute("terapeuta", nomter);
					request.setAttribute("pacientes", pacientes);
					disp = getServletContext().getRequestDispatcher("/terapeuta.jsp");
				} else {
					request.setAttribute("logged",
							"El usuario o la contraseña son incorrectos. Si no los recuerda contacte al administrador");
					disp = getServletContext().getRequestDispatcher("/index.jsp");
				}
			}

			stat.close();
			con.close();

			if (disp != null) {
				disp.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
