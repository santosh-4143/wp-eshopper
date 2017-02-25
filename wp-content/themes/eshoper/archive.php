<?php
/**
 * The template for displaying archive pages
 *
 * Used to display archive-type pages if nothing more specific matches a query.
 * For example, puts together date-based pages if no date.php file exists.
 *
 * If you'd like to further customize these archive views, you may create a
 * new template file for each one. For example, tag.php (Tag archives),
 * category.php (Category archives), author.php (Author archives), etc.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
get_header();
$cat_args = array(
'orderby' => 'name',
 'order' => 'ASC'
);
$categories = get_categories($cat_args);
?>

<section id="primary" class="content-area">
    <main id="main" class="site-main" role="main">

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
                                            <?php
                                        }
                                    }
                                    ?>
                                </ul>
                            </div>

                        </div>
                    </div>    
                    <div class="col-lg-9 col-sm-9">
                        <div class="box">                        
                            <?php
                            the_archive_title('<h1 class="page-title">', '</h1>');
                            the_archive_description('<div class="taxonomy-description">', '</div>');
                            ?>			
                        </div>
                        <?php if (have_posts()) : ?>
                            <?php
                            while (have_posts()) : the_post();
                                $args = array('posts_per_page' => 5, 'offset' => 1);
                                $myposts = get_posts($args);
                                get_template_part('content', get_post_format());
                            endwhile;
                            ?>                          
                        <?php endif ?>
                    </div>


                    <div class="clearfix"></div>
                </div>
            </div>
        </div>  

    </main><!-- .site-main -->
</section><!-- .content-area -->

<?php get_footer(); ?>
