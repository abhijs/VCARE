<%@ include file="loggedinheader.jsp" %>
<% 
     if(request.getParameter("b")!=null)
        out.print("<script language='javascript'> alert('Password changed Successfully'); </script>"); 
     if(request.getParameter("o")!=null)
         out.print("<script language='javascript'> alert('No camps to show'); </script>");
     if(request.getParameter("k")!=null)
         out.print("<script language='javascript'> alert('No doctors to show'); </script>");
     String s="select aim from camporganisers where organiserid='"+session.getAttribute("oid")+"'";
     String sq=abhi.DBLAYER.getScalar(s);
     out.print("<font face='harrington' size=6 ><b>"+sq+"</b></font>");
%>


<%@ include file="loggedinfotter.jsp" %>