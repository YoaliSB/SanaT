import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

import bean.Receta;
import java.util.Vector;

@WebServlet("/AgregarReceta")
public class AgregarReceta extends HttpServlet{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		System.out.println("Llega al final del servlet");
		try{
			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");

			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/" + base;

			System.out.println(url);
			Connection con = DriverManager.getConnection(url, usuario, password);

			Statement stat = con.createStatement();
			
			int IDPaciente = Integer.parseInt(request.getParameter("id").toString());
			int IDTerapeuta = Integer.parseInt(request.getParameter("idTerapeuta").toString());
			int[] dosis=new int[38];
			String fechaDeVencimiento=request.getParameter("vencimiento");
			
			dosis[0]=Integer.parseInt(request.getParameter("dosisAgrimonia").toString());
			dosis[1]=Integer.parseInt(request.getParameter("dosisAlamoTemblon").toString());
			dosis[2]=Integer.parseInt(request.getParameter("dosisHaya").toString());
			dosis[3]=Integer.parseInt(request.getParameter("dosisCentaurea").toString());
			dosis[4]=Integer.parseInt(request.getParameter("dosisCeratostigma").toString());
			dosis[5]=Integer.parseInt(request.getParameter("dosisCerasifera").toString());
			dosis[6]=Integer.parseInt(request.getParameter("dosisBroteDeCastano").toString());
			dosis[7]=Integer.parseInt(request.getParameter("dosisAchicoria").toString());
			dosis[8]=Integer.parseInt(request.getParameter("dosisClematide").toString());
			dosis[9]=Integer.parseInt(request.getParameter("dosisManzanoSilvestre").toString());
			dosis[10]=Integer.parseInt(request.getParameter("dosisOlmo").toString());
			dosis[11]=Integer.parseInt(request.getParameter("dosisGencianaDeCampo").toString());
			dosis[12]=Integer.parseInt(request.getParameter("dosisAulaga").toString());
			dosis[13]=Integer.parseInt(request.getParameter("dosisBrezo").toString());
			dosis[14]=Integer.parseInt(request.getParameter("dosisAcebo").toString());
			dosis[15]=Integer.parseInt(request.getParameter("dosisMadreselva").toString());
			dosis[16]=Integer.parseInt(request.getParameter("dosisHojarazo").toString());
			dosis[17]=Integer.parseInt(request.getParameter("dosisImpaciencia").toString());
			dosis[18]=Integer.parseInt(request.getParameter("dosisAlerce").toString());
			dosis[19]=Integer.parseInt(request.getParameter("dosisMimulo").toString());
			dosis[20]=Integer.parseInt(request.getParameter("dosisMostaza").toString());
			dosis[21]=Integer.parseInt(request.getParameter("dosisRoble").toString());
			dosis[22]=Integer.parseInt(request.getParameter("dosisOlivo").toString());
			dosis[23]=Integer.parseInt(request.getParameter("dosisPino").toString());
			dosis[24]=Integer.parseInt(request.getParameter("dosisCastanoRojo").toString());
			dosis[25]=Integer.parseInt(request.getParameter("dosisHeliantemo").toString());
			dosis[26]=Integer.parseInt(request.getParameter("dosisAguaDeRoca").toString());
			dosis[27]=Integer.parseInt(request.getParameter("dosisScleranthus").toString());
			dosis[28]=Integer.parseInt(request.getParameter("dosisEstrellaDeBelen").toString());
			dosis[29]=Integer.parseInt(request.getParameter("dosisCastanoDulce").toString());
			dosis[30]=Integer.parseInt(request.getParameter("dosisVerbena").toString());
			dosis[31]=Integer.parseInt(request.getParameter("dosisVid").toString());
			dosis[32]=Integer.parseInt(request.getParameter("dosisNogal").toString());
			dosis[33]=Integer.parseInt(request.getParameter("dosisVioletadDeAgua").toString());
			dosis[34]=Integer.parseInt(request.getParameter("dosisCastanoBlanco").toString());
			dosis[35]=Integer.parseInt(request.getParameter("dosisAvenaSilvestre").toString());
			dosis[36]=Integer.parseInt(request.getParameter("dosisRosaSilvestre").toString());
			dosis[37]=Integer.parseInt(request.getParameter("dosisSauce").toString());
			
			String sql = "INSERT INTO receta(Fecha_de_vencimiento,IDTerapeuta,IDPaciente) VALUES('"+fechaDeVencimiento+"','"+IDTerapeuta+"','"+IDPaciente+"');";
			stat.executeUpdate(sql);
			
			sql="SELECT * FROM receta WHERE IDPaciente="+IDPaciente+" order by IDReceta ASC";			
			ResultSet resultSet=stat.executeQuery(sql);
			System.out.println("SELECT * FROM receta WHERE IDPaciente="+IDPaciente+" AND Fecha_de_vencimiento='"+fechaDeVencimiento+"' order by Fecha_de_vencimiento ASC IDReceta DESC");
			int IDReceta=1;
			while(resultSet.next()){
				IDReceta=resultSet.getInt("IDReceta");
			}
				
			
			
			for(int i=0;i<dosis.length;i++){
				if(dosis[i]>0){
					sql = "INSERT INTO flor_receta(Dosis,IDFlor,IDReceta) VALUES('"+dosis[i]+"','"+(i+1)+"','"+IDReceta+"');";
					stat.executeUpdate(sql);
				}
			}
			
			sql="SELECT * FROM paciente WHERE IDPaciente= "+IDPaciente;			
			
			resultSet=stat.executeQuery(sql);
			
			while (resultSet.next()) {

				request.setAttribute("id", IDPaciente);
				request.setAttribute("nombre",resultSet.getString("NombrePaciente"));
				request.setAttribute("edad",resultSet.getInt("Edad"));
				request.setAttribute("sexo",resultSet.getString("Sexo"));
				request.setAttribute("direccion",resultSet.getString("Direccion"));
				request.setAttribute("telefono",resultSet.getString("Telefono"));
				request.setAttribute("mail",resultSet.getString("Mail"));					
				
			}
			
			sql="SELECT NombreTerapeuta FROM terapeuta WHERE IDTerapeuta= "+IDTerapeuta;
			resultSet=stat.executeQuery(sql);
			
			resultSet=stat.executeQuery("SELECT * FROM receta WHERE IDPaciente="+IDPaciente+" ORDER BY Fecha_de_vencimiento DESC");
			Vector<Receta> recetas = new Vector<Receta>();
			
			while(resultSet.next()){

				Receta aux = new Receta();

				aux.setIDReceta(resultSet.getInt("IDReceta"));
				aux.setFecha_De_Vencimiento(resultSet.getDate("Fecha_de_vencimiento"));
				aux.setIDTerapeuta(resultSet.getInt("IDTerapeuta"));
				aux.setIDPaciente(resultSet.getInt("IDPaciente"));

				recetas.add(aux);

			}
			request.setAttribute("recetas",recetas);
			request.setAttribute("idTerapeuta", IDTerapeuta);
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