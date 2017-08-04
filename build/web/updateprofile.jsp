
<%

    String s="update camporganisers set organisername='"+request.getParameter("t1")+"',type='"+request.getParameter("t2")+"',password='"+request.getParameter("t3")+"',arena='"+request.getParameter("t4")+"',city='"+request.getParameter("t5")+"',state='"+request.getParameter("t6")+"',country='"+request.getParameter("t7")+"',phoneno='"+request.getParameter("t8")+"' where email='"+session.getAttribute("em")+"'";
   // out.print(s);
   abhi.DBLAYER.executeq(s);
    response.sendRedirect("profile.jsp");
%>