
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%
	Connection con = MyConnection.getConnection();
		String sql = "select *from tblCategory";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="category.jsp">Category</a>
			</li>
		</ol>
		<div class="row">
			<div class="container">
				<form action="Category" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputName">Category Name</label> <input
									class="form-control" id="exampleInputName" type="text"
									aria-describedby="nameHelp" placeholder="Enter Name"
									name="categoryName" required="required">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputPicture">Picture</label> <input
									class="form-control" id="exampleInputPicture" type="file"
									aria-describedby="PictureHelp" placeholder="Enter Picture"
									name="file" required="required">

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">
								<label for="exampleInputDiscription">Discription</label>
								<textarea class="form-control" id="exampleInputDiscription"
									type="text" aria-describedby="DiscriptionHelp"
									placeholder="Enter Discription" name="description">
									</textarea>
							</div>
						</div>
						<div class="col-lg-6 mt-4 pt-2">
							<button type="submit" class="btn btn-success col-2 mr-1">OK</button>
							<button type="button" class="btn btn-danger col-2">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="card mb-3">
			<div class="card-header">
				<i class="fa fa-table"></i> Category Data Table
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" id="dataTable" width="100%"
						cellspacing="0">

						<thead>

							<tr>
								<th>Category ID</th>
								<th>Category Name</th>
								<th>Image</th>
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
								<td>
									<%
										String picname = rs.getString(4);
												String newpicadd = picname.substring(picname.lastIndexOf('\\') + 1, picname.length());
									%>
									<img width="100" height="100"
									src="${pageContext.request.contextPath}/P_Category/image1/<%=newpicadd %>">



								</td>
								<td>
									<button type="button" class="btn btn-primary">View</button>
									<button type="button" class="btn btn-success">Edit</button>
									<button type="button" class="btn btn-danger">Delete</button>
								</td>
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