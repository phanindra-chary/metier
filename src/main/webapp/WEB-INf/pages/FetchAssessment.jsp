<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="w3-container" style="Padding: 205px 16px">
		<form:form method="post" action="AdminHome" modelAttribute="assessmentForm">
			<table width="200" border="0" align="center"
				class="table table-striped">


				<tr>
					<td><fieldset>
							<legend>View Assessment</legend>
							<c:forEach varStatus="us" var="assessment" items="${assessmentForm.assessments}">
							<table width="609" border="0" align="center">
								<thead>
									<tr>
									    <th></th>
										<th>Assessment Id</th>
										<th>Assessment Name</th>
										<th>Course Id</th>
									</tr>
								</thead>
								<tbody>
										<tr>
											<td></td>
											<td><c:out value="${assessment.assessmentId}" /></td>
											<td><c:out value="${assessment.assessmentName}" /></td>
											<td><c:out value="${assessment.courseId}" /></td>
										</tr>
									<tr></tr>
									 <tr>
							<th></th>
							<th>Technology Id</th>
							<th>Technology Name</th>
							<th>section Duration</th>
							<th>No Of Questions</th>
						</tr>
					<c:forEach varStatus="" var="technology" items="${assessment.technology}">
						<tr>
							<td></td>
							<td><c:out value="${technology.technologyId}" /></td>
							<td><c:out value="${technology.technologyName}" /></td>
							<td><c:out value="${technology.sectionDuration}" /></td>
							<td><c:out value="${technology.noOfQuestions}" /></td>
						</tr>
						<tr></tr>
					</c:forEach>
					      <tr><td></td><td></td><td></td><td><td></td><td> <%-- <a href="updateAssessment?cId=${assessment.courseId}&&aId=${assessment.assessmentId}">Edit Assessment</a> --%></td></tr>
					      
							</table>
</c:forEach>
						</fieldset></td>	
				</tr>
			</table>

		</form:form>
	</div>
 

</body>
</html><jsp:include page="footer.jsp"/>
