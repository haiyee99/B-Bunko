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

			String query = "";
			ResultSet result;
		%>

		<%
		if(!hasId){ %>
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
			</div> <%
		} else{ %>
			<%
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
				query = "SELECT * FROM products WHERE product_id = " + id;
				result = statement.executeQuery(query);
				if(result.next()){
					_title = result.getString(2);
					_volume = result.getInt(3);
					_thumbnail = result.getString(4);
					_author = result.getString(5);
					_rating = result.getInt(6);
					_price = result.getInt(7);
					_publisher = result.getString(8);
					_genres = result.getString(9);
					_synopsis = result.getString(10);
					_sample = result.getString(11);
					_series = result.getString(12);
					book = new Book(_id, _title, _volume, _thumbnail, _author, _rating, _price, _publisher, _genres, _synopsis, _sample, _series);
				}

				Vector<Book> series = new Vector<Book>();
				query = "SELECT * FROM products WHERE product_series = '"+_series+"' LIMIT "+0+","+5+"";
				result = statement.executeQuery(query);
				while(result.next()){
					_id = result.getInt(1);
					_title = result.getString(2);
						_volume = result.getInt(3);
					_thumbnail = result.getString(4);
					series.add(new Book(_id, _title, _volume, _thumbnail));
				}
			%>
			<div class="manga_detail_popup">
				<div class="detail_container">
					<div class="close_btn">
						<a class="fas fa-times" href="./index.jsp"></a>
					</div>
					<div class="manga_detail">
						<div class="title_author_star">
							<div class="title_wrapper">
								<div class="cell_title">Title</div>
								<div class="cell_value"><%= book.title +" - Volume "+ book.volume %></div>
							</div>
							<div class="author_wrapper">
								<div class="cell_title">Author</div>
								<div class="cell_value"><%= book.author %></div>
							</div>
							<span class="star_wrapper" value="<%= book.rating %>">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<!-- <span class="manga_rating">()</span> -->
							</span>
						</div>
						<div class="price_wrapper">
							<div class="cell_title">Price</div>
							<div class="cell_value">Rp. <%= book.price %>,00 (tax included)</div>
						</div>
						<div class="publisher_genre">
							<div class="publisher_wrapper">
								<div class="cell_title">Publisher</div>
								<div class="cell_value"><%= book.publisher%></div>
							</div>
							<div class="genre_wrapper">
								<div class="cell_title">Genres</div>
								<div class="cell_value"><%= book.genres %></div>
							</div>
						</div>
						<div class="synopsis_wrapper">
							<div class="cell_title">Synopsis</div>
							<div class="cell_value">
								<%= book.synopsis %>
							</div>
						</div>
						<div class="button_wrapper">
							<a class="button button_1">FREE SAMPLE</a>
							<a class="button button_2">BUY NOW</a>
						</div>
					</div>
					<div class="manga_series item_list" id="list_series">
						<div class="list_title">Series</div>
						<div class="item_container col5_eq">
							<% for(int i=0; i < series.size(); i++){ %>
							<a class="item" href="#">
								<div class="thumbnail" style="background-image:url(<%= series.get(i).thumbnail %>);"></div>
								<div class="label">
									<div class="item_label"><%= series.get(i).title.length() > 40? series.get(i).title.substring(0,40)+"..." : series.get(i).title %></div>
									<div class="volume_label">Volume <%= series.get(i).volume %></div>
								</div>
							</a>
							<%}%>
							<span class="next"><i class="fas fa-chevron-right centerize"></i></span>
							<span class="prev"><i class="fas fa-chevron-left centerize"></i></span>
						</div>
					</div>
				</div>
				<div class="thumbnail_container" style="background-image:url(<%= book.thumbnail %>);"></div>
			</div>
		<% } %>
	</body>
	<script type="text/javascript">
		function submit_search_form(){
			var search_form = document.getElementById("search_form");
			search_form.submit();
		}
	</script>
</html>