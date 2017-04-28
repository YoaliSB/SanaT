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

@WebServlet("/IngresaDatosReceta")
public class IngresaDatosReceta extends HttpServlet{

    public void doPost(HttpServletRequest request, HttpServletResponse response){
        try{
            String base = getServletContext().getInitParameter("base");
            String usuario = getServletContext().getInitParameter("usuario");
            String password = getServletContext().getInitParameter("pass");

            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/" + base;

            System.out.println(url);
            Connection con = DriverManager.getConnection(url, usuario, password);

            Statement stat = con.createStatement();

            int IDReceta = Integer.parseInt(request.getParameter("idReceta").toString());
            int IDPaciente = Integer.parseInt(request.getParameter("id").toString());
            int IDTerapeuta = Integer.parseInt(request.getParameter("idTerapeuta"));
            int[] dosis=new int[38];
            String fechaDeVencimiento=request.getParameter("vencimiento");

            request.setAttribute("idReceta",IDReceta);
            request.setAttribute("id",IDPaciente);
            request.setAttribute("idTerapeuta",IDTerapeuta);
            request.setAttribute("vencimiento",fechaDeVencimiento);

            String sql="SELECT * FROM paciente WHERE IDPaciente= "+IDPaciente;

            ResultSet resultSet=stat.executeQuery(sql);

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

            stat.close();
            con.close();

            RequestDispatcher disp =  getServletContext().getRequestDispatcher("/modReceta.jsp");

            if(disp!=null){
                disp.forward(request,response);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}