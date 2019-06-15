<!DOCTYPE html>
<html>
	<head>
		<title>B-Bunko</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/transaction.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<%@ include file="./model/CustomClass.jsp" %>
		<%@ include file="./model/Database.jsp" %>
		<%
				String username = (String) session.getAttribute("user_name");
				Boolean isLogged = (username != null);

				if(!isLogged)
					response.sendRedirect("login.jsp");
				
				Integer qty = request.getParameter("qty") != null ? Integer.parseInt(request.getParameter("qty")) : 1 ;

				Integer _id = Integer.parseInt(request.getParameter("id"));
				String _title = "";
				Integer _volume = 0;
				String _thumbnail = "";
				String _author = "";
				Integer _rating = 0;
				Integer _price = 0;
				String _publisher = "";
				String _genres = "";
				String _synopsis = "";
				String _sample = "";
				String _series = "";
				Book book = null;
				String query = "SELECT * FROM products WHERE product_id = " + _id;
				ResultSet result = statement.executeQuery(query);
				if(result.next()){
					_title = result.getString(2);
					_volume = result.getInt(3);
					_thumbnail = result.getString(4);
					_author = result.getString(5);
					_rating = result.getInt(6);
					_price = result.getInt(7)*qty;
					_publisher = result.getString(8);
					_genres = result.getString(9);
					_synopsis = result.getString(10);
					_sample = result.getString(11);
					_series = result.getString(12);
					book = new Book(_id, _title, _volume, _thumbnail, _author, _rating, _price, _publisher, _genres, _synopsis, _sample, _series);
				}
		%>
		<form class="page_payment_confirmation" action="utility/doTrans.jsp" method="POST">
			<input type="hidden" name="product_id" value="<%= book.id %>">
			<input type="hidden" name="total_price" value="<%= book.price + (book.price/10) %>">
			<div class="page_title">Payment Confirmation</div>
			<div class="page_content">
				<div class="payment_detail">
					<div class="grid_title">Payment Detail</div>
					<div class="grid_content">
						<div class="item_list">
							<div class="item_container">
								<span class="item">
										<div class="thumbnail" style="background-image:url(<%= book.thumbnail %>);"></div>
									<div class="label">
										<div class="item_label"><%=book.title.length() > 40? book.title.substring(0,40)+"..." : book.title%></div>
										<div class="volume_label">Volume <%= book.volume %></div>
									</div>
								</span>
							</div>
						</div>	
						<div class="form_wrapper">
							<div class="form_content">
								<div class="payment_summary">
									<div class="grid_content">
											<div class="grid_content_title">Payment Summary</div>
											<div class="payment_summary_list">
												<div class="list_entry">
													<span>Product</span>
													<span>Rp. <%= book.price%>,00</span>
												</div>
												<div class="list_entry">
													<span>Delivery Service (10%)</span>
													<span>Rp. <%= book.price/10 %>,00</span>
												</div>
											</div>
											<div class="grid_content_subtitle">Total Amount</div>
											<div class="total_price">Rp. <%= book.price + (book.price/10) %>,00</div>
										</div>
								</div>
								<div class="user_input">
									<div class="input_container">
										Qty <input type="number" name="purchase_qty" min="1" value="<%= qty%>" onchange="location.replace('payment_confirmation.jsp?id=<%= _id %>&qty=' + this.value)">
									</div>
									<div class="input_container">
										Payment Method <br> 
										<label class="custom_radio_container">Bank Transfer
											<input type="radio" name="purchase_method" value="Bank Transfer" checked> 
											<span class="checkmark"></span>
										</label>
										<label class="custom_radio_container">Credit Card
											<input type="radio" name="purchase_method" value="Credit Card"> 
											<span class="checkmark"></span>
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
				<div class="delivery_location">
					<div class="grid_title">Delivery Location</div>
					<textarea name="address"></textarea>
				</div>
				<div class="button_wrapper">
					<input type="submit" class="button button_2" value="CONFIRM PAYMENT">
					<a href="index.jsp" class="button button_red_invert">CANCEL</a>
				</div>
			</div>
		</form>
	</body>
</html>