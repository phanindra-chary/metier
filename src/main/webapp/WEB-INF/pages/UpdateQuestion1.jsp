<jsp:include page="header.jsp"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Question</title>
 

</head>

<body>


<div class="top">
  <div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold" id="myNavbar">
    <a href="AdminHome.jsp" class="w3-bar-item w3-red w3-button">Metier</a>
    <div class="w3-right w3-hide-small w3-blue">
     <a href="login.html" class="w3-bar-item w3-button w3-indigo"><i class="glyphicon glyphicon-user"></i>Logout</a>
    </div> 
    </div> 
        
 <div class="w3-container" style="padding:150px 1px">
 <center><b><p><font size="6">Update Question</font></p></b></center>
 
<form:form  modelAttribute="questionBank" method="post" action="updateQuestionProcess1">
<div style="text-align:left">
<table align="center">

<tr>
<td> <form:label path="questionNumber" style="font-size: 20px;"> Question Number </form:label></td> 
<td> <b>:</b>&nbsp; <form:input path="questionNumber" type="text" name="QuestionNumber" value="${questionNumber}"/></td>
</tr>
<tr>
<td> <form:label path="complexity" style="font-size: 20px;"> Complexity</form:label></td> 
<td> <b>:</b>&nbsp; <form:input path="complexity" type="text" name="complexity" value="${complexity}"/></td>
</tr>

<tr>
<td> <form:label path="questionDescription" style="font-size: 20px;"> Question Description </form:label></td> 
<td><b>:</b>&nbsp;  <form:input path="questionDescription" type="text" name="QuestionDescription" value="${questionDescription}"/> </td>
</tr>
<tr>
<td> <form:label path="option1" style="font-size: 20px;"> option1 </form:label></td> 
<td><b>:</b>&nbsp;&nbsp;<form:input path="option1" type="text" name="option1" value="${option1}"/></td>
</tr>
<tr>
<td> <form:label path="option2" style="font-size: 20px;"> option2 </form:label></td> 
<td><b>:</b>&nbsp;&nbsp;<form:input path="option2" type="text" name="option2" value="${option2}"/></td>
</tr>
<tr>
<td> <form:label path="option3" style="font-size: 20px;"> option3 </form:label></td> 
<td><b>:</b>&nbsp;&nbsp;<form:input path="option3" type="text" name="option3" value="${option3}"/></td>
</tr>
<tr>
<td> <form:label path="option4" style="font-size: 20px;"> option4 </form:label></td> 
<td><b>:</b>&nbsp;  <form:input path="option4" type="text" name="option4" value="${option4 }"/></td>
</tr>
<tr>
<td> <form:label path="technology" style="font-size: 20px;"> Technology </form:label></td> 
<td><b>:</b>&nbsp;  <form:input path="technology" type="text" name="technology" value="${technology}"/></td>
</tr>
<tr>
<td> <form:label path="answer" style="font-size: 20px;"> Answer </form:label></td> 
<td> <b>:</b>&nbsp; <form:input path="answer" type="text" name="answer" value="${answer}"/> 
</tr>
<tr> <br> </tr>
<tr><td></td><td>&nbsp;&nbsp;&nbsp;<input type="submit" name=submit class="w3-button w3-green" value=update /></td>
</tr>
</table>
</div>
</form:form>
</div> 
    <footer class="w3-center w3-teal w3-padding-15">
  <a href="header.jsp" class="w3-button w3-blue"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.virtusa.com" title="Virtusa" target="_blank" class="w3-hover-text-blue">Virtusa</a></p>

&copy; All Rights Reserved by Virtusa
</footer>

</body>
</html>