<%

    session.removeAttribute("onm");
    session.removeAttribute("oid");
    session.removeAttribute("em");
    
    session.removeAttribute("anm");
    session.removeAttribute("aid");
    session.removeAttribute("aem");
     
    if(session.getAttribute("em")==null)
    {
    response.sendRedirect("index.jsp?sess=exp");
    }
  
%>