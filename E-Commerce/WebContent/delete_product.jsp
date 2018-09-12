<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="daou.ProductDao"%>
<%@page import="bean.Product"%>
<%@page import="bean.Customer"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int productID = Integer.parseInt(request.getParameter("id"));
			Connection con = MyConnection.getConnection();
			int result;
			Product p = new Product();
			p.setP_productid(productID);
			System.out.println("PID" + productID);
			String sql = "select *from tblProduct where P_PRODUCTID=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, productID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				File f = new File(rs.getString(19));
				if (f.delete()) {
					System.out.print("Deleted");
				}
			}
			ProductDao pd = new ProductDao();
			result = pd.deleteProduct(p);

			if (result != 0) {
				response.sendRedirect("view_product.jsp");
			} else {
				System.out.println("Error");
			}
	%>
</body>
</html>
<%
	}
%>