
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revaalidate"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setHeader("Expires", "0"); //Proxies
	if (session.getAttribute("email") == null) {
		response.sendRedirect("login.jsp");
	} else {
%>

<jsp:include page="admin_header.jsp"></jsp:include>
<div class="content-wrapper">
	<div class="container-fluid">
		<!-- Breadcrumbs-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="shipper.jsp">Shipper</a></li>
		</ol>
		<div class="row">
			<div class="container">
				<form>
					<div class="row">
						<div class="col-lg-6">
							<div class="form-group">

								<label for="exampleInputShipperId">ShipperId</label> <input
									class="form-control" id="exampleInputShipperId" type="text"
									aria-describedby="ShipperIdHelp" placeholder="Enter ShipperId">
							</div>
						</div>
						<div class="col-lg-6">

							<div class="from-group">
								<label for="exampleInputCompanyName">CompanyName</label> <input
									class="form-control" id="exampleInputCompanyName" type="text"
									aria-describedby="CompanyNameHelp"
									placeholder="Enter CompanyName">

							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6"></div>
						<div class="col-lg-6">

							<button type="button" class="btn btn-success col-2 mr-1">OK</button>
							<button type="button" class="btn btn-danger col-2 mr-1">Cancel</button>
							<button type="button" class="btn btn-info col-2 ">Reset</button>
						</div>
					</div>

				</form>
			</div>
		</div>

	</div>
</div>










<jsp:include page="admin_footer.jsp"></jsp:include>

<%
	}
%>