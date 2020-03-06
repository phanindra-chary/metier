<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attempt Session</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<link rel="javascript" href="index.js">
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
	<div class="top">
		<div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold"
			id="myNavbar">
			<a href="index.jsp" class="w3-bar-item w3-red w3-button">METIER</a>
			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small">
				<div class="w3-container">
					<a href="index.jsp" class="w3-bar-item w3-button">Home</a>
					<div class="w3-dropdown-hover">
						<button class=" w3-bar-item w3-button w3-green">
							<i class="glyphicon glyphicon-user"></i>User
						</button>
						<div class="w3-dropdown-content w3-bar-block w3-card-4">
							<a href="userProfile.jsp" class="w3-bar-item w3-button w3-blue">
							</a> <a href="userProfile.jsp" class="w3-bar-item w3-button w3-blue">My
								Profile</a> <a href="login.jsp"
								class="w3-bar-item w3-button w3-blue"><i
								class="fa fa-power-off" style="font-size: 14px; color: red"></i>Logout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form:form method="post" action="evaluate" >
	
	<div class="w3-cantainer" style="padding: 10px 10px">
		&nbsp;&nbsp;&nbsp;&nbsp;
		<h4>
			<i class="fa fa-info-circle" style="font-size: 24px"></i>&nbsp;This
			Section(Java-UI Assessment) has 10 Questions
		</h4>
		<div class="w3-right panel w3-teal" width="1px" height="1px">
			<%-- <jsp:include page="Timer.jsp"/> --%>
		</div>
		<hr>
	</div>
	<hr class="w3-black">
	<div>
		<table align="center">
			<core:if test="${!empty questionList}">
				<%
					int i = 0;
				%>


				<core:forEach var="questionPaperCommand" items="${questionList.questionBank}">
					<input type="hidden" name="question" />
					<input type="hidden" value="${questionPaperCommand.questionNumber}"
						name="quesNum[<%=i%>]" />
					<tr>
						<td>
							<h4 class=" w3-light-blue w3-text-white" width="100%"
								height="10%">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<core:out value="<%=i + 1%>"></core:out>
								<core:out value="."></core:out>
							</h4> <core:out value="Question :"></core:out> <core:out
								value="${questionPaperCommand.questionDescription}"></core:out>
						</td>
					</tr>
					<tr>
						<td><input type="radio" name="option[<%=i%>]"
							value="${questionPaperCommand.option1}"> <core:out
								value="${questionPaperCommand.option1}"></core:out></td>
					</tr>
					<tr>
						<td><input type="radio" name="option[<%=i%>]"
							value="${questionPaperCommand.option2}"> <core:out
								value="${questionPaperCommand.option2}"></core:out></td>
					</tr>
					<tr>
						<td><input type="radio" name="option[<%=i%>]"
							value="${questionPaperCommand.option3}"> <core:out
								value="${questionPaperCommand.option3}"></core:out></td>
					</tr>
					<tr>
						<td><input type="radio" name="option[<%=i%>]"
							value="${questionPaperCommand.option4}"> <core:out
								value="${questionPaperCommand.option4}"></core:out></td>
					</tr>


					<tr>
						<td>  <input type="hidden" name="previous" value="<%=i - 1%>" />
							                    <input type="submit" VALUE="previous" action="QuestionPaper">
							                    <input type="hidden" name="hidden" value="<%=i + 1%>" />                     
							<input type="submit"VALUE="next" action="QuestionPaper">                           
						</td>
					</tr>

					<%
						i++;
					%>
				</core:forEach>
	                        

	</core:if>
		</table>
	</div>

	<input type="submit" VALUE="Submit Exam"  />






	<!-- <h4  class=" w3-light-blue w3-text-white" width="100%" height="10%">&nbsp;&nbsp;&nbsp;&nbsp;Q.1 </h4>
	<form>
<table border="1px" width="100%" height="150px" style="padding-top: 0px" >
<td><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;What is HTML ?</h4>
	<hr >
&nbsp;&nbsp;&nbsp;&nbsp;	<input type="radio" name="option" value="a">&nbsp;&nbsp;a.&nbsp;Hyper Text Markup language<br>
&nbsp;&nbsp;&nbsp;&nbsp;	<input type="radio" name="option" value="b">&nbsp;&nbsp;b.&nbsp;Hyderabad Text Markup language<br>
&nbsp;&nbsp;&nbsp;&nbsp;	<input type="radio" name="option" value="c">&nbsp;&nbsp;c.&nbsp;Hyper Text Makeup language<br>
&nbsp;&nbsp;&nbsp;&nbsp;	<input type="radio" name="option" value="d">&nbsp;&nbsp;d.&nbsp;Hyper Text Mixup language<br>
	
	<br>
	<br>

	</table>
	
	</form> -->


	</form:form>
</body>
</html>