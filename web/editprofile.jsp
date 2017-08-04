<%@ include file="loggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>

<form name="frm" method="post" action="updateprofile.jsp">
    <table width=500 >
        <%
            String s="select organisername,type,password,arena,city,state,country,phoneno from camporganisers where email='"+session.getAttribute("em")+"'";
            ResultSet rs=abhi.DBLAYER.getResult(s);
            if(rs.next()==true)
             {
        %>
        <tr>
            <td>
            Organisation Name</td><td><input type="text" name="t1" value="<% out.print(rs.getString(1));%>"/>
            </td>
        </tr>
        <tr>
            <td>
            Type</td><td><input type="text" name="t2" value="<% out.print(rs.getString(2));%>" />
            </td>
        </tr>
        <tr>
            <td>
            Password</td><td><input type="text" name="t3" value="<% out.print(rs.getString(3));%>" />
            </td>
        </tr>
        <tr>
            <td>
            Arena</td><td><input type="text" name="t4" value="<% out.print(rs.getString(4));%>" />
            </td>
        </tr>
        <tr>
            <td>
            City</td><td><input type="text" name="t5" value="<% out.print(rs.getString(5));%>" />
            </td>
        </tr>
        <tr>
            <td>
            State</td><td><input type="text" name="t6" value="<% out.print(rs.getString(6));%>" />
            </td>
        </tr>
        <tr>
            <td>
            country</td><td><input type="text" name="t7" value="<% out.print(rs.getString(7));%>" />
            </td>
        </tr>
        <tr>
            <td>
            Phone number</td><td><input type="number" name="t8" value="<% out.print(rs.getString(8));%>" />
            </td>
        </tr>
        <%
            }
        
        %>
    </table><br><br>
    <input type="submit" value="Update" id="submit"/>
</form>

<%@ include file="loggedinfotter.jsp" %>