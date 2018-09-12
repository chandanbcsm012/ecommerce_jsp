
<%
	if (session.getAttribute("id") == null) {
%>
<script type="text/javascript">
	alert("Oops! You must be Login First.")
	window.location.href = "index.jsp";
</script>
<%
	//response.sendRedirect("index.jsp");
	} else {
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<jsp:include page="header.jsp"></jsp:include>
<%
	int c = 1, item = 0;
		while (request.getParameter("amount_" + c) != null) {
			c++;
			item++;
		}
		System.out.println("Value of item :" + item);

		int proid[] = new int[item];
		int quant[] = new int[item];

		for (int i = 0; i < proid.length; i++) {
			proid[i] = Integer.parseInt(request.getParameter("amount_" + (i + 1)));
			quant[i] = Integer.parseInt(request.getParameter("quantity_" + (i + 1)));
		}
		//set session values
		session.setAttribute("proid", proid);
		session.setAttribute("quant", quant);
%>

<!-- checkout page -->
<div class="privacy">
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			Checkout <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->
		<div class="checkout-right">
			<h4>
				Your shopping cart contains: <span><%=proid.length%></span>
			</h4>
			<div class="table-responsive">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>
							<th>Product</th>
							<th>Quality</th>
							<th>Product Name</th>
							<th>Price</th>
							<th>Total Amount</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tbody>
						<%
							Connection con = MyConnection.getConnection();
								int total = 0;
								int i;
								for (i = 0; i < proid.length; i++) {

									String sql = "select *from tblProduct where P_PRODUCTID = ? ";
									PreparedStatement ps = con.prepareStatement(sql);
									ps.setInt(1, proid[i]);
									ResultSet rs = ps.executeQuery();
									while (rs.next()) {
										String s = rs.getString(19);
										s = s.substring(33);
						%>
						<tr class="rem1">
							<td class="invert"><%=i + 1%></td>
							<td class="invert-image"><a href="#"> <img src="<%=s%>"
									alt=" " class="img-responsive">
							</a></td>
							<td class="invert">
								<div class="quantity">
									<div class="quantity-select">
										<div class="entry value">
											<span><%=quant[i]%></span>
										</div>
									</div>
								</div>
							</td>
							<td class="invert"><%=rs.getString(2)%></td>
							<td class="invert"><span class="fa fa-rupee"></span><%=rs.getString(7)%></td>
							<td class="invert"><span class="fa fa-rupee"></span><%=Integer.parseInt(rs.getString(7)) * quant[i]%></td>

							<td class="invert">
								<div class="rem">
									<div class="close1"></div>
								</div>
							</td>
						</tr>
						<%
							total = total + Integer.parseInt(rs.getString(7)) * quant[i];
									}
								}
						%>
					</tbody>
				</table>
			</div>
		</div>
		<div class="checkout-left">
			<div class="address_form_agile">
				<h4>Add a new Details</h4>
				<form action="payment.html" method="post"
					class="creditly-card-form agileinfo_form">
					<div class="creditly-wrapper wthree, w3_agileits_wrapper">
						<div class="information-wrapper">
							<div class="first-row">
								<div class="controls">
									<input class="billing-address-name" type="text" name="name"
										placeholder="Full Name" autocomplete="off" required="">
								</div>
								<div class="w3_agileits_card_number_grids">
									<div class="w3_agileits_card_number_grid_left">
										<div class="controls">
											<input type="text" autocomplete="off"
												placeholder="Mobile Number" name="number" required="">
										</div>
									</div>
									<div class="w3_agileits_card_number_grid_right">
										<div class="controls">
											<input type="text" autocomplete="off" placeholder="Landmark"
												name="landmark" required="">
										</div>
									</div>
									<div class="clear"></div>
								</div>
								<div class="controls">
									<input type="text" autocomplete="off" placeholder="Town/City"
										name="city" required="">
								</div>
								<div class="controls">
									<select class="option-w3ls">
										<option>Select Address type</option>
										<option>Office</option>
										<option>Home</option>
										<option>Commercial</option>

									</select>
								</div>
							</div>
							
						</div>
					</div>
				</form>
				<div class="checkout-right-basket">

					<a href="pay.jsp?total=<%=total%> ">Make a Payment <span
						class="fa fa-hand-o-right" aria-hidden="true"></span>
					</a>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
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
			<img src="images/tab3.png" alt=" ">
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<!-- //newsletter -->
<!-- footer -->
<footer>
	<div class="container">
		<!-- footer first section -->
		<p class="footer-main">
			<span>"NetMall Shoppy"</span> Nemo enim ipsam voluptatem quia
			voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur
			magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut
			perspiciatis unde omnis iste natus error sit voluptatem accusantium
			doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo
			inventore veritatis et quasi architecto beatae vitae dicta sunt
			explicabo.
		</p>
		<!-- //footer first section -->
		<!-- footer second section -->
		<div class="w3l-grids-footer">
			<div class="col-xs-4 offer-footer">
				<div class="col-xs-4 icon-fot">
					<span class="fa fa-map-marker" aria-hidden="true"></span>
				</div>
				<div class="col-xs-8 text-form-footer">
					<h3>Track Your Order</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-xs-4 offer-footer">
				<div class="col-xs-4 icon-fot">
					<span class="fa fa-refresh" aria-hidden="true"></span>
				</div>
				<div class="col-xs-8 text-form-footer">
					<h3>Free & Easy Returns</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-xs-4 offer-footer">
				<div class="col-xs-4 icon-fot">
					<span class="fa fa-times" aria-hidden="true"></span>
				</div>
				<div class="col-xs-8 text-form-footer">
					<h3>Online cancellation</h3>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
		<!-- //footer second section -->
		<!-- footer third section -->
		<div class="footer-info w3-agileits-info">
			<!-- footer categories -->
			<div class="col-sm-5 address-right">
				<div class="col-xs-6 footer-grids">
					<h3>Categories</h3>
					<ul>
						<li><a href="#">NetMall</a></li>
						<li><a href="#">Fruits</a></li>
						<li><a href="#">Soft Drinks</a></li>
						<li><a href="#">Dishwashers</a></li>
						<li><a href="#">Biscuits & Cookies</a></li>
						<li><a href="#">Baby Diapers</a></li>
					</ul>
				</div>
				<div class="col-xs-6 footer-grids agile-secomk">
					<ul>
						<li><a href="#">Snacks & Beverages</a></li>
						<li><a href="#">Bread & Bakery</a></li>
						<li><a href="#">Sweets</a></li>
						<li><a href="#">Chocolates & Biscuits</a></li>
						<li><a href="#">Personal Care</a></li>
						<li><a href="#">Dried Fruits & Nuts</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<!-- //footer categories -->
			<!-- quick links -->
			<div class="col-sm-5 address-right">
				<div class="col-xs-6 footer-grids">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Contact Us</a></li>
						<li><a href="#">Help</a></li>
						<li><a href="#">Faqs</a></li>
						<li><a href="#">Terms of use</a></li>
						<li><a href="#">Privacy Policy</a></li>
					</ul>
				</div>
				<div class="col-xs-6 footer-grids">
					<h3>Get in Touch</h3>
					<ul>
						<li><i class="fa fa-map-marker"></i> Bhagwanpur Muzaffarpur
							Bihar</li>
						<li><i class="fa fa-mobile"></i> 9507953145</li>
						<li><i class="fa fa-phone"></i> 7654131817</li>
						<li><i class="fa fa-envelope-o"></i> <a
							href="mailto:raushankumar61124@gmail.com">
								raushankumar61124@gmail.com</a></li>
					</ul>
				</div>
			</div>
			<!-- //quick links -->
			<!-- social icons -->
			<div class="col-sm-2 footer-grids  w3l-socialmk">
				<h3>Follow Us on</h3>
				<div class="social">
					<ul>
						<li><a class="icon fb" href="#"> <i
								class="fa fa-facebook"></i>
						</a></li>
						<li><a class="icon tw" href="#"> <i class="fa fa-twitter"></i>
						</a></li>
						<li><a class="icon gp" href="#"> <i
								class="fa fa-google-plus"></i>
						</a></li>
					</ul>
				</div>
				<div class="agileits_app-devices">
					<h5>Download the App</h5>
					<a href="#"> <img src="User/images/1.png" alt="">
					</a> <a href="#"> <img src="User/images/2.png" alt="">
					</a>
					<div class="clearfix"></div>
				</div>
			</div>
			<!-- //social icons -->
			<div class="clearfix"></div>
		</div>
		<!-- //footer third section -->
		<!-- footer fourth section (text) -->
		<div class="agile-sometext">
			<div class="sub-some">
				<h5>Online NetMall Shopping</h5>
				<p>Order online. All your favourite products from the low price
					online supermarket for NetMall home delivery in Delhi, Gurgaon,
					Bengaluru, Mumbai and other cities in India. Lowest prices
					guaranteed on Patanjali, Aashirvaad, Pampers, Maggi, Saffola,
					Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel,
					Vim, Haldiram's and others.</p>
			</div>
			<div class="sub-some">
				<h5>Shop online with the best deals & offers</h5>
				<p>Now Get Upto 40% Off On Everyday Essential Products Shown On
					The Offer Page. The range includes NetMall, Personal Care, Baby
					Care, Pet Supplies, Healthcare and Other Daily Need Products.
					Discount May Vary From Product To Product.</p>
			</div>
			<!-- brands -->
			<div class="sub-some">
				<h5>Popular Brands</h5>
				<ul>
					<li><a href="#">Aashirvaad</a></li>
					<li><a href="#">Amul</a></li>
					<li><a href="#">Bingo</a></li>
					<li><a href="#">Boost</a></li>
					<li><a href="#">Durex</a></li>
					<li><a href="#"> Maggi</a></li>
					<li><a href="#">Glucon-D</a></li>
					<li><a href="#">Horlicks</a></li>
					<li><a href="#">Head & Shoulders</a></li>
					<li><a href="#">Dove</a></li>
					<li><a href="#">Dettol</a></li>
					<li><a href="#">Dabur</a></li>
					<li><a href="#">Colgate</a></li>
					<li><a href="#">Coca-Cola</a></li>
					<li><a href="#">Closeup</a></li>
					<li><a href="#"> Cinthol</a></li>
					<li><a href="#">Cadbury</a></li>
					<li><a href="#">Bru</a></li>
					<li><a href="#">Bournvita</a></li>
					<li><a href="#">Tang</a></li>
					<li><a href="#">Pears</a></li>
					<li><a href="#">Oreo</a></li>
					<li><a href="#"> Taj Mahal</a></li>
					<li><a href="#">Sprite</a></li>
					<li><a href="#">Thums Up</a></li>
					<li><a href="#">Fair & Lovely</a></li>
					<li><a href="#">Lakme</a></li>
					<li><a href="#">Tata</a></li>
					<li><a href="#">Sunfeast</a></li>
					<li><a href="#">Sunsilk</a></li>
					<li><a href="#">Patanjali</a></li>
					<li><a href="#">MTR</a></li>
					<li><a href="#">Kissan</a></li>
					<li><a href="#"> Lipton</a></li>
				</ul>
			</div>
			<!-- //brands -->
			<!-- payment -->
			<div class="sub-some child-momu">
				<h5>Payment Method</h5>
				<ul>
					<li><img src="User/images/pay2.png" alt=""></li>
					<li><img src="User/images/pay5.png" alt=""></li>
					<li><img src="User/images/pay1.png" alt=""></li>
					<li><img src="User/images/pay4.png" alt=""></li>
					<li><img src="User/images/pay6.png" alt=""></li>
					<li><img src="User/images/pay3.png" alt=""></li>
					<li><img src="User/images/pay7.png" alt=""></li>
					<li><img src="User/images/pay8.png" alt=""></li>
					<li><img src="User/images/pay9.png" alt=""></li>
				</ul>
			</div>
			<!-- //payment -->
		</div>
		<!-- //footer fourth section (text) -->
	</div>
</footer>
<!-- //footer -->
<!-- copyright -->
<div class="copy-right">
	<div class="container">
		<p>
			© 20180 Net Mall. All rights reserved | Design by <a href="http://#"
				sty> Galaxy Web Solution.</a>
		</p>
	</div>
</div>
<!-- //copyright -->

<!-- js-files -->
<!-- jquery -->
<script src="User/js/jquery-2.1.4.min.js"></script>
<!-- //jquery -->

<!-- popup modal (for signin & signup)-->
<script src="User/js/jquery.magnific-popup.js"></script>
<script>
	$(document).ready(function() {
		$('.popup-with-zoom-anim').magnificPopup({
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});

	});
</script>
<!-- Large modal -->
<!-- <script>
		$('#').modal('show');
	</script> -->
<!-- //popup modal (for signin & signup)-->

<!-- cart-js -->
<script src="User/js/minicart.js"></script>
<script>
	paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

	paypalm.minicartk.cart
			.on(
					'checkout',
					function(evt) {
						var items = this.items(), len = items.length, total = 0, i;

						// Count the number of each item in the cart
						for (i = 0; i < len; i++) {
							total += items[i].get('quantity');
						}

						if (total < 1) {
							alert('The minimum order quantity is 1. Please add more to your shopping cart before checking out');
							evt.preventDefault();
						}
					});
</script>
<!-- //cart-js -->

<!--quantity-->
<script>
	$('.value-plus')
			.on(
					'click',
					function() {
						var divUpd = $(this).parent().find('.value'), newVal = parseInt(
								divUpd.text(), 10) + 1;
						divUpd.text(newVal);
					});

	$('.value-minus')
			.on(
					'click',
					function() {
						var divUpd = $(this).parent().find('.value'), newVal = parseInt(
								divUpd.text(), 10) - 1;
						if (newVal >= 1)
							divUpd.text(newVal);
					});
</script>
<!--quantity-->
<script>
	$(document).ready(function(c) {
		$('.close1').on('click', function(c) {
			$('.rem1').fadeOut('slow', function(c) {
				$('.rem1').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.close2').on('click', function(c) {
			$('.rem2').fadeOut('slow', function(c) {
				$('.rem2').remove();
			});
		});
	});
</script>
<script>
	$(document).ready(function(c) {
		$('.close3').on('click', function(c) {
			$('.rem3').fadeOut('slow', function(c) {
				$('.rem3').remove();
			});
		});
	});
</script>
<!--//quantity-->

<!-- password-script -->
<script>
	window.onload = function() {
		document.getElementById("password1").onchange = validatePassword;
		document.getElementById("password2").onchange = validatePassword;
	}

	function validatePassword() {
		var pass2 = document.getElementById("password2").value;
		var pass1 = document.getElementById("password1").value;
		if (pass1 != pass2)
			document.getElementById("password2").setCustomValidity(
					"Passwords Don't Match");
		else
			document.getElementById("password2").setCustomValidity('');
		//empty string means no validation error
	}
</script>
<!-- //password-script -->

<!-- smoothscroll -->
<script src="User/js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="User/js/move-top.js"></script>
<script src="User/js/easing.js"></script>
<script>
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();

			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
	$(document).ready(function() {
		/*
		var defaults = {
			containerID: 'toTop', // fading element id
			containerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
		};
		 */
		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="User/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->

</body>

</html>
<%
	}
%>