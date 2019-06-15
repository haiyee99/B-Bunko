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

		<% /*1.0 Get Parameters from URL
			String search_key = request.getParameter("search_key");
			String search_category = request.getParameter("search_category");
			*/ %>

		<% 
			Vector<Book> result = new Vector<Book>();
			
			// Add Dummy Book (Delete this)
			for(int i = 0; i < 12; ++i){
				Book curr = new Book("Pikadut The Manga", i+1, "./assets/img/pikachu.jpg");
				result.add(curr);
			}

			/*1.1 Fetch data from database
				String query = "select * from database where ... like *search_key* and ... = search_category";
				ResultSet result = statement.executeQuery(query);
			*/

			/*1.2 Add to result Vector
				while(result.next()){
					String title = result.getString("column_name");
					Integer volume = result.getInt("column_name");
					String thumbnail = result.getString("column_name");

					Book curr = new Book(title, volume, thumbnail);
					result.add(curr);
				}
			*/

			Integer result_count = result.size(); 
		%>

		<div class="search_result">
			<%@ include file="./header.jsp" %>

			<div class="item_list">
				<div class="list_title">SHOWING <%=result_count%> RESULT</div>
				<div class="item_container col5_eq"> <%
					for(int i = 0; i < result_count; ++i){ 
						Book curr = result.get(i); 
						String curr_title = curr.title;
						Integer curr_volume = curr.volume;
						String curr_thumbnail = curr.thumbnail; %>
						<a class="item" href="./index.jsp?id=1">
							<div class="thumbnail" style='background-image=url(<%=curr_thumbnail%>);'></div>
							<div class="label">
								<div class="item_label"><%=curr_title%></div>
								<div class="volume_label">Volume <%=curr_volume%></div>
							</div>
						</a> <%
					} %>
				</div>
			</div>

			<%@ include file="./footer.jsp" %>
		</div>
	</body>
</html>