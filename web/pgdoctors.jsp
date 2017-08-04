<%
    
    String s= "insert into doctors(campid,licenseno,doctorname,speciality,qualification,currentworkingstatus,city,address,experience,addedby) values("+request.getParameter("t1")+",'"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t9")+"','"+request.getParameter("t8")+"',"+session.getAttribute("oid")+")";
    if(abhi.DBLAYER.executeq(s))
        response.sendRedirect("doctors.jsp");
    //out.print(s);
    
   



%>