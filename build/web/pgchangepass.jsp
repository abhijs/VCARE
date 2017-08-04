<%

String s="select password from camporganisers where email='"+session.getAttribute("em")+"'";
String q=abhi.DBLAYER.getScalar(s);
if(q.equals(request.getParameter("p1")))
{
    if(request.getParameter("p2").equals(request.getParameter("p3")))
        {
            if(request.getParameter("p3").contains("'") || request.getParameter("p3").contains(" ") || request.getParameter("p3").contains("=") || request.getParameter("p3").contains(","))
            {
                 response.sendRedirect("changepass.jsp?p=3");
                 return;
            }
        
        String g="update camporganisers set password='"+request.getParameter("p3")+"'where email='"+session.getAttribute("em")+"'";
        abhi.DBLAYER.executeq(g);
        response.sendRedirect("loggedin.jsp?b=2");
        }
      else
    response.sendRedirect("changepass.jsp?l=7");      
} 
else
    response.sendRedirect("changepass.jsp?l=7");
%>