<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/transaction.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<%@ page import="java.util.Vector" %>
		<%@ include file="./model/CustomClass.jsp" %>

		<div class="page_transaction">
			<%@ include file="./header.jsp" %>

			<div class="transaction_history_container">
				<div class="container_title">Transaction History</div>
				<div class="container_content">
					<div class="content_header">
						<div>Status</div>
						<div>Invoice</div>
						<div>Title</div>
						<div>Volume</div>
						<div>Transaction Date</div>
					</div>
					<div class="content_entry">
						<div class="entry_status"><span class="button button_yellow">PENDING</span></div>
						<div class="entry_invoice"><a href="#">INV/09062019/01</a></div>
						<div>Baka to Test to Shoukanjuu</div>
						<div>Volume 01</div>
						<div>09 June 2019</div>
					</div>
					<div class="content_entry">
						<div class="entry_status"><span class="button button_green">DONE</span></div>
						<div class="entry_invoice"><a href="#">INV/09062019/02</a></div>
						<div>Baka to Test to Shoukanjuu</div>
						<div>Volume 02</div>
						<div>09 June 2019</div>
					</div>
					<div class="content_entry">
						<div class="entry_status"><span class="button button_red">CANCEL</span></div>
						<div class="entry_invoice"><a href="#">INV/09062019/03</a></div>
						<div>Baka to Test to Shoukanjuu</div>
						<div>Volume 03</div>
						<div>09 June 2019</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>