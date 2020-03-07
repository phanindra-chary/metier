 <jsp:include page="UserHeader.jsp"></jsp:include>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head> 
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif;}
body, html {
    height: 100%;
    line-height: 1.8;
}
.bgimg-1 {
    background-position: center;
    background-size: cover;
    background-image: url("https://images.unsplash.com/photo-1524646432175-d58115a8a854?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
    min-height: 100%;
    animation:zoom;
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

	<div class=" bgimg-1 w3-container  " >
<div class="w3-display-left w3-text-white w3-animate-zoom" style="padding:48px">
    <span class="w3-jumbo  w3-hide-small "><b>Never Stop Learning....</b></span><br>
     <span class="w3-xxlarge w3-hide-large w3-white w3-hide-medium"></span><br>
    <span class="w3-large"></span>
    <p><a href="userCourses" class="w3-button w3-yellow w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-yellow" style="text-decoration:none">Learn more and start your Course</a></p>
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