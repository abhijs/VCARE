<%

String s="select password from admins where aemail='"+session.getAttribute("aem")+"'" ;
String q=abhi.DBLAYER.getScalar(s);
if(q.equals(request.getParameter("p1")))
{
        if(request.getParameter("p2").equals(request.getParameter("p3")))
        {
            if(request.getParameter("p3").contains("'") || request.getParameter("p3").contains(" ") || request.getParameter("p3").contains("=") || request.getParameter("p3").contains(","))
            {
                 response.sendRedirect("achangepass.jsp?p=3");
                 return;
            }
            String g="update admins set password='"+request.getParameter("p3")+"' where aemail='"+session.getAttribute("aem")+"'";
            abhi.DBLAYER.executeq(g);
            response.sendRedirect("aloggedin.jsp?b=2");
        }
      else
        response.sendRedirect("achangepass.jsp?a=7");      
}
else
    response.sendRedirect("achangepass.jsp?a=7");
%>