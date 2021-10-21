package com.Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.UserDB;
import com.Model.Users;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/emailList")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/user.jsp";
        try {
        	 // get current action
            String action = request.getParameter("action");
            if (action == null) {
                action = "join";  // default action
            }
            // perform action and set URL to appropriate page
            if (action.equals("join")) {
                url = "/user.jsp";    // the "join" page
            } 
            else if (action.equals("add")) {
                // get parameters from the request
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String email = request.getParameter("email");

                // store data in User object
                Users user = new Users(email, firstName, lastName);

                String message;
    			// validate the parameters
                if (UserDB.emailExists(user.getEmaill())) {
                    message = "This email address already exists.<br>" +
                              "Please enter another email address.";
                    url = "/user.jsp";
                }
                else {
                    message = "";
                    url = "/home.jsp";
                    UserDB.insert(user);
                }
                ArrayList<Users> users = UserDB.selectUsers();
                Date currentDate = new Date();
        	    request.setAttribute("currentDate", currentDate);
                request.setAttribute("user", user);
                request.setAttribute("message", message);
                request.setAttribute("users", users);
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
        getServletContext()
        .getRequestDispatcher(url)
        .forward(request, response);
       
    }    
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = "/user.jsp";
		getServletContext()
        .getRequestDispatcher(url)
        .forward(req, resp);
       
	}

}
