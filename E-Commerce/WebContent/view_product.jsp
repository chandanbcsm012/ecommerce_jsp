
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="daou.ProductDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="daou.SupplierDao"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>

<jsp:include page="admin_header.jsp"></jsp:include>
<%!%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="admin.jsp">Dashboard</a></li>
			<li class="breadcrumb-item active">Tables</li>
		</ol>
		<!-- Example DataTables Card-->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i>Product Data Table
			</div>
			<div class="card-body">
				<form>
					<div class="table-responsive">
						<%
							Connection con = MyConnection.getConnection();
								ProductDao daos = new ProductDao();
								ResultSet rs = daos.selectProduct();
						%>

						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Product ID</th>
									<th>Product Name</th>
									<th>Supplier ID</th>
									<th>Category ID</th>
									<th>Discount</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
									while (rs.next()) {
								%>
								<tr>
									<td><%=rs.getString(1)%></td>
									<td><%=rs.getString(2)%></td>
									<td><%=rs.getString(3)%></td>
									<td><%=rs.getString(5)%></td>
									<td><%=rs.getString(11)%></td>

									<td>
										<%
											int id = Integer.parseInt(rs.getString(1));
										%> <a href="view_product_details.jsp?id=<%=id%>"
										class="btn btn-success" role="submit">view</a> <a
										href="edit_product.jsp?id=<%=id%>" class="btn btn-info"
										role="submit">Edit</a> <a class="btn btn-danger" role="button"
										role="submit" href="delete_product.jsp?id=<%=id%>"
										data-target="#exampleModal"
										onclick="return confirm('Are you sure you want to delete this item?')">delete</a>
									</td>
								</tr>

								<%
									}
								%>
							</tbody>
						</table>
					</div>
			</div>
			<div class="card-footer small text-muted">Updated yesterday at
				11:59 PM</div>
		</div>
	</div>


	<!-- /.container-fluid-->
	<!-- /.content-wrapper-->

	<jsp:include page="admin_footer.jsp"></jsp:include>
	<%
		}
	%>