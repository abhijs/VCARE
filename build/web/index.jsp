<%@ include file="buttondesign.jsp" %>
<%@ page language="java" import="java.sql.*" %>

<html>
<title>
    Home
</title>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--ANIMATED FONTAWESOME STYLE CSS -->
    <link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
    <!-- VEGAS STYLE CSS -->
    <link href="assets/scripts/vegas/jquery.vegas.min.css" rel="stylesheet" />
    <!-- SIDE MENU STYLE CSS -->
    <link href="assets/css/component.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<style>

    h1
    {
        color:black;
        text-align:center;
        font-size: 50px;
        margin: 10px 200px;
    }
    h6
    {
        color:black;
        text-align:center;
        font-size: 20px;
        margin:1px;
    }
    .abc{
        background-color: #CCCCCC;
        color: #FFFFFF;
        text-align: center;
        padding: 12px 25px;
        display: inline-block;
        text-decoration: none;
        border-radius: 4px;
        border: none;
        font-size: 20px;
        margin: 5px;
        width: 200px;
    }
    .abc:hover
    {
        color: #FFFFFF;
        background-color:  #008CBA;  
        text-decoration: none;
    }
    table{ 
        background-color:white;
    }
    .footer
    {
        
        position:relative;
        left:0px;
        height:30px;
        width:100%;
        bottom:0px;
        text-align: center;
        text-decoration: none;
        background-color: #333;
        
        
        overflow: hidden;
        padding: 20px 0px 30px 0px;
    }
    .notice{
        margin: 30px 30px 30px 0px;
        padding: 20px;
        min-height: 200px;
        width:100%;
        background-color:white;
        text-align: center;
    }
    ul {
    list-style-type: none;
    margin: 0;
    padding: 0px 0px 0px 40px;
    overflow: hidden;
    background-color: #333;
    }

    li {
        float: left;
    }

    li a {
    display: block;
    color: white;
    padding: 14px 16px;
    text-decoration: none;
    }

li a:hover {
    background-color: #111;
    color: white;
    text-decoration: none;
}
.contactheader
{
    background-color:white;
    text-align:center;
    font-size:30px;
}
.contactright
{
    width:50%;
    padding: 38px 0px 0px 20px;
    height:400px;
    background-color:white;
    float:right;
   
}
.contactleft
{
    width:50%;
    height:400px;
    background-color:white;
    float:left;
    padding: 80px 0px 0px 200px;
    
}


</style>
</head>
<body background="cream.jpg">
    <ul>
  <li><a href="register.jsp">Register</a></li>
  <li><a href="search.jsp">Search Camps</a></li>
  <li><a href="searchdoctors.jsp">Search Doctor's</a></li>
</ul>
   
    <form name="frm" method="post" action="checklogin.jsp"  >
    <h1>WELCOME</h1>
        <table  align =center width=500 height=300 >
            <tr><td colspan=2 align=center>
                    <h4><b>Log in to your account</h4>
               </td>
            </tr>
            <tr><td colspan=2 align=center>
                <img src="login.png" width=37%>
                 </td>
           </tr>
         <tr>
             
         <td  align=center>
             <br>
             <input type="email" name="t1" placeholder="Email address" size=30/>
             
         </td>
         
         </tr>
         
         <tr>         
         <td olspan=2 align=center> 
            <br><input type="password" name="t2" placeholder=Password size=30/>
         </td>
         </tr>
    <%
           if(request.getParameter("p")!=null)
             out.print("<tr><td colspan=2 align=center ><font color=red>Invalid Email id or Password<br> or you are not verified yet</font></td></tr>");
    %>
        <tr>
            <td colspan="2" align="center">
                <input type= "submit" name="b1" value="Login" class=abc>
            </td>
        </tr>   
        </table>
        </form>
        <h6>-----------------------------------OR--------------------------------------</h6>
        <script language='javascript'>
            function falert()
            {
                alert("This is only for valid organisations, click ok to proceed .");
            }
        </script>
        
        <table align=center width=500>
        <tr align=center>
            <td colspan=2 align=center>
                <a href="register.jsp" onclick="falert()" > <button class=abc>Register</button>  </a>
                
            </td>
        </tr>
        <tr>
            <td colspan=2 align=center >
                <a href="forgotpass.jsp"> Forgot password ? </a>
            </td>
        </tr>
    </table>
    
    <div class=notice>
        <i  class= "fa fa-bullhorn fa-3x faa-pulse animated"></i>&nbsp;&nbsp;<font size=6 color=black><b>Notices</b></font><br>
            <marquee onMouseOver="this.stop()" onMouseOut="this.start()" scrollamount="3" direction="left" loop="true" width="100%">
        <%
            String sd="select description from notices where verified=1";
            ResultSet rd=abhi.DBLAYER.getResult(sd);
            if(rd.next()==false)
                  out.print("NO NEW NOTICE TO SHOW.");
            else
            {
                  do
                   {                                            
                        out.print("<tr><td><img src='arrow.jpg' width=10 height=20> "+rd.getString(1)+"<br></td></tr>");
                   }while(rd.next());
                                        }  
        %>
    </marquee>
    </div>
    
    <div class=team>
    <div class="container">
            <div class="row text-center g-pad-bottom">
                <div class="col-md-8 col-md-offset-2 ">
                    <h3><b>OUR TEAM PROFILE</b></h3>
                </div>
            </div>
             <p>
               We believe that providing a platform to various medical organization's which continuously work to 
               bring sustainable change in the lives of underprivileged children, youth and women can help us get 
               engage proactively in the change process .          
             </p>
            <div class="row text-center g-pad-bottom">
                <div class="col-12 ">
                    
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="team-member">
                            <img src="1.jpg" alt="">
                            <h3><strong>Abhijeet Sharma </strong></h3>
                        </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="team-member">
                            <img src="1.jpg" alt="">
                            <h3><strong>Rahul Garg </strong></h3>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 col-xs-6">
                        <div class="team-member">
                            <img src="1.jpg" alt="">
                            <h3><strong>Shivam Aggarwal </strong></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        
        <div>
            <div class=contactheader>
                <br><b>CONTACT </b>
            </div>
            <div class=contactright>                           
                Query? Drop a note!(Temporary) <br><br>
                <input type=text name =n1 placeholder=Name size=30>&nbsp;&nbsp;
                <input type=email name=e1 placeholder="Email address" size=30><br><br>
                <input type=textarea name=t1 placeholder=Message size=65>
                <br><br><input type=button name=s1 value=Send id=submit>
            </div>
            
            <div class=contactleft >
                <font size=5> <i class="fa fa-map-marker" ></i></font> <font size=4 >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;India</font><br>
                <font size=5> <i class="fa fa-phone" ></i></font> <font size=4 >&nbsp;&nbsp;&nbsp;&nbsp;+91-7788778877</font><br>
                <font size=5> <i class="fa fa-envelope" ></i></font> <font size=4 >&nbsp;&nbsp;&nbsp;&nbsp;vcare@gmail.com</font>
            </div >
        <div class=footer>
        <tr align="center" >
            <td valign=bottom>
                <a href="adminlogin.jsp">Poweredby : VCARE</a>  
            </td>
        </tr>
        </div>
      </body>
    </html>