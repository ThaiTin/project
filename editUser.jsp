<%@page import="utilities.Security"%>
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
                                <div class="banner2">
                                    <div class="caption" style="background-image: url('./images/4.jpg') ">
                                        <h3><span>vivam</span>us site</h3>
                                        <p>Nunc dignissim risus idi</p>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="banner3" style="background-image: url('./images/5.jpg') ">
                                    <div class="caption">
                                        <h3><span>vivam</span>us site</h3>
                                        <p>Nunc dignissim risus idi</p>
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
                    <div class="header-bottom">
                        <div class=" bottom-head">
                            <a href="buy.jsp">
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
                            <a href="buy.jsp">
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
                            <a href="loan.jsp">
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
                            <a href="dealers.jsp">
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
        <!--//-->

    <center>
        <!--//header-bottom-->
        <div style="background-color: white">
            <table class="table" width="10%">
                <tbody><tr> 
                        <td class="td">Full name</td>
                        <td class="td">User name</td>
                        <td class="td">Phone</td>
                        <td class="td">Email</td>
                        <td class="td">Role</td>
                        <td class="td">id_user</td>

                    </tr>
                    <%
                        DatabaseConnection db = new DatabaseConnection();
                        Connection con = db.setConnection();
                        String sql = "Select account.User_ID,account.Fullname, account.Username, account.Pass_word, account.Email, account.Phone_Num, role.Role_Name from account INNER JOIN role on account.Role_ID = role.Role_ID WHERE User_ID = '" + request.getParameter("id") + "'";
                        ResultSet rs = db.getResult(sql, con);
                        while (rs.next()) {%>
                    <tr><td class="tdcon"><%=rs.getString("Fullname")%></td>
                        <td class="tdcon"><%=rs.getString("Username")%></td>
                        <td class="tdcon"><%=rs.getString("Phone_Num")%></td>
                        <td class="tdcon"><%=rs.getString("Email")%></td>
                        <td class="tdcon"><%=rs.getString("Role_Name")%></td>
                        <td class="tdcon"><%=rs.getString("User_ID")%></td>

                    </tr>

                </tbody>
            </table>
        </div>


        <div class="noidung1">
            <br /><br /><b style="font-size: large; text-align: center">The above table is user's current information</b><br/><br /><br />
            <form action="controller?action=updateUser" method="post">
                <table width="35%" >
                    <tr>
                        <td height="25">Full name:</td>
                        <td><input type="text" name="Fullname" value="<%=rs.getString("Fullname")%>"/></td>
                    </tr>
                    <tr>
                        <td height="25">User name:</td>
                        <td><input type="text" name="Username" value="<%=rs.getString("Username")%>"/></td>
                    </tr>
                    <tr>
                        <td height="25">Phone number:</td>
                        <td><input type="text" name="Phone_num" value="<%=rs.getString("Phone_Num")%>"/></td>
                    </tr>
                    <tr>
                        <td height="25">Email:</td>
                        <td><input type="text" name="Email" value="<%=rs.getString("Email")%>"/></td>
                    </tr>
                    <tr>
                        <td height="25">Role:</td>
                        <td><select name="Role" size="1" onChange="replace(this.options.selectedIndex)">

                                <%
                                    String sql2 = "Select * from role";
                                    ResultSet rs2 = db.getResult(sql2, con);
                                    while (rs2.next()) {
                                        String currentRole = rs.getString("Role_Name");
                                        String newRole = rs2.getString("Role_Name");
                                %>
                                <option value="<%= rs2.getString("Role_ID")%>" <%if (currentRole.equals(newRole)) {%>selected="selected"<%}%>><%= rs2.getString("Role_Name")%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>User_ID</td>
                        <td height="30">
                            <input type="text" name="User_ID" value="<%=rs.getInt("User_ID")%>">
                            <%
                                String hash = rs.getString("Pass_word");

                            %>
                        </td>
                    </tr>


                    <tr>
                        <td> 
                            <input type="submit" name="submit" value="  Update  ">
                        </td>
                        <td height="30"><a href="controller?action=manageUser"><input type="button" value="  Cancel  " ></a></td>
                    </tr>

                    <%}%>
                </table>
            </form>
        </div>
    </center>
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
                        <p >© 2015 Real Home. All Rights Reserved | Design by VTer  </p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    <!--//footer-->
</body>
</html>