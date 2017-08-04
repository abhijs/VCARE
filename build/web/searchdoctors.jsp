<%@ page language="java" import="java.sql.*"  %>
<%@ include file="buttondesign.jsp" %>
<html>
    <head>
<title>Search Doctors</title>
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
.div{ background-image: url('searchicon.png');}
input[type=text]
{
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-size:30px 30px;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 50px;
    border: 2px solid #ccc;
    box-sizing: border-box;
    margin: 0px 30px 0px 500px;
}


</style>
</head>
<body background="">
    <table width="100%" >
        <tr>
            <td align=center>
                <font size=7 color=blue><i class="fa fa-plus faa-pulse animated"></i>VCare</font>
                
            </td>
        </tr>
        <tr>
            <td colspan="2" height="15">
                <br><br>
                <a href=index.jsp><button class="button" <font face ="harrington"><b>HOME</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="register.jsp"><button class="button" <font face ="harrington"><b>REGISTER</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="search.jsp"><button class="button" <font face ="harrington"><b>SEARCH CAMPS</b></font></button></a> &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
    </table>
  <br><br>  
<table width="650" align="center"  >
    <form name="frm" method="post" action="searchdoctors.jsp">
            <input type="text" name="t1" placeholder=City value="<%= (request.getParameter("t1") == null ? "" : request.getParameter("t1")) %>" onchange="this.form.submit[]"/>
       
            <%/* <select name="t1">&nbsp; &nbsp;
            <% 
            String se="select distinct(city) from doctors"; 
            ResultSet rd=abhi.DBLAYER.getResult(se);
            if(rd.next()==true)
              {                     
                 do
                  {
                       out.print("<option value='"+rd.getString(1)+"'>"+rd.getString(1)+"</option>");
                  }while(rd.next());
                                    
              }*/%>
         <tr><td colspan=2 align=center>  
           
            <input type="submit" name="b1" value = "search" id = "submit" /><br><br><br><br><br>
                 
        </td>
    </tr>
</form>
</table>

<table width="650" align="center" border="1">
    
            <%
                String s;
                if(request.getParameter("t1")==null)
                   s="select doctorname,speciality,city,address from doctors"; 
                 else
                   s= "select doctorname,speciality,city,address from doctors where city like '%"+request.getParameter("t1")+"%'";
                
                ResultSet rs=abhi.DBLAYER.getResult(s);
                if(rs.next()==false)
                    out.print("<script language='javascript'>alert('No Doctor to show');</script>");
                   
                else
                {
            %>
                    <tr>
                   <td>Doctor Name</td>
                    <td>Speciality</td>
                    <td>City</td>
                    <td>Address</td>
                   </tr>
             <%     
                 
                    do
                        {
                         out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
                        }   
                        while(rs.next());
                }
            %>
       
    </table>
    </body>
</html>