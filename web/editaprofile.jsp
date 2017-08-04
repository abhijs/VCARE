<%@ include file="aloggedinheader.jsp" %>
 <%@ include file="buttondesign.jsp" %>

<form name="frm" method="post" action="updateaprofile.jsp">
    <table width=500 >
        <h1>Edit</h1>
        <%
            String sk="select aname,password from admins where aemail='"+session.getAttribute("aem")+"'";
            ResultSet rs=abhi.DBLAYER.getResult(sk);
            if(rs.next()==true)
             {
        %>
        <tr>
            <td>
            <b>Name</b></td><td><input type="text" name="t1" value="<% out.print(rs.getString(1));%>"/>
            </td>
        </tr>
        <tr>
            <td>
            <b>Password</b></td><td><input type="text" name="t2" value="<% out.print(rs.getString(2));%>" />
            </td>
        </tr>
        <%
            }
        
        %>
    </table><br><br>
    <input type="submit" value="Update" id= "submit"/>
</form>

<%@ include file="aloggedinfotter.jsp" %>