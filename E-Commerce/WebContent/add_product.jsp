
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
		PreparedStatement ps = null;// for category
		PreparedStatement ps1 = null; // for subcategory

		String sql, sqlSubCategory;
		ResultSet rs; // category
		ResultSet rs1; // sub category

		sql = "select *from tblCategory";
		sqlSubCategory = "select *from tblSubCategory";

		ps = con.prepareStatement(sql);
		ps1 = con.prepareStatement(sqlSubCategory);

		rs = ps.executeQuery();
		rs1 = ps1.executeQuery();
%>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="add_product.jsp">Add
					product</a></li>
		</ol>
		<form action="AddProduct" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputcategoryId">CategoryName</label> <select
							class="form-control" name="category" id="category">
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
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputcategoryId">SubCategory</label> <select
							class="form-control" name="subcategory" id="subcategory">
							<option>Select Category Name</option>
							<%
								while (rs1.next()) {
							%>
							<option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)%></option>
							<%
								}
							%>
						</select>
					</div>
				</div>

			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">

						<label for="exampleInputName">Product Name</label> <input
							class="form-control" id="exampleInputProductName" type="text"
							aria-describedby="ProductNameHelp"
							placeholder="Enter ProductName" name="productName">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputQuatityperunit">Quatity Per Unit</label> <input
							class="form-control" id="exampleInputQuatityperunit" type="text"
							aria-describedby="quatityperunitHelp"
							placeholder="Quatityperunit" name="quantityperUnit">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputsupplierId">Supplier ID</label> <input
							class="form-control" id="exampleInputsupplierId" type="text"
							aria-describedby="supplierIdHelp" placeholder="SupplierId"
							name="supplierID">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputproductiondescreption">Production
							Descreption</label>
						<textarea rows="2" cols="5" class="form-control"
							name="productDescription"></textarea>

					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputunitprice">Unit Price</label> <input
							class="form-control" id="exampleInputunitprice" type="text"
							aria-describedby="unitpriceHelp" placeholder="Unitprice"
							name="unitPrice">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputPicture">Picture</label> <input
							class="form-control" id="exampleInputPicture" type="file"
							aria-describedby="Picture" name="file">
					</div>
				</div>
			</div>
			<input type="submit" value="Add" class="btn btn-block btn-success">
		</form>
	</div>
</div>
<script type="text/javascript">
	$category = $('#category');
	// var v=$pcategory.attr("selectedIndex");

	$category.change(function() {
		var x = document.getElementById("category").selectedIndex;
		var v = $("#category").val();
		//alert("index is "+x);
		$.ajax({
			type : "GET",
			url : "SubCategoryPopup",
			data : {
				category : $("#category").val()
			},
			success : function(responseText) {
				//      	alert("response is ready");
				$('#subcategory').html(responseText);
				;
			}
		});
	});
</script>
<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>