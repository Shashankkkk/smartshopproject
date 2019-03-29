package com.cts.smart_shop.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
                
                public static final String url="jdbc:mysql://localhost:3306/test?useSSL=false";
                public static final String class_name="com.mysql.jdbc.Driver";
                public static final String user="root";
                public static final String password="root";
                
                public static Connection getConnection() {
                                Connection connection = null;
                                
                                try {
                                                Class.forName(class_name);
                                connection = DriverManager.getConnection(url,user,password);
                                return connection;
                                
                                } catch (ClassNotFoundException e) {
                                                e.printStackTrace();
                                } catch (SQLException e) {
                                                e.printStackTrace();
                                }
                                return null;
                }
                public static void closeConnection(Connection connection){
                                
                                try {
                                                connection.close();
                                } 
                                catch (SQLException e) {
                                                e.printStackTrace();
                                }
                }

}
