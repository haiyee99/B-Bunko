<!DOCTYPE html>
<html>
	<head>
		<title>B-Bunko</title>
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
					<%
						String error = request.getParameter("err");

						if(error != null){
							%>
								<div class="errMsg">
									<%
										if(error.equals("1")){
											//name is empty
											%>
												Name must be filled
											<%
										}
										else if(error.equals("2")){
											//email is empty
											%>
												Email must be filled
											<%
										}
										else if(error.equals("3")){
											//password and/or confirm password is empty
											%>
												Password and confirm password must be filled
											<%
										}
										else if(error.equals("4")){
											//password different with confirm password input
											%>
												Wrong password confirmation
											<%
										}
										else if(error.equals("5")){
											//password length < 8
											%>
												Password length must be at least 8
											<%
										}
										else if(error.equals("6")){
											//agree checkbox is not checked
											%>
												You must agree with the terms and conditions
											<%
										}
										else if(error.equals("7")){
											//email is already exists
											%>
												Email is already registered
											<%
										}
									%>
								</div>
							<%
						}
					%>
					<div class="input_container">
						<input type="submit" class="button button_2" value="SIGN UP">
					</div>
				</form>
			</div>
		</div>
	</body>
</html>