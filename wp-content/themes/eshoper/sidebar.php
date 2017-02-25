<?php
/**
 * The template for the sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage eshopper
 * @since eshopper 1.0
 */
?>

<div class="category_wrapper">
    <div class="container">
        <div class="col-lg-3 col-sm-3 less_lt">
            <div class="category_wrap">
                <div class="category_heading">
                    <h6>Catagory</h6>
                </div>
                <div class="category_box">
                    <div class="heading">
                        <p>Browse</p>
                    </div>
                    <div class="jquery-accordion-menu" id="jquery-accordion-menu">
                        <ul>
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
                                <li>                                                              
                                    <a href="javascript:void(0);" class=""><?php echo $cat->name; ?><span class="submenu-indicator">+</span></a>
                                    <ul class="submenu" style="display: none;">  
                                        <?php
                                        if (is_array($sub_categories) && count($sub_categories) > 0) {
                                            foreach ($sub_categories as $subcat) {
                                                ?>
                                                <li>
                                                    <a href="javascript:void(0);" class="kk"> <?php echo $subcat->name; ?> <span class="submenu-indicator">+</span></a>
                                                    <ul class="submenu" style="display: none;">
                                                        <?php
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
                                                                <li><a href="<?php echo get_term_link($sub_categories_next); ?>"><?php echo $sub_categories_next->name; ?> </a> </li>  
                                                                <?php
                                                            }
                                                        }
                                                        ?>
                                                    </ul>
                                                </li>
                                                <?php
                                            }
                                        }
                                        ?>
                                    </ul>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                    <div class="faq-content">
                        <div class="filter_box">
                            <h3>Filter By <a href="#" class="btn btn-danger pull-right"><i class="fa fa-times-circle"></i> Clear all</a></h3>
                        </div>

                      <!--  <div id="flip1">Discount<span class="caret"></span></div>
                        <div id="panel1" style="display: block;">
                            <ul class="discount">
                                <li><input type="checkbox">upto 10%</li>
                                <li><input type="checkbox">10% - 20%</li>
                                <li><input type="checkbox">20% - 30%</li>
                                <li><input type="checkbox">30% - 40%</li>
                                <li><input type="checkbox">40% - 50%</li>
                                <li><input type="checkbox">50% - 60%</li>
                                <li><input type="checkbox">More than 50%;</li>
                            </ul>           		                               
                        </div>

                        <div id="flip2">Brand<span class="caret"></span></div>
                        <div id="panel2" style="display: block;">
                            <ul class="brand">
                                <input type="search" class="form-control" placeholder="Search Brand">
                                <li><input type="checkbox">Nike</li>
                                <li><input type="checkbox">Jockey</li>
                                <li><input type="checkbox">Adidas</li>
                                <li><input type="checkbox">Puma</li>
                            </ul>     	                              
                        </div>	-->

                        <div id="flip3">Price Range<span class="caret"></span></div>
                        <div id="panel3" style="display: block;">
                            <div class="price-range1">                                
                                <?php echo do_shortcode('[woof sid="auto_shortcode" autohide=0 price_filter=1 taxonomies=product_cat:9]'); ?>
                                <?php //echo do_shortcode('[woof_products per_page=8 columns=3 is_ajax=0 taxonomies=product_cat:9 custom_tpl="themes/eshoper/woo_tpl_1.php"]'); ?>

                                <div id="pricerange-slider"></div>     
                            </div>
                        </div> 

                        <!--<div id="flip4">size<span class="caret"></span></div>
                        <div id="panel4" style="display: block;">
                            <ul class="color">
                                <li><input type="checkbox"> XXL</li>
                                <li><input type="checkbox">XL</li>
                                <li><input type="checkbox">L</li>
                                <li><input type="checkbox">M</li>
                                <li><input type="checkbox">S</li>
                                <li><input type="checkbox">XS</li>
                            </ul>     	                              
                        </div>

                        <div id="flip5">Availability<span class="caret"></span></div>
                        <div id="panel5" style="display: block;">
                            <ul class="brand">
                                <li><input type="checkbox"> Exclude Out of Stock</li>
                            </ul>     	                              
                        </div>  -->      


                    </div>
                    <?php
                    $upload_dir = wp_upload_dir();
                    $upload_url_alt = $upload_dir['baseurl'];
                    global $wpdb;
                    $add = $wpdb->get_results("select * from wp_advertise where id=1", ARRAY_A);
                    ?>
                    <div class="add_box">
                        <img src="<?php echo $upload_url_alt . '/' . $add[0]['ad_image']; ?>" alt="add" class="img-responsive">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>

        <!--            <div class="clearfix"></div>-->
