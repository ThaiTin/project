<%@page import="bean.category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.range"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DatabaseConnection"%>
<%@page import="bean.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate Category</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#tabs").tabs();
            });
        </script>
        <script src="/javascripts/jquery.js" type="text/javascript"></script>
        <script src="/javascripts/jquery.hashchange.js" type="text/javascript"></script>
        <script src="/javascripts/jquery.easytabs.js" type="text/javascript"></script>
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
        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/responsive.css">

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/main.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" type="text/css" href="css/tabcontent.css" />

        <script type="text/javascript" src="js/tabcontent.js">

            /***********************************************
             * Tab Content script v2.2- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
             * Please keep this notice intact
             * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
             ***********************************************/

        </script>
    </head>
    <body>
        <%DatabaseConnection db = new DatabaseConnection();
            Connection con = db.setConnection(); %>
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
        <div class=" banner-buying">
            <div class=" container">
                <h3><span>Lor</span>em</h3> 
                <!---->
                <div class="menu-right">
                    <ul class="menu">
                        <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                            <ul class="cute">
                                <li class="subitem1"><a href="buy.jsp">Buy </a></li>
                                <li class="subitem2"><a href="buy.jsp">Rent </a></li>
                                <li class="subitem3"><a href="buy.jsp">Hostels </a></li>
                                <li class="subitem1"><a href="buy.jsp">Resale </a></li>
                                <li class="subitem2"><a href="loan.jsp">Home Loan</a></li>
                                <li class="subitem3"><a href="buy.jsp">Apartment </a></li>
                                <li class="subitem3"><a href="dealers.jsp">Dealers</a></li>
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
        <div class="container">

            <!--price-->
            <form action="controller?action=search" method="post">
                <div class="price">
                    <div class="price-grid">
                        <div class="col-sm-4 price-top">
                            <h4>District</h4>
                            <select class="in-drop" name="District">
                                <option>Select District</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                                <option>7</option>
                                <option>8</option>
                                <option>9</option>
                                <option>10</option>
                                <option>11</option>
                                <option>12</option>
                                <option>binh tan</option>
                                <option>tan binh</option>
                                <option>tan phu</option>
                                <option>cu chi</option>
                                <option>can gio</option>
                                <option>binh thanh</option>
                                <option>thu duc</option>

                            </select>
                        </div>
                        <div class="col-sm-4 price-top">
                            <h4>Range Price</h4>
                            <select class="in-drop" name="price">
                                <option>Select price</option>
                                <%String range = "Select * from project.range";
                                    ResultSet rs1 = db.getResult(range, con);
                                    while (rs1.next()) {
                                %>

                                <option><%=rs1.getInt("low")%>-<%=rs1.getInt("high")%></option>


                                <% } %>
                            </select>

                        </div>
                        <div class="col-sm-4 price-top">
                            <h4>Transaction type</h4>
                            <select class="in-drop" name="transaction">
                                <option>select transaction</option>
                                <%String transaction = "Select * from project.transaction_type";
                                    ResultSet rs2 = db.getResult(transaction, con);
                                    while (rs2.next()) {
                                %>

                                <option><%=rs2.getString("name")%></option>


                                <% } %>
                            </select>

                        </div>
                    </div>
                    <div class="price-grid">
                        <div class="col-sm-6 price-top1">
                            <h4>category</h4>
                            <select class="in-drop" name="category">
                                <option>select category</option>
                                <%String cate = "Select * from project.category";
                                    ResultSet rs3 = db.getResult(cate, con);
                                    while (rs3.next()) {
                                %>

                                <option><%=rs3.getString("name")%></option>


                                <% }%>
                            </select>
                        </div>
                        <div class="col-sm-6 price-top1">
                            <br><br>
                            <input type="submit" value="Search">

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </form>

            <div class="banner-bottom-top">
                <div class="container">
                    <div class="bottom-header">
                        <div class="header-bottom">
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
                                <a href="care.jsp">
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
                                <a href="controller?action=rangelist">
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
            </div>
            <!---->
            <div class="top-grid">
                <h3>Top City</h3>
                <div class="grid-at">
                    <div class="col-md-3 grid-city">
                        <div class="grid-lo">

                            <figure class="effect-layla">
                                <img class=" img-responsive" src="images/ce.jpg" alt="img06">
                                <figcaption>
                                    <h4>London</h4>

                                </figcaption>			
                            </figure>

                        </div>
                    </div>
                    <div class="col-md-3 grid-city">
                        <div class="grid-lo">

                            <figure class="effect-layla">
                                <img class=" img-responsive" src="images/ce1.jpg" alt="img06">
                                <figcaption>
                                    <h4>Sydney</h4>

                                </figcaption>			
                            </figure>

                        </div>
                    </div>
                    <div class="col-md-6 grid-city grid-city1">
                        <div class="grid-me">
                            <div class="col-md-8 grid-lo1">
                                <div class=" grid-lo">

                                    <figure class="effect-layla">
                                        <img class=" img-responsive" src="images/ce2.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect1">New York</h4>

                                        </figcaption>			
                                    </figure>

                                </div>
                            </div>
                            <div class="col-md-4 grid-lo2">
                                <div class=" grid-lo">

                                    <figure class="effect-layla">
                                        <img class=" img-responsive" src="images/ce3.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect2">Rome</h4>

                                        </figcaption>			
                                    </figure>

                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>	
                        <div class="grid-me">
                            <div class="col-md-6 grid-lo3">
                                <div class=" grid-lo">

                                    <figure class="effect-layla">
                                        <img class="img-responsive" src="images/ce4.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect3">Singapore</h4>

                                        </figcaption>			
                                    </figure>

                                </div>
                            </div>
                            <div class="col-md-6 grid-lo4">
                                <div class=" grid-lo">

                                    <figure class="effect-layla">
                                        <img class="img-responsive" src="images/ce5.jpg" alt="img06">
                                        <figcaption>
                                            <h4 class="effect3">Paris</h4>

                                        </figcaption>			
                                    </figure>

                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>	
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
        <!---->
        <!--premium-project-->

        <div class="login-right">
            <div class="container">
                <div class="login-top">
                    <h3> Add new Category </h3>


                    <div class="table-responsive" style="margin-left: 100px">
                        <form action="controller?action=addCategory" method="post" >
                            <table class="table table-hover" >
                                <tr>
                                    <td>New Category </td>
                                    <td><input type="text" name="cateName"></td>
                                </tr>
                                <tr>
                                    <td><input type="submit" name="Edit"></td>
                                    <td><input type="reset" name="Reset"></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!--  end listing section  -->
        <!--//premium-project-->
        <!---->
        <div class="container">
            <div class="future">
                <h3 >Fetured Projects</h3>
                <div class="content-bottom-in">
                    <ul id="flexiselDemo1">			
                        <li><div class="project-fur">
                                <a href="buy.jsp" ><img class="img-responsive" src="images/pi.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="buy.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="single.jsp" ><img class="img-responsive" src="images/pi1.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="buy.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="buy.jsp" ><img class="img-responsive" src="images/pi2.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="buy.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="buy.jsp" ><img class="img-responsive" src="images/pi3.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="buy.jsp">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                    </ul>
                    <script type="text/javascript">
                        $(window).load(function () {
                            $("#flexiselDemo1").flexisel({
                                visibleItems: 4,
                                animationSpeed: 1000,
                                autoPlay: true,
                                autoPlaySpeed: 3000,
                                pauseOnHover: true,
                                enableResponsiveBreakpoints: true,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint: 480,
                                        visibleItems: 1
                                    },
                                    landscape: {
                                        changePoint: 640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint: 768,
                                        visibleItems: 3
                                    }
                                }
                            });

                        });
                    </script>
                    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                </div>
            </div>
        </div>
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