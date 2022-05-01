<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Login</title>
<link rel="stylesheet" href="admin.css" media="all" type="text/css">
</head>

<body>
	<form action="admin" method="get">
	<h2>Admin Login</h2>

	<div class="container">
		<label for="text"><b>Email</b></label>
		<input type="text" placeholder="username" name="username" required>
		<label for="password"><b>Password</b></label>
		<input type="password" placeholder="password" name="password" required>
		<button type="submit">Login</button>
	</div>
</form>
</body>
</html>