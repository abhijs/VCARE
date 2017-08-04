<%
    String s="update doctors set doctorname='"+request.getParameter("t2")+"',qualification='"+request.getParameter("t3")+"',speciality='"+request.getParameter("t4")+"',currentworkingstatus='"+request.getParameter("t5")+"',city='"+request.getParameter("t7")+"',experience='"+request.getParameter("t6")+"' where licenseno="+request.getParameter("rn");
   
    abhi.DBLAYER.executeq(s);
        response.sendRedirect("viewdoctors.jsp");
    
%>