<%@ page language="java" import="java.sql.*" %>

<%
                            
       String s="insert into notices(organiserid,description) values('"+session.getAttribute("oid")+"','"+request.getParameter("ta1")+"')";
       ResultSet rst=abhi.DBLAYER.getResult("select adminid from admins");
       
       if(abhi.DBLAYER.executeq(s))
           {out.print("yoyo");
                while(rst.next())
                    {
                         String k="insert into notifications(adminid,organiserid,datetime,notificationtext) values("+rst.getString(1)+","+session.getAttribute("oid")+",NOW(),'New notice added by "+session.getAttribute("onm")+"-----"+request.getParameter("ta1")+"')";
                         abhi.DBLAYER.executeq(k);
                    }
                  response.sendRedirect("notices.jsp");
            }
       else
           out.print("Failed");
         
                            
%>