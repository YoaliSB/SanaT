import javax.servlet.*;
import javax.servlet.http.*;

import bean.Flor;
import bean.Pregunta;
import bean.Respuesta;

import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/DescribirReceta")
public class DescribirReceta extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response){
		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");

			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base;

			Connection con = DriverManager.getConnection(url,usuario,password);
			Statement stat = con.createStatement();
			
			int idPaciente = Integer.parseInt(request.getParameter("idPaciente"));
			int idReceta = Integer.parseInt(request.getParameter("idReceta"));
			
			ResultSet rs = stat.executeQuery("SELECT NombreFlor, Dosis FROM flor NATURAL JOIN flor_receta NATURAL JOIN receta WHERE IDPaciente="+idPaciente+" and Dosis>0 and IDReceta="+idReceta+";");
			Vector<Flor> flores = new Vector<Flor>();
			while(rs.next()){
				Flor aux = new Flor();
				aux.setNombreFlor(rs.getString("NombreFlor"));
				aux.setDosis(rs.getInt("Dosis"));
				flores.add(aux);
			}
			
			request.setAttribute("flores", flores);
			
			con.close();
			

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/floresDeReceta.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}
        }
        catch(Exception e){
            e.printStackTrace();
        }
	}

}