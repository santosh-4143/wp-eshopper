<?php
/**
 * Related Products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/related.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

global $product, $woocommerce_loop;

if (empty($product) || !$product->exists()) {
    return;
}

$related = $product->get_related($posts_per_page);

if (sizeof($related) === 0)
    return;

$args = apply_filters('woocommerce_related_products_args', array(
    'post_type' => 'product',
    'ignore_sticky_posts' => 1,
    'no_found_rows' => 1,
    'posts_per_page' => $posts_per_page,
    'orderby' => $orderby,
    'post__in' => $related,
    'post__not_in' => array($product->id)
        ));

$products = new WP_Query($args);

$woocommerce_loop['columns'] = $columns;

if ($products->have_posts()) :
    ?>

    <div class="releated_product">
        <div class="product_wrap">
            <div class="releated_heading">
                <h6><?php _e('Related Products', 'woocommerce'); ?></h6>
            </div>
            <?php //woocommerce_product_loop_start(); ?>
            <div class="product_content">
                <ul id="flexiselDemo8">
                    <?php while ($products->have_posts()) : $products->the_post();
                        ?>


                        <li>
                            <div class="product_box">
                                <div class="product_img">	
                                    <figure class="snip1196">
                                        <?php
                                        if (has_post_thumbnail($products->post->ID))
                                            echo get_the_post_thumbnail($products->post->ID, 'shop_catalog');
                                        else
                                            echo '<img src="' . woocommerce_placeholder_img_src() . '" class="img-responsive" alt="Placeholder"  width="300px" height="300px" />';
                                        ?>

                                        <!--<a href="#"></a>-->
                                    </figure>
                                </div>
                                <div class="product_content">
                                    <h4><?php echo $products->post->post_title; ?></h4>
                                    <h5><?php echo $product->get_price_html(); ?></h5>
                                    <p><?php echo substr($products->post->post_content, 0, 40); ?></p>
                                    <a href="<?php echo get_permalink($products->post->ID) ?>" title="<?php echo esc_attr($products->post->post_title ? $products->post->post_title : $products->post->ID); ?>"><button type="button" class="btn btn-default view">View Details</button></a>
                                                               
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </li>
                        <?php //wc_get_template_part('content', 'product'); ?>

                    <?php endwhile; // end of the loop.  ?>

                    <?php //woocommerce_product_loop_end(); ?>
                </ul>
            </div>


            <?php
        endif;

        wp_reset_postdata();
        ?>
    </div> </div>

</div> </div>