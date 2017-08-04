
<%@ page language="java" import="java.sql.*" %>

<html>
<title>Update doctors</title>
<body>
    <table width="1350" height="600" border="1">
        <tr>
            <td>
                <form name="frm" method="post" action="updatedoctors.jsp">
                <br> License number <%=request.getParameter("r") %>
   
         <%
             ResultSet rs = abhi.DBLAYER.getResult("select * from doctors where licenseno="+request.getParameter("r"));
             if(rs.next())
                {
         %>
   
            <input type="hidden" name="rn" value="<%=rs.getString(1)%>" />
            <br> camp id <input type="text" name="t1" value="<%=rs.getString(2)%>"/>
            <br> Doctor name <input type="text" name="t2" value="<%=rs.getString(3)%>"/>
            <br> Qualification <input type="text" name="t3" value="<%=rs.getString(4)%>"/>
            <br> Speciality <input type="text" name="t4" value="<%=rs.getString(5)%>"/>
            <br> Current working status <input type="text" name="t5" value="<%=rs.getString(6)%>"/>
            <br> city <input type="text" name="t6" value="<%=rs.getString(7)%>"/>
            <br> Experience <input type="text" name="t7" value="<%=rs.getString(8)%>"<br><br>
            <br> <input type="submit" value="save" />
    
    <%
        }
    %>
      
                </form>
           </td>
        </tr>
    </table>
</body>

