
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
			<li class="breadcrumb-item"><a href="edit_customer.jsp">Edit
					Customer</a></li>
		</ol>
		<form>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputName">First name</label> <input
							class="form-control" id="exampleInputName" type="text"
							aria-describedby="nameHelp" placeholder="Enter first name">
					</div>
					<div class="col-md-6">
						<label for="exampleInputLastName">Last name</label> <input
							class="form-control" id="exampleInputLastName" type="text"
							aria-describedby="nameHelp" placeholder="Enter last name">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exaampleInputAddress1">Address1</label>

						<textarea rows="2" cols="2" class="form-control"
							placeholder="Enter address1" name="address1">
						
						</textarea>

					</div>
					<div class="col-md-6">
						<label for="exampleInputaddress2">Address2</label>
						<textarea rows="2" cols="2" class="form-control"
							placeholder="Enter address2" name="address2">
						
						</textarea>

					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="country">City</label><br /> <select
							class="rounded form-control " id="City">
							<option value="-1">Select City</option>

							<option value="india ">Muzaffarpur</option>
							<option value="africa">Patna</option>
							<option value="pakishtan">Bangalore</option>
							<option value="australia">Lagos</option>
							<option value="canada">Cairo</option>
							<option value="usa">Washington</option>
							<option value="usa">Greenville</option>
							<option value="usa">Franklin</option>
							<option value="usa">Melbourne</option>
							<option value="usa">Sydeny</option>
							<option value="usa">Brisbane</option>
							<option value="usa">Perth</option>
							<option value="usa">Melbourne</option>

						</select>
					</div>



					<div class="col-md-6">
						<label for="country">State</label><br /> <select
							class="rounded form-control " id="State">
							<option value="-1">Select State</option>

							<option value="india ">Bihar</option>
							<option value="africa">UP</option>
							<option value="pakishtan">Mp</option>
							<option value="australia">Delhi</option>
							<option value="canada">kolkata</option>
							<option value="usa">Benin</option>
							<option value="usa">Mail</option>
							<option value="usa">Niger</option>
							<option value="usa">Alabama</option>
							<option value="usa">Arizona</option>
							<option value="usa">Nunavut</option>
							<option value="usa">Ontario</option>
							<option value="usa">Hobort</option>
							<option value="usa">Malborin</option>
							<option value="usa">Adelaide</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="exampleInputPostalCode">PostalCode</label> <input
							class="form-control" id="exampleInputPostalCode" type="number"
							aria-describedby="PostalCodeHelp" placeholder="Enter postalcode">
					</div>


					<div class="col-md-6">
						<label for="country">Country</label><br /> <select
							class="rounded form-control " id="country">
							<option value="-1">Select Country</option>

							<option value="india ">India</option>
							<option value="africa">Africa</option>
							<option value="pakishtan">Pakishtan</option>
							<option value="australia">Australia</option>
							<option value="canada">Canada</option>
							<option value="usa">USA</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputPhone">Phone-no.</label> <input
							class="form-control" id="examplePhone" type="text" maxlength="10"
							placeholder="Enter phonenumber">
					</div>
					<div class="col-md-6">
						<label for="exampleInputEmail1">Email address</label> <input
							class="form-control" id="exampleInputEmail1" type="email"
							placeholder="Enter email">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="exampleInputCardName">Card Name</label> <input
							class="form-control" id="exampleInputCardName" type="text"
							placeholder="Enter Cardname">
					</div>
					<div class="col-md-6">
						<label for="exampleInputCardType">Card Type</label> <input
							class="form-control" id="exampleInputCardType" type="text"
							placeholder="Enter cardtype">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputCardExpmon">Card Expmon</label> <input
							class="form-control" id="exampleInputCardExpmon" type="text"
							placeholder="Enter CardExpmon">
					</div>
					<div class="col-md-6">
						<label for="exampleInputCardExpyr">Card Expyr</label> <input
							class="form-control" id="exampleInputCardExpyr" type="text"
							placeholder="Enter CardExpyr">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputBillingAddress1">Billing Address1</label>
						<input class="form-control" id="exampleInputBillingAddress1"
							type="text" placeholder="Enter Billing Address1">
					</div>
					<div class="col-md-6">
						<label for="exampleInputBillingAddress2">Billing Address2</label>
						<input class="form-control" id="exampleInputBillingAddress2"
							type="text" placeholder="Enter BillingAddress2">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="country">BillingCity</label><br /> <select
							class="rounded form-control " id="BillingCity">
							<option value="-1">Select BillingCity</option>

							<option value="india ">Muzaffarpur</option>
							<option value="africa">Patna</option>
							<option value="pakishtan">Bangalore</option>
							<option value="australia">Lagos</option>
							<option value="canada">Cairo</option>
							<option value="usa">Washington</option>
							<option value="usa">Greenville</option>
							<option value="usa">Franklin</option>
							<option value="usa">Melbourne</option>
							<option value="usa">Sydeny</option>
							<option value="usa">Brisbane</option>
							<option value="usa">Perth</option>
							<option value="usa">Melbourne</option>

						</select>
					</div>
					<div class="col-md-6">

						<label for="country">BillingState</label><br /> <select
							class="rounded form-control " id="BillingState">
							<option value="-1">Select BillingState</option>

							<option value="india ">Bihar</option>
							<option value="africa">UP</option>
							<option value="pakishtan">Mp</option>
							<option value="australia">Delhi</option>
							<option value="canada">kolkata</option>
							<option value="usa">Benin</option>
							<option value="usa">Mail</option>
							<option value="usa">Niger</option>
							<option value="usa">Alabama</option>
							<option value="usa">Arizona</option>
							<option value="usa">Nunavut</option>
							<option value="usa">Ontario</option>
							<option value="usa">Hobort</option>
							<option value="usa">Malborin</option>
							<option value="usa">Adelaide</option>
						</select>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">
						<label for="exampleInputBillingPostalCode">Billing
							PostalCode</label> <input class="form-control"
							id="exampleInputBillingPostalCode" type="number"
							aria-describedby="BillingPostalCodeHelp"
							placeholder="Enter Billingpostalcode">
					</div>
					<div class="col-md-6">
						<label for="country">Country</label><br /> <select
							class="rounded form-control " id="country">
							<option value="-1">Select Country</option>

							<option value="india ">India</option>
							<option value="africa">Africa</option>
							<option value="pakishtan">Pakishtan</option>
							<option value="australia">Australia</option>
							<option value="canada">Canada</option>
							<option value="usa">USA</option>
						</select>
					</div>
				</div>
			</div>

			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="exampleInputShipAddress">Ship Address</label> <input
							class="form-control" id="exampleInputShipAddress" type="text"
							aria-describedby="ShipAddressHelp"
							placeholder="Enter ShipAddress">
					</div>
					<div class="col-md-6">
						<label for="country">ShipCity</label><br /> <select
							class="rounded form-control " id="ShipCity">
							<option value="-1">Select ShipCity</option>

							<option value="india ">Muzaffarpur</option>
							<option value="africa">Patna</option>
							<option value="pakishtan">Bangalore</option>
							<option value="australia">Lagos</option>
							<option value="canada">Cairo</option>
							<option value="usa">Washington</option>
							<option value="usa">Greenville</option>
							<option value="usa">Franklin</option>
							<option value="usa">Melbourne</option>
							<option value="usa">Sydeny</option>
							<option value="usa">Brisbane</option>
							<option value="usa">Perth</option>
							<option value="usa">Melbourne</option>

						</select>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="country">ShipState</label><br /> <select
							class="rounded form-control " id="ShipState">
							<option value="-1">Select ShipState</option>

							<option value="india ">Bihar</option>
							<option value="africa">UP</option>
							<option value="pakishtan">Mp</option>
							<option value="australia">Delhi</option>
							<option value="canada">kolkata</option>
							<option value="usa">Benin</option>
							<option value="usa">Mail</option>
							<option value="usa">Niger</option>
							<option value="usa">Alabama</option>
							<option value="usa">Arizona</option>
							<option value="usa">Nunavut</option>
							<option value="usa">Ontario</option>
							<option value="usa">Hobort</option>
							<option value="usa">Malborin</option>
							<option value="usa">Adelaide</option>
						</select>
					</div>
					<div class="col-md-6">

						<label for="exampleInputShipPostalCode">Ship Postal Code</label> <input
							class="form-control" id="exampleInputShipPostalCode"
							type="number" aria-describedby="ShipPostalCodeHelp"
							placeholder="Enter ShipPostalCode">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="form-row">
					<div class="col-md-6">

						<label for="exampleInputShipCountry">Ship Country</label> <input
							class="form-control" id="exampleInputShipCountry" type="text"
							aria-describedby="ShipCountryHelp"
							placeholder="Enter ShipCountry">
					</div>
					<div class="col-md-6">
						<label for="exampleInputPassword1">Password</label> <input
							class="form-control" id="exampleInputPassword1" type="password"
							placeholder="Password">
					</div>
				</div>
			</div>
			<a class="btn btn-primary btn-block" href="login.html">Register</a>
			<div class="text-center">
				<a class="d-block small mt-3" href="login.html">Login Page</a> <a
					class="d-block small" href="forgot-password.html">Forgot
					Password?</a>
			</div>
		</form>
	</div>
</div>
</div>













<jsp:include page="admin_footer.jsp"></jsp:include>
<%
	}
%>