package com.Dao;

import java.sql.*;
import javax.sql.DataSource;

import com.Utils.MyDB;

import javax.naming.InitialContext;
import javax.naming.NamingException;

public class ConnectionPool {
	private static ConnectionPool pool = null;
    private static DataSource dataSource = null;

    public ConnectionPool() {
        try {
            InitialContext ic = new InitialContext();
            setDataSource((DataSource) ic.lookup("java:/comp/env/jdbc/murach"));
        } catch (NamingException e) {
            System.out.println(e);
        }
    }

    public static synchronized ConnectionPool getInstance() {
        if (pool == null) {
            pool = new ConnectionPool();
        }
        return pool;
    }

    public Connection getConnection() {
        try {
			return MyDB.getConnection();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
    }
    public void freeConnection(Connection c) {
        try {
            c.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

	public static DataSource getDataSource() {
		return dataSource;
	}

	public static void setDataSource(DataSource dataSource) {
		ConnectionPool.dataSource = dataSource;
	}
}
