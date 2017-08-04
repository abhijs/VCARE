<%@ page language="java" import="java.sql.*" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
     <meta charset="utf-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1" />
     <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
     <link rel="stylesheet" href="assets/css/main1.css" />
     <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
     <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title> Vcare </title>
    <!--REQUIRED STYLE SHEETS-->
    <!-- BOOTSTRAP CORE STYLE CSS -->
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
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="cbp-spmenu-push">

    <!-- MAIN HEADING-->
    <div class="for-full-back color-bg-one" id="main-sec">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1 class="pad-adjust"><i class="fa fa-plus faa-pulse animated"></i>Vcare</h1>
                </div>
            </div>
        </div>
    </div>
    <!--END MAIN HEADING-->
    <!--LEFT SLIDE MENU-->
     <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
        <h3>VCARE</h3>
        <a href="#">Call: +91-70875-90705</a>
        <a href="#home"><i class="fa fa-home fa-3x"></i>HOME</a>
        <a href="#notices-sec"><i class="fa fa-bullhorn fa-3x"></i>NOTICES</a>
        <a href="#services-sec"><i class="fa fa-globe fa-3x"></i>PUBLIC&nbsp; SERVICES</a>
        <a href="#about-sec"><i class="fa fa-microphone fa-3x"></i>ABOUT US</a>
    </nav>

    <div class="row" id="icon-left">
        <div class="col-md-12">
            <i id="showLeftPush" class="fa fa-gear fa-4x faa-pulse animated "></i>
        </div>
    </div>
    <!--END LEFT SLIDE MENU-->
<%
    if(request.getParameter("z")!=null)
        out.print("<script language='javascript'> alert('Registerd Successfully,wait for confirmation.'); </script>"); 
    
    if(request.getParameter("c")!=null)
        out.print("<script language='javascript'> alert('Password has been sent to your email address.'); </script>");
    
    
%>

    <!--RIGHT SLIDE MENU-->
    <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
        <h3>SOCIAL</h3>
        <a href="register.jsp"><i class="fa fa-key fa-3x"></i>REGISTER</a>
        <a href="search.jsp"><i class="fa fa-search-plus fa-3x"></i>SEARCH CAMPS</a>
        <a href="searchdoctors.jsp"><i class="fa fa-search-plus fa-3x"></i>LOOK FOR DOCTORS</a>
    </nav>

    <div class="row" id="icon-right">
        <div class="col-md-12">
            <i id="showRightPush" class="fa fa-paperclip faa-pulse animated fa-4x "></i>
        </div>
    </div>
    <!--END RIGHT SLIDE MENU-->

    
     <!--HOME SECTION-->
    
    <section id="banner">
	<div class="inner">
	<header>
	<h2>WELCOME</h2>
	</header>
         <form name="frm" method="post" action="checklogin.jsp">
         <tr>
         <td><br><b><font size=5>Email id</b></font></td>
         <td> <input type="email" name="t1" /></td>
         </tr>
         <tr>
         <td><br><b><font size=5>Password</b></font></td>
         <td> <input type="password" name="t2"/></td>
         </tr>
    <%
           if(request.getParameter("p")!=null)
             out.print("<tr><td colspan=2 align=center ><font color=red>Invalid Email id or Password<br> or you are not verified yet</font></td></tr>");
    %>
        <tr><td colspan="2" align="center"> <br> <input type="submit" name="b1" value="Login" style="background-color:#666666"></td></tr>
        <tr ><td colspan=2 align=center><br><a href="forgotpass.jsp">Forgot password</a>
        <tr ><td colspan=2 align=center><br><br><a href="register.jsp"><font size=6>Register</font></a>
        </form>
   </div>
</section>

    <!--END HOME SECTION-->

    <!--NOTICES SECTION-->
    <section class="for-full-back color-bg-one" id="notices-sec">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1><i class="fa fa-bullhorn faa-pulse animated  "></i>NOTICE BOARD</h1>
                </div>
            </div>
        </div>
    </section>
    <section class="for-full-back color-white " id="contact-inner">
        <div class="container">
            <div class="row">
                <div class="col-md-6 contact-cls">    
                             <marquee bgcolor="white" onMouseOver="this.stop()" onMouseOut="this.start()" scrollamount="3" direction="left" loop="true" width="200%">
                                 
                                    <%
                                        String g="select description from notices where verified=1";
                                        ResultSet e=abhi.DBLAYER.getResult(g);
                                        if(e.next()==false)
                                            out.print("NO NEW NOTICE TO SHOW.");
                                        else
                                        {
                                             do
                                             {
                                             
                                               out.print("<tr><td><img src='arrow.png' width=10 height=20> "+e.getString(1)+"<br></td></tr>");
                                              }while(e.next());
                                        }  
                                    %>
                              </marquee>          
                    </div>
                </div>
            </div>
    </section>
    <!--END NOTICES SECTION-->

    <!--public services SECTION-->
    <section class="for-full-back color-bg-one" id="services-sec">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1><i class="fa fa-rocket faa-pulse animated  "></i>Services</h1>
                </div>
            </div>
        </div>
    </section>
    
    <section id="publicservices-sec">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12 ">
                    <div class="col-md-4">
                        <ul class="plan">
                            <li class="plan-head c-b">Medical help</li>
                            <li><strong>Mobile medical units: </strong>102</li>
                            <li><strong>Health services:</strong>1009</li>
                            <li><strong>Blood or eye donation:</strong>1001</li>
                            <li><strong>Medical emergency:</strong>2212542</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="plan">
                            <li class="plan-head">Women's helpline number</li>
                            <li><strong>Women's helpline</strong>111</li>
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <ul class="plan">
                            <li class="plan-head c-v">VALUE PLAN</li>
                            <li><strong>12</strong> Accounts</li>
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                        </ul>
                    </div>
                </div>
            </div>


        </div>
    </section>
    <!-- END SERVICE SECTION-->*/ %>

    <!--ABOUT SECTION-->
    <section class="for-full-back color-bg-one" id="about-sec">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1><i class="fa fa-microphone faa-pulse animated  "></i>About</h1>
                </div>
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-5 ">
                        <h4>
                            <strong> 
                                Sustainability, social equality and the environment are now business problems.<br>
                                And corporate leaders can't depend on governments to solve them ...
                           </strong>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="for-full-back color-white" id="about-team">
        <div class="container">
            <div class="row text-center g-pad-bottom">
                <div class="col-md-8 col-md-offset-2 ">
                    <h3>OUR TEAM PROFILE</h3>
                </div>

            </div>
            <div class="row text-center g-pad-bottom">
                <div class="col-md-12 ">
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="team-member">
                            <img src="1.jpg" alt="">
                            <h3><strong>Abhijeet Sharma </strong></h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="team-member">
                            <img src="2.png" alt="">
                            <h3><strong>Rahul Garg </strong></h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="team-member">
                            <img src="11.jpg" alt="">
                            <h3><strong>Shivam Aggarwal </strong></h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row g-pad-bottom">
                <div class="col-md-6">
                    
                    <p>
                        We believe that providing a platform to various medical 
                                organization's which continuously work to bring sustainable change in the lives of 
                                underprivileged children, youth and women can help us get engage proactively 
                                in the change process....
           
                      </p>
        </div>
    </section>
    <!--END ABOUT SECTION-->

   
    <!--FOOTER SECTION -->
    <div class="for-full-back color-bg-one" id="footer">
        <table  width=100% >
        <tr align="center"><td><a href="adminlogin.jsp"><font color=black>Poweredby:VCARE</font></a>  
        </table>
    </div>
    <!-- END FOOTER SECTION -->

    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP CORE SCRIPT   -->
    <script src="assets/plugins/bootstrap.js"></script>
    <!-- SIDE MENU SCRIPTS -->
    <script src="assets/js/modernizr.custom.js"></script>
    <script src="assets/js/classie.js"></script>
    <!-- VEGAS SLIDESHOW SCRIPTS -->
    <script src="assets/plugins/vegas/jquery.vegas.min.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

</body>
</html>
