package controler;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.*;
import daou.*;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String SAVE_DIR;

	public AddProduct() {
		super();

	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		switch (Integer.parseInt(request.getParameter("category"))) {
		case 27:
			SAVE_DIR = "Kitchen";
			break;
		case 26:
			SAVE_DIR = "Household";
			break;
		case 21:
			SAVE_DIR = "Snacks & Beverages";
			break;
		case 30:
			SAVE_DIR = "Personal Care";
			break;
		case 25:
			SAVE_DIR = "Gift Hampers";
			break;
		case 33:
			SAVE_DIR = "Sweets";
			break;
		case 18:
			SAVE_DIR = "Baby Care";
			break;
		case 23:
			SAVE_DIR = "Frozen Food";
			break;
		case 24:
			SAVE_DIR = "Fruits and Vegetables";
			break;
		case 32:
			SAVE_DIR = "Soft Drinks & Juices";
			break;
		case 22:
			SAVE_DIR = "Electronics";
			break;
		case 29:
			SAVE_DIR = "Mens";
			break;
		case 34:
			SAVE_DIR = "Womens";
			break;
		case 19:
			SAVE_DIR = "Baby Kids";
			break;

		}

		String p_name = request.getParameter("productName");

		int p_supplierid = Integer.parseInt(request.getParameter("supplierID"));

		String p_productdescription = request.getParameter("productDescription");

		int p_catgoryid = Integer.parseInt(request.getParameter("category"));

		int p_quantityperunit = Integer.parseInt(request.getParameter("quantityperUnit"));

		double p_unitprice = Double.parseDouble(request.getParameter("unitPrice"));

		String imgpath = null;

		int p_sub_categoryID = Integer.parseInt(request.getParameter("subcategory"));

		try {
			// image parsing....
			String filepath = "E:\\wspEcom\\E-Commerce\\WebContent\\Product\\" + File.separator + SAVE_DIR;
			File directory = new File(filepath);
			if (!directory.exists()) {
				directory.mkdir();
			}
			Part part = request.getPart("file");
			String path = extractpath(part);
			String filename = path.substring(path.lastIndexOf("\\") + 1, path.length());
			imgpath = filepath + File.separator + filename;
			part.write(imgpath);

			Product p = new Product();
			p.setP_name(p_name);
			p.setP_supplierid(p_supplierid);
			p.setP_productdescription(p_productdescription);
			p.setP_catgoryid(p_catgoryid);
			p.setP_quantityperunit(p_quantityperunit);
			p.setP_unitprice(p_unitprice);
			p.setP_picture(imgpath);
			p.setP_sub_categoryID(p_sub_categoryID);

			ProductDao pd = new ProductDao();
	

			int result = pd.addProduct(p);
			if (result != 0) {
				System.out.println("product Uploaded");
				RequestDispatcher rd = request.getRequestDispatcher("add_product.jsp");
				rd.include(request, response);
			} else {
				System.out.println("Product not Uploaded");

			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	private String extractpath(Part part) {
		String Content_dis = part.getHeader("Content-Disposition");
		String items[] = Content_dis.split(";");
		for (String x : items) {
			if (x.trim().startsWith("filename")) {
				return x.substring(x.indexOf("=") + 2, x.length() - 1);
			}
		}
		return null;
	}

}
