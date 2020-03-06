<html>
 <%@page session="true" %>  
<%
HttpSession s=request.getSession(true);
if(s==null) { %>

   <%--  <jsp:forward page="/Expired" /> --%>
<% } %>
<% String duration=String.valueOf(s.getAttribute("cmin")); %>
<% String totalSecs=String.valueOf(s.getAttribute("totalsecs"));%>
<% String ctr1=String.valueOf(s.getAttribute("ctr1"));%>
<% int a=Integer.parseInt(duration); %>
 <% int secs=Integer.parseInt(totalSecs); %>
 <% int ctr=Integer.parseInt(ctr1); %>
 <%!int i=0; %>
<head><title></title>
<script type="text/javascript">
var cmin=<%= a %>;
var total=<%= secs %>;
<%if(i==0){ i++;%>
  cmin=cmin-1;  
<%}%>
var ctr=<%= ctr%>;
var dom=document.getElementById("kulu");
function ram(){

var dom=document.getElementById("kulu");
var secs=total%60;
dom.value=(cmin)+" Minutes : "+(secs)+" Seconds";


cookievalue = escape(cmin) +";";
document.cookie = "min=" + cookievalue;
cookievalue = escape(secs) +";";
document.cookie = "secs=" + cookievalue; 
cookievalue = escape(ctr) +";";
document.cookie = "ctr=" + cookievalue; 


<% String t=(String)s.getAttribute("over");%>
var tt=<%= t %>
if(tt=="true"){ram1();}

total=total-1;ctr++;

if(ctr==60){ctr=0;cmin=cmin-1;}
if(total==0){
ram1();}
setTimeout("ram()", 1000);
              }
function ram1(){
	var selectedAnswer="Submitted";
	var str1 = "submitQuestionList?selectedAnswer=";
	var url2 = str1.concat(selectedAnswer);
        window.location.href=url2; 
                }
</script>
</head>
<body background="image/background.gif" onload="ram()"><center>
<form name="form1"><label>
<input  type="text" name="min" id="kulu"/></label>
</form>
</center>
</body>
</html>