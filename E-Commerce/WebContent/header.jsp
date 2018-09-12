<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="bean.Customer"%>
<%@page import="daou.CustomerDao"%>
<%
	Connection con = MyConnection.getConnection();
	String sql = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Net Mall</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-autocomplete/1.0.7/jquery.auto-complete.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/themes/base/jquery-ui.css"
	type="text/css" media="all" />
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.5.min.js"
	type="text/javascript"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"
	type="text/javascript"></script>
<!--/tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="NetMall Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="text/javascript" src="js/jquery.js"></script>
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
	//jquery start for validation
	$(document).ready(function() {
		
		
		
		//name validation
		
		
		$('#txtFirstName').keydown(function(e) {
			if (e.shiftKey || e.ctrlKey || e.altKey) {
	              e.preventDefault();
	          } else {
	              var key = e.keyCode;
	              if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
	                  e.preventDefault();
	              }
	          }
		});
		//validation mobile number
		 $("#validMobile").keydown(function (e) {
		        // Allow: backspace, delete, tab, escape, enter and .
		        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
		             // Allow: Ctrl+A, Command+A
		            (e.keyCode === 65 && (e.ctrlKey === true || e.metaKey === true)) || 
		             // Allow: home, end, left, right, down, up
		            (e.keyCode >= 35 && e.keyCode <= 40)) {
		                 // let it happen, don't do anything
		                 return;
		        }
		        // Ensure that it is a number and stop the keypress
		        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105))) {
		            e.preventDefault();
		        }
		    });
	});
	//password validation
	function validatePasswordRuleSet(obj) {
			var password = obj.value;
			var cu = 0;
			var cl = 0;
			var cs = 0;
			var cn=0;
			var symbols = "@#$%&*!";
			for (var i = 0; i < password.length; i++) {
				if (password.charCodeAt(i) >= 65
						&& password.charCodeAt(i) <= 90)
					cu++;
				if (password.charCodeAt(i) >= 48
						&& password.charCodeAt(i) <=57)
					cn++;
				if (password.charCodeAt(i) >= 97
						&& password.charCodeAt(i) <= 122)
					cl++;
				if (symbols.indexOf(password.charAt(i)) != -1)
					cs++;

			}
			if (cu > 0 && cn> 0 && cl > 0 && cs > 0 && password.length >= 8) {
				document.getElementById("pass").innerHTML = "password match the rule set";
				document.getElementById("pass").style.color = "green";
				pass = password;
			} else {
				document.getElementById("pass").innerHTML = "Must contain upper case special symbols and Numbers(!,@,#,$,%,&,*,_)";
				document.getElementById("pass").style.color = "red";

			}

		}
		function validateConfirmPassword(obj) {
			var cpass = obj.value;
			if (pass == cpass && pass != null && pass != "") {
				document.getElementById("pass1").innerHTML = "password confirm";
				document.getElementById("pass1").style.color = "green";

			} else {
				document.getElementById("pass1").innerHTML = "Password not Confirm..";
				document.getElementById("pass1").style.color = "green";

			}
		}
		

</script>
<!--//tags -->
<link href="User/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="User/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="User/css/font-awesome.css" rel="stylesheet">
<!--pop-up-box-->
<link href="User/css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!--//pop-up-box-->
<!-- price range -->
<link rel="stylesheet" type="text/css" href="User/css/jquery-ui1.css">
<!-- fonts -->
<link
	href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
	rel="stylesheet">
</head>

<body>
	<!-- top-header -->
	<div class="header-most-top">
		<p>NetMall Offer Zone Top Deals & Discounts</p>
	</div>
	<!-- //top-header -->
	<!-- header-bot-->
	<div class="header-bot">
		<div class="header-bot_inner_wthreeinfo_header_mid">
			<!-- header-bot-->
			<div class="col-md-4 logo_agile">
				<h1>
					<a href="index.jsp"> <span>Net</span>Mall <!-- <span>S</span>hoppy -->
						<img src="User/images/logo2.png" alt=" ">
					</a>
				</h1>
			</div>
			<!-- header-bot -->
			<div class="col-md-8 header">
				<!-- header lists -->
				<ul>
					<li><span class="fa fa-phone" aria-hidden="true"></span>
						7654131817</li>

					<%
						Customer customer = new Customer();
						//System.out.println("Value of UserID :" +session.getAttribute("id"));
						if (session.getAttribute("id") == null) {
					%>
					<li><a href="#" data-toggle="modal" data-target="#myModal1">
							<span class="fa fa-unlock-alt" aria-hidden="true"></span> Log In
					</a></li>

					<li><a href="#" data-toggle="modal" data-target="#myModal2">
							<span class="fa fa-pencil-square-o" aria-hidden="true"></span>
							Sign Up
					</a></li>
					<%
						} else {
							response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
							response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
							response.setDateHeader("Expires", 0);//Proxies
					%>

					<li class="dropdown"><a class="nav-stylehead dropdown-toggle"
						href="#" data-toggle="dropdown">My Profile <b class="caret"></b>
					</a>

						<ul class="dropdown-menu">

							<li><a style="display: block;" href="profile.jsp">My
									Profile</a></li>
							<li><a style="display: block;" href="myorder.jsp">My
									Order</a></li>
						</ul></li>

					<li><a href="LogOut" role="submit"> <span
							class="fa fa-sign-out" aria-hidden="true"></span> LogOut
					</a></li>
					<%
						}
					%>
				</ul>
				<!-- //header lists -->
				<!-- search -->
				<div class="agileits_search">
					<form action="#" method="post">
						<div class="input-group">


							<input type="text" list="Product" class="form-control"
								style="height: 42px; background-color: white; z-index: auto;"
								placeholder="Search through Product Name brands and others"
								id="search" name="search" autocomplete="on">

							<datalist id="Product">
								<%
									String sq = "select *from tblSubCategory order by SUB_CAT_NAME";
									PreparedStatement pro = con.prepareStatement(sq);
									ResultSet rp = pro.executeQuery();
									while (rp.next()) {
								%>
								<option id="<%=rp.getString(3)%>" value="<%=rp.getString(2)%>"></option>
								<%
									String s = "select distinct P_Name,P_CATEGORYID from tblProduct where P_SUB_CATEGORYID=?";
										PreparedStatement pros = con.prepareStatement(s);
										pros.setInt(1, Integer.parseInt(rp.getString(1)));
										ResultSet r = pros.executeQuery();
										while (r.next()) {
								%>
								<option id="<%=r.getString(2)%>" value="<%=r.getString(1)%>"></option>
								<%
									}
								%>
								<%
									}
								%>
							</datalist>

							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="glyphicon glyphicon-search"></i>
								</button>
							</div>
						</div>

					</form>
				</div>
				<!-- //search -->
				<!-- cart details -->
				<div class="top_nav_right">
					<div class="wthreecartaits wthreecartaits2 cart cart box_1">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart"> <input
								type="hidden" name="display" value="1">
							<button class="w3view-cart" type="submit" name="submit" value="">
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							</button>
						</form>
					</div>
				</div>
				<!-- //cart details -->
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- signin Model -->
	<!-- Modal1 -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Log In</h3>
						<p>
							Sign In now, Let's start your Net Mall Shopping. Don't have an
							account? <a href="#" data-toggle="modal" data-target="#myModal2">
								Sign Up Now</a>
						</p>
						<form action="Login" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" placeholder="Email" name="email"
									required="">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password"
									required="">
							</div>
							<input type="submit" value="Log in">
						</form>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //signin Model -->
	<!-- signup Model -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body modal-body-sub_agile">
					<div class="main-mailposi">
						<span class="fa fa-envelope-o" aria-hidden="true"></span>
					</div>
					<div class="modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up</h3>
						<p>Get access to your Orders, Wishlist and Recommendations</p>
						<form action="Signin" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" id="txtFirstName" placeholder="Name"
									name="name" required="" title="Name should not be Blank">
							</div>
							<div class="styled-input">
								<input id="validMobile" type="text" maxlength="10"
									placeholder="Mobile-No" name="mobile" required=""
									pattern="[6789][0-9]{9}"
									title="Mobile number is not valid format">
							</div>

							<div class="styled-input">
								<input type="email" placeholder="E-mail" name="email">
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Password" name="password"
									id="password1" required=""
									onblur="validatePasswordRuleSet(this)">
								<div></div>
							</div>
							<div class="styled-input">
								<input type="password" placeholder="Confirm Password"
									name="Confirm Password" id="password2"
									onblur="validateConfirmPassword(this)" required="">
								<div>
									<label id="pass1"></label>
								</div>
							</div>
							<input type="submit" value="Sign Up">
						</form>
						<p>
							<a href="#">By clicking register, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
			<!-- //Modal content-->
		</div>
	</div>
	<!-- //Modal2 -->
	<!-- //signup Model -->
	<!-- //header-bot -->
	<!-- navigation -->
	<div class="ban-top">
		<div class="container-fluid">
			<div class="agileits-navi_search">
				<form action="#" method="post">
					<select id="agileinfo-nav_search" onchange="searchProduct()"
						name="CategoryID">

						<%
							sql = "select *from tblCategory";
							ps = con.prepareStatement(sql);
							rs = ps.executeQuery();
						%>
						<option value="-1">All Categories</option>
						<%
							while (rs.next()) {
						%>
						<option value="<%=rs.getString(1)%>">
							<%=rs.getString(2)%>
						</option>
						<%
							}
						%>
					</select>
				</form>
			</div>
			<div class="top_nav_left">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1"
								aria-expanded="false">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse menu--shylock"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav menu__list">
								<li class="active"><a class="nav-stylehead"
									href="index.jsp">Home <span class="sr-only">(current)</span>
								</a></li>
								<li class=""><a class="nav-stylehead" href="about.jsp">About
										Us</a></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle nav-stylehead" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Kitchen
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-4 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="product.jsp">Bakery</a></li>
													<li><a href="product.jsp">Baking Supplies</a></li>
													<li><a href="product.jsp">Coffee, Tea & Beverages</a>
													</li>
													<li><a href="product.jsp">Dried Fruits, Nuts</a></li>
													<li><a href="product.jsp">Sweets, Chocolate</a></li>
													<li><a href="product.jsp">Spices & Masalas</a></li>
													<li><a href="product.jsp">Jams, Honey & Spreads</a></li>
												</ul>
											</div>
											<div class="col-sm-4 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="product.jsp">Pickles</a></li>
													<li><a href="product.jsp">Pasta & Noodles</a></li>
													<li><a href="product.jsp">Rice, Flour & Pulses</a></li>
													<li><a href="product.jsp">Sauces & Cooking Pastes</a>
													</li>
													<li><a href="product.jsp">Snack Foods</a></li>
													<li><a href="product.jsp">Oils, Vinegars</a></li>
													<li><a href="product.jsp">Meat, Poultry & Seafood</a>
													</li>
												</ul>
											</div>
											<div class="col-sm-4 multi-gd-img">
												<img src="images/nav.png" alt="">
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class="dropdown"><a href="#"
									class="dropdown-toggle nav-stylehead" data-toggle="dropdown"
									role="button" aria-haspopup="true" aria-expanded="false">Household
										<span class="caret"></span>
								</a>
									<ul class="dropdown-menu multi-column columns-3">
										<div class="agile_inner_drop_nav_info">
											<div class="col-sm-6 multi-gd-img">
												<ul class="multi-column-dropdown">

													<li><a href="product2.jsp">Kitchen & Dining</a></li>
													<li><a href="product2.jsp">Detergents</a></li>
													<li><a href="product2.jsp">Utensil Cleaners</a></li>
													<li><a href="product2.jsp">Floor & Other Cleaners</a>
													</li>
													<li><a href="product2.jsp">Disposables, Garbage
															Bag</a></li>
													<li><a href="product2.jsp">Repellents & Fresheners</a></li>
													<li><a href="product2.jsp"> Dishwash</a></li>
												</ul>
											</div>
											<div class="col-sm-6 multi-gd-img">
												<ul class="multi-column-dropdown">
													<li><a href="product2.jsp">Pet Care</a></li>
													<li><a href="product2.jsp">Cleaning Accessories</a></li>
													<li><a href="product2.jsp">Pooja Needs</a></li>
													<li><a href="product2.jsp">Crackers</a></li>
													<li><a href="product2.jsp">Festive Decoratives</a></li>
													<li><a href="product2.jsp">Plasticware</a></li>
													<li><a href="product2s">Home Care</a></li>
												</ul>
											</div>
											<div class="clearfix"></div>
										</div>
									</ul></li>
								<li class=""><a class="nav-stylehead" href="faqs.jsp">Faqs</a>
								</li>
								<li class="dropdown"><a
									class="nav-stylehead dropdown-toggle" href="#"
									data-toggle="dropdown">Items <b class="caret"></b>
								</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-haspopup="true">Men</a>
										</li>
										<li><a href="#">Women</a></li>
										<li><a href="#">Baby & Kids</a></li>
										<li><a href="#">Electronics</a></li>

									</ul></li>
								<li class=""><a class="nav-stylehead" href="contact.jsp">Contact</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	var ID;
	function searchProduct() {
	   ID= document.getElementById("agileinfo-nav_search").value;
	   window.location.href="product.jsp?id="+ID;
	}
	
	</script>
	<script>
		$(document).ready(function() {
			/* $(function() {
				$("#search").autocomplete({
					source : function(request, response) {
						$.ajax({
							url : "SearchControler",
							type : "GET",
							data : {
								term : request.term
							},
							dataType : "json",
							success : function(data) {
								response(data);
							}
						});
					}
				});
			}); */
			$(function() {
				  $('#search').change('input',function() {
				    var opt = $('option[value="'+$(this).val()+'"]');
				    var ID=opt.attr('id');
				    var ProductName=$("#search").val();
				    console.log(ID);
				    console.log(ProductName);
				    window.location.href="searchProduct.jsp?id="+ID+"&pname="+ProductName;
				    
				  });
				});
			/* $("#search").change(function() {
				alert($("#search").val());
			}); */
			});
	</script>