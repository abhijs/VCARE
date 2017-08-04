
<%@ page language="java" import="java.sql.*" %> 
<%@ include file="buttondesign.jsp"  %>

<html>
    <head>
<title> view doctors </title>
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

<body background="001.jpg">
     <script language="javascript">
    function falert()
        {
        i=confirm("Do you want to delete this record?");
        if(i==true)
            return true;
        if(i==false)
            return false;
            
        }
    </script>
    <table width="100%" >
        
        <tr>
                <td width="600" valign="top" >
                    <a href="loggedin.jsp"><button class="button" <font face ="harrington"><b>Home</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="campdata.jsp"><button class="button" <font face ="harrington"><b>Add camp</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="doctors.jsp"><button class="button" <font face ="harrington"><b>Add doctor's to camp</b></font></button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br><br>
                </td>
        </tr>
    </table>
    
    <table width="100%" >
        <tr>
            <td align="center" colspan="9">
        <h1>LIST OF DOCTORS</h1>
    </td>
</tr>
<tr>
    <td align="center" colspan="9" >
        <form name="frm" method="post" action="viewdoctors.jsp">
            <input type="radio" name="r1" value="licenseno" <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("licenseno")?"checked":"") %> onclick="document.forms[0].submit()"/>License number &nbsp; &nbsp; &nbsp;
            <input type="radio" name="r1" value="campid" <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("campid")?"checked":"") %> onclick="document.forms[0].submit()" /> Camp id &nbsp; &nbsp; &nbsp;
            <input type="radio" name="r1" value="doctorname" <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("doctorname")?"checked":"") %> onclick="document.forms[0].submit()" /> Name &nbsp; &nbsp; &nbsp;
            <input type="radio" name="r1" value="speciality"<%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("speciality")?"checked":"") %> onclick="document.forms[0].submit()" /> Speciality &nbsp; &nbsp; &nbsp;
            <input type="radio" name="r1" value="city" <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("city")?"checked":"") %> onclick="document.forms[0].submit()" /> City  <br><br>
            
            <input type="text" name="t1" /><br><br>
            <input type="submit" name="b1" value="go" id=submit /><br><br><br>
        </form> 
    </td>
</tr>
</table>
<table width="100%" border="1">
          <%
                
             String s ;
             ResultSet rs;
            if(request.getParameter("t1")==null)
                 s="select * from doctors where addedby='"+session.getAttribute("oid")+"'";
               
             else
                 s="select * from doctors where "+request.getParameter("r1")+" like '%"+request.getParameter("t1")+"%' and addedby='"+session.getAttribute("oid")+"'";
             
             rs=abhi.DBLAYER.getResult(s);
             if(rs==null || rs.next()==false)
             {
                 out.print("<script language='javascript'>alert('No doctors to show');</script>");
             }
             else
                 {
                 %>
                 <tr>
            <td>License number</td>
            <td>Camp id</td>
            <td>Name</td>
            <td>Qualification</td>
            <td>Speciality</td>
            <td>current working status</td>
            <td>Experience</td>
            <td>City</td>
            <td>Options</td>
        </tr>
               <% 
               do
             {
                 out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td><a href=delete.jsp?r="+rs.getString(1)+" onclick='return falert()'><img src=Close.ico width=50/></a><a href=viewdoctors.jsp?r="+rs.getString(1)+"><img src=edit.jpg width=50/></a></td></tr>");
                 if(request.getParameter("r")!=null && request.getParameter("r").equals(rs.getString(1)))
                     out.print("<form name=frm method=post action=updatedoctors.jsp><tr><td><input type=hidden name=rn value='"+rs.getString(1)+"'>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td><input type=text name=t2 value='"+rs.getString(3)+"'/></td><td><input type=text name=t3 value='"+rs.getString(4)+"'/></td><td><input type=text name=t4 value='"+rs.getString(5)+"'/></td><td><input type=text name=t5 value='"+rs.getString(6)+"'/></td><td><input type=text name=t6 value='"+rs.getString(7)+"'/></td><td><input type=text name=t7 value='"+rs.getString(8)+"'/></td><td><input type=submit value=Save /><input type=button value=Cancel onclick=window.location='viewdoctors.jsp' /></td></tr></form>");
             }while(rs.next());
                }
             
        %>
    </table>
    
    </body>
</html>