<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>UserProfile</title>

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
<form modelAttribute="employeeList" method="POST" action="view">
 <div class="w3-container" style="padding: 100px 16px">
		<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Profile</legend>
						<table width="1080" border="0" align="center">
						<tr>
						<th>Employee Id</th>
						<td></td>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email Id</th>
						<th>Status</th>
						<th>Role</th>
						<th>Gender</th>
						<th>Technology</th>
						<th>Address</th>
						</tr>
						<c:forEach items="${employeeList}" var="employee" varStatus="us">
                       <tr>
                      <td><c:out value="${employee.empId}"></c:out></td>
                      <td></td>
                      <td><c:out value="${employee.firstName}"></c:out></td>
                      <td><c:out value="${employee.lastName}"></c:out></td> 
                      <td><c:out value="${employee.email}"></c:out></td>
                      <td>&nbsp;&nbsp;<c:out value="${employee.status}"></c:out></td>
                      <td><c:out value="${employee.role}"></c:out></td>
                      <td><c:out value="${employee.gender}"></c:out></td>
                      <td><c:out value="${employee.technology}"></c:out></td>
                      <td><c:out value="${employee.address}"></c:out></td>
                      <td><center><a class="w3-button w3-green w3-round-large btn-sm" href="updateStatus?id=${employee.empId}">Activate</a>
                      <a class="w3-button  w3-round-large  btn-sm w3-red" href="deleteEmp?id=${employee.empId}">Deny</a></center></td>
                      </tr>
                      </c:forEach>

					</fieldset>
			
		</table>
</div>
</body>
</form>
</html>
