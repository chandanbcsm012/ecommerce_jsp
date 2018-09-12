
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="daou.CustomerDao"%>
<%@page import="bean.Customer"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%
	int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id = " + id);
		Connection con = MyConnection.getConnection();
		Customer b = new Customer();
		b.setCustomerid(id);
		CustomerDao d = new CustomerDao();
		ResultSet rs = d.customerDetail(b);
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="view_customer_details.jsp">View
					Customer details</a></li>
		</ol>
		<%
			if (rs.next()) {
		%>
		<form>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputName">Name</label> <input
							class="form-control" readonly value="<%=rs.getString(2)%>"
							id="exampleInputName" type="text" aria-describedby="nameHelp">
					</div>
					<div class="col-md-6">
						<label for="exampleInputEmail1">Email ID</label> <input
							class="form-control" value="<%=rs.getString(10)%>" readonly
							id="exampleInputEmail1" type="email">
					</div>

				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<label for="exampleInputAddress1">Address1</label>
						<textarea rows="2" cols="2" class="form-control" readonly
							name="address1"><%=rs.getString(3)%></textarea>
					</div>
					<div class="col-lg-6">
						<label for="exampleInputAddress2">Address2</label>
						<textarea rows="2" readonly cols="2" class="form-control"
							name="address2"><%=rs.getString(4)%></textarea>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="country">Country</label><br /> <input type="text"
							class="rounded form-control " readonly
							value="<%=rs.getString(8)%>">
					</div>

					<div class="col-md-6">
						<label for="state">State</label><br /> <input type="text"
							class="rounded form-control" value="<%=rs.getString(6)%>"
							readonly id="State">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="city">City</label><br /> <input type="text"
							class="rounded form-control " value="<%=rs.getString(5)%>"
							readonly id="city">
					</div>
					<div class="col-md-6">

						<label for="exampleInputPostalCode">Postal Code</label> <input
							class="form-control" readonly value="<%=rs.getString(7)%>"
							id="exampleInputPostalCode" type="number"
							aria-describedby="PostalCodeHelp">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputPhone">Mobile Number</label> <input
							class="form-control" readonly value="<%=rs.getString(9)%>"
							id="examplePhone" type="text" maxlength="10">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="exampleInputCardName">Card Name</label> <input
							class="form-control" readonly id="exampleInputCardName"
							type="text" value="<%=rs.getString(12)%>">
					</div>
					<div class="col-md-6">
						<label for="exampleInputCardType">Card Type</label> <input
							class="form-control" readonly value="<%=rs.getString(13)%>"
							id="exampleInputCardType" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputCardExpyr">Card Expiry Year</label> <input
							class="form-control" readonly value="<%=rs.getString(15)%>"
							id="exampleInputCardExpyr" type="text">
					</div>

					<div class="col-md-6">
						<label for="exampleInputCardExpmon">Card Expiry Month</label> <input
							class="form-control" readonly value="<%=rs.getString(14)%>"
							id="exampleInputCardExpmon" type="text">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<label for="exampleInputBillingAddress1">Billing Address1</label>
						<textarea rows="2" cols="2" class="form-control" readonly
							name="billingAddress1"><%=rs.getString(16)%></textarea>
					</div>
					<div class="col-lg-6">
						<label for="exampleInputAddress2">Billing Address2</label>
						<textarea rows="2" readonly cols="2" class="form-control"
							name="billingAddress2"><%=rs.getString(17)%></textarea>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<a href="view_customer.jsp" class="btn btn-success">Back</a>
					</div>

				</div>
			</div>
		</form>
		<%
			}
		%>
	</div>
</div>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>