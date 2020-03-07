<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Contact</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<link rel="javascript" href="index.js">
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-blue w3-card w3-animation-zoom w3-bold" id="myNavbar">
    <a href="index" class="w3-bar-item w3-red w3-button w3-wide w3-hover-red" style="text-decoration:none">Metier</a>
    <!-- Right-sided navbar links -->
    <div class="w3-right w3-hide-small w3-blue">
    <!--  <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>-->
    
    <a href="about" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="fa fa-th"></i>ABOUT</a>
    <a href="contact" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
      <a href="login" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>Login</a>
      <a href="signup" class="w3-bar-item w3-button w3-hover-red" style="text-decoration:none"><i class="glyphicon glyphicon-user"></i>SignUp</a>
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
<a href="about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
<a href="contact" class="w3-bar-item w3-button"><i class="fa fa-envelope fa-fw"></i>CONTACT</a>
  <a href="login" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>LOGIN</a>
<a href="signup" onclick="w3_close()" class="w3-bar-item w3-button"><i class="glyphicon glyphicon-user"></i>SIGNUP</a>
</nav>
<!--contact-->

<div class="w3-container " style="padding:128px 16px" id="contact">
  <h3 class="w3-center">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p><i class="fa fa-map-marker fa-fw w3-blue w3-xxlarge w3-margin-right"></i> Chennai, IND</p>
    <p style="text-decoration:none"><i class="fa fa-phone fa-fw w3-green w3-xxlarge w3-margin-right"></i> Phone: +91 9902620462</p>
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
<!--footer-->
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