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
<form:form  method="GET" action=" " modelAttribute="course">

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
									<td colspan="2">Course Id</td>
									<td colspan="3"><label><c:out value="${sessionScope.displayCourse.courseId}" />
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
								 <tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Course Name</td>
									<td colspan="3"><label><c:out value="${sessionScope.displayCourse.courseName}" />
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
								<tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Pass Percentage</td>
									<td colspan="3"><label><c:out value="${sessionScope.displayCourse.passPercentage}" />
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
							</table>
						</fieldset></td>
				</tr>
			</table>

		</form:form>




			<%-- <table width="200" border="0" align="center"
				class="table table-striped">

				<tr>
					<td><fieldset>
							<legend>View Course</legend>
							<table width="609" border="0" align="center">
							 
									<tr>
									    <th></th>
										<th>Course Id</th>
										<th>Course Name</th>
										<th>Pass Percentage</th>
									</tr>
								 
										<tr>
											<td></td></br>
											<td><c:out value="${sessionScope.displayCourse.courseId}" /></td>
											<td><c:out value="${sessionScope.displayCourse.courseName}" /></td>
											<td><c:out value="${sessionScope.displayCourse.passPercentage}" /></td>
										</tr>
									<tr></tr>
								 
						 
							 
							</table>
						</fieldset></td>	
				</tr>
			</table>
</form:form> --%>
	</div>
 

</body>
</html><jsp:include page="footer.jsp"/>
