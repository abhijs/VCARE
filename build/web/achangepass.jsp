
<%@ include file="aloggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>
     
        
        <form method="post" action="pgachangepass.jsp">
            <table width="600" align="center"  >
               <tr>
                  <td><b>Old Password </b></td>
                  <td><input type="password" name="p1" required></td>
              </tr>
              
            <tr>
                <td><b>New Password</b></td><td><input type="password" name="p2" required></td>
            </tr>
            
            <tr>
                <td><b>Confirm New Password</b></td><td><input type="password" name="p3" required></td>
            </tr>
            
           <%
           if(request.getParameter("a")!=null)
               out.print("<tr><td colspan=2 align=center ><font color=red>Wrong Password</font></td></tr>");
           
           if(request.getParameter("p")!=null)
                 out.print("<tr><td colspan=2 align=center ><font color=red>Password can't contain , '=</font> </td></tr>");
           %>
           
            <tr>
                <td colspan="2" align="center"><input type="submit" name="b1" value="Change" id= "submit" /></td>
            </tr>
        </table>
        </form>
  
  
  <%@ include file="aloggedinfotter.jsp" %>