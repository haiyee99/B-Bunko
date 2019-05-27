<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
	<style>
		body{ margin: 0; }
		.star_wrapper{
			display: inline-block;
			border: 1px solid black;
		}
		.star_wrapper .fa-star{ font-size: 5vw; color: #888; cursor: pointer; }
		.star_wrapper .star_selected{ color: rgb(130, 218, 253); }

		.star_wrapper[value="1"] .fa-star:nth-child(1){ color: rgb(130, 218, 253); }
		.star_wrapper[value="2"] .fa-star:nth-child(1){ color: rgb(130, 218, 253); }
		.star_wrapper[value="2"] .fa-star:nth-child(2){ color: rgb(130, 218, 253); }
		.star_wrapper[value="3"] .fa-star:nth-child(1){ color: rgb(130, 218, 253); }
		.star_wrapper[value="3"] .fa-star:nth-child(2){ color: rgb(130, 218, 253); }
		.star_wrapper[value="3"] .fa-star:nth-child(3){ color: rgb(130, 218, 253); }
		.star_wrapper[value="4"] .fa-star:nth-child(1){ color: rgb(130, 218, 253); }
		.star_wrapper[value="4"] .fa-star:nth-child(2){ color: rgb(130, 218, 253); }
		.star_wrapper[value="4"] .fa-star:nth-child(3){ color: rgb(130, 218, 253); }
		.star_wrapper[value="4"] .fa-star:nth-child(4){ color: rgb(130, 218, 253); }
		.star_wrapper[value="5"] .fa-star:nth-child(1){ color: rgb(130, 218, 253); }
		.star_wrapper[value="5"] .fa-star:nth-child(2){ color: rgb(130, 218, 253); }
		.star_wrapper[value="5"] .fa-star:nth-child(3){ color: rgb(130, 218, 253); }
		.star_wrapper[value="5"] .fa-star:nth-child(4){ color: rgb(130, 218, 253); }
		.star_wrapper[value="5"] .fa-star:nth-child(5){ color: rgb(130, 218, 253); }
	</style>

	<span class="star_wrapper" value="5">
		<i class="fas fa-star"></i>
		<i class="fas fa-star"></i>
		<i class="fas fa-star"></i>
		<i class="fas fa-star"></i>
		<i class="fas fa-star"></i>
	</span>

</body>
</html>