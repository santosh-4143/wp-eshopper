<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "site-content" div and all content after.
 *
 * @package WordPress
 * @subpackage eshopper
 * @since eshopper 1.0
 * 
 */
    $footer_sections = $wpdb->get_results("select * from wp_footer where id=1", ARRAY_A);
?>
<!--about us section-->
    <div class="about_wrapper">
    	<div class="container">
        	<div class="col-lg-4 col-sm-4">
            	<div class="about_wrap">
                	<h4>About us</h4>
                    <p><?php echo $footer_sections[0]['about_section']; ?></p>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
            	<div class="about_wrap">
                	<h4>Follow us on social</h4>
                    <ul>
                    	<li class="s1"><a href="<?php echo get_template_directory_uri(); ?>/#"><i class="fa fa-facebook"></i></a></li>
                        <li class="s2"><a href="<?php echo get_template_directory_uri(); ?>/#"><i class="fa fa-rss"></i></a></li>
                        <li class="s3"><a href="<?php echo get_template_directory_uri(); ?>/#"><i class="fa fa-twitter"></i></a></li>
                        <li class="s4"><a href="<?php echo get_template_directory_uri(); ?>/#"><i class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
            	<div class="about_wrap">
                	<h4>SIGN UP FOR NEWSLETTERS</h4>
                        <?php //es_subbox( $namefield = "NO", $desc = "", $group = "" ); ?>
			<?php echo smlsubform();?> 
                   <!-- <form>
                      <div class="form-group">
                        <label for="search" class="sr-only">search</label>
                        <input type="search" class="form-control" id="" placeholder="Search Here">
                      </div>
                      <button type="submit" class="btn btn-default">Subscribe</button>
                    </form>-->
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    
    <!--footer section-->
    <div class="footer_wrapper">
    	<div class="container">
        	<div class="col-lg-3 col-sm-6">
            	<div class="footer_wrap">
                	<img src="<?php echo get_template_directory_uri(); ?>/images/icon/logo.png" alt="logo" class="img-responsive">
                	<h4>OFFICE & ADDRESS</h4>
                    <p><?php echo $footer_sections[0]['office_address']; ?></p>
                    <h4>CONTACT</h4>
                    <p><?php echo $footer_sections[0]['contact']; ?></p>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
            	<div class="footer_wrap">
                	<h4>Contact Info</h4>
                    <div class="contact">
                        <ul>
                            <li>
                                <div class="contact_img">
                                    <img class="img-responsive" alt="contactus" src="<?php echo get_template_directory_uri(); ?>/images/icon/c1.png">
                                </div>
                                <div class="contact_text">
                                    <p><?php echo $footer_sections[0]['contact_info1']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="contact_img">
                                    <img class="img-responsive" alt="contactus" src="<?php echo get_template_directory_uri(); ?>/images/icon/c2.png">
                                </div>
                                <div class="contact_text">
                                    <p><?php echo $footer_sections[0]['contact_info2']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <li>
                                <div class="contact_img">
                                    <img class="img-responsive" alt="contactus" src="<?php echo get_template_directory_uri(); ?>/images/icon/c3.png">
                                </div>
                                <div class="contact_text">
                                    <p><?php echo $footer_sections[0]['contact_info3']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </li>
                            <div class="clearfix"></div>
                        </ul>
                     </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
            	<div class="footer_wrap">
<!--                	<h4>recent tweet</h4>-->
                    <div class="tweet">
                 <a class="twitter-timeline"  href="https://twitter.com/liza" data-widget-id="522319684469678080">Tweets by @liza</a>
            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                    </div>
                    <div class="link">
                    	<ul>
                        	<li><a href="<?php echo get_template_directory_uri(); ?>/#"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/link1.png" alt="link" class="img-responsive"></a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/link2.png" alt="link" class="img-responsive"></a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/link3.png" alt="link" class="img-responsive"></a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/link4.png" alt="link" class="img-responsive"></a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/link5.png" alt="link" class="img-responsive"></a></li>
                        </ul>
                    </div>	
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
            	<div class="footer_wrap">
                	<h4>OUR SUPPORT</h4>
                    <div class="support">
						<ul>
                        	<li><a href="<?php echo get_template_directory_uri(); ?>/#">Sitemap</a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#">Privacy Policy</a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#">Advanced Search</a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#">Dynamicus</a></li>
                            <li><a href="<?php echo get_template_directory_uri(); ?>/#">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    
    <!--copyright section-->
    <div class="copyright_wrapper">
    	<div class="container">
        	<a href="<?php echo get_template_directory_uri(); ?>/#0" class="cd-top">Top</a>
        	<p>Copyright © 2015 Foreign Shopper. All Rights Reserved.</p>
        </div>
    </div>


	<!-- jQuery -->
    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-1.9.1.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<?php echo get_template_directory_uri(); ?>/js/bootstrap.min.js"></script>
    <!--Main Menu File-->
    <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/webslidemenu.js"></script>
    <!--jquery-accordian-menu-->
    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery-accordion-menu.js" type="text/javascript"> </script>
    <!--auto slider js-->
    <script type="text/javascript" src="<?php echo get_template_directory_uri(); ?>/js/jquery.flexisel.js"></script>
    <!--jquery scroll-box-->
	<script src="<?php echo get_template_directory_uri(); ?>/js/jquery.scrollbox.js"></script>
    <!--for zoom in-->  
    <script src="<?php echo get_template_directory_uri(); ?>/js/jquery.etalage.min.js"></script>
    <!--scroll to top-->
	<script src="<?php echo get_template_directory_uri(); ?>/js/scroll_to_top.js"></script> 
    <!--custom js-->
    <script src="<?php echo get_template_directory_uri(); ?>/js/custom.js" type="text/javascript"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/js/woocommerce.min.js" type="text/javascript"></script>
    
    <script>

    $(document).ready(function(){
        
      $('#payment_method').click(function(){
          $('#add_li').removeClass('active');
          $('#pay_li').addClass('active');
           $('#add_li').addClass('disabled');
          
      });
      
       $('#order_review_button').click(function(){
          $('#pay_li').removeClass('active');
          $('#ord_li').addClass('active');
          $('#pay_li').addClass('disabled');
          
      });
        
    });

</script>

</body>
</html>
