<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */

get_header(); ?>

	<!--breadcum section-->
    <div class="breadcum_wrapper">
    	<div class="container">
        	<ul class="breadcrumb">
            	<li><a href="/"><i class="fa fa-home"></i></a></li>
                <li>Page not found</li>
            </ul>
        </div>
    </div>
	
    <!--404 section-->
    <div class="error_wrapper">
    	<div class="container">
        	<div class="error_wrap">
            	<div class="box">
					<p><img alt="Obaju template" src="<?php echo get_template_directory_uri(); ?>/images/icon/logo.png" class="img-responsive"></p>
                    <h3>We are sorry - this page is not here anymore</h3>
                    <h4>Error 404 - Page not found</h4>
                    <p>To continue please use the <strong>Search form</strong> or <strong>Menu</strong> above.</p>
                    <a class="btn btn-primary" href="/"><i class="fa fa-home"></i> Go to Homepage</a>
              	</div>
            </div>
        </div>
    </div>        
    

<?php get_footer(); ?>
