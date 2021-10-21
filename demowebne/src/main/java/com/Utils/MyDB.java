package com.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyDB {
	static String dbURL = "jdbc:postgresql://ec2-34-199-15-136.compute-1.amazonaws.com:5432/d7qs03ov0sqdq?currentSchema=demo";
    static String username = "pvncwffuauelvv";
    static String password = "ae8dc992f5dbf499c8bc1a4d88340f3e4593c1d7dd6a953563bcf04598a22c8f";
    
    public static Connection getConnection() throws ClassNotFoundException{
		try {
			Class.forName("org.postgresql.Driver");
			return DriverManager.getConnection(dbURL, username, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
