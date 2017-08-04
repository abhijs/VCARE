<%

abhi.DBLAYER.executeq("delete from notifications where notificationid="+request.getParameter("e"));
response.sendRedirect("notifications.jsp");


%>