<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Kalathmika - Home</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #fffff	; /* Bright yellow */
	
	text-align: center;
	padding-top: 100px;
	height: 100vh;
	margin: 0;
}

h1 {
	font-size: 42px;
	color: #343a40;
	margin-bottom: 60px;
}

.login-options {
	display: flex;
	justify-content: center;
	gap: 40px;
}

.login-options a {
	padding: 15px 35px;
	font-size: 18px;
	text-decoration: none;
	color: #fff;
	background-color: #007bff;
	border-radius: 8px;
	transition: 0.3s;
}

.login-options a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
<img src="images/nadaraja.jpg" alt="Kalathmika Logo" style="width: 200px; margin-bottom: 20px;">
<img src="images/bharat.webp" alt="Kalathmika Logo" style="width: 200px; margin: 20px; float: left;">
<img src="images/bh.webp" alt="Kalathmika Logo" style="width: 200px; margin: 20px; float: right;">
	<h1>🌸 Kalathmika 🌸</h1>
	<h2>🌸...Temple of dance Art...🌸</h2>
	<h2>Preserving Tradition Through Graceful Movements</h2>

	<div class="login-options">
		<!-- <a href="adminlogin">Admin Login</a><br> -->
		<a href="${pageContext.request.contextPath}/adminlogin">Admin Login</a>
		<br> <a href="${pageContext.request.contextPath}/studentlogin">Student Login</a>
	</div>

</body>
</html>
