<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ViewResult</title>
</head>
<body>
<div class="w3-container" style="Padding:205px 16px">
	<form:form id="form1" name="form1" modelAttribute="result" method="post" action="viewResultProcess">
		<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>View Result</legend>
						<table width="609" border="0" align="center">
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Course Name</td>
								<td colspan="3"><label> <form:input type="text" name="txt_courseId" id="txt_courseId" path="courseName"/>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Assessment Name</td>
								<td colspan="3"><label><form:input type="text"
										name="txt_assessmentId" id="txt_assessmentId" path="assessmentName"/></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Batch</td>
								<td colspan="3"><label><form:input type="text"
										name="batch" id="batch" path="batch"/></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_submit"
									id="btn_submit" value="View" class="w3-green w3-hover-green"/></td>
								
								<td>&nbsp;</td>
							</tr>
							</table>

					</fieldset></td>
			</tr>
		</table>

	</form:form>
	</div>
</body>
</html>
<jsp:include page="footer.jsp"/>
