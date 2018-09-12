package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import daou.CustomerDao;


@WebServlet("/updateProfile")
public class updateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public updateProfile() {
        super();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		Customer customer=new Customer();
		customer.setCustomerid((int)session.getAttribute("id"));
		customer.setC_name(request.getParameter("name"));
		customer.setC_phone(request.getParameter("phone"));
		customer.setC_email(request.getParameter("email"));
		customer.setC_city(request.getParameter("city"));
		customer.setC_state(request.getParameter("state"));
		customer.setC_postalcode(Integer.parseInt(request.getParameter("pin")));
		customer.setC_address1(request.getParameter("add1"));
		customer.setC_address2(request.getParameter("add2"));
		
		CustomerDao cdao=new CustomerDao();
		int result=cdao.updateCustomer(customer);
		if(result!=0)
		{
			response.sendRedirect("profile.jsp");
		}else {
			response.getWriter().println("something went wrong");
			response.getWriter().println("<a href='profile.jsp'>Go to Profile</a>");
		}
		
	}

}
