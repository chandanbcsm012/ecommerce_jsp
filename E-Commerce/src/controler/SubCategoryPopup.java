package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.MyConnection;

@WebServlet("/SubCategoryPopup")
public class SubCategoryPopup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SubCategoryPopup() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String val = request.getParameter("category");
		System.out.println("Id cat" + val);

		PrintWriter out = response.getWriter();
		try {
			int category = Integer.parseInt(request.getParameter("category"));

			System.out.println("Id cat" + category);
			Connection con = MyConnection.getConnection();
			String sql;
			PreparedStatement ps;
			ResultSet rs;

			switch (category) {

			case 18:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 19:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 21:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 22:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 23:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 24:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 25:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 26:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 27:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 29:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 30:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 31:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
			case 32:
				sql = "select *from tblSubCategory where CAT_ID_REF=? order by SUB_CAT_NAME";
				ps = con.prepareStatement(sql);
				ps.setInt(1, category);
				rs = ps.executeQuery();
				while (rs.next()) {
					out.println("<option value='" + rs.getString(1) + "'> " + rs.getString(2) + " </option>");
				}
				break;
				
			default:
				out.print("<option value='-1'> Subcategory Is Not Available </option>");
				break;
			}
		} catch (Exception ex) {
			out.print("Error getting product name..." + ex.toString());
		} finally {
			out.close();
		}
	}

}
