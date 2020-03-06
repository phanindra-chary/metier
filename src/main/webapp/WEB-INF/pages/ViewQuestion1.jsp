<jsp:include page="header.jsp" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Result</title>
</head>
<body>


	<div class="w3-container" style="Padding: 205px 16px">
		<form:form id="form1" name="form1" modelAttribute="result"
			method="post" action="viewResultProcess">
			<table width="200" border="0" align="center"
				class="table table-striped">


				<tr>
					<td><fieldset>
							<legend>View Questions</legend>
							<table width="609" border="0" align="center">
								<thead>
									<tr>
										<th>Question Number</th>
										<th>Question Descriptions</th>
										<th>option1</th>
										<th>option2</th>
										<th>option3</th>
										<th>option4</th>
										<th>complexity</th>
										<th>technology</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach var="question" items="${questionList}">
										<tr>
											<td><c:out value="${question.questionNumber}" /></td>
											<td><c:out value="${question.questionDescription}" /></td>
											<td><c:out value="${question.option1}" /></td>
											<td><c:out value="${question.option2}" /></td>
											<td><c:out value="${question.option3}" /></td>
											<td><c:out value="${question.option4}" /></td>
											<td><c:out value="${question.complexity}" /></td>
											<td><c:out value="${question.technology}" /></td>
										</tr>
																</c:forEach>
							</table>

						</fieldset></td>
				</tr>
			</table>

		</form:form>
	</div>
</body>
</html>
<jsp:include page="footer.jsp" />
