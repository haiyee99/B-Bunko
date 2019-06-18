<!DOCTYPE html>
<html>
	<head>
		<title>B-Bunko</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/transaction.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<%@ page import="java.util.Date" %>
		<%@ page import="java.util.Vector" %>
		<%@ include file="./model/CustomClass.jsp" %>
		<%@ include file="./model/Database.jsp" %>
		<%
				Integer user_id = Integer.parseInt((String)session.getAttribute("user_id"));
				if(user_id == null)
					response.sendRedirect("login.jsp");

				Vector<Trans> transactions = new Vector<Trans>();
				
				Integer _trans_id = 0;
				String _trans_status = "";
				String _invoice = "";
				String _title = "";
				Integer _volume = 0;
				Integer _total_amount = 0;
				Date _purchase_date = new Date();
				String query = "SELECT a.trans_id, a.trans_status, a.invoice, b.product_title, b.product_volume, a.total_amount, a.purchase_date FROM transactions a JOIN products b ON a.product_id = b.product_id WHERE a.user_id = " + user_id;
				ResultSet result = statement.executeQuery(query);
				while(result.next()){
					_trans_id = result.getInt(1);
					_trans_status = result.getString(2);
					_invoice = result.getString(3);
					_title = result.getString(4);
					_volume = result.getInt(5);
					_total_amount = result.getInt(6);
					_purchase_date = result.getDate(7);
					transactions.add(new Trans(_trans_id, _trans_status, _invoice, _title, _volume, _total_amount, _purchase_date));
			}
		%>
		<div class="page_transaction">
			<%@ include file="./header.jsp" %>
			<div class="transaction_history_container">
				<div class="container_title">Transaction History</div>
				<div class="container_content">
					<div class="content_header">
						<div>Status</div>
						<div>Invoice</div>
						<div>Title</div>
						<div>Total Amount</div>
						<div>Transaction Date</div>
					</div>
					<% for(int i = 0; i < transactions.size(); i++){ %>
					<div class="content_entry">
						<%
							String btn_color = "";
							if(transactions.get(i).trans_status.equals("Pending"))
								btn_color = "button_yellow";
							else if(transactions.get(i).trans_status.equals("Cancel"))
								btn_color = "button_red";
							else
								btn_color = "button_green";
						%>
						<div class="entry_status"><span class="button <%= btn_color%>"><%= transactions.get(i).trans_status %></span></div>
						<div class="entry_invoice"><a href="transaction_detail.jsp?trans_id=<%= transactions.get(i).trans_id %>&trans_status=<%= transactions.get(i).trans_status %>"><%= transactions.get(i).invoice %></a></div>
						<div><%= transactions.get(i).title + "<br> Volume "+ transactions.get(i).volume %></div>
						<div><b>Rp.</b><%= transactions.get(i).total_amount %></div>
						<div><%= transactions.get(i).purchase_date %></div>
					</div>
					<% } %>
				</div>
			</div>
		</div>
	</body>
</html>