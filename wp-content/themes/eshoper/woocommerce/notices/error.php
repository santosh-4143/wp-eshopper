<?php
/**
 * Show error messages
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/notices/error.php.
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

if (!$messages) {
    return;
}
?>
<div class="validaion">
    <div class="container">
        <ul class="woocommerce-error" style="margin: 0px;padding: 0px; list-style: none;">
            <?php foreach ($messages as $message) : ?>
                <li>
                    <div class="alert alert-danger">
                        <?php echo wp_kses_post($message); ?>
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
                    </div>

                </li>	<?php endforeach; ?>
        </ul>
    </div>
</div>