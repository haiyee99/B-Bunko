<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/index.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<%@ page import="java.util.Calendar" %>

		<%
			String id = request.getParameter("id");
			Boolean hasId = (id != null);
		%>

		<%
		if(!hasId){ %>
			<div class="page_index">
				<%@ include file="./header.jsp" %>
				<form class="section search_form" id="search_form" action="#">
					<div class="input_container">
						<i class="fas fa-search" onclick="submit_search_form();"></i>
						<input type="text" name="#" placeholder="Search">
					</div>
					<select name="#" required>
						<option value="" disabled selected hidden>Category</option>
						<option value="#">Dummy 1</option>
						<option value="#">Dummy 2</option>
						<option value="#">Dummy 3</option>
					</select>
				</form>

				<div class="section notice_board"></div>

				<div class="section item_list" id="list_newest">
					<div class="list_title">New Arrival</div>
					<div class="item_container col5_eq">
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
			<div class="manga_detail_popup">
				<div class="detail_container">
					<div class="close_btn">
						<a class="fas fa-times" href="./index.jsp"></a>
					</div>
					<div class="manga_detail">
						<div class="title_author_star">
							<div class="title_wrapper">
								<div class="cell_title">Title</div>
								<div class="cell_value">Pikadut The Manga</div>
							</div>
							<div class="author_wrapper">
								<div class="cell_title">Author</div>
								<div class="cell_value">Anon</div>
							</div>
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
							<div class="cell_title">Price</div>
							<div class="cell_value">Rp. 200.000,00 (tax included)</div>
						</div>
						<div class="publisher_genre">
							<div class="publisher_wrapper">
								<div class="cell_title">Publisher</div>
								<div class="cell_value">Lorem Ipsum</div>
							</div>
							<div class="genre_wrapper">
								<div class="cell_title">Genres</div>
								<div class="cell_value">Comedy</div>
							</div>
						</div>
						<div class="synopsis_wrapper">
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