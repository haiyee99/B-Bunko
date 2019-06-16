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

			Vector<Book> search_result = new Vector<Book>();

			Integer _id = 0;
			String _title = "";
			Integer _volume = 0;
			String _thumbnail = "";

			String query = "SELECT * FROM products WHERE product_title LIKE '%"+search_key+"%' AND product_category = '"+search_category+"'";
			ResultSet result = statement.executeQuery(query);

			while(result.next()){
				_id = result.getInt(1);
				_title = result.getString(2);
				 _volume = result.getInt(3);
				_thumbnail = result.getString(4);
				search_result.add(new Book(_id, _title, _volume, _thumbnail));
			}
		%>

		<div class="search_result">
			<%@ include file="./header.jsp" %>

			<div class="item_list">
				<div class="list_title">SHOWING <%= search_result.size() %> RESULT</div>
				<div class="item_container col5_eq"> <%
					for(int i = 0; i < search_result.size(); ++i){ %>
						<a class="item" href="./search_result.jsp?id=<%= search_result.get(i).id %>&search_key=<%= search_key %>&search_category=<%= search_category %>">
							<div class="thumbnail" style='background-image:url(<%=search_result.get(i).thumbnail%>);'></div>
							<div class="label">
								<div class="item_label"><%=search_result.get(i).title.length() > 40? search_result.get(i).title.substring(0,40)+"..." : search_result.get(i).title%></div>
								<div class="volume_label">Volume <%=search_result.get(i).volume%></div>
							</div>
						</a> <%
					} %>
				</div>
			</div>
			<%@ include file="./footer.jsp" %>
		</div>
		<%@ include file="./popup.jsp" %>
	</body>
</html>