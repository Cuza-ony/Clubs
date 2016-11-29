package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import loginLogicImpl.loginLogicImpl;

/**
 * Servlet implementation class newUserServlet
 */
@WebServlet("/newUserServlet")
public class newUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newUserServlet() {
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
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String year = request.getParameter("year");
		System.out.println(year);
		String gender = request.getParameter("gender");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		 int success = Access.InsertUser(firstname, lastname, year, gender, username, password);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
