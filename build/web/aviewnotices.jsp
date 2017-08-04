
<%@ include file="aloggedinheader.jsp" %>
<%
if(request.getParameter("a")!=null)
out.print("<script language=javascript>alert('Notice deleted successfully');</script>");
%>
        <form name="frm" method="post" action="aviewnotices.jsp">
            <table width="700" border="1">
                <%
                    String sm="select * from notices";
                    ResultSet rs;
                    rs=abhi.DBLAYER.getResult(sm);
                    if(rs==null || rs.next()==false)
                    {
                        out.print("<script language='javascript'>alert('No new notice to show');</script>");
                        return;
                    }
                   else
                        {
                %>
                   <tr>
                        <td><b>Organiser id</b></td>
                        <td><b>Notice Id</b></td>
                        <td><b>Description</b></td>
                        <td><b>Status</b></td>
                        <td><b>Activate/<br>Deactivate</b></td>
                        <td><b>Delete Notice</b></td>
                        
                <% 
                        }
                        do
                            {
                            out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+(rs.getString(4).equals("1")?"<a href=deactivatenotice.jsp?e="+rs.getString(2)+">Deactivate</a>":"<a href=activatenotice.jsp?e="+rs.getString(2)+">Activate</a>")+"</td><td><a href=adeletenotice.jsp?e="+rs.getString(2)+">Remove</a></td></tr>");
                            }while(rs.next());
                %>
            </table>
        </form>
        
        <%@ include file="aloggedinfotter.jsp" %> 