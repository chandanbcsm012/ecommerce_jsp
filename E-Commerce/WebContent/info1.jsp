<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html/images; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection con = MyConnection.getConnection();
		String sql = "select * from tblcategory ";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String picname = rs.getString(4);
			System.out.println(picname);
	%>
	<!--<img alt="" src="<%=rs.getString(3)%>" height="300px" width="400px">

<embed src="rs.getString(4)%>">-->



	<%
		String newpicadd = picname.substring(picname.lastIndexOf('\\') + 1, picname.length());
	%>
	<img
		src="${pageContext.request.contextPath}/P_Category/image1/<%=newpicadd %>">


	<%
		}
	%>
</body>
</html>