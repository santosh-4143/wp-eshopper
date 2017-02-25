<?php
/**
 * The template for the sidebar containing the main widget area
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
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
                    <div class="jquery-accordion-menu" id="jquery-accordion-menu">
                        <ul>
                            <li>
                                <div class="heading">
                                    <p>Browse</p>
                                </div>
                                <a href="javascript:void();" class="">Women <span class="submenu-indicator">+</span></a>
                                <ul class="submenu" style="display: block;">
                                    <li><a href="javascript:void();">sarees</a><span class="jquery-accordion-menu-label"> 12 </span></li>
                                    <li> <a href="javascript:void();">hurties </a> </li>
                                    <li>
                                        <a href="javascript:void();" class=""> acceories <span class="submenu-indicator">+</span></a>
                                        <ul class="submenu" style="display: block;">
                                            <li> <a href="javascript:void();">bangles </a> </li>
                                            <li> <a href="javascript:void();"> Watches </a> </li>
                                            <li> <a href="javascript:void();"> Bag </a> </li>
                                            <li> <a href="javascript:void();"> shoes </a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="faq-content">
                        <div class="filter_box">
                            <h3>Filter By <a href="#" class="btn btn-danger pull-right"><i class="fa fa-times-circle"></i> Clear all</a></h3>
                        </div>

                        <div id="flip1">Discount<span class="caret"></span></div>
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
                        </div>	

                        <div id="flip3">Price Range<span class="caret"></span></div>
                        <div id="panel3" style="display: block;">
                            <div class="price-range">
                                <input type="text" id="amount"  />
                                <div id="pricerange-slider"></div>     
                            </div>
                        </div> 

                        <div id="flip4">size<span class="caret"></span></div>
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
                        </div>        


                    </div>
                    <div class="add_box">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/img/add.jpg" alt="add" class="img-responsive">
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
       
        
  

