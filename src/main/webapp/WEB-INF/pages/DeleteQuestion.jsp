<jsp:include page="header.jsp"/><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Delete Question</title>
 
</head>
<body>

<div class="w3-container w3-center" style="padding:250px 16px">  

      <form:form modelAttribute="deletequestion" action="deleteQuestionProcess" method="post">
       <table align="center">
       <h3 class="w3-center">DELETE THE QUESTION</h3>
       
        <tr>
         <td><form:label path="questionNumber">Question Number :</form:label> </td> 
         <td><form:input path="questionNumber" type="text" name="Question Number"/></td><br>
        </tr>
        <td> </td>
        <td> </td>
        <tr> </tr>
        <tr>
         <td> <td><br><input type="submit" value="delete" class="w3-button w3-round-large w3-green w3-hover-green"></td> </td>
        </tr>
       </table>
      </form:form>
      </div>
   <jsp:include page="footer.jsp"/>
</body>
</html>