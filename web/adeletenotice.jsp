<%

if(abhi.DBLAYER.executeq("delete from notices where noticeid="+request.getParameter("e")) )
    response.sendRedirect("aviewnotices.jsp?a=2");


%>