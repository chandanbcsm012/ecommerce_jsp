package controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Order;
import connection.MyConnection;
import daou.OrderDao;

@WebServlet("/ProductManipulation")
public class ProductManipulation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductManipulation() {
		super();
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		Connection con = MyConnection.getConnection();
		PreparedStatement ps = null;
		String sql = null;
		int Customer_ID = Integer.parseInt(request.getParameter("user_ID"));

		int proid[] = (int[]) session.getAttribute("proid");
		int quant[] = (int[]) session.getAttribute("quant");
		int len = proid.length;

		for (int i = 0; i < len; i++) {
			Order o = new Order();
			o.setO_product_ID(proid[i]);
			o.setO_quantity(quant[i]);
			o.setO_customerid(Customer_ID);

			OrderDao d = new OrderDao();
			int res = d.insert_order(o);
			if (res != 0) {
				System.out.println("Inserted");
				sql = "update tblproduct set P_QUANTITYPERUNIT = ? where P_PRODUCTID=?";
				try {
					ps = con.prepareStatement(sql);
					ps.setInt(1, quant[i]);
					ps.setInt(2, proid[i]);

					int r = ps.executeUpdate();
					if (r != 0) {
						System.out.println("Updated");
					} else {
						System.out.println("Not Updated");

					}
				} catch (SQLException e) {
					e.printStackTrace();
				}

			}
		}

		response.sendRedirect("myorder.jsp");
	}

}
