package controler;

import java.io.IOException;
import java.io.File;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import daou.CategoryDao;

@WebServlet("/Category")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)

public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR ="image1";

	public Category() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String categoryname = request.getParameter("categoryName");
		String description = request.getParameter("description");
		String imgpath = null;
		try {
			// image parsing....
			String filepath = "E:\\wspEcom\\E-Commerce\\WebContent\\P_Category" + File.separator + SAVE_DIR;
			File directory = new File(filepath);
			if (!directory.exists()) {
				directory.mkdir();
			}
			Part part = request.getPart("file");
			String path = extractpath(part);
			String filename = path.substring(path.lastIndexOf("\\") + 1, path.length());
			imgpath = filepath + File.separator + filename;
			part.write(imgpath);
			bean.Category c = new bean.Category();

			c.setCat_name(categoryname);
			c.setCat_description(description);
			c.setCat_picture(imgpath);
			CategoryDao cd = new CategoryDao();
			boolean result = cd.uploadCategory(c);
			if (result!=true) {
			
				RequestDispatcher rd = request.getRequestDispatcher("category.jsp");
				rd.include(request, response);
			} else {
				System.out.println("Category not Uploaded");

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
