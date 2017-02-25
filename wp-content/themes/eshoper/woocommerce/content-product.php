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
            //  do_action('woocommerce_before_shop_loop_item');

            /**
             * woocommerce_before_shop_loop_item_title hook.
             *
             * @hooked woocommerce_show_product_loop_sale_flash - 10
             * @hooked woocommerce_template_loop_product_thumbnail - 10
             */
            //$product = get_product( get_the_ID() );
            ?> 
            <div class="list_img">	
                <figure class="snip1196">
                    <figcaption>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal<?php echo $product->post->ID; ?>">Quick view</button>
                        <div class="clearfix"></div>

                        <?php
                        if (function_exists('YITH_WCWL')) {
                            $url = add_query_arg('add_to_wishlist', $product->id);
                            ?>
                            <a href="<?php echo esc_url($url); ?>" class="wish"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                            <?php
                        }
                        ?>
                        <a href="javascript:void();" class="compare"><i class="fa fa-compress" aria-hidden="true"></i></a>
                    </figcaption>
                    <?php
                    do_action('woocommerce_before_shop_loop_item_title');
                    ?>

                </figure>
            </div>
            <!-- Modal start-->
            <div id="myModal<?php echo $product->post->ID; ?>" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <?php $modal = $product->post->ID; ?>
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title"><?php echo the_title(); ?></h4>
                        </div>
                        <div class="modal-body">
                            <div class="details_wrapper">
                                <div class="col-lg-6 col-sm-6">
                                    <div class="details_img">
                                        <div class="single_top">
                                            <div class="single_grid">
                                                <div class="grid images_3_of_2">
                                                    <?php
                                                    if (has_post_thumbnail()) {
                                                        $image_caption = get_post(get_post_thumbnail_id())->post_excerpt;
                                                        $image_link = wp_get_attachment_url(get_post_thumbnail_id());
                                                        $image = get_the_post_thumbnail($post->ID, apply_filters('single_product_large_thumbnail_size', 'shop_single'), array(
                                                            'title' => get_the_title(get_post_thumbnail_id())
                                                        ));

                                                        $attachment_count = count($product->get_gallery_attachment_ids());

                                                        if ($attachment_count > 0) {
                                                            $gallery = '[product-gallery]';
                                                        } else {
                                                            $gallery = '';
                                                        }

                                                        echo apply_filters('woocommerce_single_product_image_html', sprintf('<a href="%s" itemprop="image" class="woocommerce-main-image zoom" title="%s" data-rel="prettyPhoto' . $gallery . '">%s</a>', $image_link, $image_caption, $image), $post->ID);
                                                    } else {

                                                        echo apply_filters('woocommerce_single_product_image_html', sprintf('<img src="%s" alt="%s" />', wc_placeholder_img_src(), __('Placeholder', 'woocommerce')), $post->ID);
                                                    }
                                                    ?>

                                                    <?php do_action('woocommerce_product_thumbnails'); ?>
                                                    <div class="clearfix"></div>		
                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6">
                                    <div class="details_content">
                                        <h6><?php echo the_title(); ?></h6>
                                        <?php
                                        $rating_count = $product->get_rating_count();
                                        $review_count = $product->get_review_count();
                                        $average = $product->get_average_rating();
                                        ?>
                                        <div class="rating">
                                            <div class="woocommerce-product-rating1" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                                                <div class="star-rating1" title="<?php printf(__('Rated %s out of 5', 'woocommerce'), $average); ?>">
                                                    <span style="width:<?php echo ( ( $average / 5 ) * 100 ); ?>%">
                                                        <strong itemprop="ratingValue" class="rating1"><?php echo esc_html($average); ?></strong> <?php printf(__('out of %s5%s', 'woocommerce'), '<span itemprop="bestRating">', '</span>'); ?>
                                                        <?php printf(_n('based on %s customer rating', 'based on %s customer ratings', $rating_count, 'woocommerce'), '<span itemprop="ratingCount" class="rating1">' . $rating_count . '</span>'); ?>
                                                    </span>
                                                </div>
                                                <?php if (comments_open()) : ?><a href="#reviews" class="woocommerce-review-link" rel="nofollow">(<?php printf(_n('%s customer review', '%s customer reviews', $review_count, 'woocommerce'), '<span itemprop="reviewCount" class="count">' . $review_count . '</span>'); ?>)</a><?php endif ?>
                                            </div>
                                        </div>
                                        <div class="price_section">
                                            <ul>
                                                <?php if ($price_html = $product->get_price_html()) : ?>
                                                    <span class="price"><?php echo $price_html; ?></span>
                                                <?php endif; ?>
                                                <?php
                                                $cat_count = sizeof(get_the_terms($post->ID, 'product_cat'));
                                                $tag_count = sizeof(get_the_terms($post->ID, 'product_tag'));
                                                ?>
                                                <?php do_action('woocommerce_product_meta_start'); ?>

                                                <?php if (wc_product_sku_enabled() && ( $product->get_sku() || $product->is_type('variable') )) : ?>

                                                    <li><span class="sku_wrapper"><?php _e('SKU:', 'woocommerce'); ?> </span>
                                                        &nbsp;&nbsp;&nbsp;<?php echo ( $sku = $product->get_sku() ) ? $sku : __('N/A', 'woocommerce'); ?></li>

                                                <?php endif; ?>

                                                <?php echo $product->get_categories(', ', '<li><span class="posted_in">' . _n('Category:</span>&nbsp;&nbsp;&nbsp;', 'Categories:</span>&nbsp;&nbsp;&nbsp;', $cat_count, 'woocommerce') . ' ', '</li>'); ?>

                                                <?php echo $product->get_tags(', ', '<li><span class="tagged_as">' . _n('Tag:</span>&nbsp;&nbsp;&nbsp;', 'Tags:</span>&nbsp;&nbsp;&nbsp;', $tag_count, 'woocommerce') . ' ', '</li>'); ?>

                                                <?php do_action('woocommerce_product_meta_end'); ?>

<!--                                                <li class="stock"><span>Availability:</span>&nbsp;In Stock</li>

                                                <li><span>Size:</span>
                                                    <select  class="form-control">
                                                        <option>XXL</option>
                                                        <option>XL</option>
                                                        <option>M</option>
                                                        <option>S</option>
                                                        <option>XS</option>
                                                    </select>
                                                </li>
                                                <li><span>Color :</span>
                                                    <select  class="form-control">
                                                        <option>Red</option>
                                                        <option>Green</option>
                                                        <option>Blue</option>
                                                    </select>
                                                </li>     -->
                                            </ul>
                                        </div>
                                        <div class="submit_section">
                                            <!--                                            <?php //$add_to_cart = do_shortcode('[add_to_cart_url id="' . $product->post->ID . '"]');         ?>
                                            
                                                                                        <a href="<?php //echo $add_to_cart;          ?>" class="btn btn-default view">Buy now</a>-->
                                            <form class="quick_form" method="post" enctype='multipart/form-data' action="/checkout?set-cart-qty_<?php echo $product->id; ?>=1">
                                                <button type="submit"  class="btn btn-default cart">Buy Now</button>
                                                <input type="hidden" name="add-to-cart" value="<?php echo esc_attr($product->id); ?>" />
                                            </form>

                                            <form class="quick_form" method="post" enctype='multipart/form-data'>
                                                <?php do_action('woocommerce_before_add_to_cart_button'); ?>
                                                <input type="hidden" name="add-to-cart" value="<?php echo esc_attr($product->id); ?>" />
                                                <button type="submit" class="btn btn-default cart"><?php echo $product->single_add_to_cart_text(); ?></button>
                                                <?php do_action('woocommerce_after_add_to_cart_button'); ?>
                                            </form>                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <div class="clearfix"></div>
                            </div>  
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>
            <!-- Modal end-->
            <?php /**
             * woocommerce_shop_loop_item_title hook.
             *
             * @hooked woocommerce_template_loop_product_title - 10
             */ ?>
            <div class="list_content">

                <?php do_action('woocommerce_shop_loop_item_title'); ?>


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
                <div class="vi_add">
                     <?php do_action('woocommerce_before_shop_loop_item'); ?><div class="btn btn-default view view_1">View Details</div></a> 
                <div class="btn btn-default cart cart_1"><i class="fa fa-shopping-cart"></i>
                    <?php do_action('woocommerce_after_shop_loop_item'); ?>
                </div> 
                
                </div>
<!--                <?php // do_action('woocommerce_before_shop_loop_item'); ?><div class="btn btn-default view view_1">View Details</div></a>-->

              
<!--                <div class="btn btn-default cart"><i class="fa fa-shopping-cart"></i>
                    <?php //do_action('woocommerce_after_shop_loop_item'); ?>
                </div>-->


            </div>



        </li>
    </div>
</div>
