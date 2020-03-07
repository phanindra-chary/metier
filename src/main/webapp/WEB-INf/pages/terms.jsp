<jsp:include page="UserHeader.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container" style="padding: 150px 0px">
	<html>
<head>
<title>Terms and conditions</title>
 
</head>

<body onload="disableSubmit()">
	<form:form id="form1" name="form1" modelAttribute="questionBankList"
		method="post" action="QuestionPaper">
		<h2>The Terms and Conditions are as follows:</h2>
		<ol type="1">
			<li>Proctors are not allowed to provide comments on any of the
				questions appearing on the examination.</li>
			<li>DO NOT leave your seat at any time unless the proctor has
				secured your workstation.</li>
			<li>All questions on this examination are equally weighted.</li>
			<li>No materials, documents, notes, or memoranda of any sort are
				to be taken from the examination area. YOU ARE PERMANENTLY
				PROHIBITED FROM EVER DISCLOSING THE CONTENT OF EXAMINATION
				QUESTIONS.</li>
			<li>Proctors are authorized to maintain a secure and proper
				examination administration. You may not communicate with other
				examines during the examination. Cheating or permitting cheating
				(such as letting someone copy your answers or providing information
				on the content of examination questions to others), will be cause
				for automatic disqualification and dismissal from the examination.</li>
			<li>ANY use of a cell phone or electronic device while an
				examination is in progress (including usage during a break) is
				grounds for denial of reentry to the examination room and will
				result in your examination scores being withheld and/or invalidated.</li>

</ol>
			<input type="checkbox" name="terms" id="terms" onchange="activateButton(this)"> I Agree Terms & Coditions
			<!-- <input type="submit" name="submit" class="w3-button w3-green" value=Start /> -->
			<input type="submit" name="submit" class="w3-button w3-green" id="submit" value="Start">
			
			
	</form:form>
</div>
<script>
	function disableSubmit() {
		document.getElementById("submit").disabled = true;
	}

	function activateButton(element) {

		if (element.checked) {
			document.getElementById("submit").disabled = false;
		} else {
			document.getElementById("submit").disabled = true;
		}

	}
</script>
<footer class="w3-center w3-teal w3-padding-14">
	<div class="w3-xlarge w3-section">
		<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
			class="fa fa-instagram w3-hover-opacity"></i> <i
			class="fa fa-snapchat w3-hover-opacity"></i> <i
			class="fa fa-pinterest-p w3-hover-opacity"></i> <i
			class="fa fa-twitter w3-hover-opacity"></i> <i
			class="fa fa-linkedin w3-hover-opacity"></i>
	</div>
	<p>
		Powered by <a href="https://www.virtusa.com" title="Virtusa"
			target="_blank" class="w3-hover-text-blue" align="center">Virtusa</a>
	</p>

	&copy; All Rights Reserved by Virtusa
</footer>
</body>
</html>