<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>METIER</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<link rel="javascript" href="index.js">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif;}
body, html {
    height: 100%;
    line-height: 1.8;
    text-decoration:none;
}
/* Full height image header */
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("C:/Users/ellendulas/Downloads/12.jpg");
    min-height: 100%;
}
.w3-bar .w3-button {
    padding: 5x;
}


fieldset { 
     display: block;
     margin-left: 2px;
     margin-right: 2px;
     padding-top: 0.35em;
     padding-bottom: 0.625em;
     padding-left: 0.75em;
     padding-right: 0.75em;
     border: 2px groove (internal value);
    } 
</style>
</head>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold  w3-animate-down" id="myNavbar">
    <a href="index" class="w3-bar-item  w3-button w3-red w3-hover-red" style="text-decoration:none">METIER</a>
    
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small w3-blue w3-animation-right">
    
    <a href="about" class="w3-bar-item w3-button  w3-hover-red w3-aimate-left" style="text-decoration:none"><i class="fa fa-th"></i>ABOUT</a>
    <a href="contact" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
    <a href="login" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>Login</a>
    <a href="register" class="w3-bar-item w3-button  w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>SignUp</a>
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

<a href="about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
<a href="contact" class="w3-bar-item w3-button"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
  <a href="login" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>LOGIN</a>
<a href="register" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>SIGNUP</a>
</nav>

<!-- Header with full-height image -->
<header class="bgimg-1 w3-display-container w3-blue-min w3-animate-zoom" id="home">
  <div class="w3-display-left w3-text-orange" style="padding:48px">
    <span class="w3-jumbo  w3-hide-small w3-animate-zoom "><b>Start Something New Today</b></span><br>
    <span class="w3-xxlarge w3-hide-large w3-white w3-hide-medium"></span><br>
    <span class="w3-large"></span>
    <p><a href="about.html" class="w3-button w3-yellow w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-yellow w3-animate-down" style="text-decoration:none">Learn more and start today</a></p>
  </div> 
  <div class="w3-display-bottomleft w3-text-color w3-large" style="padding:24px 48px">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
</header>
<!---ABOUT-->
<div class="w3-container w3-blue" style="padding:128px 16px" id="about">
  <h3 class="w3-center">ABOUT US</h3>
  <p class="w3-center w3-large">Key features</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center" ></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Responsive</p>
      <p id="demo" class="collapse">Live coverage of the examinations showing details such as candidates taking, 
        completed and dropped tests with their number of attempts, 
        device name, browser, operating system, IP address and location details. </p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p class="w3-large" type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo1">Passion</p>
      <p id="demo1" class="collapse">An enormous number of candidates are catered smoothly providing concurrent exams, 
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
  
  <!--contact-->

<div class="w3-container " style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-blue w3-xxlarge w3-margin-right"></i> Chennai, IND</p>
    <p><i class="fa fa-phone fa-fw w3-green w3-xxlarge w3-margin-right"></i> Phone: +91 9902620462</p>
    <p><i class="fa fa-envelope fa-fw w3-red w3-xxlarge w3-margin-right"> </i> Email: contact@virtusa.com</p>
    <br>
    <form  target="_blank">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-button w3-blue w3-hover-blue" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
    <!-- Image of location/map -->
  </div>
</div>
	<footer class="w3-center w3-teal ">
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