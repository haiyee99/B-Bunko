<!DOCTYPE html>
<html>
	<head>
		<title>B-Bunko</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/index.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<%@ page import="java.util.Vector" %>
		<%@ include file="./model/CustomClass.jsp" %>
		<%@ include file="./model/Database.jsp" %>
		<%
			String id = request.getParameter("id");
			Boolean hasId = (id != null);

			String search_key = request.getParameter("search_key");
			String search_category = request.getParameter("search_category");

			String query = "";
			ResultSet result;
		%>
			<%	Vector<Book> new_arrivals = new Vector<Book>();
				Vector<Book> trendings = new Vector<Book>(); 

				Integer _id = 0;
				String _title = "";
				Integer _volume = 0;
				String _thumbnail = "";
				query = "SELECT * FROM products ORDER BY date_in DESC LIMIT 0,5";
				result = statement.executeQuery(query);
				while(result.next()){
						_id = result.getInt(1);
						_title = result.getString(2);
						 _volume = result.getInt(3);
						_thumbnail = result.getString(4);
						new_arrivals.add(new Book(_id, _title, _volume, _thumbnail));
				}
				query = "SELECT * FROM products ORDER BY product_rating DESC, date_in DESC LIMIT 0,5";
				result = statement.executeQuery(query);
				while(result.next()){
						_id = result.getInt(1);
						_title = result.getString(2);
						 _volume = result.getInt(3);
						_thumbnail = result.getString(4);
						trendings.add(new Book(_id, _title, _volume, _thumbnail));
				}
			%>
			<div class="page_index">
				<%@ include file="./header.jsp" %>
				<div class="section notice_board">
					<div>
							Finest content from <br>
							ours best creator
					</div>
				</div>

				<div class="section item_list" id="list_newest">
					<div class="list_title">New Arrival</div>
					<div class="item_container col5_eq">
						<% for(int i = 0; i < new_arrivals.size(); i++){ %>
						<a class="item" href="./index.jsp?id=<%= new_arrivals.get(i).id %>">
							<div class="thumbnail" style="background-image:url(<%= new_arrivals.get(i).thumbnail %>);"></div>
							<div class="label">
								<div class="item_label"><%= new_arrivals.get(i).title.length() > 40? new_arrivals.get(i).title.substring(0,40)+"..." : new_arrivals.get(i).title %></div>
								<div class="volume_label">Volume <%= new_arrivals.get(i).volume %></div>
							</div>
						</a>
						<%}%>
					</div>
				</div>

				<div class="section item_list" id="list_trending">
					<div class="list_title">Trending</div>
					<div class="item_container col5_eq">
						<% for(int i = 0; i < trendings.size(); i++){ %>
							<a class="item" href="./index.jsp?id=<%= trendings.get(i).id %>">
								<div class="thumbnail" style="background-image:url(<%= trendings.get(i).thumbnail %>);"></div>
								<div class="label">
									<div class="item_label"><%= trendings.get(i).title.length() > 40? trendings.get(i).title.substring(0,40)+"..." : trendings.get(i).title %></div>
									<div class="volume_label">Volume <%= trendings.get(i).volume %></div>
								</div>
							</a>
						<%}%>
					</div>
				</div>
				<%/* 1.4 Change background image
					<div.pick style="background-image: url(editor_pick_1);"></div>
					<div.pick style="background-image: url(editor_pick_2);"></div> */%>
				<div class="section editor_picks">
					<div class="section_title">EDITORS PICKS</div>
					<div class="picks_container col2_eq">
						<div class="pick"></div>
						<div class="pick"></div>
					</div>
				</div>

				<%@ include file ="./footer.jsp" %>
			</div> 
			<%@ include file="./popup.jsp" %>
	</body>
	<script type="text/javascript">
		function submit_search_form(){
			var search_form = document.getElementById("search_form");
			search_form.submit();
		}
	</script>
</html>