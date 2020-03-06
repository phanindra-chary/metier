<jsp:include page="header.jsp"/><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Delete Question Bank</title>
</head>
<body>
<div class="w3-container " style="padding:250px 16px">  
 <form:form modelAttribute="questionBank" method="post" action="deleteQuestionBankProcess">
 
 <table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Delete Question Bank</legend>
						<table width="609" border="0" align="center">
								<td width="56">&nbsp;</td></tr>
								
								<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Technology Name</td>
									<td colspan="3"><label><form:select path="technology">
												<form:option value="0" label="--- Select ---" />
												
													<c:forEach varStatus="us" var="technology" items="${sessionScope.technologies}">
												 <form:option value="${technology}" label="${technology}" />
												</c:forEach>
											</form:select></label></td> 
									<td width="56">&nbsp;</td>
								
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_submit"
									id="btn_submit" value="Drop it" class="w3-button w3-round-large w3-green w3-hover-green"/></td>
								<td>&nbsp;</td>
							</tr>
							</table>

					</fieldset></td>
			</tr>
		</table>
 
       
      </form:form>
</div> 
<jsp:include page="footer.jsp"/>
 

</body>
</html>