<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<link rel="stylesheet" href="login.css">
<link rel="javascript" href="index.js">

<title>Login</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$().ready(function() {
     if(document.referrer != 'http://localhost:8181/'){ 
          history.pushState(null, null, 'login');
          window.addEventListener('popstate', function () {
              history.pushState(null, null, 'login');
          });
      }
  });
  
  function validatelogin(){
  var a = document.getElementById("txt_username").value;
  var b = document.getElementById("txt_password").value;
   var letters="/^[A-Za-z]+$/" 
if(!a.length)
  {
   alert("Username should not be empty");
   return false;
  }
  else if(!b.length)
  {
   alert("Password should not be empty");
   return false;
  }else{
	return true;
}
}
</script> 
</head>
<body>

	<div class="w3-top">
		<div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold"
			id="myNavbar">
			<a href="index" class="w3-bar-item w3-red w3-button w3-hover-red" style="text-decoration:none">Metier</a>

			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small w3-blue">

				<a href="about" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i
					class="fa fa-th"></i>ABOUT</a> <a href="contact"
					class="w3-bar-item w3-button   w3-hover-red" style="text-decoration:none"><i
					class="fa fa-envelope fa-fw"></i>CONTACT</a> <a href="login"
					class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i
					class="glyphicon glyphicon-user" ></i>Login</a> <a
					href="register" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i
					class="glyphicon glyphicon-user"></i>SignUp</a>
			</div>
		</div>
	</div>
	<div class="w3-container w3-animate-zoom" style="Padding:135px 16px">
	<form:form  id="form1" name="form1" modelAttribute="employee" method="post" action="loginProcess">
		<table width="526" border="0" align="center">
			<tr>
				<td width="520">&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset >
						<legend >Login</legend>
						<table width="499" border="0" align="center">
							<tr>
								<td colspan="5">&nbsp;</td>
								<center><image src="C:/Users/ellendulas/Downloads/Screenshot (21).png" width="100px" height="100px" /></center>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="3" style="color: red"><c:if
										test="${not empty result}">${result}</c:if></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td width="50">&nbsp;</td>
								<td width="114">UserName</td>
								<td colspan="2"><label> 
								 <div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
<form:input type="text"	name="txt_username" id="txt_username"  class="form-control" style=" width : 159px;" path="userName" placeholder="username"/>
								</label></td></div>
								<td width="131">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>Password</td>
								<td colspan="2"><label> 
								<div class="input-group">
								<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
<form:input type="password" name="txt_password" id="txt_password"   class="form-control" style=" width : 160px;" path="password" placeholder="password"/>
								</label></td></div>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="109"><label></label></td>
								<td width="73"><label> 
<input type="submit" name="btn_login" id="btn_login" value="Login"class="w3-button w3-round-large w3-green w3-hover-green" onclick="return validatelogin()"/>
								</label></td>
								<td><a href="register" style="text-decoration:none">Register Here >>></a></td>
							</tr>
						</table>
					</fieldset></td>
			</tr>
		</table>
	</form:form>
	</div>
	<footer class="w3-center w3-teal w3-bottom">
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
