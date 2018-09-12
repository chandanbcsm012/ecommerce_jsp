
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
		ResultSet rs; // Payment
		sql = "select *from tblPayment";

		ps = con.prepareStatement(sql);

		rs = ps.executeQuery();
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="add_supplier.jsp">Add
					New Supplier</a></li>
		</ol>
		<form action="AddSupplier" method="post">
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputFirstName">Name</label> <input
							class="form-control" id="exampleInputFirstName" type="text"
							aria-describedby="typesFirstName" name="name"
							placeholder="Enter Name" required="required">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputEmail">Email</label> <input
							class="form-control" id="exampleInputPhone" type="email"
							aria-describedby="emailHelp" name="email"
							placeholder="Enter Email ID">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleCompanyNames">Company Name</label> <input
							class="form-control" id="exampleCompanyNames" type="text"
							aria-describedby="companyName" name="companyName"
							placeholder="Enter Company Name" required="required">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputNumber">Phone</label> <input
							class="form-control" id="exampleInputNumber" type="number"
							aria-describedby="phoneHelp" name="phone"
							placeholder="Enter Mobile Number" required="required">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<label for="exampleInputAddress1">Address1</label>
						<textarea rows="2" cols="2" name="address1" class="form-control"
							name="address1"></textarea>
					</div>
					<div class="col-lg-6">
						<label for="exampleInputAddress2">Address2</label>
						<textarea rows="2" cols="2" name="address2" class="form-control"
							name="address2"></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="country">Country</label><br> <select
							class="rounded form-control" id="country" name="country"
							required="required">
							<option value="-1">select country</option>
							<option value="india">India</option>
							<option value="pakistan">Pakistan</option>
							<option value="america">America</option>
							<option value="England">England</option>
							<option value="England">Nepal</option>
							<option value="England">Bhutan</option>
						</select>

					</div>

				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="State">State</label><br> <select
							class="rounded form-control" id="State" name="state"
							required="required">
							<option value="-1">select state</option>
							<option value="Bihar">Bihar</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="UP">UP</option>
							<option value="MP">MP</option>
						</select>
					</div>


				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">

					<div class="form-group">
						<label for="city">City</label><br> <select
							class="rounded form-control" id="city" name="city"
							required="required">
							<option value="-1">select City</option>
							<option value="Patna">Patna</option>
							<option value="Muzaffarpur">Muzaffarpur</option>
							<option value="Vaisali">Vaisali</option>
							<option value="Hazipur">Hazipur</option>
						</select>
					</div>
				</div>
				<div class="col-lg-6">

					<div class="form-group">
						<label for="exampleInputpostalcode">Postal Code</label> <input
							class="form-control" id="exampleInputpostalcode" type="number"
							aria-describedby="postalcodeHelp" name="postalCode"
							placeholder="Enter Postal Code" required="required">
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="paymentId">Payment Method</label><br> <select
							class="form-control" name="paymentID">
							<option>Select Payment Method</option>
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
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputPassword">Password</label> <input
							class="form-control" id="exampleInputPassword" type="Password"
							aria-describedby="PasswordHelp" name="Password"
							placeholder="Password">
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputtypesgoods">Type Goods</label> <input
							class="form-control" id="exampleInputtypesgoods" type="text"
							aria-describedby="typesgoodsHelp" name="typeGoods"
							placeholder="Enter Type Goods">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputURL">URL</label> <input
							class="form-control" id="exampleInputURL" type="url"
							aria-describedby="URLHelp" name="url" placeholder="Enter URL">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row"></div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group"></div>
				</div>
			</div>
			<input type="submit" value="Register"
				class="btn btn-primary btn-block">
		</form>
	</div>
</div>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>