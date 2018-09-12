package daou;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import bean.Order;
import connection.MyConnection;

public class OrderDao {
	Connection con = MyConnection.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	String sql;

	public ResultSet selectOrder() {
		sql = "select * from tblorder";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int insert_order(Order o) {
		int result = 0;

		sql = "insert into tblOrder (O_CUSTOMERID,O_ORDERDATE,O_DELIVERYDATE,PRODUCT_ID,O_QUANTITY) values(?,?,?,?,?)";
		try {
			java.sql.Date d = new java.sql.Date(Calendar.getInstance().getTime().getTime());
			System.out.println("Current Date:" + d);
			java.sql.Date d1 = new java.sql.Date(
					(Calendar.getInstance().getTime().getTime()) + 7 * (24 * 60 * 60 * 1000));
			System.out.println("After 7day of Current Date:" + d1);

			ps = con.prepareStatement(sql);
			ps.setInt(1, o.getO_customerid());
			ps.setDate(2, d);
			ps.setDate(3, d1);
			ps.setInt(4, o.getO_product_ID());
			ps.setInt(5, o.getO_quantity());

			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

}
