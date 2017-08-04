<%
    String s="select password from admins where aemail='"+request.getParameter("t1")+"'";
     String q=abhi.DBLAYER.getScalar(s);
    
   if(q==null || q.equals(""))
    {
        out.print("<table align='center'><tr><td colspan=2><font size=7 color='red'><b>Not a valid email id!!!</b></font></td></tr></table>");
    }
    else
    {
        session.setAttribute("to", request.getParameter("t1"));
        session.setAttribute("sub","your password");
        session.setAttribute("msg","Your password is "+q+"");
        session.setAttribute("returnpage","apasswordrecovery.jsp");
        response.sendRedirect("aMail.jsp"); 
    
    }


%>