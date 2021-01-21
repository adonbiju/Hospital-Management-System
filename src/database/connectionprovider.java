/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package database;
import  java.sql.*;

/**
 
 * @author Adon Biju
 */
public class connectionprovider {
    public static  Connection getCon() {
            try {
               Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hms","root","");
               return con;
            } catch (ClassNotFoundException | SQLException e) {
                return null;
            }
    
}
}
