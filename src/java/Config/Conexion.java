package Config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;



public class Conexion {
    Connection con;
    public Conexion(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud-23057","root","");
        } catch (Exception e) {
            System.err.println("Error:" +e);
        }
    }
        public Connection getConnection(){
            return con;
        
        }
    

    public static void main(String[] args) {
        Conexion cn=new Conexion();
        Statement st;
        ResultSet rs;
        try {
            st=cn.con.createStatement();
            rs=st.executeQuery("select * from persona");
            while (rs.next()) {                
                System.out.println(rs.getInt("id")+" " +rs.getString("dni")+" " +rs.getString("nombres"));
            }
            cn.con.close();
        } catch (Exception e) {
        }
        
    }
}
