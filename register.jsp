<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/login.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<body>
		<div class="loginRegister">
			<div class="dummy"></div>
			<div class="form">
				<a href="./index.jsp" class="form_icon"><img href="#"></a>
				<div class="switch_form_text">Already have an account? <a href="./login.jsp" class="link_color">Sign In</a></div>
				<form class="loginForm" action="utility/doRegister.jsp">
					<div class="input_container">
						<div class="label">Username</div>
						<input type="text" name="user_name">
					</div>
					<div class="input_container">
						<div class="label">Email</div>
						<input type="email" name="user_email">
					</div>
					<div class="input_container">
						<div class="label">Password</div>
						<input type="password" name="user_password">
					</div>
					<div class="input_container">
						<div class="label">Confirm Password</div>
						<input type="password" name="user_confirm">
					</div>
					<div class="input_container">
						<input type="checkbox" name="user_terms">
						I agree on term and condition
					</div>
					<div class="input_container">
						<input type="submit" class="button button_2" value="SIGN UP">
					</div>
				</form>
			</div>
		</div>
	</body>
</html>