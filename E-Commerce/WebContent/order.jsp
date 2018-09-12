
<%@page import="java.sql.ResultSet"%>
<%@page import="daou.*"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
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
				<i class="fa fa-table"></i> Order Data Table
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<%
						Connection con = MyConnection.getConnection();
						OrderDao daos = new OrderDao();
						ResultSet rs = daos.selectOrder();
					%>

					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">
						<thead>
							<tr>
								<th>Order ID</th>
								<th>Customer ID</th>
								<th>Order Date</th>
								<th>Delivery Date</th>
								<th>Product ID</th>
								<th>Quantity</th>
								
							</tr>
						</thead>
						<tbody>
							<%
								while (rs.next()) {
							%>
							<tr>
								<td><%=rs.getString(1)%></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(5)%></td>
								<td><%=rs.getString(7)%></td>
								<td><%=rs.getString(19)%></td>
								<td><%=rs.getString(20)%></td>

							
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