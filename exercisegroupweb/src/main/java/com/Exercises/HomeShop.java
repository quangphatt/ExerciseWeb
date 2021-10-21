package com.Exercises;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.CookieControl.CookieUtils;
import com.Model.Users;

@WebServlet("/HomeShop")
public class HomeShop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String url = "/exercises/exercise2_1.jsp";
		if(action == null)
		{
			action ="view";
		}
		if(action.equals("view")){
			url = "/exercises/exercise2_1.jsp";
		}
		else if(action.equals("checkUser"))
		{
			url = CheckUser(request, response);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String url =  "/exercises/exercise2_1.jsp";
		if(action.equals("registerUser")) {
			url = registerUser(request,response);
		}
		request.getRequestDispatcher(url).forward(request, response);

	}
	private String CheckUser(HttpServletRequest request, HttpServletResponse response) {
		String url = "";
		String album = request.getParameter("album");
		HttpSession session = request.getSession();
		session.setAttribute("album", album);
		String email = (String) session.getAttribute("email");
		Users user = (Users) session.getAttribute("user");
		if(user == null && (email == null || email.equals("")))
		{
			Cookie[] cookies = request.getCookies();
			email = CookieUtils.getValue(cookies, "email");
			if(email.equals("") || email == null)
				url="/exercises/exercise2.jsp";
			else {
				session.setAttribute("email", email);
				url = "albums/" +album+".jsp";
			}
		}else {
			url = "albums/" +album+".jsp";
		}
		
		return url;
	}
	private static String registerUser(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		Users users = new Users(username,password,email);
		
		//Session
		HttpSession session = request.getSession();
		session.setAttribute("user", users);
		
		//Cookie
		Cookie cookie = new Cookie("email",email);
		cookie.setMaxAge(60*2);
		cookie.setPath("/");
		response.addCookie(cookie);
		return "/exercises/exercise2_1.jsp";
		
		
	}

}
