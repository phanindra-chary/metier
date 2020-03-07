<jsp:include page="header.jsp"/>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fetch Result</title>
</head>
<body>

      <div class="w3-container" style="padding: 250px 16px">
   

<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Fetched Result</legend>
						<table width="609" border="0" align="center">

							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Course Id</td>
								<td colspan="3">${courseId}
								</td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Assessment Id</td>
								<td colspan="3">${assessmentId}</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">User Name</td>
								<td colspan="3">${userName}</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Result Id</td>
								<td colspan="3">${resultId}</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Marks</td>
								<td colspan="3">${marks}</td>
								<td>&nbsp;</td>
							</tr>
							
							
							
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								
								
								<td>&nbsp;</td>
							</tr>

						</table>

					</fieldset></td>
			</tr>
		</table>
</div>

</body>
</html>
<jsp:include page="footer.jsp"/>