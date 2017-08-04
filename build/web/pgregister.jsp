

<%@page language="java" import="java.sql.*"%>

<%
String a=request.getParameter("t4");
String q=abhi.DBLAYER.getScalar("select email from camporganisers where email='"+a+"'");
String f=abhi.DBLAYER.getScalar("select organiserid from camporganisers where organiserid='"+request.getParameter("t1")+"'");
if(f==null || f.equals(""))
{    
    if(q==null||q.equals(""))
    {
      if(request.getParameter("t5").contains("'") || request.getParameter("t5").contains("=") || request.getParameter("t5").contains(","))
       {
            response.sendRedirect("register.jsp?p=3");
            return;
       }
   String s="insert into camporganisers(organiserid,organisername,type,email,password,arena,city,state,country,phoneno,aim) values('"+request.getParameter("t1")+"','"+request.getParameter("t2")+"','"+request.getParameter("t3")+"','"+request.getParameter("t4")+"','"+request.getParameter("t5")+"','"+request.getParameter("t6")+"','"+request.getParameter("t7")+"','"+request.getParameter("t8")+"','"+request.getParameter("t9")+"','"+request.getParameter("t10")+"','"+request.getParameter("t11")+"')"; 
   ResultSet t=abhi.DBLAYER.getResult("select adminid from admins");
   while(t.next())
   {
      String k="insert into notifications(adminid,organiserid,datetime,notificationtext) values("+t.getString(1)+","+session.getAttribute("oid")+",NOW(),'New registeration by an organization named <font color=blue>"+request.getParameter("t2")+"</font>')";
      abhi.DBLAYER.executeq(k);
   }        

   if(abhi.DBLAYER.executeq(s))
       response.sendRedirect("index.jsp?z=4");
  
}
    else
        response.sendRedirect("register.jsp?q=5");
  
}  
else
    response.sendRedirect("register.jsp?z=2");


%>