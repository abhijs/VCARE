
<%

String s="insert into tokens(campid,patientname,gender,age,disease,phoneno) values("+request.getParameter("t2")+",'"+request.getParameter("t3")+"','"+request.getParameter("c1")+"','"+request.getParameter("t4")+"','"+request.getParameter("c2")+"',"+request.getParameter("t5")+")";
    out.print(s);
abhi.DBLAYER.executeq(s);
     response.sendRedirect("patient.jsp?g=2");

    





%>