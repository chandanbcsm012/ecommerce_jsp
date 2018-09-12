package controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer;
import daou.CustomerDao;

@WebServlet("/Signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public Signin() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Customer customer = new Customer();
		customer.setC_name(name);
		customer.setC_phone(mobile);
		customer.setC_email(email);
		customer.setC_password(password);
		 
		PrintWriter out = response.getWriter();
		
		CustomerDao daoc = new CustomerDao();
		int result = daoc.signinCustomer(customer);
		RequestDispatcher rd=null;
		if(result!=0){	
			out.print("<script> alert('Your Account is succesfully created'); </script>");
		rd= request.getRequestDispatcher("index.jsp");
		rd.include(request, response);
			
		}
		else{
			out.print("<script> alert('Sorry, Your Account is not created. Please try again!'); </script>");
			rd = request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
			
			
		}
		
	}

}
