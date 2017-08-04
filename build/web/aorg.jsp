
<%@ include file="aloggedinheader.jsp" %>

<%
    if(request.getParameter("x")!=null)
        out.print("<script language='javascript'>alert('Record deleted successfully.'); </script>");
    /*if(request.getParameter("x")=="7")
        out.print("<script language='javascript'>alert('Request failed'); </script> ");*/

%>
<form name="frm" method="post" action="aorg.jsp">
    <table width="700" border="1" >
     <%
    String sd="select * from camporganisers";
    ResultSet rs;
    rs=abhi.DBLAYER.getResult(sd);
    if(rs.next()==true)
    %>
   
   <tr>
   <td><b>ORG ID</b></td>       
   <td><b>ORG NAME</b></td>
   <td><b>TYPE</b></td>
   <td><b>EMAIL</b></td>
   <td><b>PASSWORD</b></td>
   <td><b>ARENA</b></td>
   <td><b>CITY</b></td>
   <td><b>STATE</b></td>
    <td><b>COUNTRY</b></td>
    <td><b>PHONE NUMBER</b></td>
    <td><b>Aim</b></td>
    <td><b>Status</b></td>
    <td><b>Activate/<br>Deactivate</b></td>
    <td><b>Delete Org</b></td>
   </tr>
   <%
        do
        {
            out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td><td>"+(rs.getString(12).equals("1")?"<a href=deactivate.jsp?e="+rs.getString(1)+">Deactivate</a>":"<a href=activate.jsp?e="+rs.getString(1)+">Activate</a>")+"</td><td><a href=aremove.jsp?e="+rs.getString(1)+" >Remove</a></td></tr>");
        }while(rs.next());
        
   
   
   
   %>

    
</table>   
</form>

<%@ include file="aloggedinfotter.jsp" %>