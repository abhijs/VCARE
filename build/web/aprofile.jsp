
<%@ include file="aloggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>


    <table width="500" border=1>
        <%
            String st="select adminid,aname,password from admins where aemail= '"+session.getAttribute("aem")+"'" ;
            ResultSet rs;
            rs=abhi.DBLAYER.getResult(st);
            if(rs.next())
            {
         %>  
         <tr>
             <h1>Profile</h1>
             <td><b>Admin id</b></td>
             <td><b>Name</b></td>
             <td><b>Password</b></td>
             
         </tr>
         <%
            do
                {
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
                }while(rs.next());
                
            }
            
            
        %>
        
    </table><br><br>
    <input type="submit" value="Edit" id=submit onclick="window.location='editaprofile.jsp'"/>
<%@ include file="aloggedinfotter.jsp" %>