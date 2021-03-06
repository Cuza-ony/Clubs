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
	String query="",username,usernameCopy,password, user, pass;
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
		 System.out.println("in");
		 username = request.getParameter("user");
		 password = request.getParameter("pass");
		 String lastname = request.getParameter("lastname");
		 String firstname = request.getParameter("firstname");
		 String gender = request.getParameter("gender");
		 String year = request.getParameter("year");
		 String email = request.getParameter("email");
		 
		 
		 System.out.println(username);
		 System.out.println(password);
		 System.out.println(lastname);

		 
		 if(firstname == "" || lastname == "" || gender == "" || year == "" || email == "" ){
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println("Please Fill in All fields");
			 
		 }
				 
		 //go to user landing page after login page
		 if(firstname != null){
			 username = request.getParameter("username");
			 password = request.getParameter("password");
			 if(username == "" || password == "" ){
				 response.setContentType("text/html");
				 PrintWriter out = response.getWriter();
				 out.println("Please Fill in All fields");
			 }
			 
			 Boolean exhists = persist.checkUser(username);
			 if(exhists){
				 persist.InsertUser(firstname, lastname, year, gender, username, password, email);

				 //response.sendRedirect("http://localhost:8080/compilation/user.html"); 
				 response.setContentType("text/html");
				 PrintWriter out = response.getWriter();
				 out.println("s"); 
			 }
			 else{
				 response.setContentType("text/html");
				 PrintWriter out = response.getWriter();
				 out.print("The username is already taken. Try again.");
				 System.out.println("The username is already taken. Try again."); 
				 //response.sendRedirect("http://localhost:8080/compilation/index.html"); 
			 } 
		 }
		 else if(username !=null)
		 {
			 Boolean found = persist.findUserName(username, password);
			 
			 if(found == true)
			 {
				 
				 response.sendRedirect("user.html"); 
				 //response.setContentType("text/html");
				 //PrintWriter out = response.getWriter();
				 //out.println("s");
				 System.out.println("success");
			 }
			 else{
				 response.sendRedirect("index.html"); 
				 //response.setContentType("text/html");
				 //PrintWriter out = response.getWriter();
				 //out.println("your username or password is incorrect. Please try again.");
				 System.out.println("your username or password is incorrect. Please try again.");
			 }

			 
			 
		 }
		 //if request is being sent from interest page
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("interests")){
			 //get list of all interests
			 query = persist.interestList();
			 query += "{.split}";//to know how to separate the string
			 //get list of only the user's interest
			 query += persist.userInterestList(usernameCopy);
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println(query); 
			 //clear out query to start over
			 query = "";
		 }
        //if request is being sent from clubs page
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("clubs")){
			 //get list of all clubs
			 query = persist.clubList();
			 query += "{.split}";//to know how to separate the string
			 //get list of only the user's clubs
			 query += persist.userClubList(usernameCopy);
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println(query); 
			 //clear out query to start over
			 query = "";
		 }
        //if request is being sent from events page
		 /*
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("events")){
			 //get list of all events
			 query = persist.eventList();
			 query += "{.split}";//to know how to separate the string
			 //get list of only the user's events
			 query += persist.userEventList(usernameCopy);
			 response.setContentType("text/html");
			 PrintWriter out = response.getWriter();
			 out.println(query); 
			 //clear out query to start over
			 query = "";
		 }*/
		 //request is sent from user landing page
		 else if(request.getParameter("p") != null && request.getParameter("p").equals("user")){
			//find user full name after successful login
			 query = persist.findUserFullName(usernameCopy);
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