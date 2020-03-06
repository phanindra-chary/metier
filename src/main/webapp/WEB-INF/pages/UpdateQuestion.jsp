<jsp:include page="header.jsp"/><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 

</head>

<body>


 <div class="w3-container" style="padding:150px 1px">
 <center><b><p><font size="6">Update Question</font></p></b></center>
 
<form:form  modelAttribute="questionBank" method="post" action="updateQuestion">
<div style="text-align:left">
<table align="center">


								
								
<tr>
<td> <form:label path="questionNumber" style="font-size: 20px;"> Question Number </form:label></td> 
<td><b>:</b>&nbsp;  <form:input path="questionNumber" type="text" name="questionNumber"/></td>
</tr>

<tr> <br> </tr>
<tr><td></td><td>&nbsp;&nbsp;&nbsp;<input type="submit" name=submit class="w3-button w3-green" value=insert /></td>
</tr>
</table>
</div>
</form:form>
</div> 
    <footer class="w3-center w3-teal w3-bottom">
 
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by <a href="https://www.virtusa.com" title="Virtusa" target="_blank" class="w3-hover-text-blue">Virtusa</a></p>

&copy; All Rights Reserved by Virtusa
</footer>

</body>
</html>