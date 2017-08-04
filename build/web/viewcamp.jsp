
<%@ include file="loggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>

<script language="javascript">
    
    function falert()
    {
        alert("Record deleted successfully");
    }
    
</script>

        <form name="frm" method="post" action="viewcamp.jsp">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        <font size="8"><b> City</b></font>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp  
        <input type="text" name="t1"  value="<%= (request.getParameter("t1") == null ? "" : request.getParameter("t1")) %>" /> 
         &nbsp; &nbsp;
        <input type="submit" value="Go" id="submit"/>
        <br><br>
        <%
           /* if(request.getParameter("o")!=null){
                out.print("<script language='javascript'> alert('No camps to show'); </script>");
             }*/
        %>

    <table width="400" align="center" border="1">
      <tr>        
        <%
        String q;
        if(request.getParameter("t1")==null)
           q= "select * from camps  where organiserid='"+session.getAttribute("oid")+"' order by campid desc";
        else
            q="select * from camps where city like '%"+request.getParameter("t1")+"%' and organiserid='"+session.getAttribute("oid")+"' order by campid desc";
        ResultSet rs=abhi.DBLAYER.getResult(q);
        if(rs==null || rs.next()==false)
        {
             out.print("<script language='javascript'>alert('No camp to show');</script>");
        } 
        else
        {
        %>
        <td><b>Camp Id</b></td>
        <td><b>Organiser Id</b></td>
        <td><b>Date of Camp</b></td>
        <td><b>Starting Time</b></td>
        <td><b>Ending Time</b></td>
        <td><b>Venue</b></td>
        <td><b>City</b></td>
        <td><b>Camp Title</b></td>
        <td><b>Decription</b></td>
        
    </tr>
            
       <% 
               do
                   {
                    out.print("<tr><td><b>"+rs.getString(1)+"</b></td><td><b>"+rs.getString(2)+"</b></td><td><b>"+rs.getString(3)+"</b></td><td><b>"+rs.getString(4)+"</b></td><td><b>"+rs.getString(5)+"</b></td><td><b>"+rs.getString(6)+"</b></td><td><b>"+rs.getString(7)+"</b></td><td><b>"+rs.getString(8)+"</b></td><td><b>"+rs.getString(9)+"</b></td></tr>");
                    }    
               while(rs.next());
        }      
        %>
        
    </table>
</form> 
    
    <%@ include file="loggedinfotter.jsp" %>