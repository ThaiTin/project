<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DatabaseConnection"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate </title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--menu-->
        <script src="js/scripts.js"></script>
        <link href="css/styles.css" rel="stylesheet">
        <!--//menu-->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- slide -->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                });
            });
        </script>
    </head>
    <body >
        <!--header-->
        <div class="navigation">
            <div class="container-fluid">
                <nav class="pull">
                    <ul>
                        <li><a  href="index.jsp">Home</a></li>
                        <li><a  href="about.jsp">About Us</a></li>
                        <li><a  href="blog.jsp">Blog</a></li>
                        <li><a  href="terms.jsp">Terms</a></li>
                        <li><a  href="privacy.jsp">Privacy</a></li>
                        <li><a  href="contact.jsp">Contact</a></li>
                    </ul>
                </nav>			
            </div>
        </div>

        <div class="header">
            <div class="container">
                <!--logo-->
                <div class="logo">
                    <h1><a href="index.jsp">REAL HOME</a></h1>
                </div>
                <!--//logo-->
                <div class="top-nav">
                    <ul class="right-icons">
                        <%
                            if (session.getAttribute("user") == null) {%>
                        <li><a href="controller?action=log">LOGIN</a></li>
                        <li><a href="controller?action=reg">REGISTER</a></li>
                            <%                                } else {%>
                        <li><a href="controller?action=update">Welcome <%=session.getAttribute("user")%>,</a></li>
                        <li><a href="controller?action=logout">SIGN OUT</a></li>
                            <%}%>
                        <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>

                    </ul>
                    <div class="nav-icon">
                        <div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
                            <a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
                        </div>	
                        <!---
                        <a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
                --->
                    </div>
                    <div class="clearfix"> </div>
                    <!---pop-up-box---->

                    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                    <!---//pop-up-box---->
                    <div id="small-dialog" class="mfp-hide">
                        <!----- tabs-box ---->
                        <div class="sap_tabs">	
                            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                <ul class="resp-tabs-list">
                                    <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All Homes</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For Sale</span></li>
                                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For Rent</span></li>
                                    <div class="clearfix"></div>
                                </ul>				  	 
                                <div class="resp-tabs-container">
                                    <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                        <div class="facts">
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Search Address, Neighborhood, City or Zip';
                                                        }">		
                                                <input type="submit" value="">
                                            </div>        
                                        </div>
                                    </div>
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                        <div class="facts">									
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Search Address, Neighborhood, City or Zip';
                                                        }">		
                                                <input type="submit" value="">
                                            </div> 
                                        </div>	
                                    </div>									
                                    <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                        <div class="facts">
                                            <div class="login">
                                                <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                            this.value = 'Search Address, Neighborhood, City or Zip';
                                                        }">		
                                                <input type="submit" value="">
                                            </div> 
                                        </div>	
                                    </div>
                                </div>
                            </div>
                            <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
                            <script type="text/javascript">
                                                    $(document).ready(function () {
                                                        $('#horizontalTab').easyResponsiveTabs({
                                                            type: 'default', //Types: default, vertical, accordion           
                                                            width: 'auto', //auto or any width like 600px
                                                            fit: true   // 100% fit in a container
                                                        });
                                                    });
                            </script>	
                        </div>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });

                        });
                    </script>


                </div>
                <div class="clearfix"> </div>
            </div>	
        </div>
        <!--//-->	
        <div class=" header-right">
            <div class=" banner">
                <div class="slider">
                    <div class="callbacks_container">
                        <ul class="rslides" id="slider">		       
                            <li>
                                <div class="banner1" style="background-image: url('./images/2.jpg') ">
                                    <div class="caption">
                                        <h3><span>VTer</span>site</h3>
                                        <p>online Real estate website</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="banner2" style="background-image: url('./images/5.jpg') ">
                                    <div class="caption">
                                        <h3><span>VTer</span>site</h3>
                                        <p>online Real estate website</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="banner3" style="background-image: url('./images/4.jpg') ">
                                    <div class="caption">
                                        <h3><span>VTer</span>site</h3>
                                        <p>online Real estate website</p>
                                    </div>
                                </div>
                            </li>		
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--header-bottom-->
        <div class="banner-bottom-top">
            <div class="container">

                <div class="bottom-header">

                    <div class=" bottom-head">
                        <a href="admin_manageStaff.jsp">
                            <div class="buy-media">
                                <i class="buy"> </i>
                                <h6>Manage Staff</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="admin_manageUser.jsp">
                            <div class="buy-media">
                                <i class="rent"> </i>
                                <h6>Manage User</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="admin_manageProperty.jsp">
                            <div class="buy-media">
                                <i class="pg"> </i>
                                <h6>Manage Property</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="buy.jsp">
                            <div class="buy-media">
                                <i class="sell"> </i>
                                <h6>Career</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="index.jsp">
                            <div class="buy-media">
                                <i class="loan"> </i>
                                <h6>Manage Page</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="buy.jsp">
                            <div class="buy-media">
                                <i class="apart"> </i>
                                <h6>Manage Database</h6>
                            </div>
                        </a>
                    </div>
                    <div class=" bottom-head">
                        <a href="index.jsp">
                            <div class="buy-media">
                                <i class="deal"> </i>
                                <h6>Home Page</h6>
                            </div>
                        </a>

                    </div>

                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>

        <div class="login-right">

            <h3> Career </h3>
            <!--//-->
            <section class="listings">

                <div class="login-panel panel panel-default" style="padding-left: 20%">
                    <form action="controller?action=career" method="post">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <tr>
                                    <td>day time (dd/mm/yyyy) </td>
                                    <td><input type="text" name="daytime"></td>
                                <tr>
                                <tr>
                                    <td>content</td>
                                    <td>
                                        <textarea rows="20" name="content" cols="70"  required=""></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <label class="hvr-sweep-to-right">
                                            <!--<input type="hidden" name="action" value="upload">-->

                                            <input type="submit" value = "Upload" onclick="return validation()" >
                                        </label>				
                                    </td>
                                    <td align="center">
                                        <label class="hvr-sweep-to-right" >
                                            <input type="reset" value="Reset">
                                        </label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </form>
            </section>
        </div>>
        <!--//header-bottom-->

        <!--//header-->
        <!--content-->

        <div class="footer">
            <div class="container">
                <div class="footer-top-at">
                    <div class="col-md-3 amet-sed">
                        <h4>Our Company</h4>
                        <ul class="nav-bottom">
                            <li><a href="about.jsp">About Us</a></li>





                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed ">
                        <h4>Work With Us</h4>
                        <ul class="nav-bottom">
                            <li><a href="career.jsp">Careers</a></li>
                            <li><a href="feedback.jsp">Feedback</a></li>	
                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed">
                        <h4>Customer Support</h4>
                        <p>Mon-Fri, 7AM-7PM </p>
                        <p>Sat-Sun, 8AM-5PM </p>
                        <p>177-869-6559</p>
                        <ul class="nav-bottom">
                            <li><a href="#">Live Chat</a></li>
                            <li><a href="faqs.jsp">Frequently Asked Questions</a></li>

                        </ul>	
                    </div>
                    <div class="col-md-3 amet-sed ">
                        <h4>Property Services</h4>
                        <ul class="nav-bottom">
                            <li><a href="buy.jsp">Residential Property</a></li>
                            <li><a href="buy.jsp">Commercial Property</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>

                        </ul>	
                        <ul class="social">
                            <li><a href="#"><i> </i></a></li>
                            <li><a href="#"><i class="gmail"> </i></a></li>
                            <li><a href="#"><i class="twitter"> </i></a></li>
                            <li><a href="#"><i class="camera"> </i></a></li>
                            <li><a href="#"><i class="dribble"> </i></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="col-md-4 footer-logo">
                        <h2><a href="index.jsp">REAL HOME</a></h2>
                    </div>
                    <div class="col-md-8 footer-class">
                        <p >� 2015 Real Home. All Rights Reserved | Design by VTer  </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
    </body>
</html>