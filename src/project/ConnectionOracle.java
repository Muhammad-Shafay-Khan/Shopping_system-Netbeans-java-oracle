package project;

import java.sql.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
public class ConnectionOracle {
    public static Connection getCon() throws SQLException {
        String url = "jdbc:oracle:thin:@localhost:1521:xe"; 
        String username = "project";
        String password = "project";

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver"); 
        } catch (ClassNotFoundException e) {
            
            e.printStackTrace();
            throw new RuntimeException("Failed to load Oracle JDBC driver");
        }
        return DriverManager.getConnection(url, username, password);
    }

    
}
