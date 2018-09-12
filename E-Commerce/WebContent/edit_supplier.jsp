
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>
s
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="daou.SupplierDao"%>
<%@page import="bean.Supplier"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%
	int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id = " + id);
		Connection con = MyConnection.getConnection();
		Supplier supplier = new Supplier();
		supplier.setSp_supplierid(id);
		SupplierDao d = new SupplierDao();
		ResultSet rs = d.supplierEdit(supplier);
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="edit_supplier.jsp">Edit
					Supplier</a></li>
		</ol>
		<form action="EditSupplier" method="post">
			<%
				if (rs.next()) {
			%>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputSupplierID">Supplier ID</label> <input
							class="form-control" id="exampleInputSupplierID" type="text"
							aria-describedby="typesFirstName" name="supplierID"
							readonly="readonly" required="required"
							value="<%=rs.getString(1)%>">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInput">Link</label>
						<table class="table-responsive">
							<tr class="form-inline">
								<td><a href="add_supplier.jsp" class="btn btn-success">Add
										Supplier</a></td>

								<td><a href="view_supplier.jsp" class="btn btn-primary">view
										Supplier</a></td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputFirstName">Name</label> <input
							class="form-control" id="exampleInputFirstName" type="text"
							aria-describedby="typesFirstName" name="name"
							placeholder="Enter First Name" required="required"
							value="<%=rs.getString(3)%>">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputEmail">Email</label> <input
							class="form-control" id="exampleInputPhone" type="email"
							value="<%=rs.getString(11)%>" aria-describedby="emailHelp"
							name="email" placeholder="Enter Email ID">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleCompanyNames">Company Name</label> <input
							class="form-control" id="exampleCompanyNames" type="text"
							aria-describedby="companyName" value="<%=rs.getString(2)%>"
							name="companyName" placeholder="Enter Company Name"
							required="required">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputNumber">Phone</label> <input
							class="form-control" id="exampleInputNumber" type="number"
							aria-describedby="phoneHelp" name="phone"
							value="<%=rs.getString(10)%>" placeholder="Enter Mobile Number"
							required="required">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<label for="exampleInputAddress1">Address1</label>
						<textarea rows="2" cols="2" name="address1" class="form-control"
							name="address1"><%=rs.getString(4)%></textarea>
					</div>
					<div class="col-lg-6">
						<label for="exampleInputAddress2">Address2</label>
						<textarea rows="2" cols="2" name="address2" class="form-control"
							name="address2"><%=rs.getString(5)%></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="country">Country</label><br> <select
							class="rounded form-control" id="country" name="country"
							required="required">
							<option value="<%=rs.getString(9)%>"><%=rs.getString(9)%></option>
							<option value="-1">select country</option>
							<option value="india">India</option>
							<option value="pakistan">Pakistan</option>
							<option value="america">America</option>
							<option value="England">England</option>
						</select>

					</div>

				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="State">State</label><br> <select
							class="rounded form-control" id="State" name="state"
							required="required">
							<option value="<%=rs.getString(7)%>"><%=rs.getString(7)%></option>

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
							<option value="<%=rs.getString(6)%>"><%=rs.getString(6)%></option>
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
							value="<%=rs.getString(8)%>" placeholder="Enter Postal Code"
							required="required">
					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="paymentId">Payment Method</label><br> <select
							class="form-control" name="paymentID">
							<%
								int ID = Integer.parseInt(rs.getString(13));
										String sql1 = "select *from tblPayment where PAY_PAYMENTID=?";
										PreparedStatement ps2 = con.prepareStatement(sql1);
										ps2.setInt(1, ID);
										ResultSet rs2 = ps2.executeQuery();
										while (rs2.next()) {
							%>
							<option value="<%=rs2.getString(1)%>"><%=rs2.getString(2)%></option>
							<%
								}
							%>
							<%
								String sql = "select *from tblPayment";
										PreparedStatement ps = con.prepareStatement(sql);
										ResultSet rs1 = ps.executeQuery();
										while (rs1.next()) {
							%>
							<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
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
							placeholder="Enter Type Goods" value="<%=rs.getString(15)%>">
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
			<%
				}
			%>
			<div class="form-group">
				<div class="row"></div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group"></div>
				</div>
			</div>
			<input type="submit" value="Update" class="btn btn-primary btn-block">
		</form>
	</div>
</div>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>