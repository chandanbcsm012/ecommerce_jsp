package controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminLogin() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		PrintWriter out = response.getWriter();
		
		RequestDispatcher rd;
			
				if (email.equals("admin@gmail.com") && password.equals("admin")) {
					response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
			        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
			        response.setDateHeader("Expires", 0);//Proxies
					
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
					rd = request.getRequestDispatcher("admin.jsp");
					rd.include(request, response);
				}
			 else {
					out.println("<script> alert('Please enter valid Username & Password!');</script>");
					rd = request.getRequestDispatcher("login.jsp");
					rd.include(request, response);				 
			}

	}
}