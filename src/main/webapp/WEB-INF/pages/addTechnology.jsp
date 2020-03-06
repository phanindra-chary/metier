<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>AddTechnologies</title>
</head>
<body>

<div class="w3-container" style="Padding: 205px 16px">
		<form:form id="form1" name="form1" method="post" action="technologyProcess" modelAttribute="technologyForm">
			<table width="200" border="0" align="center"
				class="table table-striped">
				<tr>
					<td><fieldset>
							<legend>Add Technologies</legend>
							<table width="609" border="0" align="center">
								<thead>
									<tr>
										<th>Technology Name</th>
										<th>Section Duration</th>
										<th>No Of Questions</th>
										<th>Complexity</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach varStatus="us" var="technology" items="${technologyForm.technologies}">
										<tr>
										<td>
										    <form:select path="technologies[${us.index}].technologyName">
												<form:option value="0" label="--- Select ---" />
												<c:forEach varStatus="status" var="technoName" items="${sessionScope.technologies}">
    											<form:option value="${technoName}" label="${technoName}" />
												</c:forEach>
											</form:select></td>   
										<%-- 	<td><form:input path="technologies[${us.index}].technologyName" value="${technology.technologyName}" /></td> --%>
											<td><form:input	path="technologies[${us.index}].sectionDuration" value="${technology.sectionDuration}" /></td>
											<td><form:input	path="technologies[${us.index}].noOfQuestions" value="${technology.noOfQuestions}" /></td>
											<td>
										    <form:select path="technologies[${us.index}].complexity">
												<form:option value="0" label="--- Select ---" />
												<c:forEach varStatus="status" var="complexity" items="${sessionScope.complexities}">
    											<form:option value="${complexity}" label="${complexity}" />
												</c:forEach>
											</form:select></td>
										<%-- <td><form:input	path="technologies[${us.index}].complexity" value="${technology.complexity}" /></td> --%>
										</tr>
										<tr> </tr>
										<tr> </tr>
									</c:forEach></table>
                                     <tr><td><input type="submit" value="Create" class="w3-button w3-round-large w3-green w3-hover-green" /></td> </tr>
						</fieldset></td>
				</tr>
			</table>

		</form:form>
	</div>
 
			
</body>
</html>
<jsp:include page="footer.jsp"/>