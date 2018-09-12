
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="daou.CustomerDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>

<%
	ResultSet rs;
		Connection con = MyConnection.getConnection();
		CustomerDao daos = new CustomerDao();
		rs = daos.viewCustomer();
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="view_customer.jsp">view
					customer</a></li>
		</ol>

		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> Data Table Example
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">

						<thead>

							<tr>
								<th>customerId</th>
								<th>name</th>
								<th>email</th>


								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<%
								while (rs.next()) {
							%>

							<tr>
								<td><%=rs.getInt(1)%></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(10)%></td>
								<td><a
									href="view_customer_details.jsp?id=<%=rs.getInt(1)%>"
									class="btn btn-info" role="submit">View Details</a> </td>
							</tr>

							<%
								}
							%>
						</tbody>

					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>