 <jsp:include page="header.jsp"/>
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
<div class="w3-container" style="Padding:205px 16px">
	<form:form id="course" name="upload" action="uploadFileQuestion" method="POST">
		<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Upload QuestionBank</legend>
						<table width="609" border="0" align="center">
							 							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">File to upload</td>
								<td colspan="3"><label><input type="file" name="file">
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Name of file</td>
								<td colspan="3"><label> <input type="text" name="name">
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							 
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_submit" id="btn_submit" value="Upload" 
								class="w3-button w3-round-large w3-green w3-hover-green"/></td>
								
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
 

<%-- 
<jsp:include page="header.jsp"/><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head> 
<style type="text/css">
body
{
	border-top:0px;
	padding-top:150px;
	text-align: center;
}
</style>
</head>
<body>

	<h2>Choose a file to upload</h2>
	
	<form method="POST" action="uploadFileQuestion">
		
		<center>File to upload: <input type="file" name="file"> <br /> <br> <br></center>
		Name: <input type="text" name="name"><br /> <br /> 
		
		<input type="submit"  value="Upload"> Press here to upload the file!
	</form>
</body>
</html> --%>