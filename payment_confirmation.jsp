<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/transaction.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<form class="page_payment_confirmation">
			<div class="page_title">Payment Confirmation</div>

			<div class="page_content">
				<div class="payment_detail">
					<div class="grid_title">Payment Detail</div>
					<div class="grid_content">
						<div class="item_list">
							<div class="item_container">
								<span class="item">
									<div class="thumbnail"></div>
									<div class="label">
										<div class="item_label">Pikadut The Manga</div>
										<div class="volume_label">Volume 1</div>
									</div>
								</span>
							</div>
						</div>	
						<div class="form_wrapper">
							<div class="form_content">
								<div class="input_container">
									Qty <input type="number" name="purchase_qty" min="1" value="1">
								</div>
								<div class="input_container">
									Payment Method <br> 
									<label class="custom_radio_container">Bank Transfer
										<input type="radio" name="purchase_method" value="bt" checked> 
										<span class="checkmark"></span>
									</label>
									<label class="custom_radio_container">Credit Card
										<input type="radio" name="purchase_method" value="cc"> 
										<span class="checkmark"></span>
									</label>
								</div>
								<div class="input_container">
									Transfer Account <br>
									<span class="link_color">6251234</span> 
								</div>
							</div>
						</div>
					</div>	
				</div>

				<div class="payment_summary">
					<div class="grid_content">
						<div class="grid_content_title">Payment Summary</div>
						<div class="payment_summary_list">
							<div class="list_entry">
								<span>Product</span>
								<span>Rp. 200.000,00</span>
							</div>
							<div class="list_entry">
								<span>Delivery Service (10%)</span>
								<span>Rp. 20.000,00</span>
							</div>
						</div>
						<div class="grid_content_subtitle">Total Amount</div>
						<div class="total_price">Rp. 220.000,00</div>
					</div>
				</div>

				<div class="delivery_location">
					<div class="grid_title">Delivery Location</div>
					<div class="grid_content">
						<div class="content_left">
							<div class="grid_content_key">Address</div>
							<div class="grid_content_value">Jalan Kebon Jeruk Raya No.27 1 9, RT.1/RW.9, Kb.Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530</div>
						</div>
						<div class="content_right">
							<span class="button button_1">CHANGE</span>
						</div>
					</div>
				</div>

				<div class="button_wrapper">
					<input type="submit" class="button button_2" value="CONFIRM PAYMENT">
					<a href="#" class="button button_red_invert">CANCEL</a>
				</div>
			</div>
		</form>
	</body>
</html>