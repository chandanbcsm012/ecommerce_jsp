package daou;

import java.sql.*;

import bean.Customer;
import connection.MyConnection;

public class CustomerDao {

	Customer beanc = new Customer();
	Connection con = MyConnection.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	int result;
	String sql;

	public int signinCustomer(Customer c) {
		sql = "insert into tblcustomers (C_NAME,C_PHONE,C_EMAIL,C_PASSWORD) values(?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, c.getC_name());
			ps.setString(2, c.getC_phone());
			ps.setString(3, c.getC_email());
			ps.setString(4, c.getC_password());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public ResultSet loginCustomer(Customer c) {
		sql = "select * from tblcustomers where c_email=? and c_password=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, c.getC_email());
			ps.setString(2, c.getC_password());
			rs = ps.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet viewCustomer(){
		sql="select * from tblcustomers ";
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet viewCustomerDetails(Customer c){
		sql="select * from tblcustomers where id=? ";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,c.getCustomerid());
			rs=ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet viewCustomer(int id){
		sql="select * from tblcustomers where customerid=? ";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			rs=ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet customerDetail(Customer c){
		sql="select * from tblcustomers where customerid=? ";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,c.getCustomerid());
			rs=ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public int updateCustomer(Customer c) {
		sql="update tblcustomers SET C_NAME=?, C_ADDRESS1=?, C_ADDRESS2=?, C_CITY=?, C_STATE=?, C_POSTALCODE=? ,C_PHONE=?,C_EMAIL=? WHERE CUSTOMERID=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1,c.getC_name());
			ps.setString(2,c.getC_address1() );
			ps.setString(3,c.getC_address2());
			ps.setString(4, c.getC_city());
			ps.setString(5, c.getC_state());
			ps.setInt(6, c.getC_postalcode());
			ps.setString(7, c.getC_phone());
			ps.setString(8, c.getC_email());
			ps.setInt(9, c.getCustomerid());
			result=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}

}
