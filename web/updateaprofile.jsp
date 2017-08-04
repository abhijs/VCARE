
<%

    String s="update admins set aname='"+request.getParameter("t1")+"',password='"+request.getParameter("t2")+"' where aemail='"+session.getAttribute("aem")+"'";
    abhi.DBLAYER.executeq(s);
    response.sendRedirect("aprofile.jsp");
%>