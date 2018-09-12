<jsp:include page="admin_header.jsp"></jsp:include>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="order_details.jsp">View
					order details</a></li>
		</ol>
		<form>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputOrderId">OrderId</label> <input
							class="form-control" id="exampleInputOrderId" type="text"
							aria-describedby="typesOrderId" placeholder="Enter OrderId">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputProductId">ProductId</label> <input
							class="form-control" id="exampleInputProductId" type="text"
							aria-describedby="ProductIdHelp" placeholder="Enter ProductId">
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputorderNumber">orderNumber</label> <input
							class="form-control" id="exampleInputpostalcode" type="number"
							aria-describedby="orderNumberHelp"
							placeholder="Enter orderNumber">
					</div>
				</div>
				<div class="col-lg-6">
					<label for="exampleInputprice">price</label> <input
						class="form-control" id="exampleInputprice" type="number"
						aria-describedby="priceHelp" placeholder="Enter price">

				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputQuantily">Quantily</label> <input
							class="form-control" id="exampleInputQuantily" type="text"
							aria-describedby="QuantilyHelp" placeholder="Quantily">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputdiscount">Discount</label> <input
							class="form-control" id="exampleInputDiscount" type="discount"
							aria-describedby="discountHelp" placeholder="discount">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputTotal">Total</label> <input
							class="form-control" id="exampleInputTotal" type="text"
							aria-describedby="TotalHelp" placeholder="Enter Total">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="form-group">
						<label for="exampleInputSize">Size</label> <input
							class="form-control" id="exampleInputSize" type="number"
							aria-describedby="SizeHelp" placeholder="Enter Size">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="exampleInputColor">Color</label> <input
								class="form-control" id="exampleInputColor" type="text"
								aria-describedby="ColorHelp" placeholder="Color">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="form-group">
							<label for="exampleInputfulfilled">fulfilled</label> <input
								class="form-control" id="exampleInputfulfilled" type="text"
								aria-describedby="fulfilledHelp" placeholder="fulfilled">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="form-group">
							<label for="exampleInputShipdate">Shipdate</label> <input
								class="form-control" id="exampleInputShipdate" type="text"
								aria-describedby="ShipdateHelp" placeholder="Enter Shipdate">
						</div>
					</div>
					<div class="col-lg-6"></div>
				</div>
		</form>

		<jsp:include page="admin_footer.jsp"></jsp:include>