<%@page import="bean.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DatabaseConnection"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate Category Flat Bootstarp Resposive Website Template | Single :: w3layouts</title>
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

    </head>
    <body>
        <!--header-->
        <div class="navigation">
            <div class="container-fluid">
                <nav class="pull">
                    <ul>
                        <li><a  href="index.jsp">Home</a></li>
                        <li><a  href="about.jsp">About Us</a></li>
                        <li><a  href="blog.jsp">Blog</a></li>
                        <li><a  href="terms.jps">Terms</a></li>
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
                    <h1><a href="index.html">REAL HOME</a></h1>
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
        <div class=" banner-buying">
            <div class=" container">
                <h3><span>Lor</span>em</h3> 
                <!---->
                <div class="menu-right">
                    <ul class="menu">
                        <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                            <ul class="cute">
                                <li class="subitem1"><a href="controller?action=buy">Buy </a></li>
                                <li class="subitem2"><a href="controller?action=rent">Rent </a></li>
                                <li class="subitem3"><a href="controller?action=buy">Hostels </a></li>
                                <li class="subitem1"><a href="controller?action=buy">Resale </a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
                <!--initiate accordion-->
                <script type="text/javascript">
                    $(function () {
                        var menu_ul = $('.menu > li > ul'),
                                menu_a = $('.menu > li > a');
                        menu_ul.hide();
                        menu_a.click(function (e) {
                            e.preventDefault();
                            if (!$(this).hasClass('active')) {
                                menu_a.removeClass('active');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('active').next().stop(true, true).slideDown('normal');
                            } else {
                                $(this).removeClass('active');
                                $(this).next().stop(true, true).slideUp('normal');
                            }
                        });

                    });
                </script>

            </div>
        </div>
        <!--//header-->
        <!---->

        <div class="container">

            <div class="buy-single-single">

                <div class="col-md-9 single-box">
                    <%
                        REstate out1 = (REstate) session.getAttribute("single");
                        System.out.print(out1.getRealID());

                    %>

                    <div class=" buying-top">	
                        <div class="flexslider">
                            <ul class="slides">

                                <li data-thumb=" <%=out1.getPicture1()%>">
                                    <img src="<%=out1.getPicture1()%>">
                                </li>




                                <li data-thumb=" <%=out1.getPicture2()%>">
                                    <img src="<%=out1.getPicture2()%>">
                                </li>



                                <li data-thumb=" <%=out1.getPicture3()%>">
                                    <img src="<%=out1.getPicture3()%>">
                                </li>



                                <li data-thumb=" <%=out1.getPicture4()%>">
                                    <img src="<%=out1.getPicture4()%>">
                                </li>




                                <li data-thumb=" <%=out1.getPicture5()%>">
                                    <img src="<%=out1.getPicture5()%>">
                                </li>

                            </ul>
                        </div>
                        <!-- FlexSlider -->
                        <script defer src="js/jquery.flexslider.js"></script>
                        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

                        <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function () {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                        </script>
                    </div>
                    <div class="buy-sin-single">
                        <div class="col-sm-5 middle-side immediate">
                            <h4>Possession: Immediate</h4>
                            <table>

                                <tr>
                                    <td>Bedroom:</td> 
                                    <td style="text-align: right"><%=out1.getBedroom()%></td>
                                </tr>
                                <tr>
                                    <td>Bathroom</td> 
                                    <td style="text-align: right"><%= out1.getBedroom()%></td>
                                </tr>

                                <!--                            <p><span>Bed </span>: <span class="two">2 BHK</span></p>
                                                            <p>  <spanBaths </span>: <span class="two">2</span></p>-->
                                <tr>
                                    <td>Price: </td>
                                    <td style="text-align: right"><%= out1.getPrice()%></td>
                                </tr>
                                <tr>
                                    <td>Transaction: </td>
                                    <td style="text-align: right"><%=out1.getTransaction()%></td>
                                </tr>
                            </table>
                            <div class="   right-side">
                                <a href="controller?action=contactOwner&id=<%=out1.getRealID()%>"> Contact Owner  </a>     
                            </div>
                        </div>
                        <div class="col-sm-7 buy-sin">

                            <h4>Description</h4>
                            <p>
                                <%=out1.getDescription()%>

                            </p>

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="map-buy-single">
                        <h4>Neighborhood Info</h4>
                        <div class="map-buy-single1">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>

                        </div>
                    </div>

                </div>




                <div class="col-md-3">
                    <div class="single-box-right right-immediate">
                        <h4>Featured Communities</h4>
                        <div class="single-box-img ">
                            <div class="box-img">
                                <a href="controller?action=buy"><img class="img-responsive" src="images/sl.jpg" alt=""></a>
                            </div>
                            <div class="box-text">
                                <p><a href="controller?action=buy">Lorem ipsum dolor sit amet</a></p>
                                <a href="controller?action=buy" class="in-box">More Info</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-box-img">
                            <div class="box-img">
                                <a href="controller?action=buy"><img class="img-responsive" src="images/sl1.jpg" alt=""></a>
                            </div>
                            <div class="box-text">
                                <p><a href="controller?action=buy">Lorem ipsum dolor sit amet</a></p>
                                <a href="controller?action=buy" class="in-box">More Info</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-box-img">
                            <div class="box-img">
                                <a href="controller?action=buy"><img class="img-responsive" src="images/sl2.jpg" alt=""></a>
                            </div>
                            <div class="box-text">
                                <p><a href="controller?action=buy">Lorem ipsum dolor sit amet</a></p>
                                <a href="controller?action=buy" class="in-box">More Info</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-box-img">
                            <div class="box-img">
                                <a href="controller?action=buy"><img class="img-responsive" src="images/sl3.jpg" alt=""></a>
                            </div>
                            <div class="box-text">
                                <p><a href="controller?action=buy">Lorem ipsum dolor sit amet</a></p>
                                <a href="controller?action=buy" class="in-box">More Info</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="single-box-img">
                            <div class="box-img">
                                <a href="controller?action=buy"><img class="img-responsive" src="images/sl4.jpg" alt=""></a>
                            </div>
                            <div class="box-text">
                                <p><a href="controller?action=buy">Lorem ipsum dolor sit amet</a></p>
                                <a href="controller?action=buy" class="in-box">More Info</a>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>

                </div>
                <div class="clearfix"> </div>
            </div>
        </div>

        <!---->

        <!--footer-->
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
                        <p >© 2015 Real Home. All Rights Reserved | Design by VTer  </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//footer-->
    </body>
</html>