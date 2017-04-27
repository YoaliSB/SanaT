import javax.servlet.*;
import javax.servlet.http.*;

import bean.Flor;
import bean.Pregunta;
import bean.Respuesta;

import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;

import javax.servlet.annotation.WebServlet;

@WebServlet("/Conteo")
public class ConteoFlores extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response){
		try{

			String base = getServletContext().getInitParameter("base");
			String usuario = getServletContext().getInitParameter("usuario");
			String password = getServletContext().getInitParameter("pass");

			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/"+base;

			Connection con = DriverManager.getConnection(url,usuario,password);
			
			Vector<Flor> flores = new Vector<Flor>();
			Statement f = con.createStatement();
			ResultSet flor = f.executeQuery("Select NombreFlor from flor");
			while(flor.next()){
				Flor aux = new Flor();
				aux.setNombreFlor(flor.getString("NombreFlor"));
				flores.add(aux);
			}
			int id = Integer.parseInt(request.getParameter("id"));
			int test = Integer.parseInt(request.getParameter("test"));
			
			Statement stat =con.createStatement();
			ResultSet res = stat.executeQuery("Select NumPregunta, IDRespuesta FROM pregunta_respuesta_paciente NATURAL JOIN pregunta NATURAL JOIN cuestionario WHERE IDCuestionario="+test+" and IDPaciente="+id+";");
			
			if(test==1){
				int one = 1;
				int two = 2;
				int three =3;
				while(res.next()){
					int idP = res.getInt("NumPregunta");
					int idR = res.getInt("IDRespuesta");
					if(idR==1){
						for(int i=0;i<38;i++)
							if(idP==one || idP== two || idP==three){
								flores.get(i).setCont(flores.get(i).getCont()+1);
							}
							one+=3;
							two+=3;
							three+=3;
						
					}
				}
			}else if(test==2){
				while(res.next()){
					Statement st = con.createStatement();
					int idP = res.getInt("NumPregunta");
					int idR = res.getInt("IDRespuesta");
					int i;
					if(idR==1){
						if(idP==1||idP==2){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Heliantemo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==3||idP==4){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Mimulo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==5||idP==6){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Cerasifera';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==7||idP==8){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Alamo Temblon';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==9||idP==10){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Rojo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==11||idP==12){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Ceratostigma';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==13||idP==14){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Scleranthus';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==15||idP==16){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Genciana de Campo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==17||idP==18){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Avena Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==19||idP==20){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Aulaga';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==21||idP==22){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Hojarazo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==23||idP==24){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Clematide';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==25||idP==26){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Madreselva';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==27||idP==28){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Rosa Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==29||idP==30){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Olivo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==31||idP==32){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Blanco';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==33||idP==34){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Brote de Castaño';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==35||idP==36){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Mostaza';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==37||idP==38){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Agrimonia';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==39||idP==40){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Centaurea';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==41||idP==42){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Nogal';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==43||idP==44){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Acebo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==45||idP==46){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Violeta de Agua';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==47||idP==48){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Impaciencia';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==49||idP==50){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Brezo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==51||idP==52){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Alerce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==53||idP==54){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Pino';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==55||idP==56){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Olmo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==57||idP==58){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Dulce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==59||idP==60){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Estrella de Belen';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==61||idP==62){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Sauce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==63||idP==64){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Roble';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==65||idP==66){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Manzano Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==67||idP==68){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Achicoria';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==69||idP==70){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Verbena';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==71||idP==72){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Vid';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==73||idP==74){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Haya';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else{
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Agua de Roca';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}
						
					}
					st.close();
				}
			}else{
				while(res.next()){
					Statement st = con.createStatement();
					int idP = res.getInt("NumPregunta");
					int idR = res.getInt("IDRespuesta");
					int i;
					if(idR==1){
						if(idP==58||idP==56){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Agrimonia';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==4||idP==68){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Alamo Temblón';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==8||idP==26){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Haya';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==1||idP==73){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Centaurea';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==6||idP==41){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Ceratostigma';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==51||idP==56){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Cerasifera';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==14||idP==65){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Brote de Castaño';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==19||idP==25){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Achicoria';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==27||idP==42){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Clemátide';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==35||idP==49){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Manzano Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==32||idP==36){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Olmo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==59||idP==40){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Genciana de Campo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==7||idP==76){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Aulaga';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==44||idP==50){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Brezo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==63||idP==29){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Acebo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==9||idP==72){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Madreselva';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==23||idP==34){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Hojarazo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==28||idP==38){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Impaciencia';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==10||idP==17){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Alerce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==11||idP==61){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Mimulo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==74||idP==13){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Mostaza';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==18||idP==69){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Roble';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==39||idP==53){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Olivo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==5||idP==12||idP==57){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Pino';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==24||idP==67){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Rojo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==30||idP==62){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Heliantemo';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==4){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Agua de Roca';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==33||idP==46){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Scleranthus';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==45||idP==47){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Estrella de Belén';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==75||idP==31){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Dulce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==3||idP==55){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Verbena';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==52||idP==58){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Vid';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==21||idP==60){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Nogal';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==15||idP==66){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Violeta de Agua';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==20||idP==2){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Castaño Blanco';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==70||idP==16){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Avena Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==71||idP==22){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Rosa Silvestre';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}else if(idP==37||idP==43){
							ResultSet rs =st.executeQuery("Select IDFlor from flor where NombreFlor='Sauce';");
							rs.next();
							i= rs.getInt("IDFlor")-1;
							flores.get(i).setCont(flores.get(i).getCont()+1);
						}
						
					}
					st.close();
				}
			}
			
			request.setAttribute("flores", flores);
			con.close();

			RequestDispatcher disp =  getServletContext().getRequestDispatcher("/receta.jsp");

			if(disp!=null){
				disp.forward(request,response);
			}


		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
			
}