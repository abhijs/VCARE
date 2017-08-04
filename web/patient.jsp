
<%@ page  language="java" import="java.sql.*,java.util.*" %>

<html>
    <head>
    <title>get token</title>
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
    <body background="banner3.png">
        <table width="100%">
             <tr>
                <td align=center>
                    <font size=7 color=blue><i class="fa fa-plus faa-pulse animated"></i>VCare</font>
                </td>
            </tr>
             <tr>
                <% 
                if(request.getParameter("g")!=null)
                    out.print("<script language='javascript'> alert('Token registered Successfully'); </script>"); 
                %>
     
                <tr>
            <td colspan="2" height="15">
                <br><br>
                <a href=index.jsp><button class="button" <font face ="harrington"><b>HOME</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="register.jsp"><button class="button" <font face ="harrington"><b>REGISTER</b></font></button></a> &nbsp; &nbsp; &nbsp;
                <a href="search.jsp"><button class="button" <font face ="harrington"><b>SEARCH CAMPS</b></font></button></a> &nbsp; &nbsp; &nbsp;
            </td>
        </tr>  
            
            <form name="frm" method="post" action="token.jsp" >
                <tr>
                    <td align="center">
                        <h1>Get &nbsp; Tokens</h1>
                    </td>
                </tr>
            <tr align="center">
                <td colspan="2" align="center">
                    <br> 
                   <%
                      String so="select organiserid from camps where campid="+request.getParameter("p");
                      String org;
                      org=abhi.DBLAYER.getScalar(so); 
                   %>
                   
             <b>Organiser Id:</b> &nbsp; <input type="text" name="t1" value="<%= org %>" readonly/> &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
             <b>Camp Id:</b> &nbsp;<input type="text" name="t2" value=" <%= request.getParameter("p")%>" readonly/> 
             <br><br>
         </td>
        </tr>
      
                <tr>
                   <td align="center">
                   <br><br>
                   <b>Name</b> &nbsp; <input type="text" name="t3" required /> &nbsp; &nbsp; &nbsp;     
                   <b>Age</b> &nbsp; <input type="text" name="t4" required/> 
                               <br><br><br><br><br><br>  
                   <b>Gender</b>&nbsp; 
                   <select name="c1"  >
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     <b>Doctors</b> &nbsp;&nbsp; <select name="c2">
                         
                       <%
                       String s="select doctorname,speciality from doctors where campid='"+request.getParameter("p")+"'";
                       ResultSet rs=abhi.DBLAYER.getResult(s);
                       while(rs.next())   
                         out.print("<option value='"+rs.getString(1)+"'>"+rs.getString(1)+"("+rs.getString(2)+")</option>");
                       %>
                  <% out.print("</select>");  %>
              <br><br><br><br><br><br>
            </td>
          </tr>
          <tr>
              <td align="center">
                  <b>Phone Number</b>&nbsp; <input type="text" name="t5" required />
                  <br><br><br><br><br>
              </td>
          </tr>
          <tr>
              <td align="center">
                  
                   <%
                     String d="select max(tokenid)+1 from tokens";
                     String n=abhi.DBLAYER.getScalar(d);
                     if(n==null || n.equals(""))
                         n="1";  
                     
                  %>
                  
           <b>Token No.</b>&nbsp;&nbsp;<input type="text" name="t5" readonly value="<%= n%>"/>
                 <br><br><br><br>
              </td>
          </tr>
          
            <tr align="center">
              <td>
                  <input type="submit" name="b1" value="Register" id = "submit" />
              </td>
          </tr>
          
      
        </table></form>
    </body>
</html>