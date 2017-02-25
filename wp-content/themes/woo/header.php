<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Foreign Shopper</title>
    <link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/images/icon/favicon.ico" type="image/x-icon">
	<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/images/icon/favicon.ico" type="image/x-icon">
    <!-- Bootstrap Core CSS -->
    <link href="<?php echo get_template_directory_uri(); ?>/css/bootstrap.min.css" rel="stylesheet"/>
    <!--font-style-->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/fonts/font_style.css" type="text/css">
    <!--font-aswome-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/font-awesome.min.css" type="text/css">
    <!--Main Menu File-->
	<link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri(); ?>/css/webslidemenu.css" />
    <!--jquery-accordian-menu-->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/jquery-accordion-menu.css">
    <!--auto slider css-->
    <link href="<?php echo get_template_directory_uri(); ?>/css/style_flexise.css" rel="stylesheet" type="text/css" />
    <!--for zoom in-->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/etalage.css">
    
    <!-- Custom CSS -->
    <link href="<?php echo get_template_directory_uri(); ?>/css/style.css" rel="stylesheet"/>
    <!--responsive css-->
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/style_responsive.css" type="text/css"/>
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!--top-header section-->
	<div class="top_header">
        <div class="container">
            <div class="col-lg-2 col-sm-2">
                <div class="top_left">
                    <li class="dropdown dropdown-small">
                    	<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                        	<span class="key">language :</span>
                            <span class="value">English </span><b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                        	<li><a href="#">English</a></li>
                            <li><a href="#">French</a></li>
                            <li><a href="#">German</a></li>
            	    	</ul>
               		</li>
                </div>
            </div>
            <div class="col-lg-6 col-sm-5">
                <div class="top_center">
                    <p>FREE SHIPPING ON ALL ORDERS OVER $75!</p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-5">
                <div class="top_right">
                    <ul> 
                        <li><a href="#">Log In</a></li>
                        <li>|</li>
                        <li><a href="#">Signup</a></li>
                        <li><a href="#"><i class="fa fa-shopping-cart"><span class="badge">5</span></i><span class="amount">$0.00</span></a></li>
                        <li id="search"><i class="fa fa-search"></i></li>
                    </ul>
                     <div class="search_box">
                            <input type="text" class="form-control" id="" placeholder="Search Here">
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>    
    </div>

	<!--header section-->
	<div class="header_wrapper">
      <div class="container">
        <div class="col-lg-2 col-sm-2 less_pad">
            <div class="logo">
                <a href="index.html"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/logo.png" alt="logo" class="img-responsive"></a>
                <!--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>-->
            </div>
        </div>	
        <div class="col-lg-10 col-sm-10 less_pad">
            <div class="main_nav">
            	<div class="wsmenucontainer clearfix">
                	<div class="overlapblackbg"></div>
                  	<div class="wsmobileheader clearfix">
                    	<a id="wsnavtoggle" class="animated-arrow"><span></span></a>
                    	<a class="smallogo"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/logo2.png" alt="logo" class="img-responsive" /></a>
                    	<!--<a class="callusicon" href="tel:123456789"><span class="fa fa-phone"></span></a>-->
                  	</div>
                  	<div class="header">
                    	<div class="wrapper clearfix">
                      	<div class="logo clearfix"><a href="index.html" title="Responsive Slide Menus"><img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="" /></a></div>
                    </div>
                    
                    <!--Main Menu HTML Code-->
                    
                    <nav class="wsmenu clearfix">
                      <ul class="mobile-sub wsmenu-list">
                        <li><a href="#"><i class="fa fa-align-justify"></i>&nbsp;&nbsp;Dropdowns <span class="arrow"></span></a>
                          <ul class="wsmenu-submenu">
                            <li><a href="#"><i class="fa fa-angle-right"></i>Website Design </a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Ecommerce Solutions</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Application Development</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Website Development</a></li>
                            <li><a href="#"><i class="fa fa-angle-right"></i>Open Source Development</a>
                              <ul class="wsmenu-submenu-sub">
                                <li><a href="#"><i class="fa fa-angle-right"></i>Submenu item 1</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Submenu item 2</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Submenu item 3</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Submenu item 4</a>
                                  <ul class="wsmenu-submenu-sub-sub">
                                    <li class=""><a href="#"><i class="fa fa-angle-right"></i>Submenu item 1 Sub</a></li>
                                    <li class=""><a href="#"><i class="fa fa-angle-right"></i>Submenu item 2 Sub</a></li>
                                    <li class=""><a href="#"><i class="fa fa-angle-right"></i>Submenu item 3 Sub</a></li>
                                    <li class=""><a href="#"><i class="fa fa-angle-right"></i>Submenu item 4 Sub</a></li>
                                  </ul>
                                </li>
                              </ul>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;Half menu <span class="arrow"></span></a>
                          <div class="megamenu clearfix halfmenu">
                            <ul class="col-lg-6 col-md-3 col-xs-12 link-list">
                              <li class="title">Product Header</li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                            </ul>
                            <ul class="col-lg-6 col-md-3 col-xs-12 link-list">
                              <li class="title">Product Header</li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                            </ul>
                          </div>
                        </li>
                        <li><a href="#"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;Mega menu <span class="arrow"></span></a>
                          <div class="megamenu clearfix">
                            <ul class="col-lg-3 col-md-3 col-xs-12 link-list">
                              <li class="title">Product Header</li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                            </ul>
                            <ul class="col-lg-3 col-md-3 col-xs-12 link-list">
                              <li class="title">Product Header</li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                            </ul>
                            <ul class="col-lg-3 col-md-3 col-xs-12 link-list">
                              <li class="title">Product Header</li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                              <li><a href="#"><i class="fa fa-arrow-circle-right"></i>Submenu link style</a></li>
                            </ul>
                            <div class="col-lg-3 col-md-3 col-xs-12">
                              <h3 class="title">New Arrival </h3>
                              <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner" role="listbox">
                                  <div class="item active"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                  <div class="item"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                  <div class="item"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                  <div class="item"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                  <div class="item"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                  <div class="item"> <img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="This is Product Name" class="img-responsive">
                                    <!--<div class="carousel-caption"> CodeCanyon </div>-->
                                  </div>
                                </div>
                                <a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev"> <span class="fa fa-arrow-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next"> <span class="fa fa-arrow-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
                            </div>
                          </div>
                        </li>
                        <li><a href="#"><i class="fa fa-th-large"></i>&nbsp;&nbsp;Product images <span class="arrow"></span></a>
                          <div class="megamenu clearfix ">
                            <div class="col-sm-4">
                              <h3 class="title">CodeCanyon</h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a> </div>
                            </div>
                            <div class="col-sm-4">
                              <h3 class="title">ThemeForest</h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a></div>
                            </div>
                            <div class="col-sm-4">
                              <h3 class="title">GraphicRiver </h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a></div>
                            </div>
                            <div class="col-sm-4">
                              <h3 class="title mrgtop">ActiveDen</h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a></div>
                            </div>
                            <div class="col-sm-4">
                              <h3 class="title mrgtop">PhotoDune</h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a></div>
                            </div>
                            <div class="col-sm-4">
                              <h3 class="title mrgtop">3DOcean </h3>
                              <div class="fluid-width-video-wrapper"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/img/shipping4.jpg" alt="images" class="img-responsive"/></a></div>
                            </div>
                          </div>
                        </li>
                        <li><a href="#"><i class="fa fa-paper-plane"></i>&nbsp;&nbsp;Contact Us <span class="arrow"></span></a>
                          <div class="megamenu halfdiv">
                            <h3 class="title">Contact Us</h3>
                            <form name="contact_name" class="menu_form">
                              <input type="text" placeholder="Name">
                              <input type="text" placeholder="Email">
                              <textarea placeholder="Your message..."></textarea>
                              <input type="button" value="Reset">
                              <input type="submit" value="Send">
                            </form>
                            <div class="cl"></div>
                          </div>
                        </li>
                      </ul>
                    </nav>
                    
                    <!--Menu HTML Code--> 
    
  </div>
  
</div>    
            </div>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
