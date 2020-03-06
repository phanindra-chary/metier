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
		<form:form method="post" action="fetchCourseProcess" modelAttribute="course">
		
		
		<table width="200" border="0" align="center">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><fieldset>
							<legend>View Course</legend>
							<table width="609" border="0" align="center">
								 <tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Course Name</td>
									<td colspan="3"><form:select path="courseId">
												<form:option value="0" label="--- Select ---" />
													<c:forEach varStatus="us" var="course" items="${sessionScope.courseList}">
												 <form:option value="${course.courseId}" label="${course.courseName}" />
												</c:forEach>
											</form:select>
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
								 <tr><td>&nbsp;</td></tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td width="60">&nbsp;</td>
									<td width="68"><input type="submit" name="btn_submit"
										id="btn_submit" value="view"
										class="w3-button w3-round-large w3-green w3-hover-green" /></td>
									<td>&nbsp;</td>
								</tr>
							</table>

						</fieldset></td>
				</tr>
			</table>
		
		<%-- 
			<table width="200" border="0" align="center"
				class="table table-striped">


				<tr>
					<td><fieldset>
							<legend>View Course</legend>
							<table width="609" border="0" align="center">
								 <tr>
							<td width="69">&nbsp;</td>
								<td colspan="2">Course Name</td>
								<td colspan="3"><label>  <form:select path="courseId">
												<form:option value="0" label="--- Select ---" />
													<c:forEach varStatus="us" var="course" items="${sessionScope.courseList}">
												 <form:option value="${course.courseId}" label="${course.courseName}" />
												</c:forEach>
											</form:select>
						</label></td></tr>  <tr><td><input type="submit" value="View" class="w3-button w3-round-large w3-green w3-hover-green" /></td> </tr>
							</table>
						</fieldset></td>	
				</tr>
			</table>
 --%>
		</form:form>
	</div>
 

</body>
</html><jsp:include page="footer.jsp"/>
