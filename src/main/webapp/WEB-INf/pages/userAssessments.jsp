<jsp:include page="UserHeader.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head><title>Assessments</title></head>
<body>
	<div class="w3-container  w3-animate-zoom" style="padding:80px 13px">
	
	<table border="0px" width="1140px">
	<h3 align="center">My Skills</h3>
	<hr>
	 
	<form:form method="post" action="" modelAttribute="assessmentForm">
	<c:forEach varStatus="status" var="assessment" items="${assessmentForm.assessments}">
	<div class="w3-container w3-border-blue w3-hover-border-green w3-light-grey well" style="padding:30px 10px">
	<!-- <image src="‪" class="img-thumbnail" alt="Logo" width="80" height="80">
     </image> -->
	<span class="w3-large"><c:out value="${assessment.assessmentName}"/></span>
	<a href="terms${assessment.assessmentId}" class=" w3-text-white w3-button w3-round-large btn-primary w3-right w3-hover-blue" style="text-decoration:none">Start Assessment</a>
	 
	<a href="evaluate1${assessment.assessmentId}" class=" w3-text-white w3-button w3-round-large btn-primary w3-right w3-hover-blue" style="text-decoration:none">Result</a>&nbsp;&nbsp;
	</div> 
	<div class="w3-container" style="padding:4px 4px"></div>
	</c:forEach>
	</form:form>
	</table>
	
	
	</div>
	<footer class="w3-center w3-teal w3-bottom ">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by  Metier &copy; 2018
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;An Virtusa initiative</p>
<a href="https://www.virtusa.com/"><img src="https://mycareer.virtusa.com/images/social.jpg" align="bottom-" height="65px" width="160px" style="padding:5px" ></img></a>
</footer>
</body>
</html>