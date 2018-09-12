package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import daou.CategoryDao;

/**
 * Servlet implementation class SubCategory
 */
@WebServlet("/SubCategory")
public class SubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SubCategory() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int category = Integer.parseInt(request.getParameter("category"));
		String description = request.getParameter("description");
		String subcategoryname = request.getParameter("subcategory");
		Category c = new Category();
		c.setCat_name(subcategoryname);
		c.setCat_description(description);
		c.setSub_cat_ID(category);

		CategoryDao cd = new CategoryDao();
		int result = cd.uploadSubCategory(c);
		if (result != 0) {
			System.out.println("success");
			response.sendRedirect("sub_category.jsp");
		} else {
			System.out.println("UnSuccess");
		}

	}

}
