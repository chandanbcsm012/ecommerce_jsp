package daou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import bean.*;

import connection.MyConnection;

public class SupplierDao {
	Connection con = MyConnection.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	String sql;

	public ResultSet selectSupplier() {
		sql = "select * from tblsupplier";

		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public ResultSet supplierDetail(Supplier s) {
		sql = "select * from tblsupplier where SP_SUPPLIERID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, s.getSp_supplierid());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public ResultSet supplierEdit(Supplier s) {
		sql = "select * from tblsupplier where SP_SUPPLIERID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, s.getSp_supplierid());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public int addSupplier(Supplier s) {
		int result = 0;
		sql = "insert into tblsupplier (SP_COMPANYNAME,SP_NAME,SP_ADDRESS1,SP_ADDRESS2,SP_CITY,SP_STATE,SP_POSTALCODE,SP_COUNTRY,SP_PHONE,SP_EMAIL,SP_URL,SP_PAYMENTID,SP_TYPEGOODS) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, s.getSp_companyname());
			ps.setString(2, s.getSp_name());
			ps.setString(3, s.getSp_address1());
			ps.setString(4, s.getSp_address2());
			ps.setString(5, s.getSp_city());
			ps.setString(6, s.getSp_state());
			ps.setInt(7, s.getSp_postalcode());
			ps.setString(8, s.getSp_country());
			ps.setString(9, s.getSp_phone());
			ps.setString(10, s.getSp_email());
			ps.setString(11, s.getSp_url());
			ps.setInt(12, s.getSp_paymentid());
			ps.setString(13, s.getSp_typegoods());
			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int editSupplier(Supplier s) {
		int result = 0;
		sql = "update  tblsupplier set SP_COMPANYNAME=? ,SP_NAME=?,SP_ADDRESS1=?,SP_ADDRESS2=?,SP_CITY=?,SP_STATE=?,SP_POSTALCODE=?,SP_COUNTRY=?,SP_PHONE=?,SP_EMAIL=?,SP_URL=?,SP_PAYMENTID=?,SP_TYPEGOODS=? where SP_SUPPLIERID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, s.getSp_companyname());
			ps.setString(2, s.getSp_name());
			ps.setString(3, s.getSp_address1());
			ps.setString(4, s.getSp_address2());
			ps.setString(5, s.getSp_city());
			ps.setString(6, s.getSp_state());
			ps.setInt(7, s.getSp_postalcode());
			ps.setString(8, s.getSp_country());
			ps.setString(9, s.getSp_phone());
			ps.setString(10, s.getSp_email());
			ps.setString(11, s.getSp_url());
			ps.setInt(12, s.getSp_paymentid());
			ps.setString(13, s.getSp_typegoods());
			ps.setInt(14, s.getSp_supplierid());
			result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int deleteSupplier(Supplier s) {
		int result = 0;
		sql = "delete from tblSupplier where SP_SUPPLIERID=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, s.getSp_supplierid());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

	}

}
