<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Template Name: blog-page
 */
get_header();
$cat_args = array(
'orderby' => 'name',
 'order' => 'ASC'
);
$categories = get_categories($cat_args);
$paged = ( isset($_GET['pg']) && intval($_GET['pg']) > 0 ) ? intval($_GET['pg']) : 1;
query_posts(array('post_type' => 'post', 'paged' => $paged, 'posts_per_page' => 1));
?>
<div class="blog_wrapper">
    <div class="container">
        <div class="blog_wrap">
            <div class="col-lg-3 col-sm-3">
                <div class="panel panel-default sidebar-menu">
                    <div class="panel-heading">
                        <h3 class="panel-title">Blog</h3>
                    </div>
                    <div class="panel-body">
                        <ul class="nav nav-pills nav-stacked">
                            <?php                           
                            if (!empty($categories)) {
                            foreach ($categories as $category) {
                            ?>
                            <li class=""><a href="<?php echo get_category_link($category->term_id); ?>"><?php echo $category->name; ?></a></li>
                            <?php } } ?>
                             </ul>
                    </div>

                </div>
            </div>    
            <div class="col-lg-9 col-sm-9">
                <div class="box">
                    <h1>Blog List</h1>
                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper.</p>
                </div>
                <?php if (have_posts()) : ?>
                <?php
                while (have_posts()) : the_post();
                $args = array('posts_per_page' => 5, 'offset' => 1);
                $myposts = get_posts($args);
                get_template_part('content', get_post_format());
                endwhile;              
                ?>
                <?php if ($wp_query->max_num_pages > 1) : ?>
                <ul class="pager">                    
<!--                    <li class="previous"><a href="#">← Older</a>
                    </li>-->
                    <?php
                    for ($i = 1;
                    $i <= $wp_query->max_num_pages;
                    $i ++) {
                    $link = $i == 1 ? remove_query_arg('pg') : add_query_arg('pg', $i);
                    echo '<li><a href="' . $link . '"' . ( $i == $paged ? ' class="active"' : '' ) . '>' . $i . '</a></li>';
                    }
                    ?>
                    <li class="next"><a href="#">Newer →</a>
<!--                    </li>
                </ul>-->
                <?php endif ?>
<?php endif ?>
            </div>           
             
            <div class="clearfix"></div>
        </div>
    </div>
</div>     

<?php
get_footer();
?>
