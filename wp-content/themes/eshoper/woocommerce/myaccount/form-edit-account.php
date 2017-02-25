<?php
/**
 * Edit account form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-edit-account.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you (the theme developer).
 * will need to copy the new files to your theme to maintain compatibility. We try to do this.
 * as little as possible, but it does happen. When this occurs the version of the template file will.
 * be bumped and the readme will list any important changes.
 *
 * @see 	    http://docs.woothemes.com/document/template-structure/
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     2.5.1
 */
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}
?>

<?php wc_print_notices(); ?>
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
                            <li >
                                <a href="../"><i class="fa fa-user"></i> My account</a>
                            </li>
                            <li>
                                <a href="../../../wishlist/view/"><i class="fa fa-heart"></i> My wishlist</a>
                            </li>
                            <li class="active">
                                <a href="/my-account/edit-account"><i class="fa fa-edit"></i> Edit Accounts </a>
                            </li>
                            <!--                                <li>
                                                                <a href="index.html"><i class="fa fa-sign-out"></i> Logout</a>
                                                            </li>-->
                        </ul>
                    </div>

                </div>
                <!-- /.col-md-3 -->

                <!-- *** CUSTOMER MENU END *** -->
            </div>
            <div id="customer-orders" class="col-md-9">
                <div class="box">

                <form class="edit-account" action="" method="post">

                    <?php do_action('woocommerce_edit_account_form_start'); ?>

                   <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <p class="form-row form-row-first">
                                    <label for="account_first_name"><?php _e('First name', 'woocommerce'); ?> <span class="required">*</span></label>
                                    <input type="text" class="form-control" name="account_first_name" id="account_first_name" value="<?php echo esc_attr($user->first_name); ?>" />
                                </p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <p class="form-row form-row-last">
                                    <label for="account_last_name"><?php _e('Last name', 'woocommerce'); ?> <span class="required">*</span></label>
                                    <input type="text" class="form-control" name="account_last_name" id="account_last_name" value="<?php echo esc_attr($user->last_name); ?>" />
                                </p>
                            </div>
                        </div>
                        <div class="clear"></div>
                   </div>
                                      
                    <div class="form-group">
                        <p class="form-row form-row-wide">
                            <label for="account_email"><?php _e('Email address', 'woocommerce'); ?> <span class="required">*</span></label>
                            <input type="email" class="form-control" name="account_email" id="account_email" value="<?php echo esc_attr($user->user_email); ?>" />
                        </p>
                    </div>

                    <fieldset>
                        <legend><?php _e('Password Change', 'woocommerce'); ?></legend>
                       <div class="row">
                            <div class="col-sm-6">                          
                                <div class="form-group">
                                    <p class="form-row form-row-wide">
                                        <label for="password_current"><?php _e('Current Password (leave blank to leave unchanged)', 'woocommerce'); ?></label>
                                        <input type="password" class="form-control" name="password_current" id="password_current" />
                                    </p>
                                </div>
                            </div>
                             <div class="col-sm-6">  
                                <div class="form-group">
                                    <p class="form-row form-row-wide">
                                        <label for="password_1"><?php _e('New Password (leave blank to leave unchanged)', 'woocommerce'); ?></label>
                                        <input type="password" class="form-control" name="password_1" id="password_1" />
                                    </p>
                                </div>
                             </div>
                       </div>
                                <div class="form-group">
                                    <p class="form-row form-row-wide">
                                        <label for="password_2"><?php _e('Confirm New Password', 'woocommerce'); ?></label>
                                        <input type="password" class="form-control" name="password_2" id="password_2" />
                                    </p>
                                </div>
                                </fieldset>
                                <div class="clear"></div>

                                <?php do_action('woocommerce_edit_account_form'); ?>

                                <p>
                                    <?php wp_nonce_field('save_account_details'); ?>
                                <div class="col-sm-12 text-center">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> <?php esc_attr_e('Save changes', 'woocommerce'); ?></button>
                                    <input type="hidden" name="action" value="save_account_details" />
                                </div>
        <!--		<input type="submit" class="button btn btn-primary btn-sm" name="save_account_details" value="<?php esc_attr_e('Save changes', 'woocommerce'); ?>" />-->

                                </p>
                            
                            <?php do_action('woocommerce_edit_account_form_end'); ?>

                            </form>
                </div>
                        </div>
