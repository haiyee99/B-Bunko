<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/index.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<div class="page_index">
			<header class="navbar">
				<a href="#" class="nav_icon"><img src="#"></a>
				<div class="nav_content">
					<div class="nav_content_wrapper">
						<div class="nav_link">
							<div class="nav_link_wrapper">
								<a href="#">MANGA</a>
								<a href="#">LIGHT NOVEL</a>
							</div>
						</div>
						<div class="nav_acc">
							<a href="#" class="button button_1">SIGN IN</a>
							<a href="#" class="button button_2">SIGN UP</a>
						</div>
					</div>
				</div>
			</header>

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

			<div class="section rank_list" id="list_newest">
				<div class="rank_title">New Arrival</div>
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

			<div class="section rank_list" id="list_trending">
				<div class="rank_title">Trending</div>
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
				<div class="section_title">EDITOR PICKS</div>
				<div class="picks_container col2_eq">
					<div class="pick"></div>
					<div class="pick"></div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function submit_search_form(){
			var search_form = document.getElementById("search_form");
			search_form.submit();
		}
	</script>
</html>