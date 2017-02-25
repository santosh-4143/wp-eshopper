<?php
/**
 * Checkout billing information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-billing.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see     http://docs.woothemes.com/document/template-structure/
 * @author  WooThemes
 * @package WooCommerce/Templates
 * @version 2.1.2
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

/** @global WC_Checkout $checkout */
?>
<div class="woocommerce-billing-fields">



    <div class="checkout_wrapper">
        <div class="container">
            <div class="checkout_wrap">
                <div class="col-md-9" id="checkout">

                    <div class="box">
                        <form name="checkout" method="post" class="checkout woocommerce-checkout" action="<?php echo esc_url(wc_get_checkout_url()); ?>" enctype="multipart/form-data">
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a data-toggle="tab" href="#address"><i class="fa fa-map-marker"></i><br>Address</a></li>
<!--                                <li class="disabled"><a data-toggle="tab" href="#delivery"><i class="fa fa-truck"></i><br>Delivery Method</a></li>-->
                                <li class="disabled"><a data-toggle="tab" href="#payment"><i class="fa fa-money"></i><br>Payment Method</a></li>
                                <li class="disabled"><a data-toggle="tab" href="#review"><i class="fa fa-eye"></i><br>Order Review</a></li>
                            </ul>

                            <div class="tab-content">
                                <div id="address" class="tab-pane fade in active">
                                    <div class="content">
                                        <?php if (wc_ship_to_billing_address_only() && WC()->cart->needs_shipping()) : ?>

                                            <h3><?php _e('Billing &amp; Shipping', 'woocommerce'); ?></h3>

                                        <?php else : ?>

                                            <h3><?php _e('Billing Details', 'woocommerce'); ?></h3>

                                        <?php endif; ?>

                                        <?php do_action('woocommerce_before_checkout_billing_form', $checkout); ?>

                                        <?php foreach ($checkout->checkout_fields['billing'] as $key => $field) : ?>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>

                                        <?php do_action('woocommerce_after_checkout_billing_form', $checkout); ?>

                                        <?php if (!is_user_logged_in() && $checkout->enable_signup) : ?>

                                            <?php if ($checkout->enable_guest_checkout) : ?>

                                                <p class="form-row form-row-wide create-account">
                                                    <input class="input-checkbox" id="createaccount" <?php checked(( true === $checkout->get_value('createaccount') || ( true === apply_filters('woocommerce_create_account_default_checked', false) )), true) ?> type="checkbox" name="createaccount" value="1" /> <label for="createaccount" class="checkbox"><?php _e('Create an account?', 'woocommerce'); ?></label>
                                                </p>

                                            <?php endif; ?>

                                            <?php do_action('woocommerce_before_checkout_registration_form', $checkout); ?>

                                            <?php if (!empty($checkout->checkout_fields['account'])) : ?>

                                                <div class="create-account">

                                                    <p><?php _e('Create an account by entering the information below. If you are a returning customer please login at the top of the page.', 'woocommerce'); ?></p>

                                                    <?php foreach ($checkout->checkout_fields['account'] as $key => $field) : ?>

                                                        <?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>

                                                    <?php endforeach; ?>

                                                    <div class="clear"></div>

                                                </div>

                                            <?php endif; ?>

                                            <?php do_action('woocommerce_after_checkout_registration_form', $checkout); ?>

                                        <?php endif; ?>
                                        <!--                                        <div class="row">
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="firstname">Firstname</label>
                                                                                            <input type="text" class="form-control" id="firstname">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="lastname">Lastname</label>
                                                                                            <input type="text" class="form-control" id="lastname">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                 /.row 
                                                
                                                                                <div class="row">
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="company">Company</label>
                                                                                            <input type="text" class="form-control" id="company">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="street">Street</label>
                                                                                            <input type="text" class="form-control" id="street">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                 /.row 
                                                
                                                                                <div class="row">
                                                                                    <div class="col-sm-6 col-md-3">
                                                                                        <div class="form-group">
                                                                                            <label for="city">Company</label>
                                                                                            <input type="text" class="form-control" id="city">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6 col-md-3">
                                                                                        <div class="form-group">
                                                                                            <label for="zip">ZIP</label>
                                                                                            <input type="text" class="form-control" id="zip">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6 col-md-3">
                                                                                        <div class="form-group">
                                                                                            <label for="state">State</label>
                                                                                            <select class="form-control" id="state"></select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6 col-md-3">
                                                                                        <div class="form-group">
                                                                                            <label for="country">Country</label>
                                                                                            <select class="form-control" id="country"></select>
                                                                                        </div>
                                                                                    </div>
                                                
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="phone">Telephone</label>
                                                                                            <input type="text" class="form-control" id="phone">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-6">
                                                                                        <div class="form-group">
                                                                                            <label for="email">Email</label>
                                                                                            <input type="text" class="form-control" id="email">
                                                                                        </div>
                                                                                    </div>
                                                
                                                                                </div>-->
                                        <!-- /.row -->
                                    </div>
                                    <div class="box-footer">
                                        <div class="pull-left">
                                            <a href="basket.html"><button class="btn btn-default cont" type="button"><i class="fa fa-chevron-left"></i>Back to basket</button></a>
                                        </div>
                                        <div class="pull-right">
                                            <a data-toggle="tab" href="#payment">
                                                <button type="button" class="btn btn-primary">Payment Method<i class="fa fa-chevron-right"></i></button></a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <!--                                <div id="delivery" class="tab-pane fade">
                                                                    <div class="col-sm-6">
                                                                        <div class="box delivery_method">
                                                                            <h4>USPS Next Day</h4>
                                                                            <p>Get it right on next day - fastest option possible.</p>
                                                                            <div class="box-footer text-center">
                                                                                <input type="radio" name="delivery" value="delivery1">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="box delivery_method">
                                                                            <h4>USPS Next Day</h4>
                                                                            <p>Get it right on next day - fastest option possible.</p>
                                                                            <div class="box-footer text-center">
                                                                                <input type="radio" name="delivery" value="delivery1">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="box delivery_method">
                                                                            <h4>USPS Next Day</h4>
                                                                            <p>Get it right on next day - fastest option possible.</p>
                                                                            <div class="box-footer text-center">
                                                                                <input type="radio" name="delivery" value="delivery1">
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="box-footer">
                                                                        <div class="pull-left">
                                                                            <a data-toggle="tab" href="#address">
                                                                                <button class="btn btn-default cont" type="button"><i class="fa fa-chevron-left"></i>Back to adresses</button></a>
                                                                        </div>
                                                                        <div class="pull-right">
                                                                            <a data-toggle="tab" href="#payment">
                                                                                <button type="button" class="btn btn-primary">payment Method<i class="fa fa-chevron-right"></i></button></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                                </div>-->
                                <div id="payment" class="tab-pane fade">
                                    
                                    
                                    <div id="order_review" class="woocommerce-checkout-review-order">
                                        <?php do_action('woocommerce_checkout_order_review'); ?>
                                    </div>
                                    
<!--                                    <div class="col-sm-6">
                                        <div class="box payment-method">

                                            <h4>Paypal</h4>

                                            <p>We like it all.</p>

                                            <div class="box-footer text-center">

                                                <input type="radio" value="payment1" name="payment">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="box payment-method">

                                            <h4>Payment gateway</h4>

                                            <p>VISA and Mastercard only.</p>

                                            <div class="box-footer text-center">

                                                <input type="radio" value="payment2" name="payment">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="box payment-method">

                                            <h4>Cash on delivery</h4>

                                            <p>You pay when you get it.</p>

                                            <div class="box-footer text-center">

                                                <input type="radio" value="payment3" name="payment">
                                            </div>
                                        </div>
                                    </div>-->
                                    <div class="box-footer">
                                        <div class="pull-left">
                                            <a data-toggle="tab" href="#delivery">
                                                <button class="btn btn-default cont" type="button"><i class="fa fa-chevron-left"></i>Back to shipping method</button></a>
                                        </div>
                                        <div class="pull-right">
                                            <a data-toggle="tab" href="#review">
                                                <button type="button" class="btn btn-primary">order review<i class="fa fa-chevron-right"></i></button></a>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div id="review" class="tab-pane fade">
                                    
                                    
                                    
                                    
                                    <table class="shop_table woocommerce-checkout-review-order-table">
	<thead>
		<tr>
			<th class="product-name"><?php _e( 'Product', 'woocommerce' ); ?></th>
			<th class="product-total"><?php _e( 'Total', 'woocommerce' ); ?></th>
		</tr>
	</thead>
	<tbody>
		<?php
			do_action( 'woocommerce_review_order_before_cart_contents' );

			foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
				$_product     = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );

				if ( $_product && $_product->exists() && $cart_item['quantity'] > 0 && apply_filters( 'woocommerce_checkout_cart_item_visible', true, $cart_item, $cart_item_key ) ) {
					?>
					<tr class="<?php echo esc_attr( apply_filters( 'woocommerce_cart_item_class', 'cart_item', $cart_item, $cart_item_key ) ); ?>">
						<td class="product-name">
							<?php echo apply_filters( 'woocommerce_cart_item_name', $_product->get_title(), $cart_item, $cart_item_key ) . '&nbsp;'; ?>
							<?php echo apply_filters( 'woocommerce_checkout_cart_item_quantity', ' <strong class="product-quantity">' . sprintf( '&times; %s', $cart_item['quantity'] ) . '</strong>', $cart_item, $cart_item_key ); ?>
							<?php echo WC()->cart->get_item_data( $cart_item ); ?>
						</td>
						<td class="product-total">
							<?php echo apply_filters( 'woocommerce_cart_item_subtotal', WC()->cart->get_product_subtotal( $_product, $cart_item['quantity'] ), $cart_item, $cart_item_key ); ?>
						</td>
					</tr>
					<?php
				}
			}

			do_action( 'woocommerce_review_order_after_cart_contents' );
		?>
	</tbody>
	<tfoot>

		<tr class="cart-subtotal">
			<th><?php _e( 'Subtotal', 'woocommerce' ); ?></th>
			<td><?php wc_cart_totals_subtotal_html(); ?></td>
		</tr>

		<?php foreach ( WC()->cart->get_coupons() as $code => $coupon ) : ?>
			<tr class="cart-discount coupon-<?php echo esc_attr( sanitize_title( $code ) ); ?>">
				<th><?php wc_cart_totals_coupon_label( $coupon ); ?></th>
				<td><?php wc_cart_totals_coupon_html( $coupon ); ?></td>
			</tr>
		<?php endforeach; ?>

		<?php if ( WC()->cart->needs_shipping() && WC()->cart->show_shipping() ) : ?>

			<?php do_action( 'woocommerce_review_order_before_shipping' ); ?>

			<?php wc_cart_totals_shipping_html(); ?>

			<?php do_action( 'woocommerce_review_order_after_shipping' ); ?>

		<?php endif; ?>

		<?php foreach ( WC()->cart->get_fees() as $fee ) : ?>
			<tr class="fee">
				<th><?php echo esc_html( $fee->name ); ?></th>
				<td><?php wc_cart_totals_fee_html( $fee ); ?></td>
			</tr>
		<?php endforeach; ?>

		<?php if ( wc_tax_enabled() && 'excl' === WC()->cart->tax_display_cart ) : ?>
			<?php if ( 'itemized' === get_option( 'woocommerce_tax_total_display' ) ) : ?>
				<?php foreach ( WC()->cart->get_tax_totals() as $code => $tax ) : ?>
					<tr class="tax-rate tax-rate-<?php echo sanitize_title( $code ); ?>">
						<th><?php echo esc_html( $tax->label ); ?></th>
						<td><?php echo wp_kses_post( $tax->formatted_amount ); ?></td>
					</tr>
				<?php endforeach; ?>
			<?php else : ?>
				<tr class="tax-total">
					<th><?php echo esc_html( WC()->countries->tax_or_vat() ); ?></th>
					<td><?php wc_cart_totals_taxes_total_html(); ?></td>
				</tr>
			<?php endif; ?>
		<?php endif; ?>

		<?php do_action( 'woocommerce_review_order_before_order_total' ); ?>

		<tr class="order-total">
			<th><?php _e( 'Total', 'woocommerce' ); ?></th>
			<td><?php wc_cart_totals_order_total_html(); ?></td>
		</tr>

		<?php do_action( 'woocommerce_review_order_after_order_total' ); ?>

	</tfoot>
</table>

                                    
                                    
                                    
                                    
                                    <?php do_action('woocommerce_checkout_before_order_review'); ?>

                                    <div id="order_review" class="woocommerce-checkout-review-order">
                                        <?php //do_action('woocommerce_checkout_order_review'); ?>
                                    </div>
                                    <!--                                    <div class="table-responsive">
                                                                            <table class="table">
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
                                                                                    <tr>
                                                                                        <td>
                                                                                            <a href="#">
                                                                                                <img class="img-responsive" alt="White Blouse Armani" src="images/img/basket/basketsquare.jpg">
                                                                                            </a>
                                                                                        </td>
                                                                                        <td><a href="#">White Blouse Armani</a>
                                                                                        </td>
                                                                                        <td>
                                                                                            <input type="number" class="form-control" value="2">
                                                                                        </td>
                                                                                        <td>$123.00</td>
                                                                                        <td>$0.00</td>
                                                                                        <td>$246.00</td>
                                                                                        <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>
                                                                                            <a href="#">
                                                                                                <img class="img-responsive" alt="Black Blouse Armani" src="images/img/basket/detailbig1.jpg">
                                                                                            </a>
                                                                                        </td>
                                                                                        <td><a href="#">Black Blouse Armani</a>
                                                                                        </td>
                                                                                        <td>
                                                                                            <input type="number" class="form-control" value="1">
                                                                                        </td>
                                                                                        <td>$200.00</td>
                                                                                        <td>$0.00</td>
                                                                                        <td>$200.00</td>
                                                                                        <td><a href="#"><i class="fa fa-trash-o"></i></a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </tbody>
                                                                                <tfoot>
                                                                                    <tr>
                                                                                        <th colspan="5">Total</th>
                                                                                        <th colspan="2">$446.00</th>
                                                                                    </tr>
                                                                                </tfoot>
                                                                            </table>
                                                                        </div>-->
                                   
                                        <div class="box-footer">
                                            <div class="pull-left paypull">
                                                <a data-toggle="tab" href="#payment">
                                                    <button class="btn btn-default cont process_to_check" type="button"><i class="fa fa-chevron-left"></i>Back to payment method</button></a>
                                            </div>
                                            
                                            <div class="pull-right">
                                                
                                                <?php //echo apply_filters( 'woocommerce_order_button_html', '<input type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '" />' ); ?>
                                                <?php echo apply_filters( 'woocommerce_order_button_html', '<button type="submit" class="btn btn-primary" name="woocommerce_checkout_place_order" id="place_order" value="'. esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '" > Place an order<i class="fa fa-chevron-right"></i> </button>' ); ?>
                                                 
                                                
                                                
<!--                                                <a href="javascript:void();"><button type="button" class="btn btn-primary">Place an order<i class="fa fa-chevron-right"></i></button></a>-->
                                            </div>
                                        </div>
                                   
                                    <div class="clearfix"></div>
                                </div>
                            </div>




                        </form>
                    </div>
                    <!-- /.box -->


                </div>


                <div class="col-md-3">
                    <div class="box" id="order-summary">
                        <div class="box-header">
                            <h3>Order summary</h3>
                        </div>
                        <p>Shipping and additional costs are calculated based on the values you have entered.</p>

                        <h3 id="order_review_heading"><?php _e('Your order', 'woocommerce'); ?></h3>



                        <?php do_action('woocommerce_checkout_before_order_review'); ?>

                        <div id="order_review" class="woocommerce-checkout-review-order">
                            <?php do_action('woocommerce_checkout_order_review'); ?>
                        </div>
                    </div>
                </div>
                <!-- /.col-md-3-->
                <div class="clearfix"></div>




            </div>
        </div>
    </div>







</div>
