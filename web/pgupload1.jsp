<html>
    <title>upload photo</title>
    <body>
    
    <table width="1350" border="1">
        
<%
    session.setAttribute("savepath","medicalpix/"+session.getAttribute("oid")+".jpg");
    session.setAttribute("returnpage","register.jsp");
%>

    <tr>
<form name="frm" method="post" action="uploadfile.jsp" enctype="multipart/form-data">
    <td align="center"><input type="file" name="filename" required/></td>
    <br>
    <td><input type="submit" name="b1" value="upload"/></td>
</form>     
        </tr>
    </table>
</html>
