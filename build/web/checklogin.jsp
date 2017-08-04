
<%@ page language="java" import="java.sql.*" %>

<%
String s = "select organisername,organiserid,email from camporganisers where email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"' and verified=true";
 out.print("<tr><td colspan=2 align=center ><font color=red>Email already exists<br></font> </td></tr>");
ResultSet rs= abhi.DBLAYER.getResult(s) ;

  if(rs==null  || rs.next()==false)
   response.sendRedirect("index.jsp?p=3");

 else 
  {  
    session.setAttribute("onm",rs.getString(1));
    session.setAttribute("oid",rs.getString(2));
    session.setAttribute("em",rs.getString(3));       
    response.sendRedirect("loggedin.jsp");
}
%>