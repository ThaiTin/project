
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DatabaseConnection"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate Category Flat s</title>
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
        <!--//header-->
        <!---->

        <div class="container">

            <div class="buy-single-single">

                <div class="col-md-9 single-box">
                    <%
                        DatabaseConnection db = new DatabaseConnection();
                        Connection con = db.setConnection();
                        String id = request.getParameter("id");
                        //                int Page = Integer.parseInt(request.getParameter("page"));
                        //                if (request.getParameter("page").trim().isEmpty()) {
                        //                    request.setAttribute("page", 0);
                        //                } else {
                        //                    request.setAttribute("page", Page);
                        //                
                        String sql4 = "Select * from project.realestate where id_real ='" + id + "'";
                        String room = "SELECT * FROM project.realestate inner join project.real_has_room on realestate.id_real = real_has_room.id_real inner join project.room_type on real_has_room.id_room_type = room_type.id_room_type inner join project.transaction_type on realestate.id_transaction_type = transaction_type.id_transaction_type where realestate.id_real = '" + id + "'";
                        String sq5 = "Select * from project.real_has_picture where id_real = '" + id + "'";
                        ResultSet rs4 = db.getResult(sql4, con);
                        ResultSet rs5 = db.getResult(sq5, con);
                        ResultSet roomName = db.getResult(room, con);
                        int price = 0;
                        String transaction = "";
                    %>

                    <div class=" buying-top">	
                        <div class="flexslider">
                            <ul class="slides">
                                <% while (rs5.next()) {%>
                                <li data-thumb=" <%=rs5.getString("url")%>">
                                    <img src="<%=rs5.getString("url")%>">
                                </li>
                                <% }%>
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
                        <form  action="controller?action=updateReal&id=<%=id%>" method="post">
                            <div class="col-sm-5 middle-side immediate">
                                <h4>Possession: Immediate</h4>
                                <table>
                                    <% while (roomName.next()) {
                                            price = roomName.getInt("price");
                                            transaction = roomName.getString("name");
                                            System.out.print(transaction);
                                    %>
                                    <tr>
                                        <td><%= roomName.getString("type")%>:</td> 
                                        <td style="text-align: right"><input type="text" style="text-align: right" value="<%= roomName.getInt("number_room")%>" ></td>
                                    </tr>
                                    <% }%>
                                    <!--                            <p><span>Bed </span>: <span class="two">2 BHK</span></p>
                                                                <p>  <spanBaths </span>: <span class="two">2</span></p>-->
                                    <tr>
                                        <td>Price: </td>
                                        <td><input type="text" name="price" style="text-align: right" value="<%=price%>" ></td>

                                    </tr>
                                    <tr>
                                        <td>Transaction: </td>
                                        <td style="text-align: right">
                                            <select name="kind"  >
                                                <%

                                                    String sql8 = "Select * from project.transaction_type";
                                                    ResultSet rs8 = db.getResult(sql8, con);
                                                    while (rs8.next()) {
                                                        System.out.print(rs8.getString("name"));
                                                %>
                                                <% if (rs8.getString("name").equals(transaction)) {
                                                %>
                                                <option selected><%=rs8.getString("name")%></option>
                                                <% } else {%>
                                                <option><%=rs8.getString("name")%></option>
                                                <% }
                                                    }%>
                                            </select>
                                        </td>
                                    </tr>
                                </table>
                                <div class="   right-side">
                                    <input type="submit" name="submit" value="  Update  " class="hvr-sweep-to-right more">   
                                  
                                    <a href="controller?action=deleteReal&id=<%=id%>" class="hvr-sweep-to-right more" >delete</a>    
                                </div>
                            </div>
                            <div class="col-sm-7 buy-sin">
                                <% while (rs4.next()) {%>
                                <h4>Description</h4>
                                <textarea rows="20" name="description" cols="55"  required=""><%= rs4.getString("description")%></textarea>



                                <% }%>
                            </div>
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                    <div class="map-buy-single">
                        <h4>Neighborhood Info</h4>
                        <div class="map-buy-single1">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
                            
                        </div>
                    </div>
                    <div class="video-pre">
                        <h4>Video Presentation</h4>
                        <iframe src="https://player.vimeo.com/video/63931426"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

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
        <div class="container">
            <div class="future">
                <h3 >Related Projects</h3>
                <div class="content-bottom-in">
                    <ul id="flexiselDemo1">			
                        <li><div class="project-fur">
                                <a href="controller?action=buy" ><img class="img-responsive" src="images/pi.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="controller?action=buy">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="controller?action=buy" ><img class="img-responsive" src="images/pi1.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="controller?action=buy">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="controller?action=buy" ><img class="img-responsive" src="images/pi2.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="controller?action=buy">Contrary to popular</a></h6>
                                        <span>Paris</span>
                                    </div>
                                    <div class="fur2">
                                        <span>2 BHK</span>
                                    </div>
                                </div>					
                            </div></li>
                        <li><div class="project-fur">
                                <a href="controller?action=buy" ><img class="img-responsive" src="images/pi3.jpg" alt="" />	</a>
                                <div class="fur">
                                    <div class="fur1">
                                        <span class="fur-money">$2.44 Lacs - 5.28 Lacs </span>
                                        <h6 class="fur-name"><a href="controller?action=buy">Contrary to popular</a></h6>
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