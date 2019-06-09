<!DOCTYPE html>
<html>
	<head>
		<title>Manganone</title>
		<link rel="stylesheet" type="text/css" href="./assets/styles/style.css">
		<link rel="stylesheet" type="text/css" href="./assets/styles/login.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	</head>
	<%-- 
		String error = request.getParameter("err");

		if(error!=null){
			if(error.equals("1")){
				//email is empty
			}
			else if(error.equals("2")){
				//password is empty
			}
			else if(error.equals("3")){
				//incorrect password
			}
		}

	 --%>
	<body>
		<div class="loginRegister">
			<div class="dummy"></div>
			<div class="form">
				<a href="./index.jsp" class="form_icon"><img href="#"></a>
				<div class="switch_form_text">Don't have an account yet? <a href="./register.jsp" class="link_color">Sign Up</a></div>
				<form class="loginForm" action="utility/doLogin.jsp" method="GET">
					<div class="input_container">
						<div class="label">Email</div>
						<input type="email" name="user_email">
					</div>
					<div class="input_container">
						<div class="label">Password</div>
						<input type="password" name="user_password">
					</div>
					<div class="input_container">
						<input type="checkbox" name="user_remember">
						Remember me
					</div>
					<div class="input_container">
						<input type="submit" class="button button_2" value="SIGN IN">
					</div>
				</form>
			</div>
		</div>
	</body>
</html>