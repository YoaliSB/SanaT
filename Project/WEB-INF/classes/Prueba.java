import java.sql.*;

public class Prueba{
    public static void main(String[] args){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/floresdebach";
            Connection con = DriverManager.getConnection(url,"usuario", "mipass");
            Statement stat = con.createStatement();
            stat.executeUpdate("INSERT INTO terapeuta(NombreTerapeuta) VALUES ('Pedro Jimenez');");
            ResultSet res = stat.executeQuery("SELECT * FROM terapeuta;");
            while(res.next()){
                String edad = res.getString("NombreTerapeuta");
                System.out.println(edad);
            }
            stat.close();
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }

    }
}
