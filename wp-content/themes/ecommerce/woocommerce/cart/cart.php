<?php
/**
 * Cart Page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/cart/cart.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.3.8
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

wc_print_notices();

do_action('woocommerce_before_cart');
?>

<form action="<?php echo esc_url(wc_get_cart_url()); ?>" method="post">

    <?php do_action('woocommerce_before_cart_table'); ?>


    <div class="basket_wrapper">
        <div class="container">
            <div class="basket_wrap">
                <div class="col-md-9" id="basket">
                    <div class="box">
                        <form method="post" action="checkout1.html">
                            <h1>Shopping cart</h1>
                            <?php
                            $tot = 0;
                            foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
                                $tot++;
                            }
                            ?>
                            <p class="text-muted">You currently have <?php echo $tot; ?> item(s) in your cart.</p>
                            <div class="table-responsive">
                                <table class="table shop_table shop_table_responsive cart">
                                    <thead>
                                        <tr>

                                            <th colspan="2">Product</th>

                                            <th>Quantity</th>
                                            <th>Unit price</th>
                                            <th>Discount</th>
                                            <th colspan="2">Total</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php do_action('woocommerce_before_cart_contents'); ?>
                                        <?php
                                        foreach (WC()->cart->get_cart() as $cart_item_key => $cart_item) {
                                            $_product = apply_filters('woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key);
                                            $product_id = apply_filters('woocommerce_cart_item_product_id', $cart_item['product_id'], $cart_item, $cart_item_key);

                                            if ($_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters('woocommerce_cart_item_visible', true, $cart_item, $cart_item_key)) {
                                                ?>
                                                <tr class="<?php echo esc_attr(apply_filters('woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key)); ?>">
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
                                                    <td><a href="#">
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

                                                        </a>
                                                    </td>
                                                    <td>
                                                        <?php
                                                        if ($_product->is_sold_individually()) {
                                                            $product_quantity = sprintf('1 <input type="hidden" name="cart[%s][qty]" value="1" />', $cart_item_key);
                                                        } else {
                                                            $product_quantity = woocommerce_quantity_input(array(
                                                                'input_name' => "cart[{$cart_item_key}][qty]",
                                                                'input_value' => $cart_item['quantity'],
                                                                'max_value' => $_product->backorders_allowed() ? '' : $_product->get_stock_quantity(),
                                                                'min_value' => '0'
                                                                    ), $_product, false);
                                                        }

                                                        echo apply_filters('woocommerce_cart_item_quantity', $product_quantity, $cart_item_key, $cart_item);
                                                        ?>
                                                    </td>
                                                    <td>
                                                        <?php
                                                        echo apply_filters('woocommerce_cart_item_price', WC()->cart->get_product_price($_product), $cart_item, $cart_item_key);
                                                        ?>

                                                    </td>
                                                    <td>$0.00</td>
                                                    <td>
                                                        <?php
                                                        echo apply_filters('woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal($_product, $cart_item['quantity']), $cart_item, $cart_item_key);
                                                        ?>

                                                    </td>
                                                    <td><a href="#"><i class="fa fa-trash-o">
                                                                <?php
                                                                echo apply_filters('woocommerce_cart_item_remove_link', sprintf(
                                                                                '<a href="%s" class="remove" title="%s" data-product_id="%s" data-product_sku="%s">&times;</a>', esc_url(WC()->cart->get_remove_url($cart_item_key)), __('Remove this item', 'woocommerce'), esc_attr($product_id), esc_attr($_product->get_sku())
                                                                        ), $cart_item_key);
                                                                ?>

                                                            </i></a>
                                                    </td>
                                                </tr>
        <?php
    }
}

do_action('woocommerce_cart_contents');
?>


                                        <?php do_action('woocommerce_after_cart_contents'); ?>

                                    </tbody>

                                </table>
                            </div>
                            <!-- /.table-responsive -->
                            <div class="box-footer">
                                <div class="pull-left">
                                    <a href="<?php echo get_permalink( woocommerce_get_page_id( 'shop' ) ); ?>"><button type="button" class="btn btn-default cont"><i class="fa fa-chevron-left"></i> Continue shopping</button></a>
                                </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-default cont" name="update_cart" value="<?php esc_attr_e('Update Cart', 'woocommerce'); ?>" ><i class="fa fa-refresh"></i> Update basket</button>
<?php do_action('woocommerce_cart_actions'); ?>

<?php wp_nonce_field('woocommerce-cart'); ?>
                                   <!-- <a href="checkout.html"><button class="btn btn-default cont"><i class="fa fa-refresh"></i> Update basket</button></a> -->
                                    <a href="<?php echo esc_url(wc_get_checkout_url()); ?>" class="">
                                    <?php //echo __('Proceed to Checkout', 'woocommerce'); ?>
                                    <button type="button" class="btn btn-primary">Proceed to checkout <i class="fa fa-chevron-right"></i></button></a>
                                </div>
                            </div>

                    </div>
                </div>
                <div class="col-md-3">
                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p>Shipping and additional costs are calculated based on the values you have entered.</p>

                        <div class="table-responsive">
<!--                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Order subtotal</td>
                                        <th>$446.00</th>
                                    </tr>
                                    <tr>
                                        <td>Shipping and handling</td>
                                        <th>$10.00</th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th>$0.00</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th>$456.00</th>
                                    </tr>
                                </tbody>
                            </table>-->
                            <table cellspacing="0" class="table">

                                <tr class="cart-subtotal">
                                    <th><?php _e('Order Subtotal', 'woocommerce'); ?></th>
                                    <td data-title="<?php _e('Subtotal', 'woocommerce'); ?>"><?php wc_cart_totals_subtotal_html(); ?></td>
                                </tr>

<?php foreach (WC()->cart->get_coupons() as $code => $coupon) : ?>
                                    <tr class="cart-discount coupon-<?php echo esc_attr(sanitize_title($code)); ?>">
                                        <th><?php wc_cart_totals_coupon_label($coupon); ?></th>
                                        <td data-title="<?php wc_cart_totals_coupon_label($coupon); ?>"><?php wc_cart_totals_coupon_html($coupon); ?></td>
                                    </tr>
<?php endforeach; ?>

<?php if (WC()->cart->needs_shipping() && WC()->cart->show_shipping()) : ?>

                                    <?php do_action('woocommerce_cart_totals_before_shipping'); ?>

                                    <?php wc_cart_totals_shipping_html(); ?>

                                    <?php do_action('woocommerce_cart_totals_after_shipping'); ?>

                                <?php elseif (WC()->cart->needs_shipping() && 'yes' === get_option('woocommerce_enable_shipping_calc')) : ?>

                                    <tr class="shipping">
                                        <th><?php _e('Shipping', 'woocommerce'); ?></th>
                                        <td data-title="<?php _e('Shipping', 'woocommerce'); ?>"><?php woocommerce_shipping_calculator(); ?></td>
                                    </tr>

<?php endif; ?>

<?php foreach (WC()->cart->get_fees() as $fee) : ?>
                                    <tr class="fee">
                                        <th><?php echo esc_html($fee->name); ?></th>
                                        <td data-title="<?php echo esc_html($fee->name); ?>"><?php wc_cart_totals_fee_html($fee); ?></td>
                                    </tr>
<?php endforeach; ?>

<?php
if (wc_tax_enabled() && 'excl' === WC()->cart->tax_display_cart) :
    $taxable_address = WC()->customer->get_taxable_address();
    $estimated_text = WC()->customer->is_customer_outside_base() && !WC()->customer->has_calculated_shipping() ? sprintf(' <small>(' . __('estimated for %s', 'woocommerce') . ')</small>', WC()->countries->estimated_for_prefix($taxable_address[0]) . WC()->countries->countries[$taxable_address[0]]) : '';

    if ('itemized' === get_option('woocommerce_tax_total_display')) :
        ?>
                                        <?php foreach (WC()->cart->get_tax_totals() as $code => $tax) : ?>
                                            <tr class="tax-rate tax-rate-<?php echo sanitize_title($code); ?>">
                                                <th><?php echo esc_html($tax->label) . $estimated_text; ?></th>
                                                <td data-title="<?php echo esc_html($tax->label); ?>"><?php echo wp_kses_post($tax->formatted_amount); ?></td>
                                            </tr>
        <?php endforeach; ?>
    <?php else : ?>
                                        <tr class="tax-total">
                                            <th><?php echo esc_html(WC()->countries->tax_or_vat()) . $estimated_text; ?></th>
                                            <td data-title="<?php echo esc_html(WC()->countries->tax_or_vat()); ?>"><?php wc_cart_totals_taxes_total_html(); ?></td>
                                        </tr>
    <?php endif; ?>
<?php endif; ?>

                                <?php do_action('woocommerce_cart_totals_before_order_total'); ?>

                                <tr class="order-total">
                                    <th><?php _e('Total', 'woocommerce'); ?></th>
                                    <td data-title="<?php _e('Total', 'woocommerce'); ?>"><?php wc_cart_totals_order_total_html(); ?></td>
                                </tr>

<?php do_action('woocommerce_cart_totals_after_order_total'); ?>

                            </table>
                        </div>
                    </div>
                    <div class="box">
                        <div class="box-header">
                            <h3>Coupon code</h3>
                        </div>
                        <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>







<?php if (wc_coupons_enabled()) { ?>
                            <div class="input-group">
                                <input type="text" name="coupon_code" class="form-control" id="coupon_code" value="" placeholder="<?php esc_attr_e('Coupon code', 'woocommerce'); ?>" />
                               <!-- <input type="text" class="form-control"> -->
                                <span class="input-group-btn">
                                                                        <!-- <button class="btn btn-primary gift" type="button"><i class="fa fa-gift"></i></button> -->
                                    <button type="submit" class="btn btn-primary gift " name="apply_coupon" value="<?php esc_attr_e('Apply Coupon', 'woocommerce'); ?>" ><i class="fa fa-gift"></i></button>
                                </span>
    <?php do_action('woocommerce_cart_coupon'); ?>
                            </div>
<?php } ?>
                        </form>
                    </div>
<!--                    <div class="clearfix"></div>-->
                </div>
                <!-- /.col-md-3-->
<!--                <div class="clearfix"></div>-->
            </div>
      





<?php do_action('woocommerce_after_cart_table'); ?>



    <div class="cart-collaterals">

<?php do_action('woocommerce_cart_collaterals'); ?>

    </div>

        <?php do_action('woocommerce_after_cart'); ?>
  </div>
    </div>