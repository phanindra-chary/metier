

<jsp:include page="UserHeader.jsp"/>
<html>
<body>
	<div class="w3-container w3-center" style="padding:300px">
	<form style="padding:20px">
	<table border="0px"  align="center">
	
	<table  align="center"  border="0px" height="105px" width="250px" class="well">
	<th>
	<tr>
	<th style="padding: 12px 12px">Course</th>
	
	<th style="padding: 12px 12px">Assessment</th>
	
	<th style="padding: 12px 12px">Problem solved</th>
	
	<th style="padding: 12px 12px">Marks</th>
	
	</tr>
	
	<tr>
	<td style="padding: 12px 12px">
	${courseName}</td>
	<td style="padding: 12px 12px">
	${assessmentName}</td>
	<!-- <td><i class="fa fa-wrong-circle" style="font-size:28px;color:green">&#x2714;</i></td> -->
	<td style="padding: 12px 12px" >${percentage}%&nbsp;&nbsp;<progress value="${percentage}" max="100"></progress> </td>
	<td style="padding: 12px 12px" >${marks}/${totalQuestions}&nbsp;&nbsp; </td>
	</tr>
	<!-- <tr>
	<td style="padding: 12px 12px">
	JEE Advanced Set-1
	</td>
	<td><i class="fa fa-" style="font-size:28px;color:red">&#10006;</i></td>
	<td>0/100&nbsp;&nbsp;<progress value="0" max="100"></progress> </td>
	</tr> -->
	</th>
	</table>
	
	</table>
	</form>
	</div>
	<footer class="w3-center w3-teal">
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












	