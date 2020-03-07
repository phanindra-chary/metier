<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style>
  div{
  align:center;
  font-size: 25px;
  }
  </style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$().ready(function() {
     if(document.referrer != 'http://localhost:8181/'){ 
          history.pushState(null, null, 'submitQuestionList');
          window.addEventListener('popstate', function () {
              history.pushState(null, null, 'submitQuestionList');
          });
      }
  });
  </script>
    <script language ="javascript" >
        var tim;
       
        var min = 6;
        var sec = 10;
      
        function f2() {
            if (parseInt(sec) > 0) {
                sec = parseInt(sec) - 1;
                document.getElementById("showtime").innerHTML = "Your Left Time  is :"+(min-1)+" Minutes ," + sec+" Seconds";
                tim = setTimeout("f2()", 1000);
            }
            else {
                if (parseInt(sec) == 0) {
                    min = parseInt(min) - 1;
                    if (parseInt(min) == 0) {
                        clearTimeout(tim);
                        location.href = "submitQuestionList";
                    }
                    else {
                        sec = 59;
                        document.getElementById("showtime").innerHTML = "Your Left Time  is :" + min + " Minutes ," + sec + " Seconds";
                        tim = setTimeout("f2()", 1000);
                    }
                }
               
            }
        }
    </script>
</head>
<body onload="f1()" >
    <form id="form1" runat="server">
    <div>
      <table width="100%" align="center">
        <tr>
          <td colspan="2">
          </td>
        </tr>
        <tr>
          <td>
           <div id="starttime"></div>
            <div id="endtime"></div><br /> 
            <div id="showtime"></div>
            <%response.sendRedirect("submission"); %>
          </td>
        </tr>
        <tr>
          <td>
             
              <br />
            
              
          </td>
         
        </tr>
      </table>
      <br />
   

    </div>
    </form>
</body>
</html>