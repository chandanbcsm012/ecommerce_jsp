
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<%@page import="daou.ProductDao"%>
<%@page import="bean.Product"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="admin_header.jsp"></jsp:include>
<%
	int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("id = " + id);
		Connection con = MyConnection.getConnection();
		Product Product = new Product();
		Product.setP_productid(id);
		ProductDao d = new ProductDao();
		ResultSet rs = d.productDetail(Product);
%>

<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">view
					product details</a></li>
		</ol>
		<%
			if (rs.next()) {
		%>
		<form>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">

						<label for="exampleInputName">Product name</label> <input
							class="form-control" readonly value="<%=rs.getString(2)%>"
							id="exampleInputProductName" type="text"
							aria-describedby="ProductNameHelp"
							placeholder="Enter ProductName">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputsupplierId">SupplierId</label> <input
							class="form-control" value="<%=rs.getString(3)%>"
							name="SupplierId" readonly id="exampleInputsupplierId"
							type="text" aria-describedby="supplierIdHelp"
							placeholder="SupplierId">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputproductiondescreption">ProductionDescreption</label>
						<textarea rows="3" cols="5" name="ProductionDescreption" readonly
							class="form-control" name="address1"><%=rs.getString(4)%></textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputcategoryId">CategoryId</label> <input
							class="form-control" value="<%=rs.getString(5)%>"
							name="CategoryId" readonly id="exampleInputCategoryId"
							type="text" aria-describedby="categoryIdHelp"
							placeholder="categoryId">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputQuatityperunit">Quatityperunit</label> <input
							class="form-control" readonly value="<%=rs.getString(6)%>"
							name="Quatityperunit" id="exampleInputQuatityperunit" type="text"
							aria-describedby="quatityperunitHelp"
							placeholder="Quatityperunit">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputunitprice">Unitprice</label> <input
							class="form-control" readonly value="<%=rs.getString(7)%>"
							name="Unitprice" name="Unitprice" id="exampleInputunitprice"
							type="text" aria-describedby="unitpriceHelp"
							placeholder="Unitprice">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputMSRP">MSRP</label> <input
							class="form-control" value="<%=rs.getString(8)%>" name="MSRP"
							readonly id="exampleInputMSRP" type="text"
							aria-describedby="MSRPHelp" placeholder="MSRP">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputAvailable_size">Available_size</label> <input
							class="form-control" readonly value="<%=rs.getString(9)%>"
							name="Availablesize" id="exampleInputAvailable_size" type="text"
							aria-describedby="Available_sizeHelp"
							placeholder="Available_size">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputAvailable_colors">Available_colors</label>
						<input class="form-control" value="<%=rs.getString(10)%>" readonly
							id="exampleInputAvailable_colors" type="text"
							aria-describedby="Available_colorsHelp" name="Availableize"
							placeholder="Available_colors">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputDiscount">Discount</label> <input
							class="form-control" readonly value="<%=rs.getString(11)%>"
							name="Discount" id="exampleInputDiscount" type="text"
							aria-describedby="DiscountHelp" placeholder="Discount">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitWeight">UnitWeight</label> <input
							class="form-control" readonly value="<%=rs.getString(12)%>"
							id="exampleInputUnitWeight" type="text"
							aria-describedby="UnitWeightHelp" name="Discount"
							placeholder="UnitWeight">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitSinstock">UnitSinstock</label> <input
							class="form-control" readonly value="<%=rs.getString(13)%>"
							id="exampleInputUnitSinstock" type="text"
							aria-describedby="UnitSinstockHelp" name="UnitSinstock"
							placeholder="UnitSinstock">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitSonorder">UnitSonorder</label> <input
							class="form-control" readonly value="<%=rs.getString(14)%>"
							id="exampleInputUnitSonorder" type="text"
							aria-describedby="UnitSonorderHelp" name="UnitSonorder"
							placeholder="UnitSonorder">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputPecorder_Level">Pecorder_Level</label> <input
							class="form-control" readonly value="<%=rs.getString(15)%>"
							name="PecorderLevel" id="exampleInputUnitSinstock" type="text"
							aria-describedby="Pecorder_LevelHelp"
							placeholder="Pecorder_Level">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputProduct_Available">Product_Available</label>
						<input class="form-control" readonly value="<%=rs.getString(16)%>"
							id="exampleInputProduct_Available" name="ProductAvailable"
							type="text" aria-describedby="Product_AvailableHelp"
							placeholder="Product_Available">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputDiscount_Available">Discount_Available</label>
						<input class="form-control" readonly value="<%=rs.getString(17)%>"
							id="exampleInputDiscount_Available" name="Discount_Available"
							type="text" aria-describedby="Discount_AvailableHelp"
							placeholder="Discount_Available">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputCurrentOrder">CurrentOrder</label> <input
							class="form-control" readonly value="<%=rs.getString(18)%>"
							name="CurrentOrder" id="exampleInputCurrentOrder" type="text"
							aria-describedby="CurrentOrderHelp" placeholder="CurrentOrder">
					</div>
				</div>
			</div>

			<a class="btn btn-success btn-block" href="login.html">Submit</a>
		</form>
		<%
			}
		%>
		<jsp:include page="admin_footer.jsp"></jsp:include>
		<%
			}
		%>