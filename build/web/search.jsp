<%@ page language="java" import="java.sql.*"  %>
<%@ include file="buttondesign.jsp" %>

<html>
    <head>
<title> search for camps</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--ANIMATED FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- SIDE MENU STYLE CSS -->
    <link href="assets/css/component.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<style>
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #CCCCCC;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  font-family: harrington;
}
.button:hover  {
  background-color: #008CBA;
  
}
</style>
</head>
<body background="42.jpg">
    <table width="100%">
        <tr>
            <td align=center>
                <font size=7 color=blue><i class="fa fa-plus faa-pulse animated"></i>VCare</font> 
            </td>
        </tr>
    <tr>
    <td align="top">
        <a href=index.jsp><button class="button" <font face="harrington"><b>HOME</b></font></button></a> &nbsp; &nbsp; &nbsp;
        <a href="register.jsp"><button class="button" <font face="harrington"><b>REGISTER</b></font></button></a> &nbsp; &nbsp; &nbsp;
        <a href="searchdoctors.jsp"><button class="button" <font face="harrington"><b>LOOK FOR DOCTORS</b></font></button></a> &nbsp; &nbsp; &nbsp;
           <br><br><br> 
    </td>    
</tr>
    <tr>
    <td align="center" valign="top">
        <form name="frm" method="post" action="search.jsp">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size=7 > <b> City</b></font>&nbsp;&nbsp;
            <input type="text" name="t1"  value="<%= (request.getParameter("t1")==null ? "" : request.getParameter("t1")) %>"  />
            
            <% /*<select name="t1" > &nbsp; &nbsp;
                <% 
            String se="select distinct(city) from camps"; 
            ResultSet rd=abhi.DBLAYER.getResult(se);
            if(rd.next()==true)
              {                     
                 do
                  {
                       out.print("<option value='"+rd.getString(1)+"'"+(request.getParameter("t1")!=null && request.getParameter("t1").equals(rd.getString(1))?"selected":"")+" >"+rd.getString(1)+"</option>");
                  }while(rd.next());
                                    
              }
           
           */%>
            </select>
                    <input type="submit" value="Go" id = "submit" />
                    <br><br>
        </form>
    </td>
</tr>
</table>

<table width="1000" align="center" border="5">
    <tr>        
        <%
        String q;
        if(request.getParameter("t1")==null)
           q= "select  dateofcamp,starttime,endingtime,venue,city,camptitle,description,campid from camps";
        else
            q="select dateofcamp,starttime,endingtime,venue,city,camptitle,description,campid from camps where city like '%"+request.getParameter("t1")+"%'";
        ResultSet rs=abhi.DBLAYER.getResult(q);
        if(rs.next()==false)
            out.print("<script language='javascript'>alert('No Camp to show');</script>");
        else
        {
        %>
        
        <td><b>Date of Camp</b></td>
        <td><b>Starting Time</b></td>
        <td><b>Ending Time</b></td>
        <td><b>Venue</b></td>
        <td><b>City</b></td>
        <td><b>Camp Title</b></td>
        <td><b>Decription</b></td>
        <td><b>Tokens</b></td>
    </tr>
            
       <% 
               do
                   {
                    out.print("<tr><td><b>"+rs.getString(1)+"</b></td><td><b>"+rs.getString(2)+"</b></td><td><b>"+rs.getString(3)+"</b></td><td><b>"+rs.getString(4)+"</b></td><td><b>"+rs.getString(5)+"</b></td><td><b>"+rs.getString(6)+"</b></td><td><b>"+rs.getString(7)+"</b></td><td><a href=patient.jsp?p="+rs.getString(8)+">Get Tokens</a></td></tr>");
                    }    
               while(rs.next());
        
        }       
        %>
        
</table>
</body>
</html>