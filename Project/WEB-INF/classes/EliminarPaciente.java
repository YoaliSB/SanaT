import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EliminarPaciente")
public class EliminarPaciente extends HttpServlet{
	
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
			
			stat.executeUpdate("DELETE FROM paciente WHERE IDPaciente="+id);			
			
			stat.close();
			con.close();

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/closeTab.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}
        }
        catch(Exception e){
            e.printStackTrace();
        }
	}

}