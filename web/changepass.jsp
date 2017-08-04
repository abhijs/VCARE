
<%@ include file="loggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>
    <script language="javascript">
    function falert()
        {
        alert("Password changed Successfully");
        }
    </script>
        <form method="post" action="pgchangepass.jsp">
            <table width="400" align="center" >
               <tr>
                  <td>
                  <b>Old Password </b>
                  </td>
                  <td>
                      <input type="password" name="p1" required> 
                  </td>
            </tr>
            <tr>
                <td>
                <b>New Password </b></td><td><input type="password" name="p2" required>
                </td>
            </tr>
            <tr>
                <td>
                <b>Confirm New Password</b></td><td><input type="password" name="p3" required>
                </td>
            </tr>
           <%
           if(request.getParameter("l")!=null)
               out.print("<tr><td colspan=2 align=center ><font color=red>Wrong Password</font></td></tr>");
           
           if(request.getParameter("p")!=null)
                out.print("<tr><td colspan=2 align=center ><font color=red>Password can't contain , '=</font> </td></tr>");
           %>
           
            <tr>
                <td colspan="2" align="center"> 
                    <input type="submit" name="b1" value="Save" id=submit /> 
                </td>
            </tr>
        </table>
        </form>
  
  
  <%@ include file="loggedinfotter.jsp" %>