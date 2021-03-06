import javax.servlet.*;
import javax.servlet.http.*;

import bean.Pregunta;
import bean.Respuesta;

import java.sql.*;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/FinCuest")
public class FinalizarCuest extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");
			int n=0;
			int y=0;

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base;

			System.out.println(url);
			Connection con = DriverManager.getConnection(url,usuario,password);
			
			int idpaciente = Integer.parseInt(request.getParameter("idpa"));
			int num = Integer.parseInt(request.getParameter("num"));
			
			if(num==1){
				n=1;
				y=114;
			}else if(num==2){
				n=115;
				y=190;
			}else{
				n=191;
				y=266;
			}
			
			for(int i=n;i<=y;i++){
				int f = Integer.parseInt(request.getParameter(""+i+""));
				Statement stat = con.createStatement();
				stat.executeUpdate("INSERT INTO pregunta_respuesta_paciente values("+i+", "+f+", "+idpaciente+");");
				stat.close();
			}
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
