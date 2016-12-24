<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DatabaseConnection"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate Flat Bootstarp Resposive Website Template | Register :: w3layouts</title>
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
                <h3><span>Regis</span>ter</h3> 
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
        <!--contact-->
        <div class="login-right" >
            <div class="container">
                <%
                    if (session.getAttribute("user") == null) {%>
                <h3> You have not logged yet. </h3>
                <h3>Please Login to upload! </h3>
                <% } else { %>
                <ul id="countrytabs" class="shadetabs">

                    <li><a href="controller?action=realUser" rel="country2">Sale Lists</a></li>
                    <li><a href="#" rel="upload">upload New Real</a></li>

                </ul>
                <center>
                    <div style="border:1px solid gray; width:100%; margin-bottom: 1em; padding: 10px">
                        <% String id1 = (String) session.getAttribute("id_user");

                        %>

                        <div id="country2" class="tabcontent">
                            <section class="listings">
                                <div class="wrapper">
                                    <ul class="properties_list">
                                        <%                                            String sql4 = "Select * from project.realestate where id_user ='" + id1 + "'";

                                            ResultSet rs4 = db.getResult(sql4, con);
                                            int cnt = 0;
                                            while (rs4.next()) {
                                                ++cnt;
                                                int id = rs4.getInt("id_real");
                                                String sq5 = "Select * from project.real_has_picture where id_real = '" + Integer.toString(id) + "' and id_picture = '1'";
                                                ResultSet rs5 = db.getResult(sq5, con);
                                                System.out.print("ID: " + id);
                                                while (rs5.next()) {
                                        %>
                                        <li>
                                            <a href="controller?action=editPro&id=<%=rs4.getInt("id_real")%>">
                                                <img src="<%=rs5.getString("url")%>" alt="" title="" class="property_img"/>
                                            </a>
                                            <span class="price"><%= rs4.getInt("price")%>$</span>
                                            <div class="property_details">
                                                <h1>
                                                    <a href="controller?action=editPro&id=<%=rs4.getInt("id_real")%>"><%= rs4.getString("street")%>, ward <%= rs4.getString("wart")%>, district <%= rs4.getString("district")%></a>
                                                </h1>

                                            </div>
                                        </li>
                                        <% }
                                            }
                                        %>
                                    </ul>

                                </div>
                                <%
                                    if (cnt == 0) {
                                %>    
                                <p> You have not uploaded any Property yet !! </p>
                                <%}%>
                            </section>	<!--  end listing section  -->
                        </div>
                        <div id="upload" class="tabcontent">
                            <div class="login-panel panel panel-default" style="padding-left: 20%">
                                <form action="controller?action=upload" enctype="multipart/form-data" method="post">
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <tr>
                                                <td>Full name</td>
                                                <td><input type="text" name="FullName" required="" size="52"></td>
                                            </tr>
                                            <tr>
                                                <td>Owner Email</td>
                                                <td><input type="text" name="Email" required="" size="52"></></td>
                                            </tr>
                                            <tr>
                                                <td>Owner phone_number</td>
                                                <td><input type="text" name="phone" required="" size="52"></></td>
                                            </tr>
                                            <tr>
                                                <td>Street</td>
                                                <td><input type="text" name="street" required="" size="52"></></td>
                                            </tr>
                                            <tr>
                                                <td>Ward</td>
                                                <td><input type="text" name="ward" required="" size="52"></></td>
                                            </tr>
                                            <tr>
                                                <td>District</td>
                                                <td><input type="text" name="district" required="" size="52"></></td>
                                            </tr>

                                            <tr>
                                                <td>No Bedroom</td>
                                                <td><input type="text" name="bed" required=""></td>
                                            </tr>
                                            <tr>
                                                <td>No Toilet</td>
                                                <td><input type="text" name="toilet" required=""></td>
                                            </tr>
                                            <tr>
                                                <td>kind</td>
                                                <td>
                                                    <select name="kind">
                                                        <%

                                                            String sql44 = "Select * from project.transaction_type";
                                                            ResultSet rs44 = db.getResult(sql44, con);
                                                            while (rs44.next()) {
                                                        %> 
                                                        <option><%=rs44.getString("name")%></option>
                                                        <% }%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>category</td>
                                                <td>
                                                    <select name="category">
                                                        <%

                                                            String sql55 = "Select * from project.category";
                                                            ResultSet rs55 = db.getResult(sql55, con);
                                                            while (rs55.next()) {
                                                        %> 
                                                        <option><%=rs55.getString("name")%></option>
                                                        <% }%>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Price</td>
                                                <td><input type="text" name="price" required=""></td>
                                            </tr>
                                            <tr>
                                                <td>Long description </td>
                                                <td>
                                                    <textarea rows="20" name="description" cols="55"  required=""></textarea>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td> Upload Picture1 </td>
                                                <td><input type="file" name="file" /></td>
                                            </tr>

                                            <tr>
                                                <td> Upload Picture2 </td>
                                                <td><input type="file" name="file" /></td>
                                            </tr>

                                            <tr>
                                                <td> Upload Picture3 </td>
                                                <td><input type="file" name="file" /></td>
                                            </tr>

                                            <tr>
                                                <td> Upload Picture4 </td>
                                                <td><input type="file" name="file" /></td>
                                            </tr>

                                            <tr>
                                                <td> Upload Picture5 </td>
                                                <td><input type="file" name="file" /></td>
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

                            </div>
                        </div>



                    </div>

                    <script type="text/javascript">

                        var countries = new ddtabcontent("countrytabs")
                        countries.setpersist(true)
                        countries.setselectedClassTarget("link") //"link" or "linkparent"
                        countries.init()

                    </script>

                    <p><a href="javascript:countries.cycleit('prev')" style="margin-right: 25px; text-decoration:none">Back</a> <a href="javascript: countries.expandit(3)">Click here to select last tab</a> <a href="javascript:countries.cycleit('next')" style="margin-left: 25px; text-decoration:none">Forward</a></p>

                    <hr />




                </center>
                <% }%>
            </div>
        </div>
        <!--//contact-->
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