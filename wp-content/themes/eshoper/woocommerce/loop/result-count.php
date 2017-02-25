<?php
/**
 * Result Count
 *
 * Shows text: Showing x - x of x results.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/loop/result-count.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.0.0
 */
get_sidebar();

if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

global $wp_query;

if (!woocommerce_products_will_display())
    return;
?>
<div class="col-lg-9 col-sm-9 less_lt">
    <div class="item_wrapper">
        <div class="item_heading">
            <div class="col-lg-4 col-sm-4">
                <div class="heading_box">
                    <h6>Products name</h6>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
                <div class="heading_box">


                    <p class="woocommerce-result-count">
                        <?php
                        $paged = max(1, $wp_query->get('paged'));
                        $per_page = $wp_query->get('posts_per_page');
                        $total = $wp_query->found_posts;
                        $first = ( $per_page * $paged ) - $per_page + 1;
                        $last = min($total, $wp_query->get('posts_per_page') * $paged);

                        if (1 === $total) {
                            _e('Showing the single result', 'woocommerce');
                        } elseif ($total <= $per_page || -1 === $per_page) {
                            ?><strong> <?php    printf(__('Showing all %d results', 'woocommerce'), $total);?></strong><?php
                        } else {
                            printf(_x('Showing %1$d&ndash;%2$d of %3$d results', '%1$d = first, %2$d = last, %3$d = total', 'woocommerce'), $first, $last, $total);
                        }
                        ?>
                    </p>
                </div>     
            </div>
            