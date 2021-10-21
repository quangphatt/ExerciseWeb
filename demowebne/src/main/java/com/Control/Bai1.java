package com.Control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Utils.MyDB;

@WebServlet("/sqlGateway")
public class Bai1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/cautruyvan.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sqlStatement = request.getParameter("sqlStatement");
		String sqlResult = "";
		try {
			Connection connection = MyDB.getConnection();

			// create a statement
			Statement statement = connection.createStatement();

			// parse the SQL string
			sqlStatement = sqlStatement.trim();
			if (sqlStatement.length() >= 6) {
				String sqlType = sqlStatement.substring(0, 6);
				if (sqlType.equalsIgnoreCase("select")) {
					// create the HTML for the result set
					ResultSet resultSet = statement.executeQuery(sqlStatement);
					sqlResult = SQLUtil.getHtmlTable(resultSet);
					resultSet.close();
				} else {
					int i = statement.executeUpdate(sqlStatement);
					if (i == 0) { // a DDL statement
						sqlResult = "<p>The statement executed successfully.</p>";
					} else { // an INSERT, UPDATE, or DELETE statement
						sqlResult = "<p>The statement executed successfully.<br>" + i + " row(s) affected.</p>";
					}
				}
			}
			statement.close();
			connection.close();
		} catch (ClassNotFoundException e) {
			sqlResult = "<p>Error loading the database driver: <br>" + e.getMessage() + "</p>";
		} catch (SQLException e) {
			sqlResult = "<p>Error executing the SQL statement: <br>" + e.getMessage() + "</p>";
		}
		HttpSession session = request.getSession();
		session.setAttribute("sqlResult", sqlResult);
		session.setAttribute("sqlStatement", sqlStatement);
		session.setMaxInactiveInterval(3000);
		String url = "/cautruyvan.jsp";
		getServletContext().getRequestDispatcher(url).forward(request, response);
	}

}
