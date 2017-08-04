
<%@ include file="loggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>

    <table width="500" border=1>
       
        <%
            String s="select organiserid,organisername,type,email,password,arena,city,state,country,phoneno from camporganisers where email= '"+session.getAttribute("em")+"'" ;
            ResultSet rs;
            rs=abhi.DBLAYER.getResult(s);
           if(rs.next()==true)
            {
         %>  
          <tr>
             <td>Organiser id</td>
             <td>Organisation Name</td>
             <td>Type</td>
             <td>Email</td>
             <td>Password</td>
             <td>Arena</td>
             <td>City</td>
             <td>State</td>
             <td>Country</td>
             <td>Phone number</td>
         </tr>
         <%
           do
                {
                    out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td></tr>");
                }while(rs.next());
                
            }
            
            
        %>
        
    </table><br><br>
    <input type="submit" value="Edit" id="submit" onclick="window.location='editprofile.jsp'"/>
    
    
<%@ include file="loggedinfotter.jsp" %>