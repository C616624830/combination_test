<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.*, java.io.*" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="ISO-8859-1">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.csss"/>

		

    </head>
	<body>
		
		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">Hot Deals</a></li>
						<li><a href="#">Categories</a></li>
						<li><a href="#">Laptops</a></li>
						<li><a href="#">Smartphones</a></li>
						<li><a href="#">Cameras</a></li>
						<li><a href="#">Accessories</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">Electronics</a></li>
							<li><a href="#">Accessories</a></li>
							<li class="active">Headphones</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->



		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<form name="form" onsubmit="true">
						<!-- ASIDE -->
						<div id="aside" class="col-md-3">
							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Brand</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-1" class="Brand" name="Brand" value="Lenevo">
										<label for="Brand-1">
											<span></span>
											Lenevo
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-2" class="Brand" name="Brand" value="Moto">
										<label for="Brand-2">
											<span></span>
											Moto
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-3" class="Brand" name="Brand" value="VIVO">
										<label for="Brand-3">
											<span></span>
											VIVO
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-4" class="Brand" name="Brand" value="Apple">
										<label for="Brand-4">
											<span></span>
											Apple
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-5" class="Brand" name="Brand" value="Infinix">
										<label for="Brand-5">
											<span></span>
											Infinix
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-6" class="Brand" name="Brand" value="Honor">
										<label for="Brand-6">
											<span></span>
											Honor
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->


							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Color</h3>
								<div class="checkbox-filter">
									<div class="input-checkbox">
										<input type="checkbox" id="Color-1" class="Color" name="Color" value="Red">
										<label for="Color-1">
											<span></span>
											Red
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-2" class="Color" name="Color" value="Black">
										<label for="Color-2">
											<span></span>
											Black
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-3" class="Color" name="Color" value="Blue">
										<label for="Color-3">
											<span></span>
											Blue
											<small>(755)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-4" class="Color" name="Color" value="Green">
										<label for="Color-4">
											<span></span>
											Green
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-5" class="Color" name="Color" value="White">
										<label for="Color-5">
											<span></span>
											White
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-6" class="Color" name="Color" value="Yellow">
										<label for="Color-6">
											<span></span>
											Yellow
											<small>(755)</small>
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->


							<div class="aside">
								<h3 class="aside-title">Year</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Year-1" class="Year" name="Year" value="2011">
										<label for="Year-1">
											<span></span>
											2011
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-2" class="Year" name="Year" value="2012">
										<label for="Year-2">
											<span></span>
											2012
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-3" class="Year" name="Year" value="2013">
										<label for="Year-3">
											<span></span>
											2013
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-4" class="Year" name="Year" value="2014">
										<label for="Year-4">
											<span></span>
											2014
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-5" class="Year" name="Year" value="2015">
										<label for="Year-5">
											<span></span>
											2015
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-6" class="Year" name="Year" value="2016">
										<label for="Year-6">
											<span></span>
											2016
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>

							<p></br></br><input type="submit" value="submit"/></p>

						</div>
						<!-- /ASIDE -->

					</form>

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store products -->
						<div class="row">
						<%
							String brand = request.getParameter("Brand");
							String year = request.getParameter("Year");
							String color = request.getParameter("Color");
							
							if (brand == null && year == null && color == null){ 
								 
							} else {

							Class.forName("com.mysql.jdbc.Driver").newInstance();
				    
					    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

					    	if(con == null){
						    	response.sendRedirect("index.html");
						    	System.out.println("Connection Error");
					    	}

					    	Statement st = con.createStatement();
						    ResultSet rs;

							String query1 = "SELECT * FROM Electronics WHERE ";

							if (brand != null){
								query1 = query1 + "brand = " + "'" + brand + "'";
								if (year != null){
									query1 = query1 + " AND year = " + "'" + year + "'";
										if (color != null){
											query1 = query1 + " AND color = " + "'" + color + "'";
										}
								}
							} else if (year != null){
									query1 = query1 + "year = " + "'" + year + "'";
									if (color != null){
										query1 = query1 + " AND color = " + "'" + color + "'";
									}
							} else if (color != null){
									query1 = query1 + "color = " + "'" + color + "'";
							}

							if (query1 == "SELECT * FROM Electronics WHERE "){
								
							} else {
								rs = st.executeQuery(query1);

								while (rs.next()){ %>
								<!-- product -->
								<div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-body">
											<p class="product-category">Category</p>
											<h3 class="product-name"><a href="#"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-price"><% out.print(rs.getString("color")); %> </h4>
										</div>
										<div class="add-to-cart">
											<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
										</div>
									</div>
								</div>
								<!-- /product -->
								<%}
								rs.close();
							}
		                    con.close();
		                    st.close();
						}
								
								%>
						</div>
						<!-- /store products -->
					</div>
					<!-- /STORE -->



				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->


		


		<!-- allow only one check box selected -->
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
		<script type="text/javascript">
    	$('.Brand').on('change', function(){
    		$('.Brand').not(this).prop('checked', false);
    	});

    	$('.Color').on('change', function(){
    		$('.Color').not(this).prop('checked', false);
    	});

    	$('.Year').on('change', function(){
    		$('.Year').not(this).prop('checked', false);
    	});
    	</script>


		
	</body>
</html>
