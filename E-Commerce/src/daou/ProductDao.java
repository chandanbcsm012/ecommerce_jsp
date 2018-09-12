package daou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.org.apache.bcel.internal.generic.RETURN;

import connection.MyConnection;
import bean.*;

public class ProductDao {
	Connection con = MyConnection.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	String sql;
	public int addProduct(Product p) {
		int result = 0;
		sql = "insert into  tblProduct (P_NAME,P_SUPPLIERID,P_PRODUCTDESCRIPTION,P_CATEGORYID,P_QUANTITYPERUNIT,P_UNITPRICE,P_PICTURE,P_SUB_CATEGORYID)  values(?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, p.getP_name());
			ps.setInt(2, p.getP_supplierid());
			ps.setString(3, p.getP_productdescription());
			ps.setInt(4, p.getP_catgoryid());
			ps.setInt(5, p.getP_quantityperunit());
			ps.setDouble(6, p.getP_unitprice());
			ps.setString(7, p.getP_picture());
			ps.setInt(8, p.getP_sub_categoryID());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public ResultSet selectProduct() {
		sql = "select * from tblproduct";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet productDetail(Product p) {
		sql = "select * from tblproduct where P_PRODUCTID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, p.getP_productid());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet productEdit(Product p) {
		sql = "select * from tblproduct where P_PRODUCTID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, p.getP_productid());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public int productEditupdate(Product p) {
		sql = "Update tblproduct set P_NAME=? , P_PRODUCTDESCRIPTION=?, P_QUANTITYPERUNIT=? , P_UNITPRICE=?, P_DISCOUNT=? where P_PRODUCTID=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, p.getP_name());
			ps.setString(2, p.getP_productdescription());
			ps.setInt(3, p.getP_quantityperunit());
			ps.setDouble(4, p.getP_unitprice());
			ps.setDouble(5, p.getP_discount());
			System.out.println("ProductDaou.java "+p.getP_discount());
			ps.setInt(6, p.getP_productid());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// Delete product//
	public int deleteProduct(Product p)
	{
		int result=0;
		sql = "delete from tblProduct where P_PRODUCTID=?";	
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, p.getP_productid());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
