
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="daou.SupplierDao"%>
<%@page import="bean.Supplier"%>
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
		int supplierID = Integer.parseInt(request.getParameter("id"));
			Connection con = MyConnection.getConnection();
			int result;
			Supplier sp = new Supplier();
			sp.setSp_supplierid(supplierID);
			SupplierDao pd = new SupplierDao();
			result = pd.deleteSupplier(sp);
			if (result != 0) {
	%>
	<script type="text/javascript">
		alert("delete product");
	</script>
	<%
		response.sendRedirect("view_supplier.jsp");
	%>

	<%
		} else {
	%>
	<script type="text/javascript">
		alert("Error");
	</script>

	<%
		}
	%>
</body>
</html>
<%
	}
%>