
<%
    abhi.DBLAYER.executeq("delete from camps where campid="+request.getParameter("r"));
    response.sendRedirect("asearch.jsp");

%>