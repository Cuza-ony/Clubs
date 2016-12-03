package boundary;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistlayer.PersistImpl;
import persistlayer.DbAccessImpl;
import object.Clubs;
/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DbAccessImpl access = new DbAccessImpl(); 
	PersistImpl persist = new PersistImpl();
	Clubs clubs = new Clubs();
	String query="",username,usernameCopy;
    int count = 0;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		access.connect();
		 //-----------Get User-name (from index.html) to Find User's full name----------\\
		 username = request.getParameter("u");
		 //go to user landing page after login page
		 if(username != null){
			 usernameCopy = username;
			 response.sendRedirect("http://localhost:8080/team10_clubs/user.html"); 
		 }
		 //if request is being sent from interest page
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("interests")){
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println("p parameter is not null"); 
		 }
		 //request is sent from user landing page
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("user")){
			//find user full name after successful login
			 query += persist.findUserFullName(usernameCopy);
			 query += "{.split}";//to know how to separate the string
			 //find user interests
			 query += persist.findUserInterests(usernameCopy);
			 query += "{.split}";
			 //find user's clubs
			 query += persist.findUserClubs(usernameCopy);
			 query += "{.split}";
			 
			 //find user's events
			 
			 //output results
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println(query);
			 //clear out query string to start over
			 query = "";
		 }
		 else {//nothing should reach this statement 
			 query = "";
		 }
	}//doGet


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
