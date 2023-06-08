package com.supermarket.sevenstar.dbconfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConfiguration {
    private static DbConfiguration instance;
    private Connection connection;
    
    private final static String databaseURL = "jdbc:mysql://localhost:3306/supermarket";
	private final static String databaseUsername = "root";
	private final static String databasePassword = "2002";

    private DbConfiguration() throws ClassNotFoundException {
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	
        try {
             // Create the database connection
            connection = DriverManager.getConnection(databaseURL, databaseUsername, databasePassword);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static synchronized DbConfiguration getInstance() throws ClassNotFoundException {
        if (instance == null) {
            instance = new DbConfiguration();
        }
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }

    // Other methods to interact with the database
}


//public class DbConfiguration {
//
//	private final static String driverClassName ="com.mysql.jdbc.Driver";
//	private final static String databaseURL = "jdbc:mysql://localhost:3306/supermarket";
//	private final static String databaseUsername = "root";
//	private final static String databasePassword = "2002";
//	
//	public static Connection getDatabaseConnection() throws ClassNotFoundException {
//		
//		Class.forName(driverClassName);
//				
//		try {
//			Connection connection = DriverManager.getConnection(databaseURL, databaseUsername, databasePassword);
//			return connection;
//		}catch (SQLException e) {
//			e.printStackTrace();
//			return null;
//		}
//	}
//	
//}



//package com.supermarket.sevenstar.dbconfig;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class DbConfiguration {
//
//	private final static String driverClassName ="com.mysql.cj.jdbc.Driver";
//	private final static String databaseURL = "jdbc:mysql://us-cdbr-east-06.cleardb.net:3306/heroku_bc38ea9570226ef";
//	private final static String databaseUsername = "ba9fa1b8f892ac";
//	private final static String databasePassword = "ee28b816";
//	
//	public static Connection getDatabaseConnection() throws ClassNotFoundException {
//		
//		Class.forName(driverClassName);
//				
//		try {
//			Connection connection = DriverManager.getConnection(databaseURL, databaseUsername, databasePassword);
//			System.out.println("Database Working");
//			return connection;
//		}catch (SQLException e) {
//			e.printStackTrace();
//			System.out.println("Database Not Working");
//			return null;
//		}
//	}
//	
//}

