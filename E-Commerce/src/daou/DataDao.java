package daou;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import connection.MyConnection;

public class DataDao {
	Connection con = MyConnection.getConnection();

	public ArrayList<String> getFrameWork(String frameWork) {
		ArrayList<String> list = new ArrayList<String>();
		PreparedStatement ps = null;
		String data;
		try {
			ps = con.prepareStatement("SELECT * FROM tblProduct  WHERE  p_Name  LIKE ? or p_Name  LIKE ?");
			ps.setString(1,   frameWork + "%");
			ps.setString(2,   frameWork.toUpperCase() + "%");
			
			ResultSet rs = ps.executeQuery();
			int size = 0;
			while (rs.next()) {
				size++;
				data = rs.getString("P_NAME");
				list.add(data);
			}
			if(size==0)
			{
				list.add("Not found");
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return list;
	}
}
