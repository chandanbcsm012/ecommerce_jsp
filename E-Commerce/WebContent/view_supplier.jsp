
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="daou.SupplierDao"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%!int id;%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
			<li class="breadcrumb-item active">Seller</li>
		</ol>
		<!-- Example DataTables Card-->
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> Data Table Example
			</div>
			<div class="card-body">
				<%
					Connection con = MyConnection.getConnection();
						SupplierDao daos = new SupplierDao();
						ResultSet rs = daos.selectSupplier();
				%>
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>Supplier Id</th>
								<th>Company Name</th>
								<th>Supplier Name</th>
								<th>Phone</th>
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
								<td><%=rs.getString(10)%></td>
								<td>
									<%
										id = Integer.parseInt(rs.getString(1));
									%> <a href="view_supplier_details.jsp?id=<%=id%>"
									class="btn btn-success" role="submit">view</a> <a
									href="edit_supplier.jsp?id=<%=id%>" class="btn btn-info"
									role="submit">Edit</a> <a class="btn btn-danger" role="button"
									role="submit" data-toggle="modal" data-target="#exampleModal">delete</a>
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
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to
						Delete?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Are you sure??</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="delete_supplier.jsp?id=<%=id%>">Delete</a>
				</div>
			</div>
		</div>
	</div>



	<!-- /.container-fluid-->
	<!-- /.content-wrapper-->

	<jsp:include page="admin_footer.jsp"></jsp:include>
	<%
		}
	%>