<jsp:include page="header.jsp" />
<%@ taglib	uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Question</title>
 
</head>

<body>

		<div class="w3-container" style="padding: 205px 16px">
            <form:form id="form1" name="form1" modelAttribute="questionBank" action="insertQuestionProcess" method="POST">
		<table width="200" border="0" align="center">
			 
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Add Question</legend>
						<table width="609" border="0" align="center">
							 		 <tr>
							<td width="69">&nbsp;</td>
								<td colspan="2">Complexity</td>
								<td colspan="3"><label>  <form:radiobuttons name="txt_complexity"
									id="txt_complexity" path="complexity" items="${complexity}" /></td>
							<td><form:errors path="complexity"
									cssStyle="color: #ff0000;" />
						</label></td></tr>
						
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Technology</td>
								<td colspan="3"><label>  <form:input path="technology"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Question Description</td>
								<td colspan="3"><label>  <form:input path="questionDescription"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">option1</td>
								<td colspan="3"><label>  <form:input path="option1"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">option2</td>
								<td colspan="3"><label>  <form:input path="option2"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">option3</td>
								<td colspan="3"><label>  <form:input path="option3"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">option4</td>
								<td colspan="3"><label>  <form:input path="option4"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">answer</td>
								<td colspan="3"><label>  <form:input path="answer"  placeholder=""  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_submit"
									id="btn_submit" value="Add to Bank" class="w3-button w3-round-large w3-green w3-hover-green"/></td>
								
								<td>&nbsp;</td>
							</tr>
							</table>

					</fieldset></td>
			</tr>
		</table>

	</form:form>
            
            
            
            
            
            
           <%--  
			<form:form modelAttribute="questionBank" method="post"
				action="insertQuestionProcess">
				<div style="text-align: left">
					<table align="center">

						<tr>

							<td><form:label path="complexity" style="font-size: 20px;">Complexity</form:label></td>
							<td><b>:</b>&nbsp;<form:radiobuttons name="txt_complexity"
									id="txt_complexity" path="complexity" items="${complexity}" /></td>
							<td><form:errors path="complexity"
									cssStyle="color: #ff0000;" /></td>


						</tr>
						<tr>
							<td><form:label path="technology" style="font-size: 20px;"> Technology </form:label></td>
							<td><b>:</b>&nbsp; <form:input path="technology" type="text"
									name="technology" /></td>
						</tr>
						<tr>
							<td><form:label path="questionDescription"
									style="font-size: 20px;"> Question Description </form:label></td>
							<td><b>:</b>&nbsp; <form:input path="questionDescription"
									type="text" name="QuestionDescription" /></td>
						</tr>
						<tr>
							<td><form:label path="option1" style="font-size: 20px;"> option1 </form:label></td>
							<td><b>:</b>&nbsp;&nbsp;<form:input path="option1"
									type="text" name="option1" /></td>
						</tr>
						<tr>
							<td><form:label path="option2" style="font-size: 20px;"> option2 </form:label></td>
							<td><b>:</b>&nbsp;&nbsp;<form:input path="option2"
									type="text" name="option2" /></td>
						</tr>
						<tr>
							<td><form:label path="option3" style="font-size: 20px;"> option3 </form:label></td>
							<td><b>:</b>&nbsp;&nbsp;<form:input path="option3"
									type="text" name="option3" /></td>
						</tr>
						<tr>
							<td><form:label path="option4" style="font-size: 20px;"> option4 </form:label></td>
							<td><b>:</b>&nbsp; <form:input path="option4" type="text"
									name="option4" /></td>
						</tr>
						<tr>
							<td><form:label path="answer" style="font-size: 20px;"> Answer </form:label></td>
							<td><b>:</b>&nbsp; <form:input path="answer" type="text"
									name="answer" />
						</tr>
						<tr>
							<br>
						</tr>
						<tr>
							<td></td>
							<td>&nbsp;&nbsp;&nbsp;<input type="submit" name=submit
								class="w3-button w3-round-large w3-green w3-hover-green" value=insert /></td>
						</tr>
					</table>
				</div>
			</form:form> --%>
		</div>
		<footer class="w3-center w3-teal w3-bottom">

			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		<p>
			Powered by <a href="https://www.virtusa.com" title="Virtusa"
				target="_blank" class="w3-hover-text-blue">Virtusa</a>
		</p>

		&copy; All Rights Reserved by Virtusa </footer>
</body>
</html>