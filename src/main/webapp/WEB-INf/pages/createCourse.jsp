
<jsp:include page="header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="w3-container" style="Padding: 205px 16px">
		<form:form id="course" name="create" action="create" method="POST">
			<table width="200" border="0" align="center">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><fieldset>
							<legend>Create Course</legend>
							<table width="609" border="0" align="center">
								 <tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Course Name</td>
									<td colspan="3"><label><form:input
												path="courseName" placeholder="Enter CourseName" />
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
								<tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Pass Percentage</td>
									<td colspan="3"><label><form:input
												path="passPercentage" placeholder="Enter PassPercentage" />
									</label></td>
									<td width="56">&nbsp;</td>
								</tr>
								<tr>
									<td width="69">&nbsp;</td>
									<td colspan="2">Batch</td>
									<td colspan="3"><label><form:input path="batch"
												placeholder="Enter Batch" /> </label></td>
									<td width="56">&nbsp;</td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td width="60">&nbsp;</td>
									<td width="68"><input type="submit" name="btn_submit"
										id="btn_submit" value="Create"
										class="w3-button w3-round-large w3-green w3-hover-green" /></td>

									<td>&nbsp;</td>
								</tr>
							</table>

						</fieldset></td>
				</tr>
			</table>

		</form:form>
	</div>
	<script>
		/* function createCourse()
		{
			alert("You have created new course successfully....");
			window.location.href="create";
		} */
	</script>

</body>
</html>
<jsp:include page="footer.jsp" />
