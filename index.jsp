<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
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
		%>

		<%
		if(!hasId){ %>
			<%	Vector<Book> new_arrivals = new Vector<Book>();
				Vector<Book> trendings = new Vector<Book>(); 
				String notice_board; // See 1.1
				String editor_pick_1, editor_pick_2; // See 1.4

				/* 1.0 Pull from database to vector
					String query = "select * from ... where ...";
					ResultSet result = statment.executeQuery(query);
					while(result.next() && new_arrivals.size() < 5){
						String _title = result.getString("column_name");
						Integer _volume = result.getInt("column_name");
						String _url = result.getString("column_name");
						Book book = new Book(_title, _volume, _url);
						new_arrivals.add(book);
					}

					Do the same for Vector trendings!
				*/ %>
			<div class="page_index">
				<%@ include file="./header.jsp" %>

				<% /* 1.1 Change background image
					<div.notice_board style="background-image: url(notice_board);"></div>
				*/ %>
				<div class="section notice_board"></div>

				<div class="section item_list" id="list_newest">
					<div class="list_title">New Arrival</div>
					<div class="item_container col5_eq">
						<%	/* 1.2 Change into for loop 
								for(int i = 0; i < new_arrivals.size(); ++i){
									Book curr = new_arrivals.get(i);
									String curr_title = curr.title;
									Integer curr_volume = curr.volume;
									String curr_thumbnail = curr.thumbnail;

									<a.item href="...">
										<div.thumbnail style="background-image: url(curr_thumbanail)"></div>
										<div.label>
											<div.item_label>curr_title</div>
											<div.volume_label>curr_volume</div>
										</div>
									</a>
								}
							*/ %>
						<a class="item" href="./index.jsp?id=1">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
					</div>
				</div>

				<div class="section item_list" id="list_trending">
					<div class="list_title">Trending</div>
					<div class="item_container col5_eq">
						<%	/* 1.3 Change into for loop 
								for(int i = 0; i < trendings.size(); ++i){
									Book curr = trendings.get(i);
									String curr_title = curr.title;
									Integer curr_volume = curr.volume;
									String curr_thumbnail = curr.thumbnail;

									<a.item href="...">
										<div.thumbnail style="background-image: url(curr_thumbanail)"></div>
										<div.label>
											<div.item_label>curr_title</div>
											<div.volume_label>curr_volume</div>
										</div>
									</a>
								}
							*/ %>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
						<a class="item" href="#">
							<div class="thumbnail"></div>
							<div class="label">
								<div class="item_label">Pikadut The Manga</div>
								<div class="volume_label">Volume 1</div>
							</div>
						</a>
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

				<%@ include file="./footer.jsp" %>
			</div> <%
		} else{ %>
			<%/* 2.0 Pull book detail from database according to id
				String query = "select * from ... where id = " + id;
				ResultSet result = statement.executeQuery(query);
				Book book;
	
				if(result.next()){
					String _title = result.getString("column_name");
					String _author = result.getString("column_name");
					...
					String _thumbnail = result.getString("column_name");

					book = new Book(_title, _author, ..., _thumbnail);
				}
			*/%>
			<div class="manga_detail_popup">
				<div class="detail_container">
					<div class="close_btn">
						<a class="fas fa-times" href="./index.jsp"></a>
					</div>
					<div class="manga_detail">
						<div class="title_author_star">
							<div class="title_wrapper">
								<%/*2.1 Change Title
									<div.cell_value>book.title</div>
								*/%>
								<div class="cell_title">Title</div>
								<div class="cell_value">Pikadut The Manga</div>
							</div>
							<div class="author_wrapper">
								<%/*2.2 Change Author
									<div.cell_value>book.author</div>
								*/%>
								<div class="cell_title">Author</div>
								<div class="cell_value">Anon</div>
							</div>
							<%/*2.3 Change Star Rating and Rank
								<span.star_wrapper value="book.rating">
									...
									<span.manga_rating>(book.rank)</span>
								</span>
							*/%>
							<span class="star_wrapper" value="1">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<span class="manga_rating">(0001)</span>
							</span>
						</div>
						<div class="price_wrapper">
							<%/*2.4 Change Price
								<div.cell_value>Rp. book.price (tax included)</div>
							*/%>
							<div class="cell_title">Price</div>
							<div class="cell_value">Rp. 200.000,00 (tax included)</div>
						</div>
						<div class="publisher_genre">
							<div class="publisher_wrapper">
								<%/*2.5 Change Publisher
									<div.cell_value>book.publisher</div>
								*/%>
								<div class="cell_title">Publisher</div>
								<div class="cell_value">Lorem Ipsum</div>
							</div>
							<div class="genre_wrapper">
								<%/*2.6 Change Genres
									String genres = "";
									for(String x : book.genres){ genres += x; }
									<div.cell_value>genres</div>
								*/%>
								<div class="cell_title">Genres</div>
								<div class="cell_value">Comedy</div>
							</div>
						</div>
						<div class="synopsis_wrapper">
							<%/*2.6 Change Synopsis
								<div.cell_value>book.synopsis</div>
							*/%>
							<div class="cell_title">Synopsis</div>
							<div class="cell_value">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
						<div class="button_wrapper">
							<a class="button button_1">FREE SAMPLE</a>
							<a class="button button_2">BUY NOW</a>
						</div>
					</div>

					<%/*2.7 Change Series (Edit ./model/customClass : Book if needed)
						<div.item_container>
						for(int i = 0; ...; ...){
							<a.item>
								...
							</a>
						}
						</div>
					*/%>
					<div class="manga_series item_list" id="list_series">
						<div class="list_title">Series</div>
						<div class="item_container col5_eq">
							<a class="item" href="#">
								<div class="thumbnail"></div>
								<div class="label">
									<div class="item_label">Pikadut The Manga</div>
									<div class="volume_label">Volume 1</div>
								</div>
							</a>
							<a class="item" href="#">
								<div class="thumbnail"></div>
								<div class="label">
									<div class="item_label">Pikadut The Manga</div>
									<div class="volume_label">Volume 1</div>
								</div>
							</a>
							<a class="item" href="#">
								<div class="thumbnail"></div>
								<div class="label">
									<div class="item_label">Pikadut The Manga</div>
									<div class="volume_label">Volume 1</div>
								</div>
							</a>
							<a class="item" href="#">
								<div class="thumbnail"></div>
								<div class="label">
									<div class="item_label">Pikadut The Manga</div>
									<div class="volume_label">Volume 1</div>
								</div>
							</a>
							<a class="item" href="#">
								<div class="thumbnail"></div>
								<div class="label">
									<div class="item_label">Pikadut The Manga</div>
									<div class="volume_label">Volume 1</div>
								</div>
							</a>

							<span class="next"><i class="fas fa-chevron-right centerize"></i></span>
							<span class="prev"><i class="fas fa-chevron-left centerize"></i></span>
						</div>
					</div>
				</div>
				<div class="thumbnail_container"></div>
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