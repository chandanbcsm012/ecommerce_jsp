
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%
	Connection con = MyConnection.getConnection();
		PreparedStatement ps = null;// for category

		String sql;
		ResultSet rs; // category
		sql = "select *from tblCategory";

		ps = con.prepareStatement(sql);

		rs = ps.executeQuery();
%>

<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="sub_category.jsp">Sub
					Category</a></li>
		</ol>
		<div class="row">
			<div class="container">
				<form action="SubCategory" method="post">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputName">Category</label> <select
									class="form-control" name="category" autofocus="autofocus">
									<option>Select Category Name</option>
									<%
										while (rs.next()) {
									%>
									<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
									<%
										}
									%>
								</select>

							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="exampleInputPicture">SubCategory Name</label> <input
									class="form-control" type="text" aria-describedby="PictureHelp"
									placeholder="Enter Subcategory Name" name="subcategory"
									required>
							</div>
						</div>
					</div>
					<div class="row">

						<div class="col-lg-6">
							<div class="form-group">
								<label for="exampleInputDiscription">Discription</label>
								<textarea class="form-control" id="exampleInputDiscription"
									placeholder="Enter Discription" rows="5" name="description">
									</textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6"></div>
						<div class="col-lg-6">
							<button type="submit" class="btn btn-success col-2 mr-1">OK</button>
							<button type="button" class="btn btn-danger col-2">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>