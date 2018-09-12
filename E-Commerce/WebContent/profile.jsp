
<%
	if (session.getAttribute("id") == null) {
		response.sendRedirect("index.jsp");
	} else {
		
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0);//Proxies
%>


<%@page import="java.sql.ResultSet"%>
<%@page import="daou.CustomerDao"%>
<jsp:include page="header.jsp"></jsp:include>

<%
	CustomerDao cdao = new CustomerDao();
		int s = (int) session.getAttribute("id");
		ResultSet rs = cdao.viewCustomer(s);
%>
<div>
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			My Profile <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->
		<%
			if (rs.next()) {
		%>
		<div class="col-md-3">
			<div class="row">
				<div class="col-md-12">
					<div>
						<img alt="image" src="User/images/img_avatar1.png"
							class="img-rounded img-responsive">
					</div>
					<div align="center">
						<a class="btn btn-link" style="border-radius: 0px"
							href="editprofile.jsp">Edit Profile</a>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-9">
			<div>
				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Name: </label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(2)%></span>
					</div>
				</div>


				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Phone:</label>
					</div>

					<div class="col-md-9">
						<span> <%=rs.getString(9)%></span>
					</div>
				</div>

				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Email:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(10)%></span>
					</div>
				</div>
				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>City:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(5)%></span>
					</div>
				</div>


				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>State:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(6)%></span>
					</div>
				</div>

				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Pstal Code:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getInt(7)%></span>
					</div>
				</div>

				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Address 1:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(3)%></span>
					</div>
				</div>

				<div class="row" style="margin: 1em;">
					<div class="col-md-3">
						<label>Address 2:</label>
					</div>

					<div class="col-md-9">
						<span><%=rs.getString(4)%></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
<%
	}
	}
%>