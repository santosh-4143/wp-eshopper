<?php
/**
 * Order details
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/order/order-details.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.5.3
 */
if (!defined('ABSPATH')) {
    exit;
}

$order = wc_get_order($order_id);

$show_purchase_note = $order->has_status(apply_filters('woocommerce_purchase_note_order_statuses', array('completed', 'processing')));
$show_customer_details = is_user_logged_in() && $order->get_user_id() === get_current_user_id();
?>
<div class="myorder_wrapper">
    <div class="container">
        <div class="myorder_wrap">
            <div class="col-md-3">
                <!-- *** CUSTOMER MENU ***
_________________________________________________________ -->
                <div class="panel panel-default sidebar-menu">

                    <div class="panel-heading">
                        <h3 class="panel-title">Customer section</h3>
                    </div>

                    <div class="panel-body">

                        <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="/my-account"><i class="fa fa-user"></i> My account</a>
                                </li>
                                <li>
                                    <a href="/wishlist/view"><i class="fa fa-heart"></i> My wishlist</a>
                                </li>
                                <li>
                                    <a href="/my-account/edit-account"><i class="fa fa-edit"></i> Edit Accounts </a>
                                </li>                             
                            </ul>
                    </div>

                </div>
                <!-- /.col-md-3 -->

                <!-- *** CUSTOMER MENU END *** -->
            </div>
            <div id="customer-order" class="col-md-9">
                <div class="box">
                    <p class="order-info"><?php printf(__('Order #<mark class="order-number">%s</mark> was placed on <mark class="order-date">%s</mark> and is currently <mark class="order-status">%s</mark>.', 'woocommerce'), $order->get_order_number(), date_i18n(get_option('date_format'), strtotime($order->order_date)), wc_get_order_status_name($order->get_status())); ?></p>

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="product-name"><?php _e('Product', 'woocommerce'); ?></th>
                                    <th class="product-total"><?php _e('Total', 'woocommerce'); ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                foreach ($order->get_items() as $item_id => $item) {
                                    $product = apply_filters('woocommerce_order_item_product', $order->get_product_from_item($item), $item);
                                    $purchase_note = get_post_meta($product->id, '_purchase_note', true);

                                    wc_get_template('order/order-details-item.php', array(
                                        'order' => $order,
                                        'item_id' => $item_id,
                                        'item' => $item,
                                        'show_purchase_note' => $show_purchase_note,
                                        'purchase_note' => $purchase_note,
                                        'product' => $product,
                                    ));
                                }
                                ?>
                                <?php do_action('woocommerce_order_items_table', $order); ?>
                            </tbody>
                            <tfoot>
                                <?php
                                foreach ($order->get_order_item_totals() as $key => $total) {
                                    ?>
                                    <tr>
                                        <th scope="row"><?php echo $total['label']; ?></th>
                                        <td><?php echo $total['value']; ?></td>
                                    </tr>
                                    <?php
                                }
                                ?>
                            </tfoot>
                        </table>
                    </div>
                    <?php do_action('woocommerce_order_details_after_order_table', $order); ?>

                    <?php if ($show_customer_details) : ?>
                        <?php wc_get_template('order/order-details-customer.php', array('order' => $order)); ?>
                    <?php endif; ?>

