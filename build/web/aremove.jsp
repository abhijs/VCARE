<%

abhi.DBLAYER.executeq("delete from camps where organiserid="+request.getParameter("e")) ;
abhi.DBLAYER.executeq("delete from notices where organiserid="+request.getParameter("e")) ;
abhi.DBLAYER.executeq("delete from notifications where organiserid="+request.getParameter("e")) ;
String sq="delete from camporganisers where organiserid="+request.getParameter("e");
if(abhi.DBLAYER.executeq(sq))
    response.sendRedirect("aorg.jsp?x=2");
else
    response.sendRedirect("aorg.jsp");



%>