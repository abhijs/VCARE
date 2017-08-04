<%@ include file="loggedinheader.jsp" %>
<%@ include file="buttondesign.jsp" %>

    <script language="javascript">
    function falert()
        {
        alert("Notice added Successfully");
        }
    </script>
     <form name="frm" method="post" action="pgnotices.jsp">
        <table width="400" align="center" >
           <tr>
            <td align="center">
                <h1>Add Notices</h1><br>
            </td>
            </tr>
            
            
            <tr>
                <td colspan="2" align="center" valign="top">
                    <b>Organiser Id</b> &nbsp; <input type="text" name="t1" readonly value= "<%= session.getAttribute("oid") %> " /><br><br>   
                </td>
            </tr>
            
            
            <tr>
                <td  align="center" valign="top">   
                     <b>Description</b><br>
                </td>
            </tr>
                            
            <tr>
                <td width="600" align="center">
                   <textarea rows="10" cols="70" name="ta1" align="center" required></textarea><br>
                </td>
            </tr>
                            
            <tr>
               <td align="center" colspan="2">
                   
                   <input type="submit" name="s1" value="Add this notice" onclick="falert()" onclick="window.location='notices.jsp'" id="submit"/>
              </td>
           </tr>
         </table>
       </form>
                
             
            <%@ include file="loggedinfotter.jsp" %>
   