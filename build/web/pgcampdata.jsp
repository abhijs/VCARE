<%
    String s="insert into camps(organiserid,camptitle,dateofcamp,starttime,endingtime,venue,city,description) values('"+request.getParameter("t8")+"','"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"')";
    String k="insert into notifications(organiserid,datetime,notificationtext) values("+session.getAttribute("oid")+",NOW(),'New camp added by "+session.getAttribute("onm")+"')";
    
    if(abhi.DBLAYER.executeq(s))
    {  
        abhi.DBLAYER.executeq(k);
        response.sendRedirect("viewcamp.jsp");
    }
    else
        out.print("Failed");
%>