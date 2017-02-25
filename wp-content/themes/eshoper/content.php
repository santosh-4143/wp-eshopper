<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WordPress
 * @subpackage Twenty_Fifteen
 * @since Twenty Fifteen 1.0
 */
$cat_args = array(
'orderby' => 'name',
 'order' => 'ASC'
);
$categories = get_categories($cat_args);
?>
<?php if (is_single()) { ?>
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

                <?php } ?>                   
                                   
                <div class="post">
                    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>


                        <?php
                        if (is_single()) :
                            the_title('<h2 class="entry-title">', '</h2>');
                        else :
                            the_title(sprintf('<h2 class="entry-title"><a href="%s" rel="bookmark">', esc_url(get_permalink())), '</a></h2>');
                        endif;
                        ?>
                        </header>
                        <!-- .entry-header -->

                        <div class="image">
                            <?php
                            // Post thumbnail.
                            twentyfifteen_post_thumbnail();
                            ?>
                        </div>
                        <p>
                            <?php
                            // Author bio.
                            if (is_single() && get_the_author_meta('description')) :
                                get_template_part('author-bio');
                            endif;
                            ?>

                        <footer class="entry-footer">
                            <?php twentyfifteen_entry_meta(); ?>
                            <?php edit_post_link(__('Edit', 'twentyfifteen'), '<span class="edit-link">', '</span>'); ?>
                        </footer>
                        </p>
                        <!-- .entry-footer -->

                        <div class="entry-content">
                            <p>
                                <?php
                                if (!is_single()) :
                                    /* translators: %s: Name of current post */
                                    $content = get_the_content(sprintf(__('Continue reading %s', 'twentyfifteen'), the_title('<span class="screen-reader-text">', '</span>', false)));

                                    $shorttitle = wp_trim_words($content, $num_words = 40, $more = '… ');
                                    echo '<p>' . $shorttitle . '</p>';
                                else :
                                    the_content(sprintf(__('Continue reading %s', 'twentyfifteen'), the_title('<span class="screen-reader-text">', '</span>', false)));
                                endif;
                                wp_link_pages(array(
                                    'before' => '<div class="page-links"><span class="page-links-title">' . __('Pages:', 'twentyfifteen') . '</span>',
                                    'after' => '</div>',
                                    'link_before' => '<span>',
                                    'link_after' => '</span>',
                                    'pagelink' => '<span class="screen-reader-text">' . __('Page', 'twentyfifteen') . ' </span>%',
                                    'separator' => '<span class="screen-reader-text">, </span>',
                                ));
                                ?>
                            </p>
                        </div><!-- .entry-content -->

                        <?php if (!is_single()) : ?><a href="<?php echo get_permalink(); ?>"><button class="btn btn-primary pull-right" type="button">Continue reading<i class="fa fa-chevron-right"></i></button> </a><?php endif; ?>  


                    </article><!-- #post-## -->

                </div>
                    
                  
