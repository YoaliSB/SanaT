import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EditarPaciente")
public class EditarPaciente extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		try{
			
			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");


			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/"+base;

			Connection con = DriverManager.getConnection(url,usuario,password);
			
			Statement stat = con.createStatement();
			String nombre = request.getParameter("nombre");
			String edad = request.getParameter("edad");
			String sexo = request.getParameter("sexo");
			String direccion = request.getParameter("direccion");
			String telefono = request.getParameter("telefono");
			String mail = request.getParameter("mail");
			String comentario = request.getParameter("comentarios");
			int id = Integer.parseInt(request.getParameter("id").toString());
			
			String sql="";
			if(nombre!="")sql+="NombrePaciente = '"+nombre+"'";
			if(sql!=""&&edad!=""&&sexo!=""&&direccion!=""&&telefono!=""&&mail!=""&&comentario!="")sql+=",";
			if(edad!="")sql+="Edad= '"+edad+"'";
			if(sql!=""&&sexo!=""&&direccion!=""&&telefono!=""&&mail!=""&&comentario!="")sql+=",";
			if(sexo!="")sql+="Sexo= '"+sexo+"'";
			if(sql!=""&&direccion!=""&&telefono!=""&&mail!=""&&comentario!="")sql+=",";
			if(direccion!="")sql+="Direccion= '"+direccion+"'";
			if(sql!=""&&telefono!=""&&mail!=""&&comentario!="")sql+=",";
			if(telefono!="")sql+="Telefono= '"+telefono+"'";
			if(sql!=""&&mail!=""&&comentario!="")sql+=",";
			if(mail!="")sql+="Mail= '"+mail+"'";
			if(sql!=""&&comentario!="")sql+=",";
			if(comentario!="")sql+="DescripcionPaciente = '"+comentario+"'";
			sql+=" WHERE IDPaciente="+id+";";
			System.out.println(sql);
			
			
			if(sql!=""){
				stat.executeUpdate("UPDATE paciente SET "+sql);		
			}	
			
			
			
			sql="SELECT * FROM paciente WHERE IDPaciente= "+id;			
			
			ResultSet resultSet=stat.executeQuery(sql);
			
			
			while (resultSet.next()) {

				request.setAttribute("id", id);
				request.setAttribute("nombre",resultSet.getString("NombrePaciente"));
				request.setAttribute("edad",resultSet.getInt("Edad"));
				request.setAttribute("sexo",resultSet.getString("Sexo"));
				request.setAttribute("direccion",resultSet.getString("Direccion"));
				request.setAttribute("telefono",resultSet.getString("Telefono"));
				request.setAttribute("mail",resultSet.getString("Mail"));	
				request.setAttribute("comentario",resultSet.getString("DescripcionPaciente"));				
				
			}
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