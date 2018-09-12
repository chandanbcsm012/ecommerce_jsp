
<%
	int Customer_ID = (int) session.getAttribute("id");
	double total;

	int proid[] = (int[]) session.getAttribute("proid");
	int quant[] = (int[]) session.getAttribute("quant");
%>
<jsp:include page="header.jsp"></jsp:include>
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

<script type="text/javascript">
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- page -->
<div class="services-breadcrumb">
	<div class="agile_inner_breadcrumb">
		<div class="container">
			<ul class="w3_short">
				<li><a href="index.jsp">Home</a> <i>|</i></li>
				<li>Payment</li>
			</ul>
		</div>
	</div>
</div>
<!-- //page -->
<!-- payment page-->
<div class="privacy">
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			Payment <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->
		<div class="checkout-right">
			<!--Horizontal Tab-->
			<div id="parentHorizontalTab">
				<ul class="resp-tabs-list hor_1">
					<li>Cash on delivery (COD)</li>
					<li>Credit/Debit</li>
					<li>Net Banking</li>
					<li>Paypal Account</li>
				</ul>
				<div class="resp-tabs-container hor_1">

					<div>
						<div class="vertical_post check_box_agile">
							<h5>COD</h5>
							<div class="checkbox">
								<div class="check_box_one cashon_delivery">
									<label class="anim"> <input type="checkbox" id="terms"
										class="checkbox"> <span> We also accept
											Credit/Debit card on delivery. Please Check with the agent.</span>
									</label>
								</div>

							</div>
						</div>
					</div>
					<div>
						<form action="#" method="post"
							class="creditly-card-form agileinfo_form">
							<div class="creditly-wrapper wthree, w3_agileits_wrapper">
								<div class="credit-card-wrapper">
									<div class="first-row form-group">
										<div class="controls">
											<label class="control-label">Name on Card</label> <input
												class="billing-address-name form-control" type="text"
												name="name" placeholder="John Smith">
										</div>
										<div class="w3_agileits_card_number_grids">
											<div class="w3_agileits_card_number_grid_left">
												<div class="controls">
													<label class="control-label">Card Number</label> <input
														class="number credit-card-number form-control" type="text"
														name="number" inputmode="numeric" autocomplete="cc-number"
														autocompletetype="cc-number"
														x-autocompletetype="cc-number"
														placeholder="&#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149; &#149;&#149;&#149;&#149;">
												</div>
											</div>
											<div class="w3_agileits_card_number_grid_right">
												<div class="controls">
													<label class="control-label">CVV</label> <input
														class="security-code form-control" Â· inputmode="numeric"
														type="text" name="security-code"
														placeholder="&#149;&#149;&#149;">
												</div>
											</div>
											<div class="clear"></div>
										</div>
										<div class="controls">
											<label class="control-label">Expiration Date</label> <input
												class="expiration-month-and-year form-control" type="text"
												name="expiration-month-and-year" placeholder="MM / YY">
										</div>
									</div>
									<button class="submit">
										<span>Make a payment </span>
									</button>
								</div>
							</div>
						</form>

					</div>
					<div>
						<div class="vertical_post">
							<form action="#" method="post">
								<h5>Select From Popular Banks</h5>
								<div class="swit-radio">
									<div class="check_box_one">
										<div class="radio_one">
											<label> <input type="radio" name="radio" checked="">
												<i></i>Syndicate Bank
											</label>
										</div>
									</div>
									<div class="check_box_one">
										<div class="radio_one">
											<label> <input type="radio" name="radio"> <i></i>Bank
												of Baroda
											</label>
										</div>
									</div>
									<div class="check_box_one">
										<div class="radio_one">
											<label> <input type="radio" name="radio"> <i></i>Canara
												Bank
											</label>
										</div>
									</div>
									<div class="check_box_one">
										<div class="radio_one">
											<label> <input type="radio" name="radio"> <i></i>ICICI
												Bank
											</label>
										</div>
									</div>
									<div class="check_box_one">
										<div class="radio_one">
											<label> <input type="radio" name="radio"> <i></i>State
												Bank Of India
											</label>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<h5>Or Select Other Bank</h5>
								<div class="section_room_pay">
									<select class="year">
										<option value="">=== Other Banks ===</option>
										<option value="ALB-NA">Allahabad Bank NetBanking</option>
										<option value="ADB-NA">Andhra Bank</option>
										<option value="BBK-NA">Bank of Bahrain and Kuwait
											NetBanking</option>
										<option value="BBC-NA">Bank of Baroda Corporate
											NetBanking</option>
										<option value="BBR-NA">Bank of Baroda Retail
											NetBanking</option>
										<option value="BOI-NA">Bank of India NetBanking</option>
										<option value="BOM-NA">Bank of Maharashtra NetBanking</option>
										<option value="CSB-NA">Catholic Syrian Bank
											NetBanking</option>
										<option value="CBI-NA">Central Bank of India</option>
										<option value="CUB-NA">City Union Bank NetBanking</option>
										<option value="CRP-NA">Corporation Bank</option>
										<option value="DBK-NA">Deutsche Bank NetBanking</option>
										<option value="DCB-NA">Development Credit Bank</option>
										<option value="DC2-NA">Development Credit Bank -
											Corporate</option>
										<option value="DLB-NA">Dhanlaxmi Bank NetBanking</option>
										<option value="FBK-NA">Federal Bank NetBanking</option>
										<option value="IDS-NA">Indusind Bank NetBanking</option>
										<option value="IOB-NA">Indian Overseas Bank</option>
										<option value="ING-NA">ING Vysya Bank (now Kotak)</option>
										<option value="JKB-NA">Jammu and Kashmir NetBanking</option>
										<option value="JSB-NA">Janata Sahakari Bank Limited</option>
										<option value="KBL-NA">Karnataka Bank NetBanking</option>
										<option value="KVB-NA">Karur Vysya Bank NetBanking</option>
										<option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option>
										<option value="OBC-NA">Oriental Bank of Commerce
											NetBanking</option>
										<option value="CPN-NA">PNB Corporate NetBanking</option>
										<option value="PNB-NA">PNB NetBanking</option>
										<option value="RSD-DIRECT">Rajasthan State
											Co-operative Bank-Debit Card</option>
										<option value="RBS-NA">RBS (The Royal Bank of
											Scotland)</option>
										<option value="SWB-NA">Saraswat Bank NetBanking</option>
										<option value="SBJ-NA">SB Bikaner and Jaipur
											NetBanking</option>
										<option value="SBH-NA">SB Hyderabad NetBanking</option>
										<option value="SBM-NA">SB Mysore NetBanking</option>
										<option value="SBT-NA">SB Travancore NetBanking</option>
										<option value="SVC-NA">Shamrao Vitthal Co-operative
											Bank</option>
										<option value="SIB-NA">South Indian Bank NetBanking</option>
										<option value="SBP-NA">State Bank of Patiala
											NetBanking</option>
										<option value="SYD-NA">Syndicate Bank NetBanking</option>
										<option value="TNC-NA">Tamil Nadu State Co-operative
											Bank NetBanking</option>
										<option value="UCO-NA">UCO Bank NetBanking</option>
										<option value="UBI-NA">Union Bank NetBanking</option>
										<option value="UNI-NA">United Bank of India
											NetBanking</option>
										<option value="VJB-NA">Vijaya Bank NetBanking</option>
									</select>
								</div>
								<input type="submit" value="PAY NOW">
							</form>
						</div>
					</div>
					<div>
						<div id="tab4" class="tab-grid" style="display: block;">
							<div class="row">
								<div class="col-md-6">
									<img class="pp-img" src="User/images/paypal.png"
										alt="Image Alternative text" title="Image Title">
									<p>Important: You will be redirected to PayPal's website to
										securely complete your payment.</p>
									<a class="btn btn-primary">Checkout via Paypal</a>
								</div>
								<div class="col-md-6 number-paymk">
									<form class="cc-form">
										<div class="clearfix">
											<div class="form-group form-group-cc-number">
												<label>Card Number</label> <input class="form-control"
													placeholder="xxxx xxxx xxxx xxxx" type="text"> <span
													class="cc-card-icon"></span>
											</div>
											<div class="form-group form-group-cc-cvc">
												<label>CVV</label> <input class="form-control"
													placeholder="xxxx" type="text">
											</div>
										</div>
										<div class="clearfix">
											<div class="form-group form-group-cc-name">
												<label>Card Holder Name</label> <input class="form-control"
													type="text">
											</div>
											<div class="form-group form-group-cc-date">
												<label>Valid Thru</label> <input class="form-control"
													placeholder="mm/yy" type="text">
											</div>
										</div>
										<div class="checkbox checkbox-small">
											<label> <input class="i-check" type="checkbox"
												checked="">Add to My Cards
											</label>
										</div>
										<input type="submit" class="submit" value="Proceed Payment">
									</form>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
			<!--Plug-in Initialisation-->
		</div>
	</div>
	<div class="checkout-right-basket container" align="right">
		<form action="ProductManipulation" method="post">
			<input type="hidden" value="<%=Customer_ID%>" name="user_ID">
			<input type="submit" class="btn btn-primary" value="Order Place">
			<span class="fa fa-hand-o-right" aria-hidden="true"></span>

		</form>


	</div>

</div>

<!-- //payment page -->


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
<!-- footer -->
<footer>
	<div class="container">
		<!-- footer first section -->
		<p class="footer-main">
			<span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia
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
						<li><a href="#">Grocery</a></li>
						<li><a href="#">Fruits</a></li>
						<li><a href="#">Soft Drinks</a></li>
						<li><a href="product2.html">Dishwashers</a></li>
						<li><a href="#">Biscuits & Cookies</a></li>
						<li><a href="product2.html">Baby Diapers</a></li>
					</ul>
				</div>
				<div class="col-xs-6 footer-grids agile-secomk">
					<ul>
						<li><a href="#">Snacks & Beverages</a></li>
						<li><a href="#">Bread & Bakery</a></li>
						<li><a href="#">Sweets</a></li>
						<li><a href="#">Chocolates & Biscuits</a></li>
						<li><a href="product2.html">Personal Care</a></li>
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
						<li><a href="about.jsp">About Us</a></li>
						<li><a href="contact.jsp">Contact Us</a></li>
						<li><a href="help.jsp">Help</a></li>
						<li><a href="faqs.jsp">Faqs</a></li>
						<li><a href="terms.jsp">Terms of use</a></li>
						<li><a href="privacy.jsp">Privacy Policy</a></li>
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
				<h5>Online Grocery Shopping</h5>
				<p>Order online. All your favourite products from the low price
					online supermarket for grocery home delivery in Delhi, Gurgaon,
					Bengaluru, Mumbai and other cities in India. Lowest prices
					guaranteed on Patanjali, Aashirvaad, Pampers, Maggi, Saffola,
					Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel,
					Vim, Haldiram's and others.</p>
			</div>
			<div class="sub-some">
				<h5>Shop online with the best deals & offers</h5>
				<p>Now Get Upto 40% Off On Everyday Essential Products Shown On
					The Offer Page. The range includes Grocery, Personal Care, Baby
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
					<li><a href="product2.html">Head & Shoulders</a></li>
					<li><a href="product2.html">Dove</a></li>
					<li><a href="product2.html">Dettol</a></li>
					<li><a href="product2.html">Dabur</a></li>
					<li><a href="product2.html">Colgate</a></li>
					<li><a href="#">Coca-Cola</a></li>
					<li><a href="product2.html">Closeup</a></li>
					<li><a href="product2.html"> Cinthol</a></li>
					<li><a href="#">Cadbury</a></li>
					<li><a href="#">Bru</a></li>
					<li><a href="#">Bournvita</a></li>
					<li><a href="#">Tang</a></li>
					<li><a href="#">Pears</a></li>
					<li><a href="#">Oreo</a></li>
					<li><a href="#"> Taj Mahal</a></li>
					<li><a href="#">Sprite</a></li>
					<li><a href="#">Thums Up</a></li>
					<li><a href="product2.html">Fair & Lovely</a></li>
					<li><a href="product2.html">Lakme</a></li>
					<li><a href="#">Tata</a></li>
					<li><a href="product2.html">Sunfeast</a></li>
					<li><a href="product2.html">Sunsilk</a></li>
					<li><a href="#">Patanjali</a></li>
					<li><a href="#">MTR</a></li>
					<li><a href="#">Kissan</a></li>
					<li><a href="product2.html"> Lipton</a></li>
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
			© 2017 Grocery Shoppy. All rights reserved | Design by <a href="#">
				W3layouts.</a>
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
		$("form").submit(function(e) {
			if ($("#terms:not(:checked)").length > 0) {
				e.preventDefault();
				alert('Please check the first checkbox to Cash on Delivery!');
				return false;
			}

		});
	});
</script>
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

<!-- easy-responsive-tabs -->
<link rel="stylesheet" type="text/css"
	href="User/css/easy-responsive-tabs.css " />
<script src="User/js/easyResponsiveTabs.js"></script>

<script>
	$(document).ready(function() {
		//Horizontal Tab
		$('#parentHorizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			tabidentify : 'hor_1', // The tab groups identifier
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#nested-tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
	});
</script>
<!-- //easy-responsive-tabs -->

<!-- credit-card -->
<script src="User/js/creditly.js"></script>
<link rel="stylesheet" href="User/css/creditly.css" type="text/css"
	media="all" />

<script>
	$(function() {
		var creditly = Creditly.initialize(
				'.creditly-wrapper .expiration-month-and-year',
				'.creditly-wrapper .credit-card-number',
				'.creditly-wrapper .security-code',
				'.creditly-wrapper .card-type');

		$(".creditly-card-form .submit").click(function(e) {
			e.preventDefault();
			var output = creditly.validate();
			if (output) {
				// Your validated credit card output
				console.log(output);
			}
		});
	});
</script>
<!-- //credit-card -->

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
