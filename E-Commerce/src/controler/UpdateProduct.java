package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Product;
import daou.ProductDao;

@WebServlet("/UpdateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateProduct() {
        super();
    }
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String name= request.getParameter("ProductName");
		String productdescription= request.getParameter("productDescription");
		int quantityperunit=Integer.parseInt(request.getParameter("Quatityperunit"));
		double unitprice=Double.parseDouble(request.getParameter("Unitprice"));
		int productID	= Integer.parseInt(request.getParameter("ProductID"));
		
		double discount;
		if(request.getParameter("Discount").equals("") || (request.getParameter("Discount").matches("[A-Za-z ]+")) )
			discount = 0.0;
		else
			discount = Double.parseDouble(request.getParameter("Discount"));
		//System.out.println(discount);
		
		/*		double mrp=Double.parseDouble(request.getParameter("MSRP"));
	
	int available_size= Integer.parseInt(request.getParameter("Availablesize"));
		
		String available_colors= request.getParameter("Availablecolors");
		
		double discount= Double.parseDouble(request.getParameter("Discount"));
		
		double unitweight= Double.parseDouble(request.getParameter("UnitWeight"));
		int unitsinstock= Integer.parseInt(request.getParameter("UnitSinstock"));
		int unitsonorder= Integer.parseInt(request.getParameter("UnitSonorder"));
		String record_level=request.getParameter("Pecorder_Level");
		int product_available= Integer.parseInt(request.getParameter("Product_Available"));
		double discount_available= Double.parseDouble(request.getParameter("Discount_Available"));
		int currentorder=Integer.parseInt (request.getParameter("CurrentOrder"));*/
		

		Product product=new Product();
		product.setP_name(name);
		product.setP_productdescription(productdescription);
		product.setP_quantityperunit(quantityperunit);
		product.setP_unitprice(unitprice);
		product.setP_discount(discount);
		product.setP_productid(productID);
		
		/*product.setP_mrp(mrp);
		product.setP_available_size(available_size);
		product.setP_available_colors(available_colors);
		product.setP_discount(discount);
		product.setP_unitweight(unitweight);
		product.setP_unitsinstock(unitsinstock);
		product.setP_unitsonorder(unitsonorder);
		product.setP_recorder_level(record_level);
		product.setP_product_available(product_available);
		product.setP_discount_available(discount_available);
		product.setP_currentorder(currentorder);*/
		
		ProductDao d=new ProductDao();
		int  result=d.productEditupdate(product);
		if(result!=0)
		{
		   response.sendRedirect("view_product.jsp");
		}
		else
		{
			response.getWriter().println("update not successfully");	
		}
	}

}