
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
		ResultSet rs = d.productEdit(Product);
%>

<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="index.html">Edit
					product</a></li>
		</ol>
		<%
			if (rs.next()) {
		%>

		<form action="UpdateProduct">
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">

						<label for="exampleInputName">Product name</label> <input
							class="form-control" value="<%=rs.getString(2)%>"
							id="exampleInputProductName" type="text"
							aria-describedby="ProductNameHelp" name="ProductName"
							placeholder="Enter ProductName">
					</div>
				</div>
				<div class="col-lg-6">
					<label for="exampleProductID">Product ID</label> <input
						class="form-control" value="<%=rs.getString(1)%>"
						id="exampleInputProductID" type="text"
						aria-describedby="ProductNameHelp" name="ProductID"
						readonly="readonly">

				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputsupplierId">SupplierId</label> <input
							class="form-control" value="<%=rs.getString(3)%>"
							id="exampleInputsupplierId" type="text"
							aria-describedby="supplierIdHelp" name="SupplierId"
							placeholder="SupplierId" readonly="readonly">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputproductiondescreption">ProductionDescreption</label>

						<textarea rows="2" cols="5" id="productDescription"
							class="form-control" name="productDescription">
							<%=rs.getString(4)%>
							</textarea>

					</div>
				</div>

			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputcategoryId">CategoryId</label> <input
							class="form-control" id="exampleInputCategoryId"
							name="CategoryId" type="text" aria-describedby="categoryIdHelp"
							value="<%=rs.getString(5)%>" placeholder="categoryId">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputQuatityperunit">Quatityperunit</label> <input
							class="form-control" id="exampleInputQuatityperunit"
							value="<%=rs.getString(6)%>" name="Quatityperunit" type="text"
							aria-describedby="quatityperunitHelp"
							placeholder="Quatityperunit">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputunitprice">Unitprice</label> <input
							class="form-control" value="<%=rs.getString(7)%>"
							id="exampleInputunitprice" name="Unitprice" type="text"
							aria-describedby="unitpriceHelp" placeholder="Unitprice">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputDiscount">Discount</label> <input
							class="form-control" value="<%=rs.getString(11)%>"
							id="exampleInputDiscount" type="text" name="Discount"
							aria-describedby="DiscountHelp" placeholder="Discount">
					</div>
				</div>


				<!-- <div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputMSRP">MSRP</label> <input
							class="form-control" value="<%=rs.getString(8)%>"
							id="exampleInputMSRP" type="text" aria-describedby="MSRPHelp"
							placeholder="MSRP" name="MSRP">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputAvailable_size">Available_size</label> <input
							class="form-control" value="<%=rs.getString(9)%>"
							id="exampleInputAvailable_size" name="Availablesize" type="text"
							aria-describedby="Available_sizeHelp"
							placeholder="Available_size">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputAvailable_colors">Available_colors</label>
						<input class="form-control" value="<%=rs.getString(10)%>"
							id="exampleInputAvailable_colors" type="text"
							aria-describedby="Available_colorsHelp" name="Availablecolors"
							placeholder="Available_colors">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputDiscount">Discount</label> <input
							class="form-control" value="<%=rs.getString(11)%>"
							id="exampleInputDiscount" type="text" name="Discount"
							aria-describedby="DiscountHelp" placeholder="Discount">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitWeight">UnitWeight</label> <input
							class="form-control" value="<%=rs.getString(12)%>"
							id="exampleInputUnitWeight" type="text" name="UnitWeight"
							aria-describedby="UnitWeightHelp" placeholder="UnitWeight">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitSinstock">UnitSinstock</label> <input
							class="form-control" value="<%=rs.getString(13)%>"
							id="exampleInputUnitSinstock" type="text" name="UnitSinstock"
							aria-describedby="UnitSinstockHelp" placeholder="UnitSinstock">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputUnitSonorder">UnitSonorder</label> <input
							class="form-control" value="<%=rs.getString(14)%>"
							id="exampleInputUnitSonorder" type="text" name="UnitSonorder"
							aria-describedby="UnitSonorderHelp" placeholder="UnitSonorder">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputPecorder_Level">Recorder_Level</label> <input
							class="form-control" value="<%=rs.getString(15)%>"
							id="exampleInputPecorder_Level" type="text" name="Pecorder_Level"
							aria-describedby="Pecorder_LevelHelp"
							placeholder="Pecorder_Level">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputProduct_Available">Product_Available</label>
						<input class="form-control" value="<%=rs.getString(16)%>"
							id="exampleInputProduct_Available" name="Product_Available"
							type="text" aria-describedby="Product_AvailableHelp"
							placeholder="Product_Available">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputDiscount_Available">Discount_Available</label>
						<input class="form-control" value="<%=rs.getString(17)%>"
							id="exampleInputDiscount_Available" name="Discount_Available"
							type="text" aria-describedby="Discount_AvailableHelp"
							placeholder="Discount_Available">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputCurrentOrder">CurrentOrder</label> <input
							class="form-control" value="<%=rs.getString(18)%>"
							id="exampleInputCurrentOrder" type="text" name="CurrentOrder"
							aria-describedby="CurrentOrderHelp" placeholder="CurrentOrder">
					</div>
				</div>-->
			</div>
			<input type="submit" class="btn btn-success btn-block" value="Update">

		</form>
		<%
			}
		%>

		<jsp:include page="admin_footer.jsp"></jsp:include>
		<%
			}
		%>