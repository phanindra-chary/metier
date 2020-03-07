<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script>
	$().ready(function() {
		if (document.referrer != 'http://localhost:8181/') {
			history.pushState(null, null, 'submission.jsp');
			window.addEventListener('popstate', function() {
				history.pushState(null, null, 'submission.jsp');
			});
		}
	});
</script>
<style>
</style>


</head>
<body>
	<div class="fixed-header">
		<div class="top">
			<div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold"
				id="myNavbar">
				<a href="index.jsp" class="w3-bar-item w3-red w3-button"
					style="font-family: 'Futura Md Bt', sans-serif;">METIER</a>
				<!-- Right-sided navbar links -->
				<div class="w3-right w3-hide-small">
					<div class="w3-container">
						<a href="index.jsp" class="w3-bar-item w3-button">Home</a>
						<div class="w3-dropdown-hover">
							<button class=" w3-bar-item w3-button w3-green">
								<i class="glyphicon glyphicon-user"></i>${emp}</button>
							<div class="w3-dropdown-content w3-bar-block w3-card-4">
								<a href="userProfile" class="w3-bar-item w3-button"> </a> <a
									href="userProfile" class="w3-bar-item w3-button">My Profile</a>
								<a href="logout" class="w3-bar-item w3-button">Logout</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

	<%-- <jsp:useBean id="pagedListHolder" scope="request"
				type="org.springframework.beans.support.PagedListHolder" />
			<c:url  value="/QuestionPaper1.html" var="pagedLink"> 
				<c:param name="p" value="~" />
			</c:url> --%>
	<form:form method="post" action="submitQuestionList"
		modelAttribute="questionBankList">

		<div class="w3-cantainer" style="padding: 10px 10px">
			&nbsp;&nbsp;&nbsp;&nbsp;
			<h4>
				<i class="fa fa-info-circle" style="font-size: 24px"></i>&nbsp;This
				Section(<%= session.getAttribute("technologyName") %>) has <%= session.getAttribute("size") %> Questions
			</h4>
			<hr>
			<div class="w3-right " width="1px" height="1px">
				<jsp:include page="TimeTrial.jsp" /></div>
			<hr>
		</div>

		</div>
		<hr class="w3-black">
		<div class="container" style="margin-top: 20px;">


			<table class="question" align="center" width="100%" height="10%"
				border="1" style="padding-top:0px">
				<td>
					<%-- <core:if test="${!empty questionBank}"> --%> <%
					int i = (Integer) session.getAttribute("index");
						int status = 0;%> 
			
						<core:forEach varStatus="status" var="questionPaperCommand"
						items="${questionBankList.questionBank}">
						<form:form type="hidden" name="question" />
						<form:input type="hidden"
							value="${questionPaperCommand.questionNumber}"
							path="questionBank[${status.index}].questionNumber"
							name="questionNumber[<%=i%>]" />

						<h4 class=" w3-light-blue w3-text-white" width="100%" height="10%">
							&nbsp;&nbsp;&nbsp;&nbsp;
							<core:out value="<%=i + 1%>"></core:out>
							<core:out value="."></core:out>
						</h4>
									<div class="w3-container w3-well w3-light-grey" style="padding:20px">
						<table  width="100%" height="10%" border="0" >
				<td>
						<core:out value="Question :"></core:out>
						<core:out value="${questionPaperCommand.questionDescription}"></core:out>
						<br>
						<br>
						</td>
						</table>
						</div>
						<hr>
						&nbsp;&nbsp;&nbsp;&nbsp;<form:radiobutton name="option[<%=i%>]" id="op1"
							path="questionBank[${status.index}].answer"
							value="${questionPaperCommand.option1}" />
							${questionPaperCommand.option1}
							<br>
					&nbsp;&nbsp;&nbsp;&nbsp;<form:radiobutton name="option[<%=i%>]" id="op2"
							path="questionBank[${status.index}].answer"
							value="${questionPaperCommand.option2}" />
							${questionPaperCommand.option2}
				<br>
				&nbsp;&nbsp;&nbsp;&nbsp;<form:radiobutton name="option[<%=i%>]" id="op3"
							path="questionBank[${status.index}].answer"
							value="${questionPaperCommand.option3}" />
							${questionPaperCommand.option3}
				<br>

				&nbsp;&nbsp;&nbsp;&nbsp;<form:radiobutton name="option[<%=i%>]" id="op4"
					path="questionBank[${status.index}].answer"
					value="${questionPaperCommand.option4}" />
				${questionPaperCommand.option4}
<br><br><br>
				</td>
			</table>
			<%-- <tr>
						<td>  <input type="hidden" name="previous" value="<%=i - 1%>" />
							                    <input type="submit" VALUE="previous" action="QuestionPaper">
							                    <input type="hidden" name="hidden" value="<%=i + 1%>" />                     
							<input type="submit"VALUE="next" action="QuestionPaper">                           
						</td>
					</tr> --%>
					<%-- <a id="prev" href="<c:url value="/fetchQuestionPrev"/>" onClick="prevOnClick()">Prev</a>   <a id="next" href="<c:url value="/fetchQuestionNext"/>" onClick="nextOnClick()" >Next</a> --%>
					<div class="w3-container w3-right">
					<ul class="pagination">
					<!-- <li class="w3-button"><a onclick="prevOnClick()" class="">Prev</a></li> -->
					<li class="w3-button  w3-hover-blue"><a onclick="nextOnClick()" class="">Next</a></li>
					 <li class="w3-button  w3-hover-blue"><a onclick="submitOnClick()" class="">Submit Exam</a></li>
					</ul>
					</div>
			</core:forEach>
			<%-- </core:if> --%>
			<%-- </table><tg:paging pagedListHolder="${pagedListHolder}"
					pagedLink="${pagedLink}" /> --%>


			<%--  <a href="<c:url value="/fetchQuestionPrev${questionBank.answer}"/>">Prev</a> 
                 <!-- <button id="myBtn" onclick="previousButton()" type="button">Previous</button> -->
        <a href="<c:url value="/fetchQuestionNext${questionBank.answer}"/>">Next</a>
		<input type="submit" VALUE="Submit Exam"/></td> --%>

		</div>

	</form:form>


	<script>
		function prevOnClick() {
			var selectedAnswer;
			if (document.getElementById("op1").checked) {
				selectedAnswer = document.getElementById("op1").value;
			} else if (document.getElementById("op2").checked) {
				selectedAnswer = document.getElementById("op2").value;
			} else if (document.getElementById("op3").checked) {
				selectedAnswer = document.getElementById("op3").value;
			} else if (document.getElementById("op4").checked) {
				selectedAnswer = document.getElementById("op4").value;
			}

			//alert("Selected Value.."+selectedAnswer);
			if (selectedAnswer) {
				var str1 = "fetchQuestionPrev?selectedAnswer=";
				var url2 = str1.concat(selectedAnswer);
				location.href = url2;
			}
		}

		/*  function submition() {
		   var txt;
		   if (confirm("Do you want to submit!")) {
		 	 
			    location.href="submitQuestionList";
		   }  
		 } */
	</script>
        
	<script>
		function nextOnClick() {
		 
			var selectedAnswer;
			if (document.getElementById("op1").checked) {
				selectedAnswer = document.getElementById("op1").value;
			} else if (document.getElementById("op2").checked) {
				selectedAnswer = document.getElementById("op2").value;
			} else if (document.getElementById("op3").checked) {
				selectedAnswer = document.getElementById("op3").value;
			} else if (document.getElementById("op4").checked) {
				selectedAnswer = document.getElementById("op4").value;
			}

                alert("<%=session.getAttribute("cmin")%>");
			//alert("Selected Value.."+selectedAnswer);
			if (selectedAnswer) {
				var str1 = "fetchQuestionNext?selectedAnswer=";
				var url2 = str1.concat(selectedAnswer);
				location.href = url2;
			}
		}
	</script>
	
	<script>
		function submitOnClick() {
			var selectedAnswer;
			var status="submitted";

			if (document.getElementById("op1").checked) {
				selectedAnswer = document.getElementById("op1").value;
			} else if (document.getElementById("op2").checked) {
				selectedAnswer = document.getElementById("op2").value;
			} else if (document.getElementById("op3").checked) {
				selectedAnswer = document.getElementById("op3").value;
			} else if (document.getElementById("op4").checked) {
				selectedAnswer = document.getElementById("op4").value;
			}

			//alert("Selected Value.."+selectedAnswer);
			if (selectedAnswer) {
				var str1 = "submitQuestionList?selectedAnswer=";
				var url2 = str1.concat(selectedAnswer);
				location.href = url2;
			}
		}
	</script>
</body>
</html>