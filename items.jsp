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

            String search_key = null;
			String search_category = request.getParameter("category");

			Vector<Book> search_result = new Vector<Book>();

			Integer _id = 0;
			String _title = "";
			Integer _volume = 0;
			String _thumbnail = "";

			String query = "SELECT * FROM products WHERE product_category = '"+search_category+"' ORDER BY product_title, product_volume";
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
                <%
                    if(search_category.equals("LN")){
                        %>
                            <div class="list_title">SHOWING <%= search_result.size() %> LIGHT NOVEL(S)</div>
                        <%
                    }
                    else if(search_category.equals("MG")){
                        %>
                            <div class="list_title">SHOWING <%= search_result.size() %> MANGA(S)</div>
                        <%
                    }
                %>
				<div class="item_container col5_eq"> <%
					for(int i = 0; i < search_result.size(); ++i){ %>
						<a class="item" href="./items.jsp?id=<%= search_result.get(i).id %>&category=<%= search_category %>">
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