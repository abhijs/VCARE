<%
     
    String s="update camporganisers set verified=1 where organiserid="+request.getParameter("e");
    abhi.DBLAYER.executeq(s);
    response.sendRedirect("aorg.jsp");
%>