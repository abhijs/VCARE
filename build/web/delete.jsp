
<%
    abhi.DBLAYER.executeq("delete from doctors where licenseno="+request.getParameter("r"));
    response.sendRedirect("viewdoctors.jsp");

%>