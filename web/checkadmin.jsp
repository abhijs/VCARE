
<%@ page language="java" import="java.sql.*" %>

<%
String s = "select aname,adminid,aemail from admins where aemail='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'";

ResultSet r=abhi.DBLAYER.getResult(s);

  if(r==null || r.next()==false  )
   response.sendRedirect("adminlogin.jsp?q=8");

 else 
  {  
    session.setAttribute("anm",r.getString(1));
    session.setAttribute("aid",r.getString(2));
    session.setAttribute("aem",r.getString(3));       
    response.sendRedirect("aloggedin.jsp");
}
%>