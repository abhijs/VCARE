<%@ include file= "aloggedinheader.jsp" %>

<table width="600" border="1">
<%
    String l="select * from notifications where adminid="+session.getAttribute("aid")+" order by datetime desc" ;
    ResultSet r=abhi.DBLAYER.getResult(l);
    if(r==null || r.next()==false)
        out.print("<script language='javascript'>alert('No new Notification');</script>");
    else
    {
  %>
    <tr><td><b>Notification Text</b></td>
    <td colspan=2><b>Date time of notification</b></td>
    <td><b>Delete</b></td></tr>
    <%
    do
    {
        if(r.getString("readby").equals("0"))
            out.print("<tr><td background color=red><b>"+r.getString(4)+"</b></td><td colspan=2><b>"+r.getString(5)+"</b></td><td><a href=deletenotification.jsp?e="+r.getString(2)+"><img src='close.ico' height=20 width=20/></a></td></tr>");
        else
            out.print("<tr><td  background color=red>"+r.getString(4)+"</td><td colspan=2>"+r.getString(5)+"</td><td><a href=deletenotification.jsp?e="+r.getString(2)+"><img src=Close.ico height=50 width=50/></a></tr>");
    
    }while(r.next());
       String sn="update notifications set readby=1 where adminid="+session.getAttribute("aid");
       abhi.DBLAYER.executeq(sn);
       }
%>

</table>


<%@ include file= "aloggedinfotter.jsp" %>