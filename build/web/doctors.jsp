<%@ page  language="java" import="java.sql.*" %>
<%@ include file="buttondesign.jsp" %>

<html>
    <head>
    <title>Add doctors</title>
    <%
    if(session.getAttribute("em")==null)
    {
    response.sendRedirect("index.jsp?sess=exp");
    }
    %>

    <style>
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #CCCCCC;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 10px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  font-family: harrington;
}
.button:hover  {
  background-color: #008CBA;
  
}
</style>
</head>
    <body background="cream.jpg"> 
    
    <script language="javascript">
        function falert()
        {
        alert("Data successfully added"); 
        }
    </script> 
    <table width="100%" >
        
        <tr>
                <td width="600" valign="top" >
                    <a href="loggedin.jsp"><button class="button" <font face ="harrington"><b>Home</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="campdata.jsp"><button class="button" <font face ="harrington"><b>Add camp</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="viewdoctors.jsp"><button class="button" <font face ="harrington"><b>View doctors</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br><br>
                </td>
        </tr>
    </table>

    
        <table width="100%" >
            <tr>
                <td colspan="2">
                   
                    <form name="frm" method="post" action="pgdoctors.jsp">
                        <table height="600"  align="center">
                            <tr><td colspan="2" align="center"><h1>ADD DOCTOR</h1></td></tr>
                            <tr><td><font size=5> Camp id </font></td>
                            <td><select name="t1" >
                            <%
                                String sb="select campid from camps where organiserid='"+session.getAttribute("oid")+"'";
                                
                                ResultSet rsm=abhi.DBLAYER.getResult(sb);
                                if(rsm.next()==true)
                                    { 
                                        do  
                                        {
                                         out.print("<option value='"+rsm.getString(1)+"'>"+rsm.getString(1)+"</option>");
                                        }while(rsm.next());
                                    
                                    }
                            %>
                                    
                                    </select>
                                    </td></tr>
                               <tr> <td><font size=5> License number </td><td> <input type="number" name="t2" required></td></tr>
                               <tr> <td> <font size=5>Name  </td><td> <input type="text" name="t3" required></td></tr>
                               <tr> <td> <font size=5>Speciality </td><td> <select name="t4" required>
                                  <%
                                   String s="select * from doctorspeciality";
                                     ResultSet t=abhi.DBLAYER.getResult(s);
                                    while(t.next())   
                                     out.print("<option value='"+t.getString(1)+"'>"+t.getString(1)+"</option>");

                                  %>
                                  <% out.print("</select>");  %>
                               <tr> <td> <font size=5>Qualification </font></td><td> <input type="text" name="t5" required></td></tr>
                               <tr> <td><font size=5> Current working status </font> </td><td> <input type="text" name="t6" required></td></tr>
                               <tr> <td><font size=5>City </font></td><td> <input type="text" name="t7" required></td></tr>
                               <tr> <td><font size=5>Work Address </font></td><td> <input type="text" name="t9" required></td></tr>
                               <tr> <td> <font size=5>Experience </font> </td>
                               <td><select name="t8" required>
                                   <option value="less than 1 Year">Less than 1 Year</option>
                                   <option value="1-2 Year">1-2 Years</option>
                                   <option value="2-3 Year">2-3 Years</option>
                                   <option value="more than 4 Years">More than 4 Years</option>
                               </select>
                                   </td></tr>  <br><br>
                               <tr><td colspan="2" align="center"> <input type="submit" name="b1" value="Add" id=submit onclick='falert()' ></td></tr>  
                               
                        </table> 
                    </form>
                </td>
            </tr>
        </table>
    </body>