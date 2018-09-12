<% if (session.getAttribute("id") == null) {
	response.sendRedirect("index.jsp");
}else{
	
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
	if (rs.next()) {
%>
<div>
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			Edit Profile <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->

		<div class="col-md-3">
			<div class="row">
				<div class="col-md-12">
					<div>
						<img alt="image" src="User/images/img_avatar1.png"
							class="img-rounded img-responsive">
					</div>
				</div>
			</div>
		</div>
		<form action="updateProfile" method="post">
			<div class="col-md-9">
				<div>
					<div class="row">
						<div class="col-md-3">
							<label>Name:</label>
						</div>

						<div class="col-md-9">
							<input name="name" class="form-control" type="text"
								value="<%=rs.getString(2)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>

					</div>


					<div class="row">
						<div class="col-md-3">
							<label>Phone:</label>
						</div>

						<div class="col-md-9">
							<input name="phone" type="number" class="form-control"
								value="<%=rs.getString(9)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>
					</div>



					<div class="row">
						<div class="col-md-3">
							<label>Email:</label>
						</div>

						<div class="col-md-9">
							<input name="email" class="form-control" type="email"
								value="<%=rs.getString(10)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<label>City:</label>
						</div>

						<div class="col-md-9">
							<input name="city" class="form-control" type="text"
								value="<%=rs.getString(5)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<label>State:</label>
						</div>

						<div class="col-md-9">
							<input name="state" class="form-control" type="text"
								value="<%=rs.getString(6)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<label>Postal Code:</label>
						</div>

						<div class="col-md-9">
							<input name="pin" class="form-control" type="number"
								value="<%=rs.getInt(7)%>"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;">
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<label>Address 1:</label>
						</div>

						<div class="col-md-9">
							<textarea rows="2" class="form-control" cols="70" name="add1"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;"><%=rs.getString(3)%></textarea>
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<label>Address 2:</label>
						</div>

						<div class="col-md-9">
							<textarea rows="2" cols="70" name="add2"
								style="margin-top: 10px; margin-bottom: 10px; width: 100%;"><%=rs.getString(4)%></textarea>
						</div>
					</div>
					<div class="row">
						<div>
							<input class="btn btn-info" type="submit" value="Update">
						</div>
					</div>


				</div>
			</div>
		</form>
	</div>
</div>



<jsp:include page="footer.jsp"></jsp:include>


<%
	}
	}
%>