 <%@ page  language="java" import="java.sql.*" %>

<html>
    <head>
<title> Medical care </title>
<style>
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #008CBA;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '»';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>

<body background="newbg.jpg" width="100%" height=100%>
    
    <%
    if(session.getAttribute("em")==null)
    {
    response.sendRedirect("index.jsp?sess=exp");
    }
    %>
    <table width="100%" border=1 height=100%>
        <tr>
                <td colspan="3" align="right">
                <SCRIPT LANGUAGE="JavaScript">
datetoday = new Date();
timenow=datetoday.getTime();
datetoday.setTime(timenow);
thehour = datetoday.getHours();
if (thehour > 18) display = "Evening";
else if (thehour >12) display = "Afternoon";
else display = "Morning";
var greeting = ("Good " + display + "!");
document.write(greeting);
            </script>

                
                &nbsp;<%= session.getAttribute("onm")%> &nbsp;&nbsp;<a href="logout.jsp">(Logout)</a>
                </td>
            </tr>
        <tr>
            <td colspan="3" height="300" width="90%" align="right">
  <img src="medicalpix/<%= session.getAttribute("oid") %>.jpg" width="100%" height="300" title="Your Cover Pic"  /><br>  <a href="pgupload.jsp" title="click to change cover pic" ><img src="changepic.png" width=30 height=30/></a> 
               
            </td>
            </tr>
           
            
            <tr>
                <td width="200" align="left" height=350><br><br>
                    <a href="loggedin.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Home</b></font></span></button></a><br><br>
                    <a href ="profile.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Profile</b></font></span></button></a><br><br>
                    <a href="viewcamp.jsp"><button class="button "style="vertical-align:middle"><span><font face="harrington"><b>View camp</b></font></span></button></a><br><br>
                    <a href="viewdoctors.jsp"><button class="button"style="vertical-align:middle"><span><font face="harrington"><b>View doctor's</b></font></span></button> </a><br><br>
                    <a href="changepass.jsp"><button class="button"style="vertical-align:middle"><span><font face="harrington"><b>Change Password</b></font></span></button></a><br><br> 
                </td>
                <td width="600" align="center" >
                    
                    
                    
                    