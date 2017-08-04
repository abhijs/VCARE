<%@ include file="aloggedinheader.jsp" %>

<%
    session.setAttribute("savepath","medicalpix/"+session.getAttribute("aid")+".jpg");
    session.setAttribute("returnpage","aloggedin.jsp");
%>

<h1 >Select the file</h1>
<form name="frm" method="post" action="uploadfile.jsp" enctype="multipart/form-data">
    
    <input type="file" name="filename" required/>&nbsp;&nbsp;
    <input type="submit" name="b1" value="upload"/>

</form>

    
    <%@ include file="aloggedinfotter.jsp" %>