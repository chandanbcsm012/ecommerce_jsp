package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Supplier;
import daou.SupplierDao;

@WebServlet("/EditSupplier")
public class EditSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditSupplier() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Supplier supplier=new Supplier();
		supplier.setSp_supplierid(Integer.parseInt(request.getParameter("supplierID")));
		supplier.setSp_name(request.getParameter("name"));
		supplier.setSp_companyname(request.getParameter("companyName"));
		supplier.setSp_phone(request.getParameter("phone"));
		supplier.setSp_address1(request.getParameter("address1"));
		supplier.setSp_address2(request.getParameter("address2"));
		supplier.setSp_country(request.getParameter("country"));
		supplier.setSp_state(request.getParameter("state"));
		supplier.setSp_city(request.getParameter("city"));
		supplier.setSp_postalcode(Integer.parseInt(request.getParameter("postalCode")));
		supplier.setSp_paymentid(Integer.parseInt(request.getParameter("paymentID")));
		supplier.setSp_typegoods(request.getParameter("typeGoods"));
		supplier.setSp_url(request.getParameter("url"));
		supplier.setSp_email(request.getParameter("email"));

		SupplierDao  supd=new SupplierDao();
		int result=supd.editSupplier(supplier);
		if(result!=0) {
			response.sendRedirect("view_supplier.jsp");
		}
		else {
			response.getWriter().println("Soory Technical error are here");
		}
	
	}

}
