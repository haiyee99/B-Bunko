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
				
				
                Integer _trans_id = Integer.parseInt(request.getParameter("trans_id"));
				String _trans_status = request.getParameter("trans_status");
                String _title = "";
                Integer _volume = 0;
                String _thumbnail = "";
                Integer _price = 0;
                Integer _total_amount = 0;
                Integer _qty = 0;
                String _payment_type = "";
                String _address = "";
				Trans trans = null;
				String query = "SELECT a.trans_id, b.product_title, b.product_volume, b.product_thumbnail, b.product_price, a.total_amount, a.product_qty, a.payment_type, a.address FROM transactions a JOIN products b ON a.product_id = b.product_id WHERE a.trans_id = " + _trans_id;
				ResultSet result = statement.executeQuery(query);
				if(result.next()){
					_title = result.getString(2);
                    _volume = result.getInt(3);
                    _thumbnail = result.getString(4);
                    _price = result.getInt(5);
                    _total_amount = result.getInt(6);
                    _qty = result.getInt(7);
                    _payment_type = result.getString(8);
                    _address = result.getString(9);
					trans = new Trans(_trans_id, _title, _volume, _thumbnail, _price, _total_amount, _qty, _payment_type, _address);
				}
		%>
        <form class="page_payment_confirmation" action="utility/modifyTrans.jsp" method="POST">
            <input type="hidden" name="trans_id" value="<%= _trans_id%>">
			<div class="page_title">Transaction Detail</div>
			<div class="page_content">
				<div class="payment_detail">
					<div class="grid_title">Books Detail</div>
					<div class="grid_content">
						<div class="item_list">
							<div class="item_container">
								<span class="item">
										<div class="thumbnail" style="background-image:url(<%=trans.thumbnail%>);"></div>
									<div class="label">
										<div class="item_label"><%=trans.title.length() > 40? trans.title.substring(0,40)+"..." : trans.title%></div>
										<div class="volume_label">Volume <%=trans.volume%></div>
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
													<span>Rp. <%= trans.price %>,00</span>
												</div>
												<div class="list_entry">
													<span>Delivery Service (10%)</span>
													<span>Rp. <%= trans.price/10 %>,00</span>
												</div>
											</div>
											<div class="grid_content_subtitle">Total Amount</div>
											<div class="total_price">Rp. <%= trans.total_amount%>,00</div>
										</div>
								</div>
								<div class="user_input">
									<div class="input_container">
										Qty <input type="number" name="purchase_qty" min="1" value="<%= trans.qty %>" disabled>
									</div>
									<div class="input_container">
										Payment Method <br> 
										<label class="custom_radio_container">Bank Transfer
											<input type="radio" name="purchase_method" value="Bank Transfer" <%= (trans.payment_type.equals("Bank Transfer")) ? "checked" : "" %> disabled> 
											<span class="checkmark"></span>
										</label>
										<label class="custom_radio_container">Credit Card
											<input type="radio" name="purchase_method" value="Credit Card" <%= (trans.payment_type.equals("Credit Card")) ? "checked" : "" %> disabled> 
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
					<div class="address"><%= trans.address %></div>
				</div>
				<div class="button_wrapper">
					<%
						if(_trans_status.equals("Pending")){
							out.print("<input type='submit' class='button button_red_invert'value='CANCEL'>");
							out.print("<a href='index.jsp' class='button button_blue_invert'>BACK</a>");
						}
						else
							out.print("<a href='index.jsp' class='button button_blue_invert' style='margin:0;'>BACK</a>");
					%>
				</div>
			</div>
		</form>
	</body>
</html>