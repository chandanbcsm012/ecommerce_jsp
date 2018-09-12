package daou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.Category;
import connection.MyConnection;

public class CategoryDao {
	Connection con = MyConnection.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	boolean result;
	int result1;
	String sql;

	public boolean uploadCategory(Category c) {
		String sql = "insert into tblCategory (CAT_NAME,CAT_DESCRIPTION,CAT_PICTURE) values(?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, c.getCat_name());
			ps.setString(2, c.getCat_description());
			ps.setString(3, c.getCat_picture());
			result = ps.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public int uploadSubCategory(Category c) {
		String sql = "insert into tblSubCategory (SUB_CAT_NAME,CAT_ID_REF,DESCRIPTION) values(?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, c.getCat_name());
			ps.setInt(2, c.getSub_cat_ID());
			ps.setString(3, c.getCat_description());

			result1 = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result1;
	}

}
