<?php
/**
 * The template for displaying product content within loops
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.5.0
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

global $product, $woocommerce_loop;

// Store loop count we're currently on
if (empty($woocommerce_loop['loop'])) {
    $woocommerce_loop['loop'] = 0;
}

// Store column count for displaying the grid
if (empty($woocommerce_loop['columns'])) {
    $woocommerce_loop['columns'] = apply_filters('loop_shop_columns', 4);
}

// Ensure visibility
if (!$product || !$product->is_visible()) {
    return;
}

// Increase loop count
$woocommerce_loop['loop'] ++;

// Extra post classes
$classes = array();
if (0 === ( $woocommerce_loop['loop'] - 1 ) % $woocommerce_loop['columns'] || 1 === $woocommerce_loop['columns']) {
    $classes[] = 'first';
}
if (0 === $woocommerce_loop['loop'] % $woocommerce_loop['columns']) {
    $classes[] = 'last';
}
?>
<div class="col-lg-4 col-sm-6">
    <div class="list_box">
    <li <?php post_class($classes); ?>>

        <?php
        /**
         * woocommerce_before_shop_loop_item hook.
         *
         * @hooked woocommerce_template_loop_product_link_open - 10
         */
       // do_action('woocommerce_before_shop_loop_item');

        /**
         * woocommerce_before_shop_loop_item_title hook.
         *
         * @hooked woocommerce_show_product_loop_sale_flash - 10
         * @hooked woocommerce_template_loop_product_thumbnail - 10
         */
        ?>
        <div class="list_img">	
            <figure class="snip1196">
                <figcaption>
                    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">Quick view</button>
                    <div class="clearfix"></div>
                    <a href="javascript:void();" class="wish"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                    <a href="javascript:void();" class="compare"><i class="fa fa-compress" aria-hidden="true"></i></a>
                </figcaption>
                <?php
                do_action('woocommerce_before_shop_loop_item_title');
                ?>

            </figure>
        </div>
        <?php
        /**
         * woocommerce_shop_loop_item_title hook.
         *
         * @hooked woocommerce_template_loop_product_title - 10
         */
        ?>
        <div class="list_content">
           
                <?php
                do_action('woocommerce_shop_loop_item_title');
                ?>
         
            <h5>
                <?php
                /**
                 * woocommerce_after_shop_loop_item_title hook.
                 *
                 * @hooked woocommerce_template_loop_rating - 5
                 * @hooked woocommerce_template_loop_price - 10
                 */
                do_action('woocommerce_after_shop_loop_item_title');
                ?>
            </h5>

            <?php
            /**
             * woocommerce_after_shop_loop_item hook.
             *
             * @hooked woocommerce_template_loop_product_link_close - 5
             * @hooked woocommerce_template_loop_add_to_cart - 10
             */
            ?>
            <?php do_action('woocommerce_before_shop_loop_item'); ?>
                <div class="btn btn-default view">View Details</div>
            <div class="btn btn-default cart"><i class="fa fa-shopping-cart"></i>
                <?php
                do_action('woocommerce_after_shop_loop_item');
                ?>
            </div>
        </div>
        
    </li>
    
</div>
</div>


