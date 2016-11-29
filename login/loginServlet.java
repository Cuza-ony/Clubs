package login;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import databaseAccess.MoviePersistImpl;
import loginLogicImpl.loginLogicImpl;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		loginLogicImpl Access = new loginLogicImpl();
		
		String username = request.getParameter("username");
		System.out.println(username);
		String password = request.getParameter("password");
		
		ResultSet rstuser = Access.findUserName(username);
		ResultSet rstpass = Access.findPassword(password);
		
		if(rstuser == null ){
			System.out.println("no");
			response.sendRedirect("redirect.html");
		}
		else if(rstpass == null)
		{
			System.out.println("nope");
			response.sendRedirect("redirect.html");
		}
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
