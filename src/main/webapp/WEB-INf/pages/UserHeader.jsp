
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>userResult</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="index.css">
<link rel="javascript" href="index.js"> -->
</head>
<style>
.upper-links {
	display: inline-block;
	padding: 0 11px;
	line-height: 23px;
	font-family: 'Roboto', sans-serif;
	letter-spacing: 0;
	color: inherit;
	border: none;
	outline: none;
	font-size: 12px;
}

.dropdown {
	position: relative;
	display: inline-block;
	margin-bottom: 0px;
}

.dropdown:hover {
	background-color: #fff;
}

.dropdown:hover .links {
	color: orange;
}

.profile-li {
	padding-top: 2px;
}

.dropdown:hover .dropdown-menu {
	display: block;
}

.dropdown .dropdown-menu {
	position: absolute;
	top: 100%;
	display: none;
	background-color: #fff;
	color: #333;
	left: 0px;
	border: 0;
	border-radius: 0;
	box-shadow: 0 4px 8px -3px #555454;
	margin: 0;
	padding: 0px;
}
</style>
</head>
<body>
	<div class="w3-top">
		<div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold" id="myNavbar">
			<a class="w3-bar-item w3-red w3-button w3-hover-red" style="text-decoration:none">METIER</a>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<div class="w3-container">
				<a href="userCourses" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"> Courses</a>
					<a href="userHome" class="w3-bar-item w3-button   w3-hover-red" style="text-decoration:none">Home</a>
					<div class="w3-dropdown-hover">
						<button class=" w3-bar-item w3-button w3-green">
							<i class="glyphicon glyphicon-user w3-green"></i><%= session.getAttribute("userName")%>
						</button>
						<div class="w3-dropdown-content w3-bar-block w3-card-4">
							<a href="UserViewProfile" class="w3-bar-item w3-button w3-hover-green" style="text-decoration:none">My
								Profile</a> <a href="login" class="w3-bar-item w3-button w3-hover-green" style="text-decoration:none">Logout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
	</html>