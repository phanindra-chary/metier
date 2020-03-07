<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     
<%--   <form:form  id="assessment" modelAttribute="assessmentHelper" name="createAssessment"  method="POST">

    <form:input path="courseName" placeholder="Enter courseName" value="${courseName}"/>
    
    <form:input path="assessmentName" placeholder="Enter assessmentName" value="${assessmentHelper.assessmentName}"/>
     
     
     
           Technologies:
           <% List<String> technos = request.getAttribute("favoriteFrameworks");
               for(String framework: technos) {
                  out.println(framework);
               }
            %>
    
            <c:forEach var="listValue" items="${assessmentHelper.technologyList}">
				<form:input path="technologyList" placeholder="" value="${listValue}"/>
				<br>
			</c:forEach>
            
    </form:form> --%>
   
   Hi Iam Working chill..;)
     
</body>
</html>