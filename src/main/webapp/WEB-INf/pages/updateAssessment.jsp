<jsp:include page="header.jsp" />
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
		<form:form method="post" action="updateAssessmentProcess" modelAttribute="assessmentForm">
			<table width="200" border="0" align="center"
				class="table table-striped">


				<tr>
					<td><fieldset>
							<legend>Update Assessment</legend>
							<table width="609" border="0" align="center">
								<thead>
									<tr>
										<th>Assessment Id</th>
										<th>Assessment Name</th>
										<th>Course Id</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach varStatus="us" var="assessment" items="${assessmentForm.assessments}">
                    <tr>
                        <td></td><td><form:input path="assessments[${us.index}].assessmentId"  value="${assessment.assessmentId} "/></td>
                        <td><form:input path="assessments[${us.index}].assessmentName" value="${assessment.assessmentName}"/></td>
                        <td><form:input path="assessments[${us.index}].courseId" value="${assessment.courseId}"/></td>
                    </tr>
                     <tr>
							<th></th>
							<th>Technology Id</th>
							<th>Technology Name</th>
							<th>section Duration</th>
							<th>No Of Questions</th>
						</tr>
					<c:forEach varStatus="status" var="technology" items="${assessment.technology}">
						<tr>
							<td></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].technologyId"  value="${technology.technologyId} "/></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].technologyName"  value="${technology.technologyName} "/></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].sectionDuration"  value="${technology.sectionDuration} "/></td> 
							<td><form:input path="assessments[${us.index}].technology[${status.index}].noOfQuestions"  value="${technology.noOfQuestions} "/></td> 
						</tr>
					</c:forEach>
    </c:forEach>
	<%-- <c:forEach items="${technologyFrom.technologies}" var="technology" varStatus="status">
	 --%>	  
		</tr><tr><td><input type="submit" value="Update" /></td> </tr>
							 
						</fieldset></td>
				</tr>
			</table>

		</form:form>
	</div>















<%-- 
      <form:form  method="post" action="updateAssessmentProcess" modelAttribute="assessmentForm">
	<table width="609" border="0" align="center">
								<thead>
	<tr><th></th>
		<th>Assessment Id</th>
		<th>Assessment Name</th>
		<th>Course Id</th>
 	</tr>
 	<c:forEach varStatus="us" var="assessment" items="${assessmentForm.assessments}">
                    <tr>
                        <td></td><td><form:input path="assessments[${us.index}].assessmentId"  value="${assessment.assessmentId} "/></td>
                        <td><form:input path="assessments[${us.index}].assessmentName" value="${assessment.assessmentName}"/></td>
                        <td><form:input path="assessments[${us.index}].courseId" value="${assessment.courseId}"/></td>
                    </tr>
                     <tr>
							<th></th>
							<th>Technology Id</th>
							<th>Technology Name</th>
							<th>section Duration</th>
							<th>No Of Questions</th>
						</tr>
					<c:forEach varStatus="status" var="technology" items="${assessment.technology}">
						<tr>
							<td></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].technologyId"  value="${technology.technologyId} "/></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].technologyName"  value="${technology.technologyName} "/></td>
							<td><form:input path="assessments[${us.index}].technology[${status.index}].sectionDuration"  value="${technology.sectionDuration} "/></td> 
							<td><form:input path="assessments[${us.index}].technology[${status.index}].noOfQuestions"  value="${technology.noOfQuestions} "/></td> 
						</tr>
					</c:forEach>
    </c:forEach>
	<c:forEach items="${technologyFrom.technologies}" var="technology" varStatus="status">
		  
		</tr><tr><td><input type="submit" value="Update" /></td> </tr>
	</c:forEach>
	 
</table>	
<br/>


		</form:form>  --%>
</body>
</html>
<jsp:include page="footer.jsp" />