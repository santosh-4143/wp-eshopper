<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "site-content" div.
 *
 * @package WordPress
 * @subpackage eshopper
 * @since eshoper 1.0
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">
    <head>
        <meta charset="<?php bloginfo('charset'); ?>">
        <meta name="viewport" content="width=device-width">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
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
        <?php //wp_head(); ?>
        
    </head>

    <body <?php //body_class();                                                                                             ?>>
        <!--top-header section-->
        <div class="top_header">
            <div class="container">
                <div class="col-lg-2 col-sm-2">
                    <div class="top_left">
<!--                        <li class="dropdown dropdown-small">
                            <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                <span class="key">language :</span>
                                <span class="value">English </span><b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">English</a></li>
                                <li><a href="#">French</a></li>
                                <li><a href="#">German</a></li>
                            </ul>
                        </li>-->
                    </div>
                </div>
                <div class="col-lg-5 col-sm-5">
                    <div class="top_center">
                        <form class="form-inline" role="search" method="get" class="search-form" action="<?php echo home_url('/'); ?>">
                            <div class="form-group">
                                <label class="sr-only" for="search">search</label>
                                <input type="search" name="s" class="form-control" value="<?php echo get_search_query() ?>" placeholder="<?php echo esc_attr_x('Search Products&hellip;', 'placeholder', 'woocommerce'); ?>" value="<?php echo get_search_query(); ?>" title="<?php echo esc_attr_x('Search for:', 'label', 'woocommerce'); ?>" autocomplete="off">                    
                            </div>
                                <button type="submit" class=" btn btn-default" value="<?php echo esc_attr_x('Search', 'submit button', 'woocommerce'); ?>" >Search</button>
                                <input type="hidden" name="post_type" value="product" />                       
                        </form>
                    </div>
                </div>
                <div class="col-lg-5 col-sm-5">
                    <div class="top_right">
                        <ul> 
                            <li><a href="/24-x-7-customer-care">24 x 7 Customer care</a></li>
                            <li>|</li>
                             <?php if (!is_user_logged_in()) { ?>
                            <li><a href="/my-account">Log In</a></li>
                            
                             <?php }else { ?>
                            <li><a href="/my-account">My Account</a></li>
                            <li>|</li>
                            <?php
                            printf(
                                    __('<li><a href="%2$s">Log out</a><li>', 'woocommerce') . ' ', $current_user->display_name, wc_get_endpoint_url('customer-logout', '', wc_get_page_permalink('myaccount'))
                            );?>
                             <?php } ?>
                            <li id="cart"><i class="fa fa-shopping-cart"><span class="badge"><?php
                                        global $woocommerce;
                                        echo $cart_contents_count = $woocommerce->cart->cart_contents_count;
                                        ?></span></i></li>

				 <li>
                                
                                <?php
                    if ( function_exists( 'YITH_WCWL' ) ) {
                        $fashstore_wishlist_url = YITH_WCWL()->get_wishlist_url();
                ?>
                    <a class="quick-wishlist" href="<?php echo $fashstore_wishlist_url; ?>" title="<?php _e( 'Wishlist', 'fashstore' ) ;?>">
                        <i class="fa fa-heart"></i>
                        <?php echo "(" . yith_wcwl_count_products() . ")"; ?>
                    </a>
                <?php
                    }
                ?>
                            </li>
                        </ul>

                        <div class="cart_box">
                            <div class="cart_popup">
                                <h6>Shopping Cart :</h6>
                                <?php
                                $cart_contents_count = $woocommerce->cart->cart_contents_count;
                                if ($cart_contents_count != 0) {
                                    ?>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th colspan="2"><?php _e('Product', 'woocommerce'); ?></th>
                                                    <th><?php _e('Qty', 'woocommerce'); ?></th>
                                                    <th><?php _e('Price', 'woocommerce'); ?></th>
                                                    <th>Delete</th>

                                                </tr>
                                            </thead>
                                            <tbody>

                                                <?php
                                                foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
                                                    $_product = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
                                                    $product_id = apply_filters('woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key);

                                                    if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_cart_item_visible', true, $cart_item, $cart_item_key)) {
                                                        ?>
                                                        <tr>
                                                            <td>
                                                                <?php
                                                                $thumbnail = apply_filters('woocommerce_cart_item_thumbnail', $_product->get_image(), $cart_item, $cart_item_key);

                                                                if (!$_product->is_visible()) {
                                                                    echo $thumbnail;
                                                                } else {
                                                                    printf('<a href="%s">%s</a>', esc_url($_product->get_permalink($cart_item)), $thumbnail);
                                                                }
                                                                ?>
                                                            </td>
                                                            <td data-title="<?php _e('Product', 'woocommerce'); ?>">
                                                                <?php
                                                                if (!$_product->is_visible()) {
                                                                    echo apply_filters('woocommerce_cart_item_name', $_product->get_title(), $cart_item, $cart_item_key) . '&nbsp;';
                                                                } else {
                                                                    echo apply_filters('woocommerce_cart_item_name', sprintf('<a href="%s">%s</a>', esc_url($_product->get_permalink($cart_item)), $_product->get_title()), $cart_item, $cart_item_key);
                                                                }

                                                                // Meta data
                                                                echo WC()->cart->get_item_data($cart_item);

                                                                // Backorder notification
                                                                if ($_product->backorders_require_notification() && $_product->is_on_backorder($cart_item['quantity'])) {
                                                                    echo '<p class="backorder_notification">' . esc_html__('Available on backorder', 'woocommerce') . '</p>';
                                                                }
                                                                ?>
                                                            </td> 
                                                            <td data-title="<?php _e('Qty', 'woocommerce'); ?>">

                                                                <?php
                                                                echo $cart_item['quantity'];
                                                                ?>

                                                            </td>
                                                            <td data-title="<?php _e('Price', 'woocommerce'); ?>">
                                                                <?php
                                                                echo WC()->cart->get_product_price($_product);
                                                                //echo apply_filters('woocommerce_cart_item_price', WC()->cart->get_product_price($_product), $cart_item, $cart_item_key);
                                                                ?>
                                                            </td>

                                                            <td>
                                                                <?php
                                                                echo apply_filters('woocommerce_cart_item_remove_link', sprintf(
                                                                                '<a href="%s" class="remove" title="%s" data-product_id="%s" data-product_sku="%s"><i style="margin-left: 17px;" class="fa fa-trash-o"></i></a>', esc_url(WC()->cart->get_remove_url($cart_item_key)), __('Remove this item', 'woocommerce'), esc_attr($product_id), esc_attr($_product->get_sku())
                                                                        ), $cart_item_key);
                                                                ?>
                                                            </td>

                                                        </tr>
                                                        <?php
                                                    }
                                                }
                                                ?>

                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th colspan="3">Total</th>
                                                    <th><?php echo $cart_total = $woocommerce->cart->get_cart_total(); ?></th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>  
                                    <div class="cart_footer">
                                        <a href="/cart" class="btn btn-default view">View cart</a>
                                        <a href="/checkout" class="btn btn-default checkout">Checkout</a>
                                    </div>   
                                    <div class="clearfix"></div> 
                                <?php } else { ?>
                                    <div style=" font-size: 17px;height: 50px;margin: 38px 0 0 98px;">Empty Cart.Return to <a href="/shop">shop page</a></div>
                                <?php } ?>
                            </div>
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
                        <a href="/"><img src="<?php echo get_template_directory_uri(); ?>/images/icon/logo.png" alt="logo" class="img-responsive"></a>

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

                                        <?php
                                        $args = array(
                                            'number' => $number,
                                            //'orderby' => $orderby,
                                            //'order' => $order,
                                            'hide_empty' => $hide_empty,
                                            'include' => $ids,
                                            'hierarchical' => true,
                                            'parent' => 0
                                        );

                                        $product_categories = get_terms('product_cat', $args);
                                        foreach ($product_categories as $cat) {
                                            $args2 = array(
                                                'number' => $number,
                                                //'orderby' => $orderby,
                                                //'order' => $order,
                                                'hide_empty' => $hide_empty,
                                                'include' => $ids,
                                                'parent' => $cat->term_id,
                                                'hierarchical' => true,
                                            );

                                            $sub_categories = get_terms('product_cat', $args2);
                                            ?>
                                            <li><a href="#"><?php echo $cat->name; ?><span class="arrow"></span></a>
                                                <div class="megamenu clearfix">
                                                    <ul class="">
                                                        <?php
                                                        if (is_array($sub_categories) && count($sub_categories) > 0) {
                                                            foreach ($sub_categories as $subcat) {
                                                                ?>
                                                                <div class="col-lg-3 col-md-3 col-xs-12 link-list">
                                                                    <li class="title"><a href="<?php echo get_term_link($subcat); ?>"> <?php echo $subcat->name; ?></a></li>
                                                                    <?php
//                                                                $args = array(
//                                                                    'posts_per_page' => -1,
//                                                                    'tax_query' => array(
//                                                                        'relation' => 'AND',
//                                                                        array(
//                                                                            'taxonomy' => 'product_cat',
//                                                                            'field' => 'slug',
//                                                                            'terms' => $subcat->slug
//                                                                        )
//                                                                    ),
//                                                                    'post_type' => 'product',
//                                                                    'orderby' => 'title,'
//                                                                );
//                                                                $products = new WP_Query($args);
//                                                                while ($products->have_posts()) {
//                                                                    $products->the_post();
                                                                    $args3 = array(
                                                                        'number' => $number,
                                                                        //'orderby' => $orderby,
                                                                        //'order' => $order,
                                                                        'hide_empty' => $hide_empty,
                                                                        'include' => $ids,
                                                                        'parent' => $subcat->term_id,
                                                                        'hierarchical' => true,
                                                                    );

                                                                    $sub_categories_nexts = get_terms('product_cat', $args3);
                                                                    if (is_array($sub_categories_nexts) && count($sub_categories_nexts) > 0) {
                                                                        foreach ($sub_categories_nexts as $sub_categories_next) {
                                                                            ?>

                                                                            <li><a href="<?php echo get_term_link($sub_categories_next); ?>"><i class="fa fa-arrow-circle-right"></i><?php echo $sub_categories_next->name; ?></a></li>
                                                                            <?php
                                                                        }
                                                                    }
                                                                    ?>
                                                                </div>
                                                                <?php
                                                            }
                                                        }
                                                        ?>
                                                    </ul>

                                                    <div class="col-lg-3 col-md-3 col-xs-12">
                                                        <h3 class="title">New Arrival </h3>
                                                        <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
                                                            <div class="carousel-inner" role="listbox">
                                                                <?php
                                                                $i = 1;
                                                                $args = array('post_type' => 'product', 'orderby' => 'asc');
                                                                $loop = new WP_Query($args);
                                                                while ($loop->have_posts()) : $loop->the_post();
                                                                    global $product;
                                                                    ?>
                                                                    <div class="item <?php
                                                                    if ($i == 1) {
                                                                        echo 'active';
                                                                    }
                                                                    ?>">
                                                                             <?php
                                                                             if (has_post_thumbnail($loop->post->ID))
                                                                                 echo get_the_post_thumbnail($loop->post->ID, 'shop_catalog');
                                                                             else
                                                                                 echo '<img src="' . woocommerce_placeholder_img_src() . '" alt="Placeholder" width="100px" height="50px" />';
                                                                             ?>                                                                    
                                                                    </div>
                                                                    <?php
                                                                    $i++;
                                                                endwhile;
                                                                ?>                                                                
                                                            </div>
                                                            <a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev"> <span class="fa fa-arrow-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next"> <span class="fa fa-arrow-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
                                                    </div>
                                                </div>
                                            </li>

                                        <?php } ?>

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
