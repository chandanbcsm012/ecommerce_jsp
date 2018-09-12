<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="header.jsp"></jsp:include>


<%
	int ID = Integer.parseInt(request.getParameter("id"));
	Connection con = MyConnection.getConnection();
	String sql = "select *from tblProduct where P_PRODUCTID=?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setInt(1, ID);
	ResultSet rs = ps.executeQuery();
%>

<!-- page -->
<div class="services-breadcrumb">
	<div class="agile_inner_breadcrumb">
		<div class="container">
			<ul class="w3_short">
				<li><a href="index.jsp">Home</a> <i>|</i></li>
				<li>View Details</li>
			</ul>
		</div>
	</div>
</div>
<!-- //page -->
<!-- Single Page -->
<div class="banner-bootom-w3-agileits">
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			Product Details <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->
		<div class="col-md-5 single-right-left ">
			<div class="grid images_3_of_2">
				<div class="flexslider">
					<ul class="slides">
						<%
							while (rs.next()) {
						%>
						<li data-thumb="User/images/si.jpg" style="list-style: none;">
							<div class="thumb-image">
								<%
									int CatID = Integer.parseInt(rs.getString(5));
										String Dir = "";
										switch (CatID) {
										case 27:
											Dir = "Kitchen";
											break;
										case 26:
											Dir = "Household";
											break;
										case 21:
											Dir = "Snack & Beverages";
											break;
										case 30:
											Dir = "Personal Care";
											break;
										case 25:
											Dir = "Gift Hampers";
											break;
										case 33:
											Dir = "sweets";
											break;
										case 18:
											Dir = "Baby Care";
											break;
										case 23:
											Dir = "Frozen food";
										case 24:
											Dir = "Fruits and Vegetables";
											break;
										case 32:
											Dir = "Soft Drinks & Juices";
											break;
										case 22:
											Dir = "Electronics";
											break;
										case 29:
											Dir = "Mens";
											break;
										case 34:
											Dir = "Womens";
											break;
										case 19:
											Dir = "Baby Kids";
											break;
	}
										String picname = rs.getString(19);
										String newpicadd = picname.substring(picname.lastIndexOf('\\') + 1, picname.length());
								%>
								<img
									src="${pageContext.request.contextPath}/Product/<%=Dir%>/<%=newpicadd %>"
									data-imagezoom="true" class="img-responsive" alt="">
							</div>
						</li>

					</ul>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="col-md-7 single-right-left simpleCart_shelfItem">
			<h3><%=rs.getString(2)%>
			</h3>
			<div class="rating1">
				<span class="starRating"> <input id="rating5" type="radio"
					name="rating" value="5"> <label for="rating5">5</label> <input
					id="rating4" type="radio" name="rating" value="4"> <label
					for="rating4">4</label> <input id="rating3" type="radio"
					name="rating" value="3" checked=""> <label for="rating3">3</label>
					<input id="rating2" type="radio" name="rating" value="2"> <label
					for="rating2">2</label> <input id="rating1" type="radio"
					name="rating" value="1"> <label for="rating1">1</label>
				</span>
			</div>
			<p>
				<span class="item_price"><i class="fa fa-inr"> </i><%=rs.getString(7)%></span>
				<!-- <del>$1300.00</del> -->
				<label>Free delivery</label>
			</p>
			<div class="single-infoagile">
				<ul>
					<li>Cash on Delivery Eligible.</li>
					<li>Shipping Speed to Delivery.</li>
					<li>Sold and fulfilled by Supple Tek (3.6 out of 5 | 8
						ratings).</li>
					<li>1 offer from <span class="item_price"><i
							class="fa fa-inr"> </i><%=rs.getString(7)%></span>
					</li>
				</ul>
			</div>
			<div class="product-single-w3l">
				<p>
					<i class="fa fa-hand-o-right" aria-hidden="true"></i>This is a <label>Vegetarian</label>
					product.
				</p>
				<ul>
					<li><%=rs.getString(4)%></li>
				</ul>
				<p>
					<i class="fa fa-refresh" aria-hidden="true"></i>All food products
					are <label>non-returnable.</label>
				</p>
			</div>
			<div class="occasion-cart">
				<div
					class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
					<form action="#" method="post">
						<fieldset>
							<input type="hidden" name="cmd" value="_cart" /> <input
								type="hidden" name="add" value="1" /> <input type="hidden"
								name="business" value=" " /> <input type="hidden"
								name="item_name" value="<%=rs.getString(2)%>" /> <input
								type="hidden" name="amount" value="<%=rs.getString(7)%>" /> <input
								type="hidden" name="discount_amount"
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
							<label style="color: red;">Oops! Out of Stock.</label>
							<%
								}
							%>
						</fieldset>
					</form>
				</div>

			</div>

		</div>
		<div class="clearfix"></div>
		<%
			}
		%>
	</div>
</div>
<!-- //Single Page -->

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
<!-- //newsletter -->
<jsp:include page="footer.jsp"></jsp:include>