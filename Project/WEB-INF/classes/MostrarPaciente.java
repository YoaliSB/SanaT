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

@WebServlet("/MostrarPaciente")
public class MostrarPaciente extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
try{
			
			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");


			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/"+base;

			Connection con = DriverManager.getConnection(url,usuario,password);
			
			Statement stat = con.createStatement();
			
			int id = Integer.parseInt(request.getParameter("id").toString());
			
			String sql="SELECT * FROM paciente WHERE IDPaciente= "+id;			
			
			ResultSet resultSet=stat.executeQuery(sql);
			
			request.setAttribute("id", id);
			int idTerapeuta=-1;
			while (resultSet.next()) {

				request.setAttribute("id", id);
				request.setAttribute("nombre",resultSet.getString("NombrePaciente"));
				request.setAttribute("edad",resultSet.getInt("Edad"));
				request.setAttribute("sexo",resultSet.getString("Sexo"));
				request.setAttribute("direccion",resultSet.getString("Direccion"));
				request.setAttribute("telefono",resultSet.getString("Telefono"));
				request.setAttribute("mail",resultSet.getString("Mail"));
				idTerapeuta=resultSet.getInt("IDTerapeuta");
				
			}
			int idReceta = -1;
			resultSet=stat.executeQuery("SELECT * FROM receta WHERE IDPaciente="+id+" ORDER BY Fecha_de_vencimiento DESC");
			Vector<Receta> recetas = new Vector<Receta>();
			while(resultSet.next()){

				Receta aux = new Receta();

				aux.setIDReceta(resultSet.getInt("IDReceta"));
				aux.setFecha_De_Vencimiento(resultSet.getDate("Fecha_de_vencimiento"));
				aux.setIDTerapeuta(resultSet.getInt("IDTerapeuta"));
				aux.setIDPaciente(resultSet.getInt("IDPaciente"));
				idReceta =resultSet.getInt("IDTerapeuta");

				recetas.add(aux);

			}
			request.setAttribute("recetas",recetas);
			request.setAttribute("idTerapeuta", idTerapeuta);
			request.setAttribute("idReceta", idReceta);
			
			stat.close();
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