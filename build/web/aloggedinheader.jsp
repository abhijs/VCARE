 <%@ page  language="java" import="java.sql.*" %>

<html>
  <head>
<title> Welcome Admin </title>
<style>
    .button 
 {
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

.dropdown
{
    position: relative;
    display: inline-block;
}
.dropdown-content{
    display:none;
    position: absolute;
    left:100px;
    top:0px;
    
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 5px 0;
    z-index: 1;
}
.dropdown:hover .dropdown-content
{
    display: block;
}
</style>
</head>

<body>
    
    <%
    if(session.getAttribute("aem")==null)
    {
        response.sendRedirect("index.jsp?sess=exp");
    }
    %>
    <table width="100%" border=1 >
        <tr bgcolor=#CCCCCC >
                <td colspan="2" align="right">
                     <SCRIPT LANGUAGE="JavaScript">
                            datetoday = new Date();
                            timenow=datetoday.getTime();
                            datetoday.setTime(timenow);
                            thehour = datetoday.getHours();
                            if (thehour > 15) display = "Evening";
                            else if (thehour >11) display = "Afternoon";
                            else display = "Morning";
                            var greeting = ("Good " + display + "!");
                            document.write(greeting);
                     </script>
                   
                   <%= session.getAttribute("anm")%> &nbsp;&nbsp;<a href="logout.jsp">(Logout)</a>
                </td>
            </tr>
        <tr height="130">
            <td align="left">
                <div class=dropdown>
 <br><img src="medicalpix/<%= session.getAttribute("aid") %>.jpg" width="100" height="150" align="center" valign="bottom"/><br>  <a href="pgaupload.jsp" title="click to change pic" ><img src="changepic.png" width=30 height=30</a>                    
                    <div class=dropdown-content>
  
  <img src="medicalpix/<%= session.getAttribute("aid") %>.jpg" width="250" height="300"  align="center" valign="bottom"/></a>                   
                    </div> 
                </div>
            </td>
            </tr>
              
          </table>
          <table width="100%" border="1">
            <tr height="450">
                <td width="200" align="left" valign="top">
                    <%  
                        String s= "select count(*) from notifications where readby=0 and  adminid= "+session.getAttribute("aid");
                        String k=abhi.DBLAYER.getScalar(s);
                        if(k==null)
                            k="0";
                        
                                
                    %>
                    <a href="aloggedin.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Home</b></font></span></button></a><br><br>
                    <a href="aprofile.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Profile</b></font></span></button></a><br><br>
                    <a href="notifications.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Notifications</b></font></span></button> </a><font color='red' size=6><%= k %></font>  <br><br>
                    <a href="achangepass.jsp"><button class="button" style="vertical-align:middle"><span><font face ="harrington"><b>Change password</b></font></span></button></a><br><br> 
                </td>
                <td width="600" align="center" >
                    
                    
                    
                    
                    
                    
                    
                    