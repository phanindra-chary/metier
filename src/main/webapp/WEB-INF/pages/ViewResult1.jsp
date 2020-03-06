<jsp:include page="header.jsp"/>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Result</title>
</head>
<body>


<div class="w3-container" style="Padding:205px 16px">
<form:form id="form1" name="form1" modelAttribute="result" method="post" action="viewResultProcess">
		<table width="200" border="0" align="center" class="table table-striped">
			
			
			<tr>
				<td><fieldset>
						<legend>View Result</legend>
						<table width="609" border="0" align="center">
						<thead>
							<tr>
								<th>Result ID</th>
								<th>UserName</th>
      							<th>Assessment Name</th>
     							 <th>course Name</th>
    						 	 <th>Attempt Status</th>
    						 	 <th>Batch</th>
 							   <th>Marks</th>
 							   <th>Percentage</th>
							</tr>
							</thead>
							<tbody>
							
								<c:forEach var="result" items="${resultList}">
                <tr>
                 <td><c:out value="${result.resultid}" /></td>
                  <td><c:out value="${result.userName}" /></td>
                   <td><c:out value="${result.assessmentName}" /></td>
                    <td><c:out value="${result.courseName}" /></td>
                    <td><c:out value="${result.attemptStatus}" /></td>
                     <td><c:out value="${result.batch}" /></td>
                    <td><c:out value="${result.marks}" /></td>
                    <td><c:out value="${result.percentage}" /></td>
                </tr>
            </c:forEach>
							
							</table>

					</fieldset></td>
			</tr>
		</table>

	</form:form>
	</div>
</body>
</html>
<jsp:include page="footer.jsp"/>
