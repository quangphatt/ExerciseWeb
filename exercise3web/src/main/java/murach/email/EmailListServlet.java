package murach.email;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import murach.business.User;
import murach.data.UserDB;
import murach.data.UserIO;

public class EmailListServlet extends HttpServlet{
	public void initIfNeeded() throws ServletException {
	    //
	    String path = this.getActualFile();
	    if (!isFile(path)) {
	      try {
	        //add two Users
	        UserIO.addRecord(new User("Dave", "Powell", "dpowell2@elon.edu"), path);
	        UserIO.addRecord(new User("Joel", "Hollingsworth", "jhollingsworth@elon.edu"), path);
	      } catch (IOException ex) {
	        Logger.getLogger(EmailListServlet.class.getName()).log(Level.SEVERE, null, ex);
	      } 
	    }
	  }
	  
	  

	  @Override
	  protected void doPost(HttpServletRequest request,
	    HttpServletResponse response)
	    throws ServletException, IOException {

	    HttpSession session = request.getSession();
	    initIfNeeded();

	    // get current action
	    String action = request.getParameter("action");
	    if (action == null) {
	      action = "join";  // default action
	    }

	    // perform action and set URL to appropriate page
	    String url = "/index.jsp";
	    if (action.equals("join")) {
	      url = "/index.jsp";    // the "join" page
	    } else if (action.equals("add")) {
	      // get parameters from the request
	      String firstName = request.getParameter("firstName");
	      String lastName = request.getParameter("lastName");
	      String email = request.getParameter("email");

	      // store data in User object and save User object in database
	      User user = new User(firstName, lastName, email);
	      UserDB.insert(user);

	      // set User object in request object and set URL
	      session.setAttribute("user", user);
	      url = "/thanks.jsp";   // the "thanks" page
	    }

	    // create the Date object and store it in the request
	    Date currentDate = new Date();
	    request.setAttribute("currentDate", currentDate);

	    // create users list and store it in the session
	    String path = getActualFile();
	    ArrayList<User> users = UserIO.getUsers(path);
	    session.setAttribute("users", users);

	    // forward request and response objects to specified URL
	    getServletContext()
	      .getRequestDispatcher(url)
	      .forward(request, response);
	  }

	  @Override
	  protected void doGet(HttpServletRequest request,
	    HttpServletResponse response)
	    throws ServletException, IOException {
	    doPost(request, response);
	  }
	  
	  
	  
	  private boolean isFile(String path) {
	    File aFile = new File(path);
	    return aFile.exists();
	  }

	  private String getActualFile() {
	    String path = "";
	    String filename = "EmailList.txt";
	    String env = System.getenv("OPENSHIFT_DATA_DIR");
	    if ((env != null) && (env.length() > 2)) {
	      path = env + filename;
	    } else {
	      ServletContext sc = getServletContext();
	      path = sc.getRealPath("/WEB-INF/" + filename);
	    }
	    return path;
	  }
}
