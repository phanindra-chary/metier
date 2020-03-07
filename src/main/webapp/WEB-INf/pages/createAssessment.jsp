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
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://unpkg.com/gijgo@1.9.11/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.11/css/gijgo.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="w3-container" style="Padding:205px 16px">
	<form:form id="assessment" modelAttribute="assessment"  name="createAssessment" action="assessmentProcess" method="POST">
		<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Create Assessment</legend>
						<table width="609" border="0" align="center">
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Course Name</td>
									<td colspan="3"><label><form:select path="courseId">
												<form:option value="0" label="--- Select ---" />
												
													<c:forEach varStatus="us" var="course" items="${sessionScope.courseList}">
												 <form:option value="${course.courseId}" label="${course.courseName}" />
												</c:forEach>
											</form:select></label></td> 
									<td width="56">&nbsp;</td>
								
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Assessment Name</td>
								<td colspan="3"><label><form:input path="assessmentName" placeholder="Enter assessmentName" />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
						<%-- 	<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Start Date</td>
								<td colspan="3"><label><form:input type="date" path="startDate" placeholder="enter start Date"/>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">End Date</td>
								<td colspan="3"><label>  <form:input type="date" path="endDate"  placeholder="enter End Date"/><br>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr> --%>
							
						<%-- 	<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Start Date</td>
								<td colspan="3"><label><form:input  path="startDate" id="datepicker-13" class="form-control" required="required"/>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">End Date</td>
								<td colspan="3"><label>  <form:input  path="endDate" id="datepicker-14" class="form-control" required="required"/><br>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
						 --%>		<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">No Of Technologies</td>
								<td colspan="3"><label><form:input id="technoCount" path="noOfTechnologies" placeholder="" onblur="validCount()"/>
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_submit" id="btn_submit" value="Continue"
								class="w3-button w3-round-large w3-green w3-hover-green" /></td>
								<td>&nbsp;</td>
								<td width="68"><input type="reset" name="btn_submit" id="btn_submit" value="Reset"
								class="w3-button w3-round-large w3-green w3-hover-green" /></td>
							</tr>
							</table>

					</fieldset></td>
			</tr>
		</table>

	</form:form>
	</div>
 <!-- <script>
         $(function() {
            $( "#datepicker-13" ).datepicker();
            $( "#datepicker-13" ).datepicker("show");
         });
         $(function() {
             $( "#datepicker-14" ).datepicker();
             $( "#datepicker-14" ).datepicker("show");
          });
      </script> -->


  <script> 
            /*   var date=$('#dob').datepicker({dateFormat:'yy-mm-dd'}) */
            
  
  
  var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
        $("#datepicker-13").datepicker({
 dateFormat:'mm-dd-yyyy',
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome',
            minDate: today,
            maxDate: function () {
                return $('#endDate').val();
            }
        });

 var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
        $("#datepicker-14").datepicker({
 dateFormat:'mm-dd-yyyy',
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome',
            minDate: today,
            maxDate: function () {
                return $('#endDate').val();
            }
        });
 </script>
 <script type="text/javascript">
 
		function validCount() {
            
			
		   var enteredTechnologyCount =   document.getElementById("technoCount").value;
		   var AvaliableTechnologies = <%=session.getAttribute("sizeOfTechnologies")%>
		   if((enteredTechnologyCount <= 0) || (enteredTechnologyCount > AvaliableTechnologies))
			   {  
			      alert("Only "+AvaliableTechnologies+" technologies are available !"); 
			      location.href="assessment"
			   }
		   }
		
	</script>
</body>
</html>
<jsp:include page="footer.jsp"/>
