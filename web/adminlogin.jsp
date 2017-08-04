<%@ include file="buttondesign.jsp" %>

<html>
    <title> Welcome Admin</title>
    <style>
        input[type=email] 
        {
            height:25px;
            width:65%;
        }
        input[type=password] 
        {
            height:25px;
            width:65%;
        }
        .link
        {
            text-decoration: none;
            color:blue;
        }
        .link:hover
        {
            text-decoration:underline;
        }
        body
        {
             background: linear-gradient(to right, rgba(255,0,0,0), rgba(255,0,0,0.7)); 
        }
        h1{color:blue;
            
    }
    </style>
    <body background="admin.jpg">      
    <h1 align=center>Hello Admin</h1>    
    <form name="frm" method="post" action="checkadmin.jsp" >
    <table width="400" align=center>
        <tr><td align=center><input type="email" name="t1"  placeholder="Email address"  ></td></tr>
        <tr><td align=center><input type="password" name="t2" placeholder="Password " ></td></tr>
                   <%
                    if(request.getParameter("q")!=null)
                        out.print("<tr><td colspan=2 align=center ><font color=red>Invalid Email id or Password</font></td></tr>");
                  %>
        <tr><td align="center" >  <input type="submit" name="b1" value="Login" id=submit></td></tr>    
        <tr><td align=center> <a href="aforgotpass.jsp" class=link><b>Forgot password ?</b></a></td></tr>
       </table>
            </form> 
    
    </body>
</html>