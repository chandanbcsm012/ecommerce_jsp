<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%
	Date now = new Date();
	SimpleDateFormat dateFormatter;
	dateFormatter = new SimpleDateFormat("EEEE, MMMM d, yyyy");
	System.out.println("Format 3:   " + dateFormatter.format(now));
	int ID = (int) session.getAttribute("id");
	Connection con = MyConnection.getConnection();
	String sql = "select *from tblOrder where O_CUSTOMERID = ? order by ORDERID desc";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setInt(1, ID);
	ResultSet rs = ps.executeQuery();
%>
<jsp:include page="header.jsp"></jsp:include>
<div>
	<div class="container">
		<!-- tittle heading -->
		<h3 class="tittle-w3l">
			My Order <span class="heading-style"> <i></i> <i></i> <i></i>
			</span>
		</h3>
		<!-- //tittle heading -->

		<div class="row jumbotron">
			<%
				while (rs.next()) {
			%>
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="row">
							<div class="col-md-8">
								<a href="#" class="btn btn-info">ORDER ID: <%=rs.getString(1)%></a>
							</div>

							<div class="col-md-2" align="right">
								<a href="#" class="btn btn-default"><span
									class="fa fa-question-circle"></span> Need help</a>
							</div>
							<div class="col-md-2" align="left">
								<a href="#" class="btn btn-default"><span
									class="	fa fa-location-arrow"></span> Track</a>
							</div>
						</div>

					</div>
					<div class="panel-body">
						<div class="row">
							<%
								sql = "select *from tblProduct where P_PRODUCTID = ?";
									ps = con.prepareStatement(sql);
									ps.setInt(1, Integer.parseInt(rs.getString(19)));
									ResultSet p = ps.executeQuery();
									while (p.next()) {

										String s = p.getString(19);
										s = s.substring(33);
							%>
							<div class="col-md-2">

								<img alt="product" src="<%=s%>"
									class="img-rounded img-responsive">
							</div>
							<div class="col-md-3">
								<h5>
									Product Name :
									<%=p.getString(2)%>
								</h5>
								<p>
									Color: <span>red</span>
								</p>
								<p>
									Seller: <span>RetailNet</span>
								</p>
							</div>
							<div class="col-md-2">

								<p>
									<span class="fa fa-rupee"></span><%=p.getString(7)%>
								</p>
								<p>
									Quantity:<%=rs.getString(20)%></p>
							</div>
							<%
								}
							%>
							<div class="col-md-3">
								<h5>
									Delivered on
									<%=rs.getString(7)%></h5>

							</div>
							<div class="col-md-2">
								<a class="btn btn-default"><span class="fa fa-refresh"></span>
									return</a>
							</div>
						</div>

					</div>
					<div class="panel-footer">
						<p>
							order on
							<%=rs.getString(5)%>
						<p>
					</div>
				</div>
			</div>
			<%
				}
			%>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>