<%
     
    String s="update notices set verified=1 where noticeid="+request.getParameter("e");
    abhi.DBLAYER.executeq(s);
    response.sendRedirect("aviewnotices.jsp");
%>