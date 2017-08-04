<%@ include file="aloggedinheader.jsp" %>
<% 
    
     if(request.getParameter("b")!=null)
     out.print("<script language='javascript'> alert('Password changed Successfully'); </script>");
     
     if(request.getParameter("p")!=null)
        out.print("<script language='javascript'> alert('No camps to show'); </script>");
%>
<!--<font size="50" color=salmon >Welcome Admin</font>-->
<table>
<tr height="250">
            <td align="left">
                <%
                    String l="select organiserid,organisername from camporganisers" ;
                    ResultSet rp=abhi.DBLAYER.getResult(l);
                    while(rp.next())
                    {
                        String s4=rp.getString(1);
                        String s5=rp.getString(2);
                %>
                <font size=5>Profile pic of Organisation <%= s5%> is</font> 
          <img src="medicalpix/<%= s4%>.jpg" width="50" height="50" title="YOU"  align="right" valign="bottom"/><br>
               <br><br>
               <%
                    }
               %>
            </td>
            </tr>
        </table>
<%@ include file= "aloggedinfotter.jsp" %>