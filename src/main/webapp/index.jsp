<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Sign up / Login Form</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<!DOCTYPE html>
<html>
<head>
	<title>Slide Navbar</title>
	<link rel="stylesheet" type="text/css" href="slide navbar style.css">
</head>
<body>
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form action="register" method="get">
					<label for="chk" aria-hidden="true">Sign up</label>
					<input type="text" name="username" placeholder="username">
					<input type="email" name="email" placeholder="email">
					<input type="text" name="phoneno" placeholder="Phoneno">
					<input type="password" name="passwordData" placeholder="password">
					<button>Sign up</button>
				</form>
			</div>

			<div class="login">
				<form action="success" method="get">
					<label for="chk" aria-hidden="true">Login</label>
					<input type="text" name="username" placeholder="username">
					<input type="password" name="passwordData" placeholder="password">
					<button>Login</button>
				</form>
			</div>
	</div>
</body>
</html>
<!-- partial -->
  
</body>
</html>
