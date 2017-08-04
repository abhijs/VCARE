<%@ page language="java" import="java.sql.*"%>
<%@ include file="buttondesign.jsp" %>

<html>
    <title> Add data</title>
 <%
    if(session.getAttribute("em")==null)
    {
    response.sendRedirect("index.jsp?sess=exp");
    }
    %>

<body background="10.jpg">
    
    <script language="javascript">
    function falert()
        {
        alert("Data Successfully Added");
        }
        
          </script> 
    
    <table width="600" align="right"  >
  <tr>
            <td colspan="2" align="center">
        <h1>ADD &nbsp; CAMP &nbsp; DATA</h1><br></td></tr>
        
                <form name="frm" method="post" action="pgcampdata.jsp">
                    <tr><td><font size=5><b>Organiser id</b></font></td><td><input type="text" name="t8" readonly value="<%= session.getAttribute("oid") %>"required ><br><br></td></tr>
                       <tr><td><font size=5><b>Camp title</b></font></td><td><input type="text" name="t1"  required><br><br></td></tr>
                       <tr><td><font size=5><b>Date of camp</b></font></td><td><input type="date" name="t2"  required><br><br><br></td></tr>
                       <tr><td><font size=5><b>Starting time</b></font></td><td><input type="time" name="t3" required ><br><br></td></tr>
                       <tr><td><font size=5><b>Ending time</b></font></td><td><input type="time" name="t4"  required><br><br></td></tr>
                       <tr><td><font size=5><b>Venue</b></font></td><td><input type="text" name="t5"  required><br><br></td></tr>
                       <tr><td><font size=5><b>City</b></font></td><td><input type="text" name="t6"  required><br><br></td></tr>
                       <tr><td><font size=5><b>Description</b></font></td><td><input type="text" name="t7"  required><br><br></td></tr>
                      
                           <tr><td colspan=2  align="center">
                            <input type="submit" name="b1" value="Submit" id=submit onclick="falert()" />
                        </td>
                           </tr>
                </form>
            </td>
        </tr>
    </table>
</body>
</html>
