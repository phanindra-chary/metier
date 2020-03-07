<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
<%-- <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  String username=(String)session.getAttribute("username");
  session.setAttribute("username",null); --%>
  <!-- /*  if(session.getAttribute("username")==null)
      // response.sendRedirect("login.html"); 
     session.removeAttribute("username");
      //response.sendRedirect("login.html");  */
      out.println("successfully logout");  -->
<%-- <%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("login");
%> --%>      
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
  </script>
  
</head>
<body>

  <% response.sendRedirect("login"); %>
</body>
</html>