<?php
/**
 * Thankyou page
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/thankyou.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.2.0
 */
if (!defined('ABSPATH')) {
    exit;
}

if ($order) :
    ?>

    <?php if ($order->has_status('failed')) : ?>

        <p class="woocommerce-thankyou-order-failed"><?php _e('Unfortunately your order cannot be processed as the originating bank/merchant has declined your transaction. Please attempt your purchase again.', 'woocommerce'); ?></p>

        <p class="woocommerce-thankyou-order-failed-actions">
            <a href="<?php echo esc_url($order->get_checkout_payment_url()); ?>" class="button pay"><?php _e('Pay', 'woocommerce') ?></a>
            <?php if (is_user_logged_in()) : ?>
                <a href="<?php echo esc_url(wc_get_page_permalink('myaccount')); ?>" class="button pay"><?php _e('My Account', 'woocommerce'); ?></a>
            <?php endif; ?>
        </p>

    <?php else : ?>
        <div class="myorder_wrapper">
            <div class="container">
                <div class="myorder_wrap">
                    <div id="customer-order" class="col-md-9">
                        <div class="box">
                            <strong style="font-size: 17px;color: green"> <?php echo apply_filters('woocommerce_thankyou_order_received_text', __('Thank you. Your order has been received.', 'woocommerce'), $order); ?></strong>;
                            <hr><ul class="woocommerce-thankyou-order-details order_details">
                                <li class="order">
                                    <?php _e('Order Number:', 'woocommerce'); ?>
                                    <strong><?php echo $order->get_order_number(); ?></strong>
                                </li>
                                <li class="date">
                                    <?php _e('Date:', 'woocommerce'); ?>
                                    <strong><?php echo date_i18n(get_option('date_format'), strtotime($order->order_date)); ?></strong>
                                </li>
                                <li class="total">
                                    <?php _e('Total:', 'woocommerce'); ?>
                                    <strong><?php echo $order->get_formatted_order_total(); ?></strong>
                                </li>
                                <?php if ($order->payment_method_title) : ?>
                                    <li class="method">
                                        <?php _e('Payment Method:', 'woocommerce'); ?>
                                        <strong><?php echo $order->payment_method_title; ?></strong>
                                    </li>
                                <?php endif; ?>
                            </ul>
                            <div class="clear"></div>
                            <?php do_action('woocommerce_thankyou', $order->id); ?>



                            <div class="addresses">
                                <div class="col-md-4">
                                    <h2>Billing address</h2>
                                    <p><?php echo ( $address = $order->get_formatted_billing_address() ) ? $address : __('N/A', 'woocommerce'); ?></p>
                                </div>
                                <div class="col-md-4">
                                    <h2>Shipping address</h2>
                                    <p><?php echo ( $address = $order->get_formatted_shipping_address() ) ? $address : __('N/A', 'woocommerce'); ?></p>
                                </div>
                                <div class="col-md-4">
                                    <h2>Customer Details</h2>
                                    <p>
                                    <table class="shop_table customer_details">
                                        <?php if ($order->customer_note) : ?>
                                            <tr>
                                                <th><?php _e('Note:', 'woocommerce'); ?></th>
                                                <td><?php echo wptexturize($order->customer_note); ?></td>
                                            </tr>
                                        <?php endif; ?>

                                        <?php if ($order->billing_email) : ?>
                                            <tr>
                                                <th><?php _e('Email:', 'woocommerce'); ?></th>
                                                <td><?php echo esc_html($order->billing_email); ?></td>
                                            </tr>
                                        <?php endif; ?>

                                        <?php if ($order->billing_phone) : ?>
                                            <tr>
                                                <th><?php _e('Telephone:', 'woocommerce'); ?></th>
                                                <td><?php echo esc_html($order->billing_phone); ?></td>
                                            </tr>
                                        <?php endif; ?>
                                    </table>
                                    </p>
                                </div>
                            </div>

                        </div>                   
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>    
        <p class="woocommerce-thankyou-order-received"><?php //echo apply_filters( 'woocommerce_thankyou_order_received_text', __( 'Thank you. Your order has been received.', 'woocommerce' ), $order );       ?></p>


        <div class="clear"></div>

    <?php endif; ?>
<?php else : ?>

    <p class="woocommerce-thankyou-order-received"><?php //echo apply_filters( 'woocommerce_thankyou_order_received_text', __( 'Thank you. Your order has been received.', 'woocommerce' ), null );       ?></p>

<?php endif; ?>
