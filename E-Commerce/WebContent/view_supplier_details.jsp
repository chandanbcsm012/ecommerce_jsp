
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="daou.SupplierDao"%>
<%@page import="bean.Supplier"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%!Connection con = MyConnection.getConnection();%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id = " + id);
		Supplier supplier = new Supplier();
		supplier.setSp_supplierid(id);
		SupplierDao d = new SupplierDao();
		ResultSet rs = d.supplierDetail(supplier);
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">View seller
					details</a></li>
		</ol>
		<%
			if (rs.next()) {
		%>
		<form>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputCompanyName">Company Name</label> <input
							class="form-control" readonly value="<%=rs.getString(2)%>"
							name="companyName" id="exampleCompanyName" type="text"
							aria-describedby="typesCompanyName" placeholder="Enter FirstName">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputLastName">Name</label> <input
							class="form-control" name="Name" value="<%=rs.getString(3)%>"
							readonly id="exampleInputLastName" type="text"
							aria-describedby="LastNameHelp" placeholder="Enter LastName">
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-lg-6">
						<label for="exampleInputAddress1">Address1</label>
						<textarea rows="2" cols="2" class="form-control" readonly
							name="address1"><%=rs.getString(4)%></textarea>
					</div>
					<div class="col-lg-6">
						<label for="exampleInputAddress2">Address2</label>
						<textarea rows="2" readonly cols="2" class="form-control"
							name="address2"><%=rs.getString(5)%></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="Country">Country</label><br> <input
							class="form-control" value="<%=rs.getString(9)%>" readonly
							type="text">

					</div>

				</div>

				<div class="col-lg-6">
					<div class="form-group">
						<label for="State">State</label><br> <input
							class="form-control" value="<%=rs.getString(7)%>" readonly
							type="text">
					</div>

				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputpostalcode">Postal Code</label> <input
							class="form-control" readonly value="<%=rs.getString(8)%>"
							name="postalcode" id="exampleInputpostalcode" type="number"
							aria-describedby="postalcodeHelp" placeholder="Enter postalcode">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="City">City</label><br> <input
							class="form-control" value="<%=rs.getString(6)%>" readonly
							type="text">
					</div>

				</div>

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="paymentId">Payment ID</label><br> <input
							class="form-control" value="<%=rs.getString(13)%>" readonly
							type="text">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<%
							int ID = Integer.parseInt(rs.getString(13));
									String sql1 = "select *from tblPayment where PAY_PAYMENTID =?";
									PreparedStatement ps1 = con.prepareStatement(sql1);
									ps1.setInt(1, ID);
									ResultSet rs1 = ps1.executeQuery();
						%>
						<%
							if (rs1.next()) {
						%>

						<label for="paymentId">Payment Method</label><br> <input
							class="form-control" readonly type="text"
							value="<%=rs1.getString(2)%>">
					</div>
				</div>
			</div>
			<%
				}
			%>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputtypesgoods">Types Goods</label> <input
							class="form-control" readonly value="<%=rs.getString(15)%>"
							name="Typesgoods" id="exampleInputtypesgoods" type="text"
							aria-describedby="typesgoodsHelp" placeholder="Enter typesgoods">
					</div>
				</div>

				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputURL">URL</label> <input
							class="form-control" readonly value="<%=rs.getString(12)%>"
							name="URL" id="exampleInputURL" type="number"
							aria-describedby="URLHelp" placeholder="Enter URL">
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputNumber">Phone</label> <input
							class="form-control" readonly value="<%=rs.getString(10)%>"
							name="Phone" id="exampleInputNumber" type="number"
							aria-describedby="phoneHelp" placeholder="Enter phone">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputEmail">Email</label> <input
							class="form-control" value="<%=rs.getString(11)%>" name="Email"
							id="exampleInputPhone" readonly type="email"
							aria-describedby="emailHelp" placeholder="Enter email">
					</div>
				</div>
			</div>
		</form>
		<%
			}
		%>
		<jsp:include page="admin_footer.jsp"></jsp:include>
		<%
			}
		%>