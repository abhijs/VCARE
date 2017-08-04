<%
     
    String s="update notices set verified=0 where noticeid="+request.getParameter("e");
    abhi.DBLAYER.executeq(s);
    response.sendRedirect("aviewnotices.jsp");
%>