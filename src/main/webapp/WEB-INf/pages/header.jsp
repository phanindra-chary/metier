<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif;
text-decoration: none;}
body, html {
    height: 100%;
    line-height: 1.8;
}
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("C:/Users/ellendulas/Downloads/adminCheck.jpg");
    min-height: 100%;
    background-attachment: fixed;
}

.w3-bar .w3-button {
    padding: 5x;
}
fieldset { 
     display: block;
     margin-left: 2px;
     margin-right: 2px;
     padding-top: 0.35em;
     padding-bottom: 0.625em;
     padding-left: 0.75em;
     padding-right: 0.75em;
     border: 2px groove (internal value);
    }
.w3-bar .w3-button {
    padding: 10px;
}
.links {
	color: #fff;
	text-decoration: none;
}

.links:hover {
	color: #fff;
	text-decoration: none;
}

.profile-links {
	font-size: 12px;
	font-family: 'Roboto', sans-serif;
	border-bottom: 1px solid #e9e9e9;
	box-sizing: border-box;
	display: block;
	padding: 0 11px;
	line-height: 23px;
	color: red;
	
}

.profile-links:hover {
	background-color: black;
	color: white;
	text-decoration:none;
}

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
text-decoration: none;
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
/* Add some padding on document's body to prevent the content
    to go underneath the header and footer */


.fixed-header, .fixed-footer {
	width: 100%;
	position: fixed;
	
	padding: 0px 0px;
	color: blue;
}

.fixed-header img {
	position: absolute;
	background-position: top;
	float: left;
	width: 100px;
	height: 45px;
	background: #555;
}

.fixed-header {
	top: 0;
}

.fixed-footer {
	bottom: 0;
}

.container {
	width: 100%;
	margin: 0 auto; /* Center the DIV horizontally */
}

.nav .a {
	color: #fff;
	text-decoration: none;
	padding: 7px 25px;
	display: inline-block;
}

#home-option {
	background-color: white;
	color: black;
}

.hover:hover {
	background-color: white;
	color: black;
}
</style>

</head>
<body>
<header class=" w3-bar w3-blue w3-card w3-animation-zoom w3-bold"  id="home" >

	<div class="fixed-header">
		<div class="   container w3-blue w3-card  w3-bold w3-header w3-well" id="myNavbar">
			<a href="adminHome" class="w3-bar-item w3-red w3-hover-red w3-button" style="text-decoration:none">Metier</a>
			
			<div class=" w3-right  w3-bar-item  w3-hide-small w3-blue">
				<nav>
				<div class="upper-links dropdown ">
						<a class="links">Courses</a>
						<div class="dropdown-menu">
							<div class="profile-li ">
								<a class="profile-links" href="createCourse">Create	Course</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="fetchCourse">View Course</a>
							</div>
							<!-- <div class="profile-li">
								<a class="profile-links" href="FetchAssessment.jsp">Fetch
									Assessment</a>
							</div> -->
						</div>
					</div>
					<div class="upper-links dropdown ">
						<a class="links">Assessment</a>
						<div class="dropdown-menu">
							<div class="profile-li ">
								<a class="profile-links" href="assessment">Create
									Assessment</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="deleteAssessment">Delete
									Assessment</a>
							</div>
							<!-- <div class="profile-li">
								<a class="profile-links" href="updateAssessment">Update
									Assessment</a>
							</div> -->
							<div class="profile-li">
								<a class="profile-links" href="viewAssessments">View
									Assessment</a>
							</div>
							
						  <div class="profile-li">
								<a class="profile-links" href="attemptAssessment">Activate
									Assessment</a>
							</div>  
							</div>
					</div>
					<div class="upper-links dropdown">
						<a class="links">Question Bank</a>
						<div class="dropdown-menu">
							<div class="profile-li">
								<a class="profile-links" href="uploadToDatabase">Upload
									Question Bank</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="deleteQuestionBank">Drop
									Question Bank</a>
							</div>
							
						</div>
					</div>
					<div class="upper-links dropdown">
						<a class="links">Question</a>
						<div class="dropdown-menu">
							<div class="profile-li">
								<a class="profile-links" href="insertQuestion">Add
									Question</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="viewQuestionBank">View
									Questions</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="deleteQuestion">Delete
									Question</a>
							</div>
							<div class="profile-li">
								<a class="profile-links" href="updateQuestionProcess">Update
									Question</a>
							</div>
						</div>
					</div>
					<div class="upper-links dropdown">
						<a class="links">Result</a>
						<div class="dropdown-menu">
							<div class="profile-li">
								<a class="profile-links" href="ViewResult">View
									Result</a>
							</div>
						</div>
					</div>
					<div class="upper-links dropdown">
						<a class="links"><i class="glyphicon glyphicon-user"></i><span class=" w3-hide-small"><%= session.getAttribute("userName")%></span>
						</a>
						<div class="dropdown-menu">
						<div class="profile-li">
								<a class="profile-links" href="AdminHome">Home</a>
							</div>
							<div class="profile-li">
								
								<a class="profile-links" href="adminViewProfile">View Profile</a>
									
								
							</div>
							<div class="profile-li">
								
								<a class="profile-links" href="viewDetails">View status</a>
									
								
							</div>
							<div class="profile-li">
								<a class="profile-links" href="logout">Logout</a>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	
	
	</header>
	
	</body>
	</html>