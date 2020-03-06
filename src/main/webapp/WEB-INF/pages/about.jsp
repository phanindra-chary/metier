<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>About</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<link rel="javascript" href="index.js">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>

<!-- Navbar (sit on top) -->
<div class="top">
  <div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold" id="myNavbar">
    <a href="index" class="w3-bar-item w3-red w3-button w3-hover-red" style="text-decoration:none">Metier</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small w3-blue">
    <!--  <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>-->
    <a href="about" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="fa fa-th"></i>ABOUT</a>
    <a href="contact" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
      <a href="login" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>Login</a>
      <a href="register" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>SignUp</a>
    </div>
    <!-- Hide right-floated links on small screens and replace them with a menu icon -->

    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<!-- Sidebar on small screens when clicking the menu icon -->
<nav class="w3-sidebar w3-bar-block w3-yellow w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
<!--  <a href="#team" onclick="w3_close()" class="w3-bar-item w3-button">TEAM</a>-->
<a href="about" class="w3-bar-item w3-button"><i class="fa fa-th"></i>ABOUT</a>
<a href="contact" class="w3-bar-item w3-button"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
  <a href="login" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>LOGIN</a>
<a href="register" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>SIGNUP</a>
</nav>
<!---ABOUT-->
<div class="w3-container w3-blue" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT US</h3>
  <p class="w3-center w3-large">Key features</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center " ></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Responsive</p>
      <p id="demo" class="collapse">Live coverage of the examinations showing details such as candidates taking, 
        completed and dropped tests with their number of attempts, 
        device name, browser, operating system, IP address and location details. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo1">Passion</p>
      <p id="demo1" class=" collapse">An enormous number of candidates are catered smoothly providing concurrent exams, 
        a delight to both test takers and the managers.
         Our online exam system built for a large number of simultaneous test sessions.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo2">Design</p>
      <p id="demo2" class="collapse">SpeedExam goes well with all the mobile and tablet devices. 
        Create and deliver exams in less than a minute. 
        Our candidate site is optimized for the mobile version and provides the faster than app testing experience. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo3">Support</p>
      <p id="demo3" class="collapse">Continuous and interactive communication help you provide effective testing.
         Send a personalized email and SMS for exam sign-in details, instructions, test results, 
         certificates, reports, files and notifications in just no time.</p>
    </div>
  </div>
</div>
<!-- Statistics -->
<div class="w3-container  w3-center w3-red w3-padding-64">
  <h1> Numbers Speak Aloud</h1>
  <br><br>
    <div class="w3-quarter">
      <span class="w3-xxlarge">143+</span>
      <br>Partners
    </div>
    <div class="w3-quarter">
      <span class="w3-xxlarge">55+</span>
      <br>Countries Served
    </div>
    <div class="w3-quarter">
      <span class="w3-xxlarge">890+</span>
      <br>Happy Clients
    </div>
    <div class="w3-quarter">
      <span class="w3-xxlarge">150000+</span>
      <br>Questions Created
    </div>
  </div>
<!--FOOTER-->
	<footer class="w3-center w3-teal ">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by  Metier &copy; 2018
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;An Virtusa initiative
 </p>
 <a class="w3-bottom-right" href="https://www.virtusa.com/"><img src="https://mycareer.virtusa.com/images/social.jpg"  height="55px" width="160px"></img></a>
 

</footer>

        </body>
 </html>