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

<title>Registration</title>
<style type="text/css">
/* Add some padding on document's body to prevent the content
    to go underneath the header and footer */
body {
	padding-top: 0px;
	padding-bottom: 0px;
	background-image: url("exam.jpg");
	background-position: 50% 50%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	font-family: Arial, Helvetica, sans-serif;
}

form {border: 3px solid #f1f1f1;}

.fixed-header, .fixed-footer {
	width: 200%;
	position: fixed;
	background: #333;
	padding: 10px 0;
	color: #fff;
}

.fixed-header img {
	position: absolute;
	background-position: top;
	float: left;
	width: 100px;
	height: 45px;
	background: #555;
}

.fixed-header {
	top: 0;
}
.fixed-footer {
	bottom: 0;
}


.container {
	width: 100%;
	margin: 0 auto; /* Center the DIV horizontally */
}

nav a {
	color: #fff;
	text-decoration: none;
	padding: 7px 25px;
	display: inline-block;
}

.imgcontainer {
	 text-align: center;
	margin: 24px 0 12px 0;
}


.table{
	margin-top: 0px; 
	padding-top:0;
}
#signup-option{
   background-color : white;
   color : black;
}

.hover:hover {
  background-color : white;
color : black;
  }
  
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 18px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: auto;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #8a2d11;
}

</style>
<script type="text/javascript">
  function validateRegistration()
  {
  var a = document.getElementById("fname").value;
  var b = document.getElementById("lname").value;
  var c = document.getElementById("email").value;
  var d = document.getElementById("phoneNo").value;
  var e = document.getElementById("password").value;
  var f = document.getElementById("pswrd").value;
  var g = document.getElementById("name").value;
  var h = document.getElementById("role").value;
  var i = document.getElementById("technology").value;
  var j = document.getElementById("address").value; 
  var uemail=/^([A-Za-z0-9]+)@([A-Za-z]+)\.([a-zA-Z]{2,4})$/;
  var phoneno = /^\d{10}$/;
  var numbers=/^[0-9]+$/;
  var password = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
if(a.length==" ")
  {
   alert("FirstName should not be empty");
   return false;
  }
  else if (a.length<6) 
  {
        alert("FirstName should not be less than 6 characters");
        return false;
      }
  else if(b.length==" ")
  {
   alert("LastName should not be empty");
   return false;
  }
  else if (b.length<6) 
  {
        alert("LastName should not be less than 6 characters");
        return false;
      }
   else if(c.length==" ")
  {
    alert("Email should not be empty");
    return false;
  }
  else if(!c.match(uemail))
  {
    alert("Invalid Email Id please Re-Enter ! !");
    return false;
  }
  else if(d.length==" ")
  {
    alert("PhoneNumber should not be empty");
    return false;
  }
  else if (!d.match(numbers)) 
  {
        alert("Phone number must be filled with numbers only");
        return false;
      }
  else if(!d.match(phoneno))
  {
    alert("PhoneNumber should be 10 digits");
    return false;
  }
  
  else if(e.length==" ")
  {
    alert("Password should not be empty");
    return false;
  }
   else if(!e.match(password))
  {
    alert("password between 8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
    return false;
  }
  else if(f.length==" ")
  {
    alert("Re-Enter Password should not be empty");
    return false;
  }
  else if(!f.match(password))
  {
    alert("Re-Enter password between 8 to 15 characters which contain at least one lowercase letter, one uppercase letter, one numeric digit, and one special character");
    return false;
  }
 else if(f!=e)
       {
        alert("Confirm Password & Password does not match please Re-Enter");
        return false;
      }
    else if(g.length==" ")
  {
    alert("Username should not be empty");
    return false;
  }
       else if (g.match(numbers)) 
    {
          alert("Username must be filled with characters only");
          return false;
        }
        else if(e == g) 
      {
        alert("Error: Password must be different from Username!");
        return false;
      }
      else if(h.length==" ")
  {
    alert("Role should not be empty");
    return false;
  }
      else if (h.match(numbers)) 
  {
        alert("Role must be filled with characters only");
        return false;
      }
      else if(i.length==" ")
  {
    alert("Technology should not be empty");
    return false;
  }
      else if (i.match(numbers)) 
  {
        alert("Technology must be filled with characters only");
        return false;
      }
      else if(j.length==" ")
  {
    alert("Address should not be empty");
    return false;
  }
      else if (j.match(numbers)) 
  {
        alert("Address must be filled with characters only");
        return false;
      }
}
</script> 
 
</head>
<body>

	<div class="top">
		<div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold"
			id="myNavbar">
			<a href="index" class="w3-bar-item w3-red w3-button w3-hover-red">Metier</a>

			<!-- Right-sided navbar links -->
			<div class="w3-right w3-hide-small w3-blue">

				<a href="about" class="w3-bar-item w3-button w3-red w3-hover-red"><i
					class="fa fa-th"></i>ABOUT</a> 
					<a href="contact"
					class="w3-bar-item w3-button w3-green w3-hover-red"><i
					class="fa fa-envelope fa-fw"></i>CONTACT</a> <a href="login"
					class="w3-bar-item w3-button w3-indigo w3-hover-red"><i
					class="glyphicon glyphicon-user"></i>Login</a> <a
					href="register" class="w3-bar-item w3-button w3-tomato w3-hover-red"><i
					class="glyphicon glyphicon-user"></i>SignUp</a>
			</div>
		</div>
	</div>

<div class="w3-container" style="Padding:205px 16px">
	<form:form id="form1" name="form1" modelAttribute="employee" method="post" action="registerProcess">
		<table width="200" border="0" align="center">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><fieldset>
						<legend>Register</legend>
						<table width="609" border="0" align="center">
<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Employee Id</td>
								<td colspan="3"><label> <form:input type="text" name="txt_empId" id="empId" path="empId"  />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">Batch</td>
								<td colspan="3"><label> <form:input type="text" name="txt_batch" id="batch" path="batch" pattern="^[A-Za-z0-9]+$" />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td width="69">&nbsp;</td>
								<td colspan="2">First Name</td>
								<td colspan="3"><label> <form:input type="text" name="txt_firstname" id="fname" path="firstName" pattern="^[A-Za-z]+$" />
								</label></td>
								<td width="56">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Last Name</td>
								<td colspan="3"><label><form:input type="text" name="txt_lastname" id="lastname" path="lastName" pattern="^[A-Za-z]+$"/></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Email</td>
								<td colspan="3"><label><form:input type="email" name="txt_email"
										id="email" path="email" /></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Role</td>
								<td colspan="3"><label><form:input type="text"
										name="txt_role" id="role" path="role"/></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Phone Number </td>
								<td colspan="3"><label><form:input name="txt_phno"
										id="txt_phno" path="phoneNo" /></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Gender</td>
								<td colspan="3"><label><form:radiobuttons name="txt_gender"
										id="txt_gender" path="gender" items="${gender}" /></label></td> 
										<td><form:errors path="gender" cssStyle="color: #ff0000;"/></td>
										
								<td>&nbsp;</td>
								</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Address</td>
								<td colspan="3"><label><form:input type="text" name="txt_address"
										id="address" path="address" /></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Technology</td>
								<td colspan="3"><label><form:input type="text" name="txt_technology"
										id="technology" path="technology" /></label></td>

								<td>&nbsp;</td>
							</tr>
							
								<%-- <tr>
								<td>&nbsp;</td>
								<td colspan="2">Date Of Birth</td>
								<td colspan="3"><label><form:input type="date" name="txt_date"
										id="txt_date" path="dateOfBirth" /></td>
								<td>&nbsp;</td>
							</tr> --%>
							<tr>
								<td width="50">&nbsp;</td>
								<td colspan="2">UserName</td>
								<td colspan="3"><label>
<form:input type="text"	name="txt_username" id="username" style=" width : 159px;" path="userName" />
								</label></td>
								<td width="131">&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">Password</td>
								<td colspan="3"><label><form:password name="txt_password"
										id="password" path="password" /></label></td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td width="60">&nbsp;</td>
								<td width="68"><input type="submit" name="btn_login" id="btn_login" value="SignUp"class="w3-button w3-round-large w3-green w3-hover-green" onclick="return validatelogin()"/></td>
								<td width="164"><a href="login">Click here to login >>></a></td>
								<td>&nbsp;</td>
							</tr>

						</table>
<br></br>
					</fieldset></td>
			</tr>
		</table>
	</form:form>
	</div>
<footer class="w3-center w3-teal w3-padding-15">
  <a href="register" class="w3-button w3-blue"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
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
<script>
        // Modal Image Gallery
        function onClick(element) {
          document.getElementById("img01").src = element.src;
          document.getElementById("modal01").style.display = "block";
          var captionText = document.getElementById("caption");
          captionText.innerHTML = element.alt;
        }
        
        
        // Toggle between showing and hiding the sidebar when clicking the menu icon
        var mySidebar = document.getElementById("mySidebar");
        
        function w3_open() {
            if (mySidebar.style.display === 'block') {
                mySidebar.style.display = 'none';
            } else {
                mySidebar.style.display = 'block';
            }
        }
        
        // Close the sidebar with the close button
        function w3_close() {
            mySidebar.style.display = "none";
        }
        </script>
</body></html>