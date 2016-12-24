
<!DOCTYPE html>
<html>
    <head>
        <title>Real Home A Real Estate Category </title>>
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
        <meta name="keywords" content="Real Home  Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
                <h3><span>Pol</span>icy</h3> 
                <!---->
                <div class="menu-right">
                    <ul class="menu">
                        <li class="item1"><a href="#"> Menu<i class="glyphicon glyphicon-menu-down"> </i> </a>
                            <ul class="cute">
                                <li class="subitem1"><a href="buy.html">Buy </a></li>
                                <li class="subitem2"><a href="buy.html">Rent </a></li>
                                <li class="subitem3"><a href="buy.html">Hostels </a></li>
                                <li class="subitem1"><a href="buy.html">Resale </a></li>
                                <li class="subitem2"><a href="loan.html">Home Loan</a></li>
                                <li class="subitem3"><a href="buy.html">Apartment </a></li>
                                <li class="subitem3"><a href="dealers.html">Dealers</a></li>
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
        <div class="privacy">
            <div class="container">
                <h3>Privacy Policy</h3>
                <pre>
HomeFinder.com Privacy Policy
This web site (the ?Site?) is operated by HomeFinder.com(?HomeFinder.com?). The Privacy Policy that follows (the ?Policy?) describes HomeFinder.com?s collection, use and disclosure of information practices in connection with the Site. This Policy applies to the national version of the Site, located at www.HomeFinder.com, as well as to any other versions or pages of the Site that HomeFinder.com operates, including mobile versions and pages that HomeFinder.com co-brands or private labels with its newspaper and broadcast affiliates and other partners (collectively, ?Affiliates?). For example, you may have arrived at a co-branded version of the Site from an Affiliate?s web site, in which case, that Affiliate will be identified at the top of the home page of this Site. In this Policy HomeFinder.com may refer to those versions of the Site as an ?Affiliate Version.? Please be aware that HomeFinder.com may share any information you submit through this Site with Affiliates, as described below. During your visit to any Affiliate Version, the Affiliate may independently collect other information from you.

This Policy does not describe HomeFinder.com?s collection, use, and disclosure of information through means other than this Site (e.g., offline) or the collection, use, and disclosure practices of any third party, including Affiliates. For information on a third party?s information collection, use, and disclosure practices, please review the privacy policy on the applicable third party?s web site. Also, please note that this Site contains links to other web sites. HomeFinder.com is not responsible for the web sites, content or privacy practices of any third party, including Affiliates. By using this Site, you acknowledge that you have read this Policy and agree that you are subject to the provisions of this Policy and the HomeFinder.com Terms of Use located at the following URL: Terms of Service, in each case without modification. If you do not accept any portion of this Policy or the Terms of Use, your only option is not to use the Site.

Collection of Personally Identifiable Information. You are not required to provide any personally identifiable information to visit the Site. HomeFinder.com automatically collects Usage Data (as described below) and may collect ZIP codes and other information in connection with your use of the Site (e.g., the type of property you are looking for, the areas in which you are conducting any property search, etc.). HomeFinder.com collects personally identifiable information on the Site only when you make it available through your use of the Site. You may be required to provide personally identifiable information to use certain services on this Site. In addition, you may submit personally identifiable information through the Site in other ways, including: (a) participating in online surveys, promotions, contests and/or sweepstakes; (b) subscribing to newsletters, editorial content, and/or promotional content sent via email; (c) in connection with other products, services, features, and/or requests made available through the Site; and (d) submission of purchase and/or billing related information including credit card numbers. The types of personally identifiable information collected will depend on the nature of the submission or the features of the Site used, but could include your name, address, phone number, email address and credit card information. In the event that you purchase an ad in a print/online package through a newspaper Affiliate, the Affiliate is required to share your name, phone number and email address with HomeFinder.com in order to allow HomeFinder.com to process, maintain, and contact you regarding your ad.

Usage Data Collection. The Site automatically collects passive information and may also customize your visit through technical means, including the following:

Cookies: Cookies are small text files that are placed on your computer?s hard drive by computers (or servers) to identify your computer.

Web Beacons: Web beacons (also known as pixel tags, Internet tags, clear GIFs, or single-pixel GIFs) are electronic images embedded into a web page.

IP Address Logs: HomeFinder.com also logs Internet Protocol (IP) addresses ?the location of your computer on the Internet.

Cookies allow HomeFinder.com to recognize you when you visit the Site, to personalize your experience and generally to serve you better. For example, if you enter your name, address or ZIP code on one of the Site?s forms, it may be stored in a cookie so you do not have to enter it again on other forms on the Site. Cookies and web beacons can tell us what advertising you have seen on the Site, which allows HomeFinder.com to offer you a more diverse selection of advertising information and may also be used together to measure the effectiveness of HomeFinder.com advertising campaigns. Cookies, web beacons and IP addresses are also used to compile data regarding Site usage (what web site you came from, what pages of the Site you visit, how long you were on the Site, what type of browser you are using, what web site did you go to, etc.). Web beacons may also be included in emails sent by HomeFinder.com to determine when and if such emails are opened or forwarded. You may disable cookies or otherwise manage them through tools provided with your browser software and with third-party software packages. If you turn off cookies, many of the Site?s features will not work as well or at all. Anonymous information regarding usage of the Site and services that is collected and/or aggregated by or on behalf of HomeFinder.com through the use of such technical means or otherwise is referred to in this Policy as ?Usage Data.?

Information Use
Personally Identifiable Information: Personally identifiable information collected by HomeFinder.com through your use of the Site may be stored on servers or in a cookie on your computer and may be used by HomeFinder.com for any of the following purposes:

To confirm, fulfill, or follow-up a request that you make or to communicate with you regarding the HomeFinder.com service.
To contact you by email regarding account status, changes to any account agreement, and/or to confirm account registration. In addition, if you provide your email address or other contact information in connection with a request for product information, HomeFinder.com, an advertiser, affiliate, partner and/or other third party or parties, as applicable, may use that information to contact you.
To send promotional materials, newsletters, or other content via email or otherwise, unless you have indicated that you do not wish to receive such materials.
To permit third parties to whom HomeFinder.com may disclose personally identifiable information specifically for direct marketing purposes to send you promotional or informational messages, but only if you have first affirmatively agreed to receive such messages.
To improve your user experience and/or to measure interest in various areas of the Site.
To manage its relationships with Affiliates, customers, and other third parties to which HomeFinder.com may disclose personally identifiable information pursuant to this Policy.
To facilitate Site administration, analysis, research, reporting, development, optimization and other internal purposes, including, without limitation, to compile Usage Data.
Usage Data: Usage Data is used by HomeFinder.com for administrative, analytical, research, optimization and other purposes. For example, HomeFinder.com may use statistical analyses of Usage Data in order to measure interest in the various areas of the Site, for development purposes and to inform advertisers and partners in aggregate and anonymous terms about consumers who click on their advertising or other messages. IP Addresses are also used for systems administration and for related troubleshooting purposes.

With respect to promotional materials and newsletters that HomeFinder.com may send via email from time to time, HomeFinder.com will not continue to send you such communications if you ask us not to. However, you agree that HomeFinder.com may send to you, and you cannot opt out of, communications of a transactional or relationship nature, including, but not limited to, communications regarding fraudulent or illegal activity, account status, changes to this Policy or the HomeFinder.com Terms of Service, as well as communications to confirm, fulfill, and follow up on your registration, service, or a request submitted through the Site.

Information Sharing. HomeFinder.com may share personally identifiable information that you provide with third parties in the following cases:

Affiliates. HomeFinder.com may share personally identifiable information with its Affiliates on the condition that the Affiliates? disclosure and use of such information is consistent with all applicable laws, rules, and regulations and this Policy.

Requests. HomeFinder.com maintains relationships with third party providers for some of the products and services offered through the Site. If you request information or services through the Site, you agree that HomeFinder.com may share personally identifiable information with third parties as may be necessary to provide such information to or perform such services for you. For example, if you request information about a property advertised on the Site, HomeFinder.com will share the information collected through such request with the owner(s) and/or agent(s) for property (or applicable designee) and any other parties providing that listing (e.g., if a third party real estate company or real estate agent provides the listing to us on behalf of the property owner(s)). In some cases, the information that you provide through the Site may be collected directly by a third party or its designee (e.g., through forms hosted by such third party or on a page framed with HomeFinder.com branding). Personally identifiable information also may be shared with the specific third parties that can respond to your requests in the form of reporting and other follow-up communications. The subsequent use or disclosure of any information collected by or provided to third parties is subject to their privacy policies and practices.

Direct Marketing. Except as provided herein, it is HomeFinder.com?s policy not to disclose personally identifiable information of its users to third parties specifically for the third parties? direct marketing purposes. If you are 18 years of age or older and have affirmatively agreed to receive third party direct marketing materials, HomeFinder.com may share your personally identifiable information with third parties for direct marketing purposes. Although HomeFinder.com will endeavor to notify all third-party direct marketers that the information provided to them is confidential, the subsequent use or disclosure of information is subject to those third parties? privacy policies and practices.

Service Providers. HomeFinder.com may work with related and unrelated third parties that provide services on its behalf. Examples include providers of analytical, developmental, promotional, research, credit card processing, technology, support and other services. For example, HomeFinder.com may work with third parties who host or operate the Site or may ask that a third party conduct an online survey or sweepstakes or send newsletters or other email communications on its behalf. Similarly, if you make a payment to HomeFinder.com by credit card, HomeFinder.com may share personally identifiable information and credit card information with a third party in order to process credit card transactions, or such information may be collected directly by the credit card processing service provider on HomeFinder.com?s behalf. In such cases, HomeFinder.com shall endeavor to require that the third party maintain personally identifiable information as confidential and use the information only to perform the services specified by HomeFinder.com.

Sweepstakes/Promotions. In the event that you participate in a sweepstakes, contest, or other promotion on the Site, HomeFinder.com reserves the right to share personally identifiable information collected in conjunction with the sweepstakes, contest or promotion with any third party sponsor or co-sponsor. After the information is provided to such third parties, the subsequent use or disclosure of such information is subject to those third parties? privacy policies and practices.

Other. HomeFinder.com expressly reserves the right to release any personally identifiable information or other information you provide to third parties under the following circumstances: (a) when required by law or legal process, or if otherwise requested by a legitimate law enforcement body to cooperate in their investigations, (b) to investigate and/or take action against illegal activity, suspected abuse, or unauthorized use of the Site and/or HomeFinder.com services, (c) to protect the property or safety of HomeFinder.com users or others, (d) to enforce the Site?s Terms of Use and (e) in connection with any sale or other transfer of ownership of all or a part of HomeFinder.com or the reorganization of any of its businesses or related businesses. If you make any personally identifiable information publicly available on the Site (e.g., by posting a listing which contains personally identifiable information), anyone may see and use such information and HomeFinder.com is not responsible for such use. HomeFinder.com reserves the right to share any personally identifiable information you post on the Site with third parties. To the extent HomeFinder.com does so, the subsequent use and disclosure of such information is subject to the privacy policies and practices of those third parties.

Please note that the messages that HomeFinder.com sends to you to confirm, fulfill, or follow up on a request may incidentally include promotional material or other content from HomeFinder.com or its partners. In the case of these messages, HomeFinder.com is not sharing your personally identifiable information with those third parties. HomeFinder.com reserves the right to share Usage Data with Affiliates and any other third party for any reason.

Collection of Information by Third Parties. As noted in this Policy, Affiliates and other third parties may collect information about you when using the Site through the use of cookies and web beacons and/or other similar technologies. For example, we work with companies that collect statistical information regarding Site usage and provide related analytical services. Also, HomeFinder.com uses third-party companies to serve advertisements when you visit the Site, to collect statistical information regarding Site usage, and to generate metrics related to the delivery of such advertisements. Third-party advertising companies may collect non-personally identifiable information about your visits to the Site and other web sites in order to provide targeted advertisements about goods and services which may be of interest to you across their networks of web sites (which may or may not include this Site). These third parties also may use this information for determining or predicting the characteristics and preferences of their respective advertising audiences, for measuring the effectiveness of their advertising, and for other purposes. In addition, HomeFinder.com may share statistical and behavioral data about visitors to the Site with these third-party advertising companies for the purpose of managing and targeting advertisements on the Site and/or on other web sites. For example, we use Remarketing with Google Analytics to advertise HomeFinder.com across the Internet, in particular on the Google Search Network, to people who have previously visited the Site. These third-party advertising companies may note some of the pages you visit on the Site through the use of web beacons. In the course of serving advertisements to you, these third-party advertising companies may also place or recognize a unique cookie on your computer to allow them to recognize web beacons and otherwise improve advertising effectiveness.

If you would like more information about the information collection practices of some of these third party advertising companies and learn which of these companies allow you to opt-out of this type of information collection, please click here .

To prevent your data from being used by Google Analytics, click here for instructions. To opt out of Google interest-based advertising, click here to see your Google ad settings.

Sell a Home Ads. When purchasing a Sell a Home online classified listing (also referred to as a Single Listing Package or SLP, or a Sell Your Home Ad), it is important to note that any information you choose to include in a SLP may be made publicly available via the Site and other media in which HomeFinder.com listings are published, including third party web sites and print publications. For example, you may include a phone number and/or an email address to allow users to contact you regarding your SLP. As such, you may receive unsolicited phone calls and emails from third parties, even after your SLP is no longer on the Site. Except for required information, you should not include any contact or other information in a SLP that you do not want other parties to see or use. If you wish to access, verify the accuracy of, or change the personally identifiable information in your SLP account, you can use the interface available at http://www.HomeFinder.com/realestate/sell.

Forums. HomeFinder.com also may offer message boards, blogs, bulletin boards, chat rooms, comments areas, or other forums (?Forums?) on the Site that are intended for use by visitors who are 18 years of age or older. Any information you disclose when posting a message in these Forums may become public. You should not include any information in your posting that you do not want other parties to see or use. Moreover, users who post a message in the Site?s Forums make their email addresses available to others, and if you post any messages in the Forums that include contact information (e.g. name, phone number) you may receive unsolicited email or calls from third parties.

Email this Listing. The Site offers you the ability to email certain pages or content of the Site to a friend or other third party. If you choose to use the Email this Listing functionality, your name, email address and any message you are allowed to include will be visible to the recipient of the email. HomeFinder.com does not use the names and addresses stored through the Email this Listing functionality for any purpose other than sending a one-time email to your friend. The Email this Listing functionality is for informational purposes only and you may not use it for any unlawful purpose, including any harassment or threats.

Changes to this Policy. Any changes to this Policy will be posted on the Site in this location and this Policy will be identified as ?Last updated on __________, 20__?. Your continued use of the Site after such notice constitutes acceptance of such changes without modification. It is your responsibility to check back and review this location regularly to ensure that you are familiar with the most current terms. Should you object to any such changes to this Policy, your only option is to discontinue use of the Site.

Security. The security of your personally identifiable information is extremely important to us. We take steps to keep it physically secure in data centers and it is accessible only to authorized personnel as needed to perform operations governed by this Policy. In addition, when collecting credit card information, the Site uses Secure Socket Layer (SSL) encryption, the industry standard for protecting privacy in web transactions. Please keep in mind that despite these measures, HomeFinder.com cannot guarantee or warrant 100% security of its servers and databases. Moreover, HomeFinder.com cannot guarantee or warrant that personally identifiable information that you submit through the Site will not be intercepted or otherwise disclosed.

Children. HomeFinder.com believes that it is especially important to protect children?s privacy online. HomeFinder.com does not knowingly collect or use any personally identifiable information from children under the age of 13 and HomeFinder.com does not knowingly provide any personally identifiable information, regardless of its source, to any third party for any purpose whatsoever from visitors younger than 13 years old. No information should be submitted to or posted at HomeFinder.com by visitors younger than 13 years old. If we discover we have received any information from a child under 13 in violation of this Policy, we will delete that information immediately. If you believe we have any information from or about anyone under 13, please contact us at the address listed below.

Links. This Site contains links to other sites. While HomeFinder.com encourages its business partners to adopt privacy policies and practices that build users? trust and confidence in the Internet, HomeFinder.com is not responsible for the privacy policies or practices of third parties or any of the content of web sites linked to the Site or any third-party products or services offered through the Site. You should use common sense when you navigate the Internet and be aware of when you travel outside the Site. In addition, you should carefully review the applicable privacy policies of each web site you visit and each web service you use.

Notice to California Residents ? Your California Privacy Rights. California Civil Code Section 1798.83 permits our customers who are California residents to request and obtain from us once a year, free of charge, information about the personal information (if any) we disclosed to third parties for direct marketing purposes in the preceding calendar year. If applicable, this information would include a list of the categories of personal information shared and the names and addresses of all third parties with which we shared information in the immediately preceding calendar year.

If you are a California resident and would like to make such a request, please submit your request in writing to:



International users. If you are an international user, by using the Site, you agree that HomeFinder.com may collect, use and transfer your personal information as described in this Policy, including transfers outside the country where you live. If you reside in a country in the European Union or other jurisdiction that provides access rights under law, you may access your personal information or have it corrected or updated by using the interface available at http://www.HomeFinder.com/realestate/sell (in the case of an SLP account) or by contacting us at the email address set forth below. In some jurisdictions, you may be charged a reasonable fee for access to information.

If you have any questions about this Privacy Policy, please contact us.

© 2013 HomeFinder.com | 20 North Wacker Drive | Chicago, IL 60606

Last updated on August 4, 2016


                </pre>
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