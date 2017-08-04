
<%@ include file="aloggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>

<script language="javascript">
    
    function falert()
    {
        alert("Record deleted successfully");
    }
    
</script>

        <form name="frm" method="post" action="asearch.jsp">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
        <font size=7><b> City</b></font>&nbsp;&nbsp;
       <%/* <select name="t1" value="<%= (request.getParameter("t1") == null ? "" : request.getParameter("t1"))" >
        
            ResultSet qd = abhi.DBLAYER.getResult("select city from camps");
            if(qd==null || qd.next()==false)
            {
                out.print("<option value=No city</option>");
            }
            else{
                do
                {
                out.print("<option value="+qd.getString(1)+">"+qd.getString(1)+"</option>");
                }while(qd.next());
                }
        
        </select>*/%>
        <input type=text name="t1" value="<%= (request.getParameter("t1") == null ? "" : request.getParameter("t1")) %>" />
                    <input type="submit" value="Go" id= "submit" />
                    <br><br>
        

    <table width="100%" align="center" border="1">
      <tr>        
        <%
        String q;
        if(request.getParameter("t1")==null)
           q= "select * from camps";
        else
            q="select * from camps where city like '%"+request.getParameter("t1")+"%'";
        ResultSet rs=abhi.DBLAYER.getResult(q);
        if(rs==null || rs.next()==false)
        {
           out.print("<script language='javascript'>alert('No Camp to show.');</script>");
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
        <td><b>options</b></td>
    </tr>
            
       <% 
               do
                   {
                    out.print("<tr><td><b>"+rs.getString(1)+"</b></td><td><b>"+rs.getString(2)+"</b></td><td><b>"+rs.getString(3)+"</b></td><td><b>"+rs.getString(4)+"</b></td><td><b>"+rs.getString(5)+"</b></td><td><b>"+rs.getString(6)+"</b></td><td><b>"+rs.getString(7)+"</b></td><td><b>"+rs.getString(8)+"</b></td><td><b>"+rs.getString(9)+"</b></td><td><a href=adelete.jsp?r="+rs.getString(1)+" onclick=falert()>Remove</a></td></tr>");
                    }    
               while(rs.next());
        }       
        %>
        
    </table>
</form>
    
    <%@ include file="aloggedinfotter.jsp" %>