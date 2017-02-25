<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage eshopper
 * @since eshopper 1.0
 */
get_header();
$upload_dir = wp_upload_dir();
$upload_url_alt = $upload_dir['baseurl'];
?>
<!--banner section-->
<div class="banner_wrapper">
    <div class="container">
        <div class="banner_wrap">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <?php
                    global $wpdb;
                    $banners = $wpdb->get_results("select * from wp_banner where 1", ARRAY_A);
                    $i = 0;
                    foreach ($banners as $banner) {
                        ?>
                        <div class="item <?php
                        if ($i == 0) {
                            echo 'active';
                        }
                        ?>">
                            <img src="<?php echo $upload_url_alt . '/' . $banner['image']; ?>" alt="banner" class="img-responsive">
                            <div class="carousel-caption">
                                <h3><?php echo $banner['image_text_above']; ?></h3>
                                <p><?php echo $banner['image_text_below']; ?></p>           
                            </div>
                        </div>
                        <?php
                        $i++;
                    }
                    ?>                      
                </div>

                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <?php
                    $i = 0;
                    foreach ($banners as $banner) {
                        ?>
                        <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>" class="<?php
                        if ($i == 0) {
                            echo 'active';
                        }
                        ?>">
                            <h6><?php echo $banner['slider_text_above']; ?></h6>
                            <p><?php echo $banner['slider_text_below']; ?></p>
                        </li>
                        <?php
                        $i++;
                    }
                    ?>                       
                </ol>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="banner_left_arrow" aria-hidden="true">
                     <!-- <img src="images/icon/left_arrow.png" alt="left-arrow" class="img-responsive">-->
                    </span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="banner_right_arrow" aria-hidden="true">
                     <!-- <img src="images/icon/right_arrow.png" alt="right-arrow" class="img-responsive">-->
                    </span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
      <?php  $offer5 = $wpdb->get_results("select * from wp_offer where id=5", ARRAY_A); ?>

        <div class="banner_right">
            <figure class="snip1156">
                <img src="<?php echo $upload_url_alt . '/' . $offer5[0]['offer_image']; ?>" class="img-responsive" depping" >
                     <figcaption>
                    <div>
                        <h2><?php echo $offer5[0]['offer_text1']; ?></h2>
                    </div>
                    <div>
                        <p><?php echo $offer5[0]['offer_text2']; ?></p>
                    </div>
                </figcaption>
                <a href="#"></a>
            </figure>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<!--shipping section-->
<div class="shipping_wrapper">
    <div class="container">
        <div class="shipping_top">
            <?php
            $features = $wpdb->get_results("select * from wp_feature where 1", ARRAY_A);
            foreach ($features as $feature) {
                ?>
                <div class="col-lg-3 col-md-3 col-sm-3 less_pad pad_rt">
                    <div class="shipping_box">
                        <div class="ship_img">
                            <img src="<?php echo $upload_url_alt . '/' . $feature['feature_logo']; ?>" alt="images" class="img-responsive">
                        </div>
                        <div class="ship_content">
                            <p><?php echo $feature['feature_text']; ?></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            <?php } ?>
            <div class="clearfix"></div>      	   	     
        </div>
        <?php
        $offer1 = $wpdb->get_results("select * from wp_offer where id=1", ARRAY_A);
        ?>
        <div class="shipping_bottom">
            <div class="col-lg-4 col-sm-4 less_pad">
                <div class="bottom_left">
                    <figure class="snip1156">
                        <img src="<?php echo $upload_url_alt . '/' . $offer1[0]['offer_image']; ?>" alt="shipping" class="img-responsive">
                        <figcaption>
                            <div>
                                <h2><?php echo $offer1[0]['offer_text1']; ?></h2>
                            </div>
                            <div>
                                <p><?php echo $offer1[0]['offer_text2']; ?></p>
                            </div>
                        </figcaption>
                        <a href="#"></a>
                    </figure>
                </div>
            </div>
            <div class="col-lg-8 col-sm-8 less_pad">
                <div class="bottom_right">
                    <?php
                    $offer2 = $wpdb->get_results("select * from wp_offer where id=2", ARRAY_A);
                    ?>
                    <div class="col-lg-12 less_pad">
                        <div class="right_top">
                            <figure class="snip1156">
                                <img src="<?php echo $upload_url_alt . '/' . $offer2[0]['offer_image']; ?>" alt="shipping" class="img-responsive">
                                <figcaption>
                                    <div>
                                        <h2><?php echo $offer2[0]['offer_text1']; ?></h2>
                                    </div>
                                    <div>
                                        <p><?php echo $offer2[0]['offer_text2']; ?></p>
                                    </div>
                                </figcaption>
                                <a href="#"></a>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-12 less_pad">
                        <div class="right_bottom">
                            <?php
                            $offer3 = $wpdb->get_results("select * from wp_offer where id=3", ARRAY_A);
                            ?>
                            <div class="col-lg-6 col-sm-6 less_pad">
                                <div class="right_bottom_left">
                                    <figure class="snip1156">
                                        <img src="<?php echo $upload_url_alt . '/' . $offer3[0]['offer_image']; ?>" alt="shipping" class="img-responsive">
                                        <figcaption>
                                            <div>
                                                <h2><?php echo $offer3[0]['offer_text1']; ?></h2>
                                            </div>
                                            <div>
                                                <p><?php echo $offer3[0]['offer_text2']; ?></p>
                                            </div>
                                        </figcaption>
                                        <a href="#"></a>
                                    </figure>
                                </div>
                            </div>
                            <?php
                            $offer4 = $wpdb->get_results("select * from wp_offer where id=4", ARRAY_A);
                            ?>
                            <div class="col-lg-6 col-sm-6 less_pad">
                                <div class="right_bottom_right">
                                    <figure class="snip1156">
                                        <img src="<?php echo $upload_url_alt . '/' . $offer4[0]['offer_image']; ?>" alt="shipping" class="img-responsive">
                                        <figcaption>
                                            <div>
                                                <h2><?php echo $offer4[0]['offer_text1']; ?></h2>
                                            </div>
                                            <div>
                                                <p><?php echo $offer4[0]['offer_text2']; ?></p>
                                            </div>
                                        </figcaption>
                                        <a href="#"></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>            
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<!--product section-->
<div class="product_wrapper">
    <div class="container">
        <div class="product_wrap">
            <div class="product_heading">
                <h6>Deals of the Day</h6>
            </div>
            <div class="product_content">
                <ul id="flexiselDemo3">
                    <?php
                    $args = array('post_type' => 'product', 'posts_per_page' => 8, 'meta_query' => array('relation' => 'OR',
                            array(// Simple products type
                                'key' => '_sale_price',
                                'value' => 0,
                                'compare' => '>',
                                'type' => 'numeric',
                                'orderby' => 'rand'
                            ),
                            array(// Variable products type
                                'key' => '_min_variation_sale_price',
                                'value' => 0,
                                'compare' => '>',
                                'type' => 'numeric',
                                'orderby' => 'rand'
                            )
                        )
                    );
                    $loop = new WP_Query($args);
                    while ($loop->have_posts()) : $loop->the_post();
                        global $product;
                        if ($product->is_on_sale()) {
                            ?>
                            <li>
                                <a href="<?php echo get_permalink($loop->post->ID) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                                    <div class="product_box">
                                        <div class="product_img">	
                                            <?php
                                            if (has_post_thumbnail($loop->post->ID))
                                                echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                            else
                                                echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="300px" height="300px" />';
                                            ?>                                      
                                        </div>
                                        <div class="product_content">
                                            <h4><?php the_title(); ?></h4>
                                            <h5> <?php echo $product->get_price_html(); ?></h5>
                                            <p><?php echo $product->get_categories(); ?></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </li>
                            <?php
                        }
                    endwhile;
                    ?>
                    <?php wp_reset_query(); ?>

                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="product_wrap">
            <div class="product_heading">
                <h6>Discounts for You</h6>
            </div>
            <div class="product_content">
                <ul id="flexiselDemo5">
                    <?php
                    $args = array('post_type' => 'product', 'posts_per_page' => 8, 'meta_query' => array('relation' => 'OR',
                            array(// Simple products type
                                'key' => '_sale_price',
                                'value' => 0,
                                'compare' => '>',
                                'type' => 'numeric'
                            ),
                            array(// Variable products type
                                'key' => '_min_variation_sale_price',
                                'value' => 0,
                                'compare' => '>',
                                'type' => 'numeric'
                            )
                        )
                    );

                    $loop = new WP_Query($args);
                    while ($loop->have_posts()) : $loop->the_post();
                        global $product;
                        if ($product->is_on_sale()) {
                            ?>
                            <li>
                                <a href="<?php echo get_permalink($loop->post->ID) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                                    <div class="product_box">
                                        <div class="product_img">	
                                            <?php
                                            if (has_post_thumbnail($loop->post->ID))
                                                echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                            else
                                                echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="300px" height="300px" />';
                                            ?>
                                        </div>
                                        <div class="product_content">
                                            <h4><?php the_title(); ?></h4>
                                            <h5><?php
                                                $regular_price = $product->regular_price;
                                                $sales_price = $product->sale_price;
                                                $percentage = round((( ( $regular_price - $sales_price ) / $regular_price ) * 100), 1);

                                                echo 'just ' . $percentage . '% Off';
                                                ?></h5>
                                            <p><?php echo $product->get_categories(); ?></p>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                            </li>
                            <?php
                        }
                    endwhile;
                    ?>
                    <?php wp_reset_query(); ?>
                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="product_wrap">
            <div class="product_heading">
                <h6>Live in Style</h6>
            </div>
            <div class="product_content">
                <ul id="flexiselDemo9">
                    <?php
                    $args = array('post_type' => 'product', 'orderby' => 'rand', 'meta_key' => '_wc_average_rating');
                    $loop = new WP_Query($args);
                    while ($loop->have_posts()) : $loop->the_post();
                        global $product;
                        ?> 
                        <li>
                            <a href="<?php echo get_permalink($loop->post->ID) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                                <div class="product_box">
                                    <div class="product_img">	
                                        <?php
                                        if (has_post_thumbnail($loop->post->ID))
                                            echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                        else
                                            echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="300px" height="300px" />';
                                        ?>
                                    </div>
                                    <div class="product_content">
                                        <h4><?php the_title(); ?></h4>
                                        <h5><?php echo $product->get_price_html(); ?></h5>
                                        <p><?php echo $product->get_categories(); ?></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </li>
                    <?php endwhile; ?>
                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="product_wrap">
            <div class="product_heading">
                <h6>You Recently Viewed</h6>
            </div>
            <div class="product_content">
                <ul id="flexiselDemo10">

                    <?php
                    $args = array(
                        'posts_per_page' => $number,
                        'no_found_rows' => 1,
                        'post_status' => 'publish',
                        'post_type' => 'product',
                        'post__in' => $viewed_products,
                        'orderby' => 'rand'
                    );
                    $args['meta_query'] = array();
                    $args['meta_query'][] = WC()->query->stock_status_meta_query();
                    $args['meta_query'] = array_filter($query_args['meta_query']);

                    $loop = new WP_Query($args);
                    while ($loop->have_posts()) : $loop->the_post();
                        global $product;
                        ?>	 
                        <li>
                            <a href="<?php echo get_permalink($loop->post->ID) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                                <div class="product_box">
                                    <div class="product_img">	
                                        <?php
                                        if (has_post_thumbnail($loop->post->ID))
                                            echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                        else
                                            echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="300px" height="300px" />';
                                        ?>   
                                    </div>
                                    <div class="product_content">
                                        <h4><?php the_title(); ?></h4>
                                        <h5><?php echo $product->get_price_html(); ?></h5>
                                        <p><?php echo $product->get_categories(); ?></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </li>
                    <?php endwhile; ?>
                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="product_wrap">
            <div class="product_heading">
                <h6>Best Selling Product</h6>
            </div>
            <div class="product_content">
                <ul id="flexiselDemo11">
                    <?php
                    $args = array(
                        'post_type' => 'product',
                        'posts_per_page' => 4,
                        'meta_key' => 'total_sales',
                        'orderby' => 'meta_value_num',
                    );
                    $loop = new WP_Query($args);
                    while ($loop->have_posts()) : $loop->the_post();
                        global $product;
                        ?>
                        <li>
                            <a href="<?php echo get_permalink($loop->post->ID) ?>" title="<?php echo esc_attr($loop->post->post_title ? $loop->post->post_title : $loop->post->ID); ?>">
                                <div class="product_box">
                                    <div class="product_img">	
                                        <?php
                                        if (has_post_thumbnail($loop->post->ID))
                                            echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                        else
                                            echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="300px" height="300px" />';
                                        ?>  
                                    </div>
                                    <div class="product_content">
                                        <h4><?php the_title(); ?></h4>
                                        <h5><?php echo $product->get_price_html(); ?></h5>
                                        <p><?php echo $product->get_categories(); ?></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </li>
                    <?php endwhile; ?>                   
                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>     

<!--blog section-->
<div class="blog_wrapper">
    <div class="container">
        <div class="blog_wrap">
            <div class="blog_heading">
                <h6>Blogs</h6>
            </div>
            <div class="blog_content">
                <ul id="flexiselDemo6">
                    
                     <?php
                $args = array('posts_per_page' => -1, 'order' => 'Asc');
                $myposts = get_posts($args);               
                    foreach ($myposts as $post) {
                        $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');                    
                        ?>
                    <li>
                        <div class="blog_box">                      
                            <div class="col-lg-6 col-sm-12">
                                <div class="blog_img">
                                    <img src="<?php echo $image[0]; ?>" alt="blog" class="img-responsive">
                                    <div class="img_top">
                                        <h6>24<br>nov</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <div class="blog_text">
                                    <h4><?php echo $post->post_title; ?></h4>
                                    <p><?php echo substr($post->post_content, 0, 150); ?></p>						
                                    <h6><a href="<?php echo get_permalink($post->ID); ?>">Read more</a></h6>
                                </div>
                            </div>     
                            <div class="clearfix"></div>         
                        </div>      
                    </li>
                    <?php } ?>
<!--                    <li>
                        <div class="blog_box">
                            <div class="col-lg-6 col-sm-12">
                                <div class="blog_img">
                                    <img src="<?php echo get_template_directory_uri(); ?>/images/img/blog/b2.png" alt="blog" class="img-responsive">
                                    <div class="img_top">
                                        <h6>24<br>nov</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <div class="blog_text">
                                    <h4>Ways to step up your...</h4>
                                    <p>Sweet Retailor got 1year old yesterdaySweet Retailor got 1year oldSweet Retailor got 1year old yesterday1year
                                        oldSweet Retailor got 1year old</p>						
                                    <h6>Read more</h6>
                                </div>
                            </div>     
                            <div class="clearfix"></div>         
                        </div>      
                    </li>-->
                </ul>    
            </div>
            <div class="clearfix"></div>
            <a href="/blog"><button class="btn btn-primary" style="float:right">View All Blogs</button></a>
        </div>
    </div>
</div>

<!--blog section-->
<div class="brand_wrapper">
    <div class="container">
        <div class="brand_wrap">
            <div class="brand_heading">
                <h6>Our Brand</h6>
            </div>
            <div class="brand_content">
                <ul id="flexiselDemo7">
                    <?php 
                    $brands = $wpdb->get_results("select * from wp_brands where 1", ARRAY_A);
                    
                    foreach ($brands as $brand) {                                       
                    ?>
                    <li>
                        <div class="blog_img">
                            <img src="<?php echo $upload_url_alt . '/' . $brand['brand_logo']; ?>" alt="brand" class="img-responsive">                                	
                        </div>      
                    </li>
                    <?php } ?>
                </ul>    
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>


<?php get_footer(); ?>
