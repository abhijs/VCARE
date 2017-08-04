<%@ include file="buttondesign.jsp" %>

<html>
    <head>
<title>SIGN UP</title>
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
body{
background:URL("edit.jpg") no-repeat fixed right top ;
}
</style>
</head>
<script language="javascript">
   function checkEmail(email) 
    { if(email.length > 0) 
        { 
          if (email.indexOf(' ') >= 0)
            alert("email addresses cannot have spaces in them"); 
            else if (email.indexOf('@') == -1) 
                alert("a valid email address must have an @ in it"); 
            else if(email.indexOf('.com') == -1)
                alert("a valid email address must have an .com in it");
        } 
    }
</script>
<body>
    
<table width="100%">
    <tr>
            <td align=center>
                <font size=7 color=blue><i class="fa fa-plus faa-pulse animated"></i>VCare</font>
            </td>
        </tr>
    <tr>
    <td align="top">
        <a href=index.jsp><button class=button <font face='harrington'><b>HOME</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="search.jsp"><button class=button <font face='harrington'><b>SEARCH CAMPS</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="searchdoctors.jsp"><button class=button <font face='harrington'><b>LOOK FOR DOCTORS</b></font></button></a> &nbsp; &nbsp; &nbsp;
               
           
           <br>
    </td>    
</tr>       
<tr>
    <td align="center" valign="top" >
       <form name="frm" method="post" action="pgregister.jsp">
           <table width="600" height="800">
   <tr>
       <td><b>ORGANISATION ID</b></td>
            <td><input type="number" name="t1" min="4" required></td>
            
   </tr>
   <%
        if(request.getParameter("z")!=null)
            out.print("<tr><td colspan=2 align=center ><font color=red>Organiser id already exists<br></font> </td></tr>");
   %>
   <tr>
   <td><b>ORGANISATION NAME</b></td>
    <td><input type="text" name="t2" required><br>
      </td>
   </tr>
   
   <tr>
       <td><b>TYPE</b></td>
       <td><select name="t3">
        <option value="trust">TRUST</option>
        <option value="society">SOCIETY</option>
        <option value="commmittee">COMMITTEE</option>
            </select></td>
   </tr>
   
   <tr>
   <td><b>EMAIL</b></td>
   <td><input type="email" name="t4" onChange="checkEmail(this.value)" required></td>
</tr>
        <%
        if(request.getParameter("q")!=null)
            out.print("<tr><td colspan=2 align=center ><font color=red>Email already exists<br></font> </td></tr>");
        %>  
   
   <tr>
   <td><b>PASSWORD</b></td>
   <td><input type="password" name="t5" required />
   <%
        if(request.getParameter("p")!=null)
           out.print("<tr><td colspan=2 align=center ><font color=red>Password can't contain , '=</font> </td></tr>");
   %>   
  
       </td> 
   </tr>
   
   
   <tr>
   <td><b>ADDRESS</b></td>
    <td><input type="text" name="t6" required></td> 
   </tr>
   
   <tr>
   <td><b>CITY</b></td>
    <td><input type="text" name="t7" required></td> 
   </tr>
   
   <tr>
   <td><b>STATE</b></td>
    <td><input type="text" name="t8" required></td> 
   </tr>
   
   <tr>
   <td><b>COUNTRY</b></td>
     <td><input type="text" name="t9" required></td> 
   </tr>
   
    <tr>
    <td><b>PHONE NUMBER</b></td>
     <td><input type="number" name="t10" min="1000000000" max="9999999999" required></td>                           
   </tr>
       
    <tr>
   <td><b>YOUR AIM</b></td>
   <td><textarea rows=2 cols=40 name="t11" required></textarea></td> 
   </tr><br><br><br>
   <tr>
        <td colspan="2" align="center"><br>
        <input type="submit" name="b1" value="Register" id=submit ></td> 
   </tr>
   
   
    </table>
</form>
</td>

 
</table>
</body>
</html>