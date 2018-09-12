<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%
	Connection con = MyConnection.getConnection();
	PreparedStatement ps = null;
	String sql = null;
	ResultSet rs = null;
%>
<jsp:include page="header.jsp"></jsp:include>
<!-- banner -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1" class=""></li>
		<li data-target="#myCarousel" data-slide-to="2" class=""></li>
		<li data-target="#myCarousel" data-slide-to="3" class=""></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<div class="container">
				<div class="carousel-caption">
					<h3>
						Big <span>Save</span>
					</h3>
					<p>
						Get flat <span>10%</span> Cashback
					</p>
					<a class="button2" href="#">Shop Now </a>
				</div>
			</div>
		</div>
		<div class="item item2">
			<div class="container">
				<div class="carousel-caption">
					<h3>
						Healthy <span>Saving</span>
					</h3>
					<p>
						Get Upto <span>30%</span> Off
					</p>
					<a class="button2" href="index.jsp">Shop Now </a>
				</div>
			</div>
		</div>
		<div class="item item3">
			<div class="container">
				<div class="carousel-caption">
					<h3>
						Big <span>Deal</span>
					</h3>
					<p>
						Get Best Offer Upto <span>20%</span>
					</p>
					<a class="button2" href="index.jsp">Shop Now </a>
				</div>
			</div>
		</div>
		<div class="item item4">
			<div class="container">
				<div class="carousel-caption">
					<h3>
						Today <span>Discount</span>
					</h3>
					<p>
						Get Now <span>40%</span> Discount
					</p>
					<a class="button2" href="#">Shop Now </a>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
<!-- //banner -->

<!-- top Products -->
<div class="ads-grid">
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			Our Top Products <span class="heading-style"> <i></i> <i></i>
				<i></i>
			</span>
		</h3>
		<!-- //tittle heading -->
		<!-- product left -->
		<div class="side-bar col-md-3">
			<div class="search-hotel">
				<h3 class="agileits-sear-head">Search Here..</h3>
				<form action="#" method="post">
					<input type="search" placeholder="Product name..." name="search"
						required=""> <input type="submit" value=" ">
				</form>
			</div>
			<!-- price range -->
			<div class="range">
				<h3 class="agileits-sear-head">Price range</h3>
				<ul class="dropdown-menu6">
					<li>

						<div id="slider-range"></div> <input type="text" id="amount"
						style="border: 0; color: #ffffff; font-weight: normal;" />
					</li>
				</ul>
			</div>
			<!-- //price range -->
			<!-- food preference -->
			<!-- <div class="left-side">
				<h3 class="agileits-sear-head">Food Preference</h3>
				<ul>
					<li><input type="checkbox" class="checked"> <span
						class="span">Vegetarian</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Non-Vegetarian</span></li>
				</ul>
			</div>
			 -->
			<!-- //food preference -->
			<!-- discounts -->
			<div class="left-side">
				<h3 class="agileits-sear-head">Discount</h3>
				<ul>
					<li><input type="checkbox" class="checked"> <span
						class="span">5% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">10% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">20% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">30% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">50% or More</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">60% or More</span></li>
				</ul>
			</div>
			<!-- //discounts -->
			<!-- reviews -->
			<div class="customer-rev left-side">
				<h3 class="agileits-sear-head">Customer Review</h3>
				<ul>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
							aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i>
							<span>5.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star"
							aria-hidden="true"></i> <i class="fa fa-star-o"
							aria-hidden="true"></i> <span>4.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-half-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>3.5</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>3.0</span>
					</a></li>
					<li><a href="#"> <i class="fa fa-star" aria-hidden="true"></i>
							<i class="fa fa-star" aria-hidden="true"></i> <i
							class="fa fa-star-half-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <i
							class="fa fa-star-o" aria-hidden="true"></i> <span>2.5</span>
					</a></li>
				</ul>
			</div>
			<!-- //reviews -->
			<!-- cuisine -->
			<!-- <div class="left-side">
				<h3 class="agileits-sear-head">Cuisine</h3>
				<ul>
					<li><input type="checkbox" class="checked"> <span
						class="span">South American</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">French</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Greek</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Chinese</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Japanese</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Italian</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Mexican</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Thai</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span">Indian</span></li>
					<li><input type="checkbox" class="checked"> <span
						class="span"> Spanish </span></li>
				</ul>
			</div>
			//cuisine
			 -->
			<!-- deals -->
			<div class="deal-leftmk left-side">
				<h3 class="agileits-sear-head">Special Deals</h3>
				<%
					sql = "SELECT P_PRODUCTID,P_NAME,P_UNITPRICE,P_PICTURE, RAND() as record FROM tblProduct ORDER BY record FETCH FIRST 11 ROWS ONLY ";
					ps = con.prepareStatement(sql);
					rs = ps.executeQuery();
					while (rs.next()) {
						String s = rs.getString(4);
						s = s.substring(33);
				%>
				<div class="special-sec1">
					<div class="col-xs-4 img-deals" style="width: 65px; height: 65px;">
						<img class="img-responsive" src="<%=s%>" alt="">
					</div>
					<div class="col-xs-8 img-deal1">
						<h3>
							<a href="single.jsp?id=<%=rs.getString(1)%>"><%=rs.getString(2)%></a>
						</h3>
						<i class="fa fa-inr"></i><%=rs.getString(3)%>

					</div>
					<div class="clearfix"></div>
				</div>
				<%
					}
				%>
			</div>
			<!-- //deals -->
		</div>
		<!-- //product left -->
		<!-- product right -->
		<div class="agileinfo-ads-display col-md-9">
			<div class="wrapper">
				<!-- first section (nuts) -->
				<div class="product-sec1">
					<h3 class="heading-tittle">Household</h3>
					<%
						sql = "SELECT *FROM tblProduct where P_CATEGORYID=? FETCH FIRST 3 ROWS ONLY";
						ps = con.prepareStatement(sql);
						ps.setInt(1, 26);
						rs = ps.executeQuery();
						while (rs.next()) {
							String s = rs.getString(19);
							s = s.substring(33);
					%>
					<div class="col-md-4 product-men"
						style="float: right; margin-top: 10px;">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img class="img-responsive img-thumbnail"
									style="width: 150px; height: 150px;" src="<%=s%>" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.jsp?id=<%=rs.getString(1)%>"
											class="link-product-add-cart">Quick View</a>
									</div>
								</div>
								<span class="product-new-top">New</span>
							</div>
							<div class="item-info-product ">
								<h4>
									<%=rs.getString(2)%>
								</h4>
								<div class="info-product-price">
									<span class="item_price"><i class="fa fa-inr"></i><%=rs.getString(7)%></span>
									<!-- <del>280.00</del> -->
								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="business" value=" " /> <input type="hidden"
												name="item_name" value="<%=rs.getString(2)%>" /> <input
												type="hidden" name="amount" value="<%=rs.getString(1)%>" />
											<input type="hidden" name="discount_amount"
												value="<%=rs.getString(11)%>" /> <input type="hidden"
												name="currency_code" value="INR" /> <input type="hidden"
												name="return" value=" " /> <input type="hidden"
												name="cancel_return" value=" " />
											<%
												if (rs.getInt(6) != 0) {
											%>
											<input type="submit" name="submit" value="Add to cart"
												class="button" />
											<%
												} else {
											%>
											<label style="color: red;">Oops! Out of Stock. </label>
											<%
												}
											%>

										</fieldset>
									</form>
								</div>

							</div>
						</div>
					</div>
					<%
						}
					%>

					<div class="clearfix"></div>
				</div>
				<!-- //first section (nuts) -->
				<!-- second section (nuts special) -->
				<div class="product-sec1 product-sec2">
					<div class="col-xs-7 effect-bg">
						<h3 class="">Pure Energy</h3>
						<h6>Enjoy our all healthy Products</h6>
						<p>Get Extra 10% Off</p>
					</div>
					<h3 class="w3l-nut-middle">Nuts & Dry Fruits</h3>
					<div class="col-xs-5 bg-right-nut">
						<img src="User/images/nut1.png" alt="">
					</div>
					<div class="clearfix"></div>
				</div>
				<!-- //second section (nuts special) -->
				<!-- third section (oils) -->
				<div class="product-sec1">
					<h3 class="heading-tittle">Drinks & Juice</h3>
					<%
						sql = "SELECT *FROM tblProduct where P_CATEGORYID=? FETCH FIRST 3 ROWS ONLY";
						ps = con.prepareStatement(sql);
						ps.setInt(1, 32);
						rs = ps.executeQuery();
						while (rs.next()) {
							String s = rs.getString(19);
							s = s.substring(33);
					%>

					<div class="col-md-4 product-men"
						style="float: right; margin-top: 10px;">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img class="img-responsive img-thumbnail"
									style="width: 150px; height: 150px;" src="<%=s%>" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.jsp?id=<%=rs.getString(1)%>"
											class="link-product-add-cart">Quick View</a>
									</div>
								</div>
								<span class="product-new-top">New</span>
							</div>
							<div class="item-info-product ">
								<h4>
									<%=rs.getString(2)%>
								</h4>
								<div class="info-product-price">
									<span class="item_price"><i class="fa fa-inr"></i><%=rs.getString(7)%></span>

								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="business" value=" " /> <input type="hidden"
												name="item_name" value="<%=rs.getString(2)%>" /> <input
												type="hidden" name="amount" value="<%=rs.getString(1)%>" />
											<input type="hidden" name="discount_amount"
												value="<%=rs.getString(11)%>" /> <input type="hidden"
												name="currency_code" value="INR" /> <input type="hidden"
												name="return" value=" " /> <input type="hidden"
												name="cancel_return" value=" " /> <input type="submit"
												name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>
							</div>
						</div>
					</div>
					<%
						}
					%>
					<div class="clearfix"></div>

				</div>
				<!-- //third section (oils) -->
				<!-- fourth section (noodles) -->
				<div class="product-sec1">
					<h3 class="heading-tittle">Personal Care</h3>
					<%
						sql = "SELECT *FROM tblProduct where P_CATEGORYID=? FETCH FIRST 3 ROWS ONLY";
						ps = con.prepareStatement(sql);
						ps.setInt(1, 30);
						rs = ps.executeQuery();
						while (rs.next()) {
							String s = rs.getString(19);
							s = s.substring(33);
					%>

					<div class="col-md-4 product-men"
						style="float: right; margin-top: 10px;">
						<div class="men-pro-item simpleCart_shelfItem">
							<div class="men-thumb-item">
								<img class="img-responsive img-thumbnail"
									style="width: 150px; height: 150px;" src="<%=s%>" alt="">
								<div class="men-cart-pro">
									<div class="inner-men-cart-pro">
										<a href="single.jsp?id=<%=rs.getString(1)%>"
											class="link-product-add-cart">Quick View</a>
									</div>
								</div>
								<span class="product-new-top">New</span>
							</div>
							<div class="item-info-product ">
								<h4>
									<%=rs.getString(2)%>
								</h4>
								<div class="info-product-price">
									<span class="item_price"><i class="fa fa-inr"></i><%=rs.getString(7)%></span>

								</div>
								<div
									class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
									<form action="#" method="post">
										<fieldset>
											<input type="hidden" name="cmd" value="_cart" /> <input
												type="hidden" name="add" value="1" /> <input type="hidden"
												name="business" value=" " /> <input type="hidden"
												name="item_name" value="<%=rs.getString(2)%>" /> <input
												type="hidden" name="amount" value="<%=rs.getString(1)%>" />
											<input type="hidden" name="discount_amount"
												value="<%=rs.getString(11)%>" /> <input type="hidden"
												name="currency_code" value="INR" /> <input type="hidden"
												name="return" value=" " /> <input type="hidden"
												name="cancel_return" value=" " /> <input type="submit"
												name="submit" value="Add to cart" class="button" />
										</fieldset>
									</form>
								</div>

							</div>
						</div>
					</div>
					<%
						}
					%>
					<div class="clearfix"></div>
				</div>
				<!-- //fourth section (noodles) -->
			</div>
		</div>
		<!-- //product right -->
	</div>
</div>
<!-- //top products -->
<!-- newsletter -->
<div class="footer-top">
	<div class="container-fluid">
		<div class="col-xs-8 agile-leftmk">
			<h2>Get your Groceries delivered from local stores</h2>
			<p>Free Delivery on your first order!</p>
			<form action="#" method="post">
				<input type="email" placeholder="E-mail" name="email" required="">
				<input type="submit" value="Subscribe">
			</form>
			<div class="newsform-w3l">
				<span class="fa fa-envelope-o" aria-hidden="true"></span>
			</div>
		</div>
		<div class="col-xs-4 w3l-rightmk">
			<img src="User/images/tab3.png" alt=" ">
		</div>
		<div class="clearfix"></div>
	</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
