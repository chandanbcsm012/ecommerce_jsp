package controler;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.Customer;
import daou.CustomerDao;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		PrintWriter out= response.getWriter();
		Customer customer = new Customer();
		customer.setC_email(request.getParameter("email"));
		customer.setC_password(request.getParameter("password"));
		
		CustomerDao cd=new CustomerDao();
		ResultSet rs=cd.loginCustomer(customer);
		RequestDispatcher rd;
		try {
			if(rs.next()) {
				response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		        response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		        response.setDateHeader("Expires", 0);//Proxies
		        
				HttpSession session = request.getSession();
				
				session.setAttribute("id",rs.getInt(1));
				out.println("<script>alert('you are successfully login!');</script>");
				rd=request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}else {
				out.println("<script>alert('your email & password is wrong!');</script>");
				rd=request.getRequestDispatcher("index.jsp");
				rd.include(request, response);
			}
		} catch (SQLException e) {e.printStackTrace();
		}
	}
}