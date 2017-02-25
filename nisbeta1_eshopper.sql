-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 24, 2017 at 12:58 PM
-- Server version: 5.6.32-78.1-log
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nisbeta1_eshopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `woof_query_cache`
--

CREATE TABLE IF NOT EXISTS `woof_query_cache` (
  `mkey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mvalue` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_advertise`
--

CREATE TABLE IF NOT EXISTS `wp_advertise` (
  `id` int(11) NOT NULL,
  `ad_name` varchar(255) NOT NULL,
  `ad_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_advertise`
--

INSERT INTO `wp_advertise` (`id`, `ad_name`, `ad_image`) VALUES
(1, 'Sale', 'add.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `wp_banner`
--

CREATE TABLE IF NOT EXISTS `wp_banner` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_text_above` varchar(255) NOT NULL,
  `image_text_below` varchar(255) NOT NULL,
  `slider_text_above` varchar(255) NOT NULL,
  `slider_text_below` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_banner`
--

INSERT INTO `wp_banner` (`id`, `image`, `image_text_above`, `image_text_below`, `slider_text_above`, `slider_text_below`) VALUES
(6, 'banner3.jpg', 'We Provide Worlds top fashion for less fashionpress.', 'FashionPress the name of the of hi class fashion Web FreePsd.', 'Branded led bulb', 'Maximun 10% off'),
(7, 'banner1.jpg', 'Duis autem vel eum iriure dolor in hendrerit.', 'Claritas est etiam processus dynamicus, qui sequitur .', 'Branded led bulb', 'Maximun 20% off'),
(8, 'banner3.jpg', 'We Provide Worlds top fashion for less fashionpress.', 'FashionPress the name of the of hi class fashion Web FreePsd.', 'Branded led bulb', 'Maximun 10% off'),
(9, 'banner2.jpg', 'Ut wisi enim ad minim veniam, quis nostrud.', 'Mirum est notare quam littera gothica, quam nunc putamus.', 'Branded led bulb', 'Maximun 40% off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_brands`
--

CREATE TABLE IF NOT EXISTS `wp_brands` (
  `id` int(11) NOT NULL,
  `brand_logo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_brands`
--

INSERT INTO `wp_brands` (`id`, `brand_logo`) VALUES
(5, 'b1.png'),
(6, 'b2.png'),
(7, 'b3.png'),
(8, 'b4.png');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'rating', '4'),
(2, 16, 'verified', '0'),
(3, 36, 'rating', '5'),
(4, 36, 'verified', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 15, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-04 05:25:33', '2016-05-04 05:25:33', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 16, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-04 10:16:42', '2016-05-04 10:16:42', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 18, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-04 11:29:37', '2016-05-04 11:29:37', 'Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 56, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-16 12:44:18', '2016-05-16 12:44:18', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 57, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-16 12:45:18', '2016-05-16 12:45:18', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 58, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-16 12:49:24', '2016-05-16 12:49:24', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 59, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-16 12:51:12', '2016-05-16 12:51:12', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 60, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-17 04:56:10', '2016-05-17 04:56:10', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 61, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-17 05:29:56', '2016-05-17 05:29:56', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 62, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-17 05:34:58', '2016-05-17 05:34:58', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 63, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-17 07:36:44', '2016-05-17 07:36:44', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 61, 'admin', 'sumit.nisbusiness@gmail.com', '', '', '2016-05-17 11:01:21', '2016-05-17 11:01:21', 'Order status changed from On Hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 64, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-18 05:08:01', '2016-05-18 05:08:01', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 65, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-18 05:50:21', '2016-05-18 05:50:21', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 49, 'admin', 'sumit.nisbusiness@gmail.com', '', '127.0.0.1', '2016-05-18 05:50:56', '2016-05-18 05:50:56', 'fef', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0', '', 0, 1),
(17, 66, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-18 11:51:49', '2016-05-18 11:51:49', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 67, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-18 12:07:25', '2016-05-18 12:07:25', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(19, 69, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 05:12:18', '2016-05-23 05:12:18', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(20, 70, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 05:45:43', '2016-05-23 05:45:43', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(21, 71, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 10:58:45', '2016-05-23 10:58:45', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 72, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 11:11:55', '2016-05-23 11:11:55', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 73, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 11:26:01', '2016-05-23 11:26:01', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(24, 74, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 11:52:32', '2016-05-23 11:52:32', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 75, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-23 11:57:14', '2016-05-23 11:57:14', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 76, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-27 06:44:39', '2016-05-27 06:44:39', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 78, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-31 05:31:39', '2016-05-31 05:31:39', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 79, 'WooCommerce', 'woocommerce@woocommerce.local', '', '', '2016-05-31 09:05:08', '2016-05-31 09:05:08', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 81, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-01 14:17:01', '2016-06-01 14:17:01', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(30, 82, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-01 17:32:18', '2016-06-01 17:32:18', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(31, 88, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-06 05:49:32', '2016-06-06 05:49:32', 'Awaiting cheque payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(32, 89, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-08 06:08:57', '2016-06-08 06:08:57', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(33, 91, 'admin', 'sumit.nisbusiness@gmail.com', '', '103.51.59.32', '2016-06-15 13:06:44', '2016-06-15 13:06:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui.', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', '', 0, 1),
(34, 98, 'admin', 'sumit.nisbusiness@gmail.com', '', '103.51.59.32', '2016-06-15 13:10:28', '2016-06-15 13:10:28', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui.', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', '', 0, 1),
(35, 107, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-29 13:03:18', '2016-06-29 13:03:18', 'Order cancelled by customer. Order status changed from Pending Payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(36, 23, 'admin', 'sumit.nisbusiness@gmail.com', '', '43.231.51.67', '2016-06-29 13:34:17', '2016-06-29 13:34:17', 'its a perfect product...', 0, '1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0', '', 0, 1),
(37, 108, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2016-06-29 13:38:09', '2016-06-29 13:38:09', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(38, 117, 'WooCommerce', 'woocommerce@eshopper.nisbeta.org', '', '', '2017-02-19 08:59:39', '2017-02-19 08:59:39', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_feature`
--

CREATE TABLE IF NOT EXISTS `wp_feature` (
  `id` int(11) NOT NULL,
  `feature_logo` varchar(255) NOT NULL,
  `feature_text` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_feature`
--

INSERT INTO `wp_feature` (`id`, `feature_logo`, `feature_text`) VALUES
(1, 's1.png', 'Upto 5% Reward on your shipping'),
(2, 's2.png', 'Easy Extended Returned'),
(3, 's3.png', 'Free Shipping on order over 99 $'),
(4, 's4.png', 'Delivery Schedule Spread Cheer Time');

-- --------------------------------------------------------

--
-- Table structure for table `wp_footer`
--

CREATE TABLE IF NOT EXISTS `wp_footer` (
  `id` int(11) NOT NULL,
  `office_address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `contact_info1` varchar(255) NOT NULL,
  `contact_info2` varchar(255) NOT NULL,
  `contact_info3` varchar(255) NOT NULL,
  `about_section` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_footer`
--

INSERT INTO `wp_footer` (`id`, `office_address`, `contact`, `contact_info1`, `contact_info2`, `contact_info3`, `about_section`) VALUES
(1, 'Office # 2205, Prism TowerBusiness Bay, Dubai, UAE', 'Telephone: 04 2767632Email: Contact@Thefashhub.Com', '123 main street anytown CA123 ,usa', '123 main street anytown CA123 ,usa', '123 main street anytown CA123 ,usa', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut .Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut .');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_offer`
--

CREATE TABLE IF NOT EXISTS `wp_offer` (
  `id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL,
  `offer_image` varchar(255) NOT NULL,
  `offer_text1` varchar(255) NOT NULL,
  `offer_text2` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_offer`
--

INSERT INTO `wp_offer` (`id`, `position`, `offer_image`, `offer_text1`, `offer_text2`) VALUES
(1, 'Below Banner(360*480)', 'shipping1.jpg', '30% OFF', 'Ladies Garments'),
(2, 'Below Banner(750*225)', 'shipping2.jpg', '30% OFF', 'Gents Garments'),
(3, 'Below Banner(367*240)', 'shipping3.jpg', '30% OFF', 'Ladies Garments'),
(4, 'Below Banner(367*240)', 'shipping4.jpg', '30% OFF', 'Ladies Garments'),
(5, 'Right Side Of Banner(736*1104)', 'shipping5.jpg', '30% OFF', 'Ladies Garments');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=3202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://eshopper.nisbeta.org/', 'yes'),
(2, 'home', 'http://eshopper.nisbeta.org/', 'yes'),
(3, 'blogname', 'Woocommerce', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sumit.nisbusiness@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:197:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:47:"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$";s:76:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]";s:30:"(([^/]+/)*wishlist)(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:27:"(.?.+?)/products(/(.*))?/?$";s:51:"index.php?pagename=$matches[1]&products=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:14:"admin_menu.php";i:2;s:27:"mail-subscribe-list/sml.php";i:3;s:34:"woocommerce-compare-list/index.php";i:4;s:37:"woocommerce-products-filter/index.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:34:"yith-woocommerce-wishlist/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:73:"/home6/nisbeta1/public_html/eshopper/wp-content/themes/eshoper/header.php";i:2;s:72:"/home6/nisbeta1/public_html/eshopper/wp-content/themes/eshoper/style.css";i:3;s:109:"/home6/nisbeta1/public_html/eshopper/wp-content/plugins/yith-woocommerce-wishlist/templates/wishlist-view.php";i:4;s:118:"/home6/nisbeta1/public_html/eshopper/wp-content/plugins/yith-woocommerce-wishlist/templates/add-to-wishlist-button.php";i:5;s:104:"/home6/nisbeta1/public_html/eshopper/wp-content/plugins/yith-woocommerce-wishlist/templates/wishlist.php";}', 'no'),
(40, 'template', 'eshoper', 'yes'),
(41, 'stylesheet', 'eshoper', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '0', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:8:{i:1487822767;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1487827935;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1487828070;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1487840827;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1487846156;a:2:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1487894400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489060800;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'nonce_key', 'JzGSNB/nB5+7;98/GZ>:z1i;?/(0d?b2#FD!*5{+na@^SJ|SGAt/?*Zz`97wU<Ah', 'yes'),
(107, 'nonce_salt', 'a_Fgf-#V~dDn=ud>7S<[|r%EOIss(?MRgaYWFckEV;]K_yzmF(Et^ 1E$uFY IX7', 'yes'),
(114, 'auth_key', '#WEn0R4FqWa/(Z0E7~-=X*W`]@tV<;D%~ q/{g*U=77b(mF{_e:-R$K;>ZQXIIJ.', 'yes'),
(116, 'auth_salt', '`tp!#jH*k.rSGpHT-KGIIwfPz2%tbFs:1qp<um>aFD[s@N)oGYusq/+J+WhZ0}QY', 'yes'),
(117, 'logged_in_key', 'IQ6_Ogw+:TyOREL3f{-/+82$jAlE<K$m<0;-mdZy@QC0~w!nNomqIW1/4sSz?NS=', 'yes'),
(118, 'logged_in_salt', 'U$q[:eFS@x ~}<(CAbDh`I.z1E*^Poo+{w=@r5tR2*|#}IUwxM[awa4|ZBn&)XSM', 'yes'),
(143, 'recently_activated', 'a:2:{s:57:"customize-woocommerce-shop/customize-woocommerce-shop.php";i:1484044613;s:37:"woocommerce-products-designer/wpd.php";i:1484043933;}', 'yes'),
(151, 'woocommerce_default_country', 'IN:WB', 'yes'),
(152, 'woocommerce_allowed_countries', 'all', 'yes'),
(153, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(154, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(155, 'woocommerce_demo_store', 'no', 'yes'),
(156, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(157, 'woocommerce_currency', 'USD', 'yes'),
(158, 'woocommerce_currency_pos', 'left', 'yes'),
(159, 'woocommerce_price_thousand_sep', ',', 'yes'),
(160, 'woocommerce_price_decimal_sep', '.', 'yes'),
(161, 'woocommerce_price_num_decimals', '2', 'yes'),
(162, 'woocommerce_weight_unit', 'kg', 'yes'),
(163, 'woocommerce_dimension_unit', 'cm', 'yes'),
(164, 'woocommerce_enable_review_rating', 'yes', 'no'),
(165, 'woocommerce_review_rating_required', 'yes', 'no'),
(166, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(167, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(168, 'woocommerce_shop_page_id', '5', 'yes'),
(169, 'woocommerce_shop_page_display', '', 'yes'),
(170, 'woocommerce_category_archive_display', '', 'yes'),
(171, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(172, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(173, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(174, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"260";s:6:"height";s:3:"260";s:4:"crop";i:1;}', 'yes'),
(175, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"400";s:4:"crop";i:1;}', 'yes'),
(176, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:2:"70";s:6:"height";s:3:"100";s:4:"crop";i:1;}', 'yes'),
(177, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(178, 'woocommerce_manage_stock', 'yes', 'yes'),
(179, 'woocommerce_hold_stock_minutes', '60', 'no'),
(180, 'woocommerce_notify_low_stock', 'yes', 'no'),
(181, 'woocommerce_notify_no_stock', 'yes', 'no'),
(182, 'woocommerce_stock_email_recipient', 'sumit.nisbusiness@gmail.com', 'no'),
(183, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(184, 'woocommerce_notify_no_stock_amount', '0', 'no'),
(185, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(186, 'woocommerce_stock_format', '', 'yes'),
(187, 'woocommerce_file_download_method', 'force', 'no'),
(188, 'woocommerce_downloads_require_login', 'no', 'no'),
(189, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(190, 'woocommerce_calc_taxes', 'no', 'yes'),
(191, 'woocommerce_prices_include_tax', 'no', 'yes'),
(192, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(193, 'woocommerce_shipping_tax_class', 'title', 'yes'),
(194, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(195, 'woocommerce_tax_classes', 'Reduced Rate\nZero Rate', 'yes'),
(196, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(197, 'woocommerce_tax_display_cart', 'excl', 'no'),
(198, 'woocommerce_price_display_suffix', '', 'yes'),
(199, 'woocommerce_tax_total_display', 'itemized', 'no'),
(200, 'woocommerce_enable_coupons', 'yes', 'no'),
(201, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(202, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(203, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(204, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_cart_page_id', '6', 'yes'),
(206, 'woocommerce_checkout_page_id', '7', 'yes'),
(207, 'woocommerce_terms_page_id', '', 'no'),
(208, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(209, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(210, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(211, 'woocommerce_calc_shipping', 'yes', 'yes'),
(212, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(213, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(214, 'woocommerce_ship_to_destination', 'billing', 'no'),
(215, 'woocommerce_ship_to_countries', '', 'yes'),
(216, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(217, 'woocommerce_myaccount_page_id', '8', 'yes'),
(218, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(219, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(220, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(221, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(222, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(223, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(225, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(226, 'woocommerce_registration_generate_username', 'yes', 'no'),
(227, 'woocommerce_registration_generate_password', 'no', 'no'),
(228, 'woocommerce_email_from_name', 'Woocommerce', 'no'),
(229, 'woocommerce_email_from_address', 'sumit.nisbusiness@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', 'Woocommerce - Powered by WooCommerce', 'no'),
(232, 'woocommerce_email_base_color', '#557da1', 'no'),
(233, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(234, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(235, 'woocommerce_email_text_color', '#505050', 'no'),
(236, 'woocommerce_api_enabled', 'yes', 'yes'),
(238, 'woocommerce_admin_notices', 'a:3:{i:0;s:6:"update";i:1;s:13:"theme_support";i:2;s:14:"template_files";}', 'yes'),
(241, 'woocommerce_db_version', '2.5.5', 'yes'),
(244, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(245, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(246, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(266, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:27:"sumit.nisbusiness@gmail.com";}', 'yes'),
(267, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(268, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(269, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(270, 'woocommerce_allow_tracking', 'yes', 'yes'),
(271, 'woocommerce_tracker_last_send', '1487494388', 'yes'),
(302, '_transient_product_query-transient-version', '1465560881', 'yes'),
(303, '_transient_product-transient-version', '1465560881', 'yes'),
(320, '_transient_orders-transient-version', '1487494780', 'yes'),
(322, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1462339669;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(323, 'current_theme', 'Twenty Fifteen/eshoper', 'yes'),
(324, 'theme_mods_woo', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1467700473;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(325, 'theme_switched', '', 'yes'),
(336, 'theme_mods_storefront', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1463037998;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:8:"header-1";N;s:8:"footer-1";N;s:8:"footer-2";N;s:8:"footer-3";N;s:8:"footer-4";N;}}}', 'yes'),
(352, 'theme_mods_corporate-plus', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1462360805;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:22:"corporate-plus-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"corporate-plus-home";N;}}}', 'yes'),
(353, 'widget_corporate_plus_about', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_corporate_plus_featured', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_corporate_plus_service', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(356, 'widget_corporate_plus_contact', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'widget_corporate_plus_posts_col', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(358, '_transient_corporate_plus_categories', '1', 'yes'),
(378, '_transient_storefront_categories', '1', 'yes'),
(407, 'theme_mods_ecommerce', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1463054673;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(463, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:27:"sumit.nisbusiness@gmail.com";s:7:"version";s:5:"4.7.2";s:9:"timestamp";i:1485508468;}', 'no'),
(549, 'theme_mods_eshoper', 'a:1:{i:0;b:0;}', 'yes'),
(717, 'yit_recently_activated', 'a:0:{}', 'yes'),
(722, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(723, 'yith_wcwl_enabled', 'yes', 'yes'),
(724, 'yith_wcwl_wishlist_title', 'My wishlist on Woocommerce', 'yes'),
(725, 'yith_wcwl_wishlist_page_id', '77', 'yes'),
(726, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(727, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(728, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(729, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(730, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(731, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(732, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(733, 'yith_wcwl_price_show', 'yes', 'yes'),
(734, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(735, 'yith_wcwl_stock_show', 'yes', 'yes'),
(736, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(737, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(738, 'yith_wcwl_use_button', 'no', 'yes'),
(739, 'yith_wcwl_custom_css', '', 'yes'),
(740, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(741, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(742, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(743, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(744, 'yith_wcwl_share_fb', 'yes', 'yes'),
(745, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(746, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(747, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(748, 'yith_wcwl_share_email', 'yes', 'yes'),
(749, 'yith_wcwl_socials_title', 'My wishlist on Woocommerce', 'yes'),
(750, 'yith_wcwl_socials_text', '', 'yes'),
(751, 'yith_wcwl_socials_image_url', '', 'yes'),
(752, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(753, 'yith-wcwl-page-id', '77', 'yes'),
(754, 'yith_wcwl_version', '2.0.15', 'yes'),
(755, 'yith_wcwl_db_version', '2.0.0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(756, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:100:"http://woocommerce.local/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(759, 'widget_yith-woocompare-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(760, 'yith_woocompare_is_button', 'button', 'yes'),
(761, 'yith_woocompare_button_text', 'Compare', 'yes'),
(762, 'yith_woocompare_compare_button_in_product_page', 'no', 'yes'),
(763, 'yith_woocompare_compare_button_in_products_list', 'yes', 'yes'),
(764, 'yith_woocompare_auto_open', 'yes', 'yes'),
(765, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(766, 'yith_woocompare_fields_attrs', 'a:6:{i:0;s:5:"image";i:1;s:5:"title";i:2;s:5:"price";i:3;s:11:"add-to-cart";i:4;s:11:"description";i:5;s:5:"stock";}', 'yes'),
(767, 'yith_woocompare_price_end', 'yes', 'yes'),
(768, 'yith_woocompare_add_to_cart_end', 'yes', 'yes'),
(769, 'yith_woocompare_image_size', 'a:3:{s:5:"width";s:3:"220";s:6:"height";s:3:"154";s:4:"crop";s:2:"on";}', 'yes'),
(770, 'yith_woocompare_fields', 'a:6:{s:5:"image";b:1;s:5:"title";b:1;s:5:"price";b:1;s:11:"add-to-cart";b:1;s:11:"description";b:1;s:5:"stock";b:1;}', 'yes'),
(811, 'catalog_options', '', 'yes'),
(812, 'image_options', '', 'yes'),
(979, 'account_page_options', '', 'yes'),
(980, 'account_endpoint_options', '', 'yes'),
(981, 'account_registration_options', '', 'yes'),
(1057, 'yith_woocompare_general', '', 'yes'),
(1058, 'yith_woocompare_general_end', '', 'yes'),
(1059, 'yith_woocompare_table', '', 'yes'),
(1060, 'yith_woocompare_table_end', '', 'yes'),
(1077, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1490093544', 'no'),
(1078, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1135, 'product_cat_children', 'a:16:{i:8;a:3:{i:0;i:6;i:1;i:18;i:2;i:42;}i:14;a:4:{i:0;i:7;i:1;i:15;i:2;i:16;i:3;i:17;}i:6;a:4:{i:0;i:9;i:1;i:10;i:2;i:11;i:3;i:12;}i:13;a:3:{i:0;i:14;i:1;i:23;i:2;i:49;}i:18;a:4:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:22;}i:23;a:4:{i:0;i:24;i:1;i:25;i:2;i:47;i:3;i:48;}i:26;a:3:{i:0;i:27;i:1;i:28;i:2;i:29;}i:27;a:4:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;}i:28;a:4:{i:0;i:34;i:1;i:35;i:2;i:36;i:3;i:37;}i:29;a:4:{i:0;i:38;i:1;i:39;i:2;i:40;i:3;i:41;}i:42;a:4:{i:0;i:43;i:1;i:44;i:2;i:45;i:3;i:46;}i:49;a:4:{i:0;i:50;i:1;i:51;i:2;i:52;i:3;i:53;}i:54;a:3:{i:0;i:55;i:1;i:56;i:2;i:57;}i:55;a:4:{i:0;i:58;i:1;i:59;i:2;i:60;i:3;i:61;}i:56;a:4:{i:0;i:62;i:1;i:63;i:2;i:64;i:3;i:65;}i:57;a:5:{i:0;i:66;i:1;i:67;i:2;i:68;i:3;i:69;i:4;i:70;}}', 'yes'),
(1176, 'widget_woof_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1177, 'woof_first_init', '1', 'yes'),
(1178, 'woof_set_automatically', '0', 'yes'),
(1179, 'woof_autosubmit', '1', 'yes'),
(1180, 'woof_show_count', '1', 'yes'),
(1181, 'woof_show_count_dynamic', '0', 'yes'),
(1182, 'woof_hide_dynamic_empty_pos', '', 'yes'),
(1183, 'woof_try_ajax', '0', 'yes'),
(1184, 'woof_checkboxes_slide', '1', 'yes'),
(1185, 'woof_hide_red_top_panel', '0', 'yes'),
(1186, 'woof_filter_btn_txt', '', 'yes'),
(1187, 'woof_reset_btn_txt', '', 'yes'),
(1188, 'woof_settings', 'a:41:{s:11:"items_order";s:0:"";s:8:"by_price";a:6:{s:4:"show";s:1:"1";s:11:"show_button";s:1:"0";s:10:"title_text";s:0:"";s:6:"ranges";s:0:"";s:17:"first_option_text";s:0:"";s:15:"ion_slider_step";s:1:"1";}s:8:"tax_type";a:2:{s:11:"product_cat";s:5:"radio";s:11:"product_tag";s:5:"radio";}s:14:"excluded_terms";a:2:{s:11:"product_cat";s:0:"";s:11:"product_tag";s:0:"";}s:16:"tax_block_height";a:2:{s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:16:"show_title_label";a:2:{s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:18:"show_toggle_button";a:2:{s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:13:"dispay_in_row";a:2:{s:11:"product_cat";s:1:"0";s:11:"product_tag";s:1:"0";}s:16:"custom_tax_label";a:2:{s:11:"product_cat";s:0:"";s:11:"product_tag";s:0:"";}s:11:"icheck_skin";s:4:"none";s:12:"overlay_skin";s:7:"default";s:19:"overlay_skin_bg_img";s:0:"";s:18:"plainoverlay_color";s:0:"";s:25:"default_overlay_skin_word";s:0:"";s:10:"use_chosen";s:1:"1";s:17:"use_beauty_scroll";s:1:"0";s:15:"ion_slider_skin";s:8:"skinNice";s:25:"woof_auto_hide_button_img";s:0:"";s:25:"woof_auto_hide_button_txt";s:0:"";s:26:"woof_auto_subcats_plus_img";s:0:"";s:27:"woof_auto_subcats_minus_img";s:0:"";s:11:"toggle_type";s:4:"text";s:18:"toggle_opened_text";s:0:"";s:18:"toggle_closed_text";s:0:"";s:19:"toggle_opened_image";s:0:"";s:19:"toggle_closed_image";s:0:"";s:16:"custom_front_css";s:0:"";s:15:"custom_css_code";s:0:"";s:18:"js_after_ajax_done";s:0:"";s:12:"init_only_on";s:0:"";s:8:"per_page";s:2:"-1";s:14:"non_latin_mode";s:1:"1";s:12:"storage_type";s:7:"session";s:20:"hide_terms_count_txt";s:1:"0";s:25:"listen_catalog_visibility";s:1:"0";s:23:"disable_swoof_influence";s:1:"0";s:16:"cache_count_data";s:1:"0";s:11:"cache_terms";s:1:"0";s:19:"show_woof_edit_view";s:1:"1";s:22:"custom_extensions_path";s:0:"";s:20:"activated_extensions";s:0:"";}', 'yes'),
(1189, 'woof_notices', 'a:2:{i:0;s:22:"woof_notice_update_213";i:1;s:22:"woof_notice_update_213";}', 'yes'),
(1190, 'woof_general_settings', '', 'yes'),
(1356, 'shipping_options', '', 'yes'),
(1357, 'woocommerce_shipping_method_selection_priority', 'a:5:{s:13:"free_shipping";i:1;s:14:"local_delivery";i:1;s:9:"flat_rate";i:1;s:22:"international_delivery";i:1;s:12:"local_pickup";i:1;}', 'yes'),
(1358, 'woocommerce_shipping_method_order', 'a:5:{s:13:"free_shipping";i:0;s:14:"local_delivery";i:1;s:9:"flat_rate";i:2;s:22:"international_delivery";i:3;s:12:"local_pickup";i:4;}', 'yes'),
(1359, '_transient_shipping-transient-version', '1467201592', 'yes'),
(1361, 'woocommerce_permalinks', 'a:4:{s:13:"category_base";s:0:"";s:8:"tag_base";s:0:"";s:14:"attribute_base";s:0:"";s:12:"product_base";s:0:"";}', 'yes'),
(1496, 'category_children', 'a:0:{}', 'yes'),
(1540, 'general_options', '', 'yes'),
(1541, 'pricing_options', '', 'yes'),
(1745, 'widget_wccm_recent_compare_lists', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1746, 'general-options', '', 'yes'),
(1747, 'wccm_compare_page', '105', 'yes'),
(1748, 'wccm_show_in_catalog', 'yes', 'yes'),
(1749, 'wccm_show_in_single', 'no', 'yes'),
(1750, 'wccm_compare_endpoint', 'products', 'yes'),
(1751, 'wccm_compare_text', 'Compare', 'yes'),
(1752, 'wccm_remove_text', 'Remove compare', 'yes'),
(1771, 'woocommerce_free_shipping_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:13:"Free Shipping";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:8:"requires";s:10:"min_amount";s:10:"min_amount";s:3:"500";}', 'yes'),
(1773, 'woocommerce_local_delivery_settings', 'a:7:{s:7:"enabled";s:2:"no";s:5:"title";s:14:"Local Delivery";s:4:"type";s:5:"fixed";s:3:"fee";s:3:"100";s:5:"codes";s:5:"12345";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";}', 'yes'),
(1775, 'woocommerce_flat_rate_settings', 'a:6:{s:7:"enabled";s:2:"no";s:5:"title";s:9:"Flat Rate";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:0:"";}', 'yes'),
(1777, 'woocommerce_international_delivery_settings', 'a:6:{s:7:"enabled";s:2:"no";s:5:"title";s:9:"Flat Rate";s:12:"availability";s:9:"excluding";s:9:"countries";s:0:"";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:0:"";}', 'yes'),
(1779, 'woocommerce_local_pickup_settings', 'a:5:{s:7:"enabled";s:2:"no";s:5:"title";s:12:"Local Pickup";s:5:"codes";s:0:"";s:12:"availability";s:3:"all";s:9:"countries";s:0:"";}', 'yes'),
(1785, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:3:"p=6";i:1;s:6:"/cart/";i:2;s:3:"p=7";i:3;s:10:"/checkout/";i:4;s:3:"p=8";i:5;s:12:"/my-account/";}', 'yes'),
(1918, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1467700844;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(2789, '_transient_timeout_wc_uf_pid_2132d6a2d15b54ca33981bec8cb245ac', '1485085216', 'no'),
(2790, '_transient_wc_uf_pid_2132d6a2d15b54ca33981bec8cb245ac', 'a:0:{}', 'no'),
(2791, '_transient_timeout_wc_uf_pid_aa0aeb02f17a6fefd1b83b239cc074df', '1485085231', 'no'),
(2792, '_transient_wc_uf_pid_aa0aeb02f17a6fefd1b83b239cc074df', 'a:12:{i:0;i:53;i:1;i:52;i:2;i:49;i:3;i:48;i:4;i:41;i:5;i:40;i:6;i:39;i:7;i:38;i:8;i:23;i:9;i:21;i:10;i:13;i:11;i:11;}', 'no'),
(2900, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1484114822', 'no'),
(2901, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(2902, '_site_transient_timeout_browser_695080768d0b143c9908c55c7b685783', '1484633222', 'yes'),
(2903, '_site_transient_browser_695080768d0b143c9908c55c7b685783', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"44.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(2904, '_transient_timeout_wc_low_stock_count', '1486620422', 'no'),
(2905, '_transient_wc_low_stock_count', '0', 'no'),
(2906, '_transient_timeout_wc_outofstock_count', '1486620422', 'no'),
(2907, '_transient_wc_outofstock_count', '0', 'no'),
(2910, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1484071630', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2911, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Dec 2016 19:27:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.8-alpha-39755";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n	\n\n\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"WordPress 4.7 “Vaughan”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:43:"https://wordpress.org/news/2016/12/vaughan/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 06 Dec 2016 19:27:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4596";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:240:"Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah "Sassy" Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"enclosure";a:3:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:60:"https://wordpress.org/news/files/2016/12/starter-content.mp4";s:6:"length";s:7:"3736020";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:59:"https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4";s:6:"length";s:7:"1127483";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:3:"url";s:58:"https://wordpress.org/news/files/2016/12/video-headers.mp4";s:6:"length";s:7:"1549803";s:4:"type";s:9:"video/mp4";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:44690:"<p>Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah &#8220;Sassy&#8221; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</p>\n<div id="v-AHz0Ca46-1" class="video-player"><video id="v-AHz0Ca46-1-video" width="632" height="354" poster="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg" controls="true" preload="metadata" dir="ltr" lang="en"><source src="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_dvd.mp4" type="video/mp4; codecs=&quot;avc1.64001E, mp4a.40.2&quot;" /><source src="https://videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_fmt1.ogv" type="video/ogg; codecs=&quot;theora, vorbis&quot;" /><div><img alt="Introducing WordPress 4.7" src="https://i1.wp.com/videos.files.wordpress.com/AHz0Ca46/wp4-7-vaughan-r8-mastered_scruberthumbnail_0.jpg?resize=632%2C354&#038;ssl=1" data-recalc-dims="1" /></div><p>Introducing WordPress 4.7</p></video></div>\n<hr />\n<h2 style="text-align:center">Presenting Twenty Seventeen</h2>\n<p>A brand new default theme brings your site to life with immersive featured images and video headers.</p>\n<p><img class="alignnone wp-image-4618 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=632%2C356&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=1024%2C576&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=300%2C169&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?resize=768%2C432&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?w=1600&amp;ssl=1 1600w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Twenty-Seventeen-1.jpg?w=1264&amp;ssl=1 1264w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Twenty Seventeen focuses on business sites and features a customizable front page with multiple sections. Personalize it with widgets, navigation, social menus, a logo, custom colors, and more. Our default theme for 2017 works great in many languages, on any device, and for a wide range of users.</p>\n<hr />\n<h2 style="text-align:center">Your Site, Your Way</h2>\n<p>WordPress 4.7 adds new features to the customizer to help take you through the initial setup of a theme, with non-destructive live previews of all your changes in one uninterrupted workflow.</p>\n<h3>Theme Starter Content</h3>\n<div style="width: 632px;" class="wp-video"><!--[if lt IE 9]><script>document.createElement(''video'');</script><![endif]-->\n<video class="wp-video-shortcode" id="video-4596-1" width="632" height="346" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/starter-content.mp4?_=1" /><a href="https://wordpress.org/news/files/2016/12/starter-content.mp4">https://wordpress.org/news/files/2016/12/starter-content.mp4</a></video></div>\n<p>To help give you a solid base to build from, individual themes can provide starter content that appears when you go to customize your brand new site. This can range from placing a business information widget in the best location to providing a sample menu with social icon links to a static front page complete with beautiful images. Don’t worry &#8211; nothing new will appear on the live site until you’re ready to save and publish your initial theme setup.</p>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Edit Shortcuts</h3>\n<div style="width: 300px;" class="wp-video"><video class="wp-video-shortcode" id="video-4596-2" width="300" height="173" poster="https://wordpress.org/news/files/2016/12/4.7-—-Edit-Shortcuts.jpg" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4?_=2" /><a href="https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4">https://wordpress.org/news/files/2016/12/edit-shortcuts.mp4</a></video></div>\n<p>Visible icons appear to show you which parts of your site can be customized while live previewing. Click on a shortcut and get straight to editing. Paired with starter content, getting started with customizing your site is faster than ever.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Video Headers</h3>\n<div style="width: 300px;" class="wp-video"><video class="wp-video-shortcode" id="video-4596-3" width="300" height="173" poster="https://wordpress.org/news/files/2016/12/4.7-—-Header-Video.jpg" loop="1" autoplay="1" preload="metadata" controls="controls"><source type="video/mp4" src="https://wordpress.org/news/files/2016/12/video-headers.mp4?_=3" /><a href="https://wordpress.org/news/files/2016/12/video-headers.mp4">https://wordpress.org/news/files/2016/12/video-headers.mp4</a></video></div>\n<p>Sometimes a big atmospheric video as a moving header image is just what you need to showcase your wares; go ahead and try it out with Twenty Seventeen. Need some video inspiration? Try searching for sites with video headers available for download and use.</p>\n</div>\n<div style="clear: both"></div>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Smoother Menu Building</h3>\n<p><img class="wp-image-4606 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-Nav.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Many menus for sites contain links to the pages of your site, but what happens when you don’t have any pages yet? Now you can add new pages while building menus instead of leaving the customizer and abandoning your changes. Once you’ve published your customizations, you’ll have new pages ready for you to fill with content.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Custom CSS</h3>\n<p><img class="wp-image-4607 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-CSS.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Sometimes you just need a few visual tweaks to make your site perfect. WordPress 4.7 allows you to add custom CSS and instantly see how your changes affect your site. The live preview allows you to work quickly without page refreshes slowing you down.</p>\n</div>\n<div style="clear: both"></div>\n<hr />\n<div style="float: left;width: 48%;margin: 0">\n<h3>PDF Thumbnail Previews</h3>\n<p><img class="wp-image-4609 size-medium alignright" src="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?resize=300%2C158&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/12/4.7-—-PDF.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Managing your document collection is easier with WordPress 4.7. Uploading PDFs will generate thumbnail images so you can more easily distinguish between all your documents.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Dashboard in your language</h3>\n<p><img class="wp-image-4608 size-medium alignright" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?resize=300%2C158&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?resize=300%2C158&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-Language.jpg?w=760&amp;ssl=1 760w" sizes="(max-width: 300px) 100vw, 300px" data-recalc-dims="1" /></p>\n<p>Just because your site is in one language doesn’t mean that everybody helping manage it prefers that language for their admin. Add more languages to your site and a user language option will show up in your user’s profiles.</p>\n</div>\n<div style="clear: both"></div>\n<hr />\n<h2 style="text-align:center">Introducing REST API Content Endpoints</h2>\n<p>WordPress 4.7 comes with REST API endpoints for posts, comments, terms, users, meta, and settings.</p>\n<p><img class="size-large wp-image-4600 alignnone" src="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=632%2C205&#038;ssl=1" alt="" srcset="https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=1024%2C332&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=300%2C97&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?resize=768%2C249&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/12/4.7-—-API.jpg?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Content endpoints provide machine-readable external access to your WordPress site with a clear, standards-driven interface, paving the way for new and innovative methods of interacting with sites through plugins, themes, apps, and beyond. Ready to get started with development? <a href="https://developer.wordpress.org/rest-api/reference/">Check out the REST API reference.</a></p>\n<hr />\n<h2 style="text-align:center">Even More Developer Happiness <img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f60a.png" alt="😊" class="wp-smiley" style="height: 1em; max-height: 1em;" /></h2>\n<h3><a href="https://make.wordpress.org/core/2016/11/03/post-type-templates-in-4-7/">Post Type Templates</a></h3>\n<p>By opening up the page template functionality to all post types, theme developers have even more flexibility with the WordPress template hierarchy.</p>\n<h3>More Theme API Goodies</h3>\n<p>WordPress 4.7 includes <a href="https://make.wordpress.org/core/2016/09/09/new-functions-hooks-and-behaviour-for-theme-developers-in-wordpress-4-7/">new functions, hooks, and behavior</a> for theme developers.</p>\n<h3><a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/">Custom Bulk Actions</a></h3>\n<p>List tables, now with more than bulk edit and delete.</p>\n<h3><a href="https://make.wordpress.org/core/2016/09/08/wp_hook-next-generation-actions-and-filters/"><code>WP_Hook</code></a></h3>\n<p>The code that lies beneath actions and filters has been overhauled and modernized, fixing bugs along the way.</p>\n<h3>Settings Registration API</h3>\n<p>register_setting() <a href="https://make.wordpress.org/core/2016/10/26/registering-your-settings-in-wordpress-4-7/">has been enhanced</a> to include type, description, and REST API visibility.</p>\n<h3><a href="https://make.wordpress.org/core/2016/10/12/customize-changesets-technical-design-decisions/">Customize Changesets</a></h3>\n<p>Customize changesets make changes in the customizer persistent, like autosave drafts. They also make exciting new features like starter content possible.</p>\n<hr />\n<h2 style="text-align:center">The Squad</h2>\n<p>This release was led by <a href="https://helen.blog">Helen Hou-Sandí</a>, backed up by <a href="https://profiles.wordpress.org/jbpaul17">Jeff Paul</a> and <a href="http://aaron.jorb.in/">Aaron Jorbin</a> as Release Deputies, and with the help of these fine individuals. There are 482 contributors with props in this release—the most ever—with 205 of them contributing for the first time. Pull up some sassy Sarah Vaughan on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/aaroncampbell">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/abrightclearweb">abrightclearweb</a>, <a href="https://profiles.wordpress.org/ibachal">Achal Jain</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/acmethemes">Acme Themes</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adammacias">adammacias</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/ahmadawais">ahmadawais</a>, <a href="https://profiles.wordpress.org/airesvsg">airesvsg</a>, <a href="https://profiles.wordpress.org/ajoah">ajoah</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/akshayvinchurkar">AkshayVinchurkar</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/ironpaperweight">Alex Hon</a>, <a href="https://profiles.wordpress.org/alex27">alex27</a>, <a href="https://profiles.wordpress.org/allancole">allancole</a>, <a href="https://profiles.wordpress.org/arush">Amanda Rush</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andrewp-2">Andreas Panag</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rarst">Andrey "Rarst" Savchenko</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/kelderic">Andy Mercer</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/aniketpant">Aniket Pant</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/ahortin">Anthony Hortin</a>, <a href="https://profiles.wordpress.org/antisilent">antisilent</a>, <a href="https://profiles.wordpress.org/atimmer">Anton Timmermans</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/apokalyptik">apokalyptik</a>, <a href="https://profiles.wordpress.org/artoliukkonen">artoliukkonen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/attitude">attitude</a>, <a href="https://profiles.wordpress.org/backermann">backermann</a>, <a href="https://profiles.wordpress.org/b-07">Bappi</a>, <a href="https://profiles.wordpress.org/bcole808">Ben Cole</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/binarymoon">BinaryMoon</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw">BjornW</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/boblinthorst">boblinthorst</a>, <a href="https://profiles.wordpress.org/boboudreau">boboudreau</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradyvercher">Brady Vercher</a>, <a href="https://profiles.wordpress.org/brainstormforce">Brainstorm Force</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianhogg">Brian Hogg</a>, <a href="https://profiles.wordpress.org/krogsgard">Brian Krogsgard</a>, <a href="https://profiles.wordpress.org/bronsonquick">Bronson Quick</a>, <a href="https://profiles.wordpress.org/sixhours">Caroline Moore</a>, <a href="https://profiles.wordpress.org/caseypatrickdriscoll">Casey Driscoll</a>, <a href="https://profiles.wordpress.org/caspie">Caspie</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/cheeserolls">cheeserolls</a>, <a href="https://profiles.wordpress.org/chesio">chesio</a>, <a href="https://profiles.wordpress.org/ketuchetan">chetansatasiya</a>, <a href="https://profiles.wordpress.org/choongsavvii">choong</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chredd">chredd</a>, <a href="https://profiles.wordpress.org/chrisjean">Chris Jean</a>, <a href="https://profiles.wordpress.org/cmmarslender">Chris Marslender</a>, <a href="https://profiles.wordpress.org/chris_d2d">Chris Smith</a>, <a href="https://profiles.wordpress.org/chrisvanpatten">Chris Van Patten</a>, <a href="https://profiles.wordpress.org/chriswiegman">Chris Wiegman</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/chriseverson">chriseverson</a>, <a href="https://profiles.wordpress.org/cwpnolen">Christian Nolen</a>, <a href="https://profiles.wordpress.org/needle">Christian Wach</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/clarionwpdeveloper">Clarion Technologies</a>, <a href="https://profiles.wordpress.org/claudiosmweb">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiosanches">Claudio Sanches</a>, <a href="https://profiles.wordpress.org/claudiolabarbera">ClaudioLaBarbera</a>, <a href="https://profiles.wordpress.org/codemovementpk">codemovement.pk</a>, <a href="https://profiles.wordpress.org/coderkevin">coderkevin</a>, <a href="https://profiles.wordpress.org/codfish">codfish</a>, <a href="https://profiles.wordpress.org/coreymcollins">coreymcollins</a>, <a href="https://profiles.wordpress.org/curdin">Curdin Krummenacher</a>, <a href="https://profiles.wordpress.org/cgrymala">Curtiss Grymala</a>, <a href="https://profiles.wordpress.org/cdog">Cătălin Dogaru</a>, <a href="https://profiles.wordpress.org/danhgilmore">danhgilmore</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber </a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/danielpietrasik">Daniel Pietrasik</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dllh">Daryl L. L. Houston (dllh)</a>, <a href="https://profiles.wordpress.org/davepullig">Dave Pullig</a>, <a href="https://profiles.wordpress.org/goto10">Dave Romsey (goto10)</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/turtlepod">David Chandra Purnama</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/dglingren">David Lingren</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/davidbhayes">davidbhayes</a>, <a href="https://profiles.wordpress.org/folletto">Davide ''Folletto'' Casali</a>, <a href="https://profiles.wordpress.org/deeptiboddapati">deeptiboddapati</a>, <a href="https://profiles.wordpress.org/delphinus">delphinus</a>, <a href="https://profiles.wordpress.org/deltafactory">deltafactory</a>, <a href="https://profiles.wordpress.org/denis-de-bernardy">Denis de Bernardy</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/pcfreak30">Derrick Hammer</a>, <a href="https://profiles.wordpress.org/derrickkoo">Derrick Koo</a>, <a href="https://profiles.wordpress.org/dimchik">dimchik</a>, <a href="https://profiles.wordpress.org/dineshc">Dinesh Chouhan</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dipeshkakadiya">dipeshkakadiya</a>, <a href="https://profiles.wordpress.org/dmsnell">dmsnell</a>, <a href="https://profiles.wordpress.org/ocean90">Dominik Schilling</a>, <a href="https://profiles.wordpress.org/dotancohen">Dotan Cohen</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/doughamlin">doughamlin</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/duncanjbrown">duncanjbrown</a>, <a href="https://profiles.wordpress.org/dungengronovius">dungengronovius</a>, <a href="https://profiles.wordpress.org/dylanauty">DylanAuty</a>, <a href="https://profiles.wordpress.org/hurtige">Eddie Hurtig</a>, <a href="https://profiles.wordpress.org/oso96_2000">Eduardo Reveles</a>, <a href="https://profiles.wordpress.org/chopinbach">Edwin Cromley</a>, <a href="https://profiles.wordpress.org/electricfeet">ElectricFeet</a>, <a href="https://profiles.wordpress.org/eliorivero">Elio Rivero</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elyobo">elyobo</a>, <a href="https://profiles.wordpress.org/enodekciw">enodekciw</a>, <a href="https://profiles.wordpress.org/enshrined">enshrined</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/pushred">Eric Lanehart</a>, <a href="https://profiles.wordpress.org/eherman24">Evan Herman</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fencer04">Fencer04</a>, <a href="https://profiles.wordpress.org/florianbrinkmann">Florian Brinkmann</a>, <a href="https://profiles.wordpress.org/mista-flo">Florian TIAR</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/fomenkoandrey">fomenkoandrey</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/fjarrett">Frankie Jarrett</a>, <a href="https://profiles.wordpress.org/frankiet">frankiet</a>, <a href="https://profiles.wordpress.org/akeif">Fred</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/fuscata">fuscata</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/garyj">Gary Jones</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/goranseric">Goran &#352;erić</a>, <a href="https://profiles.wordpress.org/grahamarmfield">Graham Armfield</a>, <a href="https://profiles.wordpress.org/grantderepas">Grant Derepas</a>, <a href="https://profiles.wordpress.org/tivnet">Gregory Karpinsky (@tivnet)</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hiddenpearls">hiddenpearls</a>, <a href="https://profiles.wordpress.org/hnle">Hinaloe</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iamjolly">iamjolly</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianedington">ian.edington</a>, <a href="https://profiles.wordpress.org/idealien">idealien</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/imnok">Imnok</a>, <a href="https://profiles.wordpress.org/implenton">implenton</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/krstarica">Ivan</a>, <a href="https://profiles.wordpress.org/ivdimova">ivdimova</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/jakept">Jacob Peattie</a>, <a href="https://profiles.wordpress.org/whyisjake">Jake Spurlock</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/jamesacero">jamesacero</a>, <a href="https://profiles.wordpress.org/japh">Japh</a>, <a href="https://profiles.wordpress.org/jaredcobb">Jared Cobb</a>, <a href="https://profiles.wordpress.org/jayarjo">jayarjo</a>, <a href="https://profiles.wordpress.org/jdolan">jdolan</a>, <a href="https://profiles.wordpress.org/jdoubleu">jdoubleu</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jpry">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/jimt">jimt</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/jmusal">jmusal</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelcj91">Joel James</a>, <a href="https://profiles.wordpress.org/johanmynhardt">johanmynhardt</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/zyphonic">John Dittmar</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpbloch">John P. Bloch</a>, <a href="https://profiles.wordpress.org/johnregan3">John Regan</a>, <a href="https://profiles.wordpress.org/johnpgreen">johnpgreen</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jonathanbardo">Jonathan Bardo</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/daggerhart">Jonathan Daggerhart</a>, <a href="https://profiles.wordpress.org/desrosj">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/jonnyauk">jonnyauk</a>, <a href="https://profiles.wordpress.org/jordesign">jordesign</a>, <a href="https://profiles.wordpress.org/jorritschippers">JorritSchippers</a>, <a href="https://profiles.wordpress.org/joefusco">Joseph Fusco</a>, <a href="https://profiles.wordpress.org/jjeaton">Josh Eaton</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshcummingsdesign">joshcummingsdesign</a>, <a href="https://profiles.wordpress.org/joshkadis">joshkadis</a>, <a href="https://profiles.wordpress.org/joyously">Joy</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jrgould">JRGould</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/nukaga">Junko Nukaga</a>, <a href="https://profiles.wordpress.org/justinbusa">Justin Busa</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/jshreve">Justin Shreve</a>, <a href="https://profiles.wordpress.org/jtsternberg">Justin Sternberg</a>, <a href="https://profiles.wordpress.org/kadamwhite">K.Adam White</a>, <a href="https://profiles.wordpress.org/kacperszurek">kacperszurek</a>, <a href="https://profiles.wordpress.org/trepmal">Kailey (trepmal)</a>, <a href="https://profiles.wordpress.org/kalenjohnson">KalenJohnson</a>, <a href="https://profiles.wordpress.org/codebykat">Kat Hagan</a>, <a href="https://profiles.wordpress.org/kkoppenhaver">Keanan Koppenhaver</a>, <a href="https://profiles.wordpress.org/keesiemeijer">keesiemeijer</a>, <a href="https://profiles.wordpress.org/kellbot">kellbot</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/wraithkenny">Ken Newman</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/kwight">Kirk Wight</a>, <a href="https://profiles.wordpress.org/kitchin">kitchin</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/knutsp">Knut Sparhell</a>, <a href="https://profiles.wordpress.org/koenschipper">koenschipper</a>, <a href="https://profiles.wordpress.org/kokarn">kokarn</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kouratoras">Konstantinos Kouratoras</a>, <a href="https://profiles.wordpress.org/kuchenundkakao">kuchenundkakao</a>, <a href="https://profiles.wordpress.org/kuldipem">kuldipem</a>, <a href="https://profiles.wordpress.org/laurelfulford">Laurel Fulford</a>, <a href="https://profiles.wordpress.org/leewillis77">Lee Willis</a>, <a href="https://profiles.wordpress.org/leobaiano">Leo Baiano</a>, <a href="https://profiles.wordpress.org/littlebigthing">LittleBigThings (Csaba)</a>, <a href="https://profiles.wordpress.org/lucasstark">Lucas Stark</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/lgedeon">Luke Gedeon</a>, <a href="https://profiles.wordpress.org/lukepettway">lukepettway</a>, <a href="https://profiles.wordpress.org/lyubomir_popov">lyubomir_popov</a>, <a href="https://profiles.wordpress.org/mageshp">mageshp</a>, <a href="https://profiles.wordpress.org/mahesh901122">Mahesh Waghmare</a>, <a href="https://profiles.wordpress.org/mangeshp">Mangesh Parte</a>, <a href="https://profiles.wordpress.org/manishsongirkar36">Manish Songirkar</a>, <a href="https://profiles.wordpress.org/mantismamita">mantismamita</a>, <a href="https://profiles.wordpress.org/mbootsman">Marcel Bootsman</a>, <a href="https://profiles.wordpress.org/tyxla">Marin Atanasov</a>, <a href="https://profiles.wordpress.org/mariovalney">Mario Valney</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J.</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mrwweb">Mark Root-Wiley</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/markoheijnen">Marko Heijnen</a>, <a href="https://profiles.wordpress.org/markshep">markshep</a>, <a href="https://profiles.wordpress.org/matrixik">matrixik</a>, <a href="https://profiles.wordpress.org/mjbanks">Matt Banks</a>, <a href="https://profiles.wordpress.org/jaworskimatt">Matt Jaworski</a>, <a href="https://profiles.wordpress.org/mattking5000">Matt King</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/veraxus">Matt van Andel</a>, <a href="https://profiles.wordpress.org/mattwiebe">Matt Wiebe</a>, <a href="https://profiles.wordpress.org/mattheu">Matthew Haines-Young</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/maxcutler">Max Cutler</a>, <a href="https://profiles.wordpress.org/maximeculea">Maxime Culea</a>, <a href="https://profiles.wordpress.org/mayukojpn">Mayo Moriyama</a>, <a href="https://profiles.wordpress.org/mbelchev">mbelchev</a>, <a href="https://profiles.wordpress.org/mckernanin">mckernanin</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mhowell">mhowell</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michalzuber">michalzuber</a>, <a href="https://profiles.wordpress.org/mauteri">Mike Auteri</a>, <a href="https://profiles.wordpress.org/mihai2u">Mike Crantea</a>, <a href="https://profiles.wordpress.org/mdgl">Mike Glendinning</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikelittle">Mike Little</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/mikeviele">Mike Viele</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/modemlooper">modemlooper</a>, <a href="https://profiles.wordpress.org/batmoo">Mohammad Jangda</a>, <a href="https://profiles.wordpress.org/deremohan">Mohan Dere</a>, <a href="https://profiles.wordpress.org/monikarao">monikarao</a>, <a href="https://profiles.wordpress.org/morettigeorgiev">morettigeorgiev</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mor10">Morten Rand-Hendriksen</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/mrbobbybryant">mrbobbybryant</a>, <a href="https://profiles.wordpress.org/nnaimov">Naim Naimov</a>, <a href="https://profiles.wordpress.org/natewr">NateWr</a>, <a href="https://profiles.wordpress.org/nathanrice">nathanrice</a>, <a href="https://profiles.wordpress.org/nazgul">Nazgul</a>, <a href="https://profiles.wordpress.org/greatislander">Ned Zimmerman</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey </a>, <a href="https://profiles.wordpress.org/nikeo">Nicolas GUILLAUME</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/nikv">Nikhil Vimal</a>, <a href="https://profiles.wordpress.org/nbachiyski">Nikolay Bachiyski</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/noplanman">noplanman</a>, <a href="https://profiles.wordpress.org/nullvariable">nullvariable</a>, <a href="https://profiles.wordpress.org/odie2">odie2</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/hideokamoto">Okamoto Hidetaka</a>, <a href="https://profiles.wordpress.org/orvils">orvils</a>, <a href="https://profiles.wordpress.org/oskosk">oskosk</a>, <a href="https://profiles.wordpress.org/ottok">Otto Kek&#228;l&#228;inen</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/patilvikasj">patilvikasj</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/sirbrillig">Payton Swick</a>, <a href="https://profiles.wordpress.org/pdufour">pdufour</a>, <a href="https://profiles.wordpress.org/piewp">Perdaan</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/phh">phh</a>, <a href="https://profiles.wordpress.org/php">php</a>, <a href="https://profiles.wordpress.org/delawski">Piotr Delawski</a>, <a href="https://profiles.wordpress.org/pippinsplugins">pippinsplugins</a>, <a href="https://profiles.wordpress.org/pjgalbraith">pjgalbraith</a>, <a href="https://profiles.wordpress.org/pkevan">pkevan</a>, <a href="https://profiles.wordpress.org/pratikchaskar">Pratik</a>, <a href="https://profiles.wordpress.org/pressionate">Pressionate</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/procodewp">procodewp</a>, <a href="https://profiles.wordpress.org/quasel">quasel</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/superpoincare">Ramanan</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/ramiabraham">ramiabraham</a>, <a href="https://profiles.wordpress.org/ranh">ranh</a>, <a href="https://profiles.wordpress.org/redsand">Red Sand Media Group</a>, <a href="https://profiles.wordpress.org/youknowriad">Riad Benguella</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld</a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/rnoakes3rd">Robert Noakes</a>, <a href="https://profiles.wordpress.org/d4z_c0nf">Rocco Aliberti</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/rommelxcastro">Rommel Castro</a>, <a href="https://profiles.wordpress.org/fronaldaraujo">Ronald Ara&#250;jo</a>, <a href="https://profiles.wordpress.org/magicroundabout">Ross Wintle</a>, <a href="https://profiles.wordpress.org/guavaworks">Roy Sivan</a>, <a href="https://profiles.wordpress.org/ryankienstra">Ryan Kienstra</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/ryanplas">Ryan Plas</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/salcode">Sal Ferrarello</a>, <a href="https://profiles.wordpress.org/samikeijonen">Sami Keijonen</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/samuelsidler">Samuel Sidler</a>, <a href="https://profiles.wordpress.org/sandesh055">Sandesh</a>, <a href="https://profiles.wordpress.org/smyoon315">Sang-Min Yoon</a>, <a href="https://profiles.wordpress.org/pollyplummer">Sarah Gooding</a>, <a href="https://profiles.wordpress.org/sayedwp">Sayed Taqui</a>, <a href="https://profiles.wordpress.org/schlessera">schlessera</a>, <a href="https://profiles.wordpress.org/schrapel">schrapel</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/scrappyhuborg">scrappy@hub.org</a>, <a href="https://profiles.wordpress.org/scribu">scribu</a>, <a href="https://profiles.wordpress.org/seancjones">seancjones</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/sgr33n">Sergio De Falco</a>, <a href="https://profiles.wordpress.org/shayanys">shayanys</a>, <a href="https://profiles.wordpress.org/shprink">shprink</a>, <a href="https://profiles.wordpress.org/simonlampen">simonlampen</a>, <a href="https://profiles.wordpress.org/skippy">skippy</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/snacking">snacking</a>, <a href="https://profiles.wordpress.org/soean">Soeren Wrede</a>, <a href="https://profiles.wordpress.org/solal">solal</a>, <a href="https://profiles.wordpress.org/sstoqnov">Stanimir Stoyanov</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/sharkomatic">Steph</a>, <a href="https://profiles.wordpress.org/sswells">Steph Wells</a>, <a href="https://profiles.wordpress.org/sillybean">Stephanie Leary</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stevenlinx">stevenlinx</a>, <a href="https://profiles.wordpress.org/stubgo">stubgo</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/swapnild">swapnild</a>, <a href="https://profiles.wordpress.org/takahashi_fumiki">Takahashi Fumiki</a>, <a href="https://profiles.wordpress.org/miyauchi">Takayuki Miyauchi</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tapsboy">tapsboy</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/team">team</a>, <a href="https://profiles.wordpress.org/tg29359">tg29359</a>, <a href="https://profiles.wordpress.org/tharsheblows">tharsheblows</a>, <a href="https://profiles.wordpress.org/the">the</a>, <a href="https://profiles.wordpress.org/themeshaper">themeshaper</a>, <a href="https://profiles.wordpress.org/thenbrent">thenbrent</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/tierra">tierra</a>, <a href="https://profiles.wordpress.org/tnash">Tim Nash</a>, <a href="https://profiles.wordpress.org/timmydcrawford">Timmy Crawford</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tkama">Tkama</a>, <a href="https://profiles.wordpress.org/tnegri">tnegri</a>, <a href="https://profiles.wordpress.org/tomauger">Tom Auger</a>, <a href="https://profiles.wordpress.org/tjnowell">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tomdxw">tomdxw</a>, <a href="https://profiles.wordpress.org/toro_unit">Toro_Unit (Hiroshi Urabe)</a>, <a href="https://profiles.wordpress.org/zodiac1978">Torsten Landsiedel</a>, <a href="https://profiles.wordpress.org/transl8or">transl8or</a>, <a href="https://profiles.wordpress.org/traversal">traversal</a>, <a href="https://profiles.wordpress.org/wpsmith">Travis Smith</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/trishasalas">Trisha Salas</a>, <a href="https://profiles.wordpress.org/tristangemus">tristangemus</a>, <a href="https://profiles.wordpress.org/truongwp">Truong Giang</a>, <a href="https://profiles.wordpress.org/tsl143">tsl143</a>, <a href="https://profiles.wordpress.org/tywayne">Ty Carlson</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/utkarshpatel">Utkarsh</a>, <a href="https://profiles.wordpress.org/valeriutihai">Valeriu Tihai</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/voldemortensen">voldemortensen</a>, <a href="https://profiles.wordpress.org/vrundakansara-1">Vrunda Kansara</a>, <a href="https://profiles.wordpress.org/webbgaraget">webbgaraget</a>, <a href="https://profiles.wordpress.org/webmandesign">WebMan Design &#124; Oliver Juhas</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/earnjam">William Earnhardt</a>, <a href="https://profiles.wordpress.org/williampatton">williampatton</a>, <a href="https://profiles.wordpress.org/wolly">Wolly aka Paolo Valenti</a>, <a href="https://profiles.wordpress.org/yale01">yale01</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/yogasukma">Yoga Sukma</a>, <a href="https://profiles.wordpress.org/oxymoron">Zach Wills</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, <a href="https://profiles.wordpress.org/vanillalounge">Ze Fontainhas</a>, <a href="https://profiles.wordpress.org/zhildzik">zhildzik</a>, and <a href="https://profiles.wordpress.org/zsusag">zsusag</a>.\n<p>&nbsp;<br />\nSpecial thanks go to <a href="https://ramiabraham.com/">Rami Abraham</a> for producing the release video and the many fine haiku we saw in the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">beta</a> and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-release-candidate/">RC</a> announcement posts.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.7. Their efforts bring WordPress 4.7 fully translated to 52 languages at release time with more on the way. Additionally, the WordPress 4.7 release video has been captioned into 44 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress &#8211; we hope you enjoy!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4596";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Moving Toward SSL";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/news/2016/12/moving-toward-ssl/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Dec 2016 17:20:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4588";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:327:"We’re at a turning point: 2017 is going to be the year that we’re going to see features in WordPress which require hosts to have HTTPS available. Just as JavaScript is a near necessity for smoother user experiences and more modern PHP versions are critical for performance, SSL just makes sense as the next hurdle [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1627:"<p>We’re at a turning point: 2017 is going to be the year that we’re going to see features in WordPress which require hosts to have HTTPS available. Just as JavaScript is a near necessity for smoother user experiences and more modern PHP versions are critical for performance, SSL just makes sense as the next hurdle our users are going to face.</p>\n<p>SSL basically means the link between your browser and the server is encrypted. SSL used to be difficult to implement, and often expensive or slow. Modern browsers, and the incredible success of projects like <a href="https://letsencrypt.org/">Let&#8217;s Encrypt</a> have made getting a certificate to secure your site fast, free, and something we think every host should support by default, especially in a post-Snowden era. Google also weighs <a href="https://security.googleblog.com/2014/08/https-as-ranking-signal_6.html">SSL as a search engine ranking factor</a> and will begin <a href="http://motherboard.vice.com/read/google-will-soon-shame-all-websites-that-are-unencrypted-chrome-https">flagging unencrypted sites in Chrome</a>.</p>\n<p>First, early in 2017, we will only promote hosting partners that provide a SSL certificate by default in their accounts. Later we will begin to assess which features, such as API authentication, would benefit the most from SSL and make them only enabled when SSL is there.</p>\n<p>Separately, I also think the performance improvements in PHP7 are particularly impressive, and major kudos to everyone who worked on that. We will consider whether hosts use PHP7 by default for new accounts next year as well.</p>\n<p>&nbsp;</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4588";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.7 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2016/11/wordpress-4-7-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 24 Nov 2016 04:26:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4579";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:328:"The release candidate for WordPress 4.7 is now available. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.7 on Tuesday, December 6, but we need your help to get there. If you haven’t tested 4.7 yet, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4331:"<p>The release candidate for WordPress 4.7 is now available.</p>\n<p>RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.7 on <strong>Tuesday, December 6</strong>, but we need <em>your</em> help to get there. If you haven’t tested 4.7 yet, now is the time! To test WordPress 4.7, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.7-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>WordPress 4.7 is a jam-packed release, with a number of features focused on getting a theme set up for the first time. Highlights include a <a href="http://2017.wordpress.net/">new default theme</a>, video headers, custom CSS, customizer edit shortcuts, PDF thumbnail previews, user admin languages, REST API content endpoints, post type templates, and more.</p>\n<p>We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39353&amp;stop_rev=39263&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">quite a few refinements</a> since releasing Beta 4 a week ago, including usability and accessibility enhancements for video headers, media and page template support in starter content, and polishing of how custom CSS can be migrated to and extended by plugins and themes. The REST API endpoints saw a number of bugfixes and notably now have anonymous comment off by default.</p>\n<p>Not sure where to start with testing? Try setting up a fresh site on a new installation with Twenty Seventeen (hint: head into customizing your site before touching any pages or widgets) and taking notes on what you enjoyed and what got you stuck. For more details about what&#8217;s new in version 4.7, check out the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Think you’ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you’ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.7 and update your plugin’s <em>Tested up to</em> version in the readme to 4.7. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we work hard to avoid breaking things. An in-depth field guide to developer-focused changes is coming soon on the <a href="https://make.wordpress.org/core/">core development blog</a>.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a> And if you haven&#8217;t yet done so, now is a great time to <a href="https://wordpressdotorg.polldaddy.com/s/wordpress-2016-survey">take the Annual WordPress Survey</a> and send it on to your friends.</p>\n<p>Happy testing! And now for another <a href="https://profiles.wordpress.org/ramiabraham">Rami Abraham</a> haiku break.</p>\n<p><em>Select your language</em><br />\n<em>Then let your users choose theirs</em><br />\n<em><code>get_user_locale()</code></em></p>\n<p><em>Theme authors rejoice</em><br />\n<em>Any option may employ</em><br />\n<em>Selective refresh</em></p>\n<p><em>Custom header video</em><br />\n<em>Make sure to <code>add_theme_support</code></em><br />\n<em>Bling above the fold</em></p>\n<p><em>A new template dawns</em><br />\n<em>A hierarchy member</em><br />\n<em>Post-type templates live</em></p>\n<p><em>PDF updates</em><br />\n<em>Pack a parade of polish</em><br />\n<em>Prettier previews</em></p>\n<p><em>Template Post Type: New</em><br />\n<em>Template Post Type: And Useful</em><br />\n<em>Template Post Type: Thing</em></p>\n<p><em>Let lists live lively</em><br />\n<em>Laud <code>wp_list_sort()</code></em><br />\n<em>Less laconic lists</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4579";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/11/wordpress-4-7-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 16 Nov 2016 01:51:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4576";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2019:"<p>WordPress 4.7 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.7, check out the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">Beta 1,</a> <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/">Beta 3</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-7+dev-notes/">in-depth developer guides on make/core</a>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39262&amp;stop_rev=39201&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">about 60 changes</a> in the last few days for beta 4, including tweaks to Twenty Seventeen, custom CSS, and the REST API content endpoints.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>We are almost there<br />\nPlease test your plugins and themes<br />\nRC coming soon<br />\n</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4576";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordCamp US 2017-2018 in Nashville";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"https://wordpress.org/news/2016/11/wordcamp-us-2017-2018-in-nashville/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 15 Nov 2016 23:24:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4571";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:330:"The title says it all. We had some great applications for cities to host WordCamp US after we finish up in Philadelphia this year, and the city chosen for 2017-2018 is Nashville, Tennessee. Based on the other great applications we got I&#8217;m also excited about the pipeline of communities that could host it in future [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1022:"<p><img class="aligncenter" src="https://i0.wp.com/wpdotorg.files.wordpress.com/2008/07/27492741871_c6fcebcad3_k-e1479248587522.jpg?resize=632%2C253&#038;ssl=1" data-recalc-dims="1" /></p>\n<p>The title says it all. We had some great applications for cities to host <a href="http://us.wordcamp.org/">WordCamp US</a> after we finish up in Philadelphia this year, and the city chosen for 2017-2018 is <strong>Nashville, Tennessee</strong>.</p>\n<p>Based on the other great applications we got I&#8217;m also excited about the pipeline of communities that could host it in future years as WordCamp US travels across the United States and gives us an opportunity to learn and love a new city, as we have with Philadelphia.</p>\n<p>By the way, if you haven&#8217;t yet, now is a great time to <a href="https://wordpressdotorg.polldaddy.com/s/wordpress-2016-survey">take the Annual WordPress Survey</a> and ask your friends to as well.</p>\n<p><a href="https://www.flickr.com/photos/143951935@N07/27492741871">Photo Credit</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4571";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Nov 2016 03:30:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4566";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3120:"<p>WordPress 4.7 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.7, check out the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-7+dev-notes/">in-depth field guides on make/core</a>. Some of the changes in Beta 3 include:</p>\n<ul>\n<li><strong>REST API:</strong> The <code>unfiltered_html</code> capability is now respected and <code>rest_base</code> has been added to response objects of <code>wp/v2/taxonomies</code> and <code>wp/v2/types</code>, while <code>get_allowed_query_vars()</code> and the <code>rest_get_post</code> filter have been removed.</li>\n<li><strong>Roles/Capabilities:</strong> Added meta-caps for comment, term, and user meta, which are currently only used in the REST API.</li>\n<li><strong>I18N:</strong> Added the ability to change user&#8217;s locale back to site&#8217;s locale. (<a href="https://core.trac.wordpress.org/ticket/38632">#38632</a>)</li>\n<li><strong>Custom CSS:</strong> Renamed the <code>unfiltered_css</code> meta capability to <code>edit_css</code> and added revisions support to the <code>custom_css</code> post type.</li>\n<li><strong>Edit shortcuts:</strong> Theme authors should take a look at <a href="https://make.wordpress.org/core/2016/11/10/visible-edit-shortcuts-in-the-customizer-preview/">the developer guide to the customizer preview&#8217;s visible edit shortcuts</a> and update their themes to take advantage of them if not already implementing selective refresh.</li>\n<li><strong>Various bug fixes:</strong> We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39200&amp;stop_rev=39143&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">over 50 changes</a> in the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>Building the future</em><br />\n<em>A global community</em><br />\n<em>Stronger together</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4566";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 04 Nov 2016 17:39:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4552";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4240:"<p>WordPress 4.7 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta2.zip">download the beta here</a> (zip).</p>\n<p>Notable changes since WordPress 4.7 Beta 1:</p>\n<ul>\n<li><strong>Twenty Seventeen:</strong> The theme wasn&#8217;t being installed on upgrades &#8211; sorry about that! Now you should see it if you&#8217;re upgrading an existing site. There are also plenty of fixes, especially for the header and small screen views.</li>\n<li><strong>Edit shortcuts:</strong> These are always visible while editing (hide them on bigger screens by collapsing the controls) and should now work properly in Firefox. (<a href="https://core.trac.wordpress.org/ticket/27403">#27403</a> and <a href="https://core.trac.wordpress.org/ticket/38532">#38532</a>)</li>\n<li><strong>REST API endpoints:</strong> There have been a number of changes over the past week; your attention is requested on the following:\n<ul>\n<li>The <code>DELETE</code> response format has changed and may need to be accounted for. (<a href="https://core.trac.wordpress.org/ticket/38494">#38494</a>)</li>\n<li>Enabled querying by multiple post statuses. (<a href="https://core.trac.wordpress.org/ticket/38420">#38420</a>)</li>\n<li>Return an error when JSON decoding fails. (<a href="https://core.trac.wordpress.org/ticket/38547">#38547</a>)</li>\n</ul>\n</li>\n<li><strong>More developer notes</strong>\n<ul>\n<li><a href="https://make.wordpress.org/core/2016/10/28/fine-grained-capabilities-for-taxonomy-terms-in-4-7/">Fine grained capabilities for taxonomy terms</a></li>\n<li><a href="https://make.wordpress.org/core/2016/10/29/wp_taxonomy-in-4-7/"><code>WP_Taxonomy</code></a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/02/wp_list_sort-and-wp_list_util-in-4-7/"><code>wp_list_sort()</code> and <code>WP_List_Util</code></a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/post-type-templates-in-4-7/">Post type templates</a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/new-post-type-labels-in-4-7/">New post type labels</a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/attributes-for-resource-hints-in-4-7/">Attributes for resource hints</a></li>\n</ul>\n</li>\n<li><strong>Various bug fixes:</strong> We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39142&amp;stop_rev=38995&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">almost 150 changes</a> in the last week.</li>\n</ul>\n<p>For more of what’s new in version 4.7, <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">check out the Beta 1 blog post</a>.</p>\n<p>If you want a more in-depth view of what major changes have made it into 4.7, <a href="https://make.wordpress.org/core/tag/4-7/">check out posts tagged with 4.7 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.7&amp;group=component&amp;order=priority">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>Happy testing!</p>\n<p><em>Ya es la hora</em><br />\n<em> Time for another beta</em><br />\n请您帮下忙!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4552";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 28 Oct 2016 04:30:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4535";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6895:"<p>WordPress 4.7 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta1.zip">download the beta here</a> (zip).</p>\n<p>WordPress 4.7 is slated for release on <a href="https://make.wordpress.org/core/4-7/">December 6</a>, but we need your help to get there. We&#8217;ve been working on a lot of things, many of them to make getting your site set up the way you want it much easier. Here are some of the bigger items to test and help us find as many bugs as possible in the coming weeks:</p>\n<ul>\n<li><a href="http://2017.wordpress.net/"><strong>Twenty Seventeen</strong></a> &#8211; A brand new default theme brings your site to life with immersive featured images, video headers, and subtle animations. With a focus on business sites, it features multiple sections on the front page as well as widgets, navigation and social menus, a logo, and more. Personalize its asymmetrical grid with a custom color scheme and showcase your multimedia content with post formats. Our default theme for 2017 works great in many languages, for any abilities, and on any device.</li>\n<li><strong>Video Headers</strong> &#8211; Sometimes a big atmospheric video as a moving header image is just what you need to showcase your wares; go ahead and try it out with Twenty Seventeen. Need some video inspiration? Try searching for sites with video headers available for download and use.</li>\n<li><strong>Set up your site in one flow</strong> &#8211; From finding and installing themes right inside the customizer, to automatically staged theme-specific starter content, to clickable shortcuts that jump directly to editing an item from the preview pane, to adding pages while you&#8217;re building a nav menu or setting a static front page: getting a new site spun up and ready to share with a friend or a coworker is faster and easier than it&#8217;s ever been. Note: starter content appears when live previewing brand new sites and is currently only available in Twenty Seventeen. We&#8217;ll be expanding this to other bundled themes very soon, and perhaps to sites with existing content in future releases of WordPress.</li>\n<li><strong>Custom CSS with live previews</strong> &#8211; Ever needed to hide or tweak the look of something in your theme or from a plugin? Now you can do it with CSS and live preview the results while customizing your site. CSS can be a powerful tool; you may find that you won&#8217;t need the theme editor or child themes anymore.</li>\n<li><strong>User admin languages</strong> &#8211; Just because your site is in one language doesn&#8217;t mean that everybody helping manage it prefers that language for their admin. To try this out, you&#8217;ll need to have more than one language installed, which will make a user language option available in your profile.</li>\n<li><strong>PDF thumbnail previews</strong> &#8211; Uploading PDFs will now generate thumbnail images so you can more easily distinguish between all your documents.</li>\n</ul>\n<p>As always, there have been exciting changes for developers to explore as well, such as:</p>\n<ul>\n<li><strong>REST API content endpoints</strong> &#8211; If you only test one thing as a developer, please test these. This phase is particularly helpful for people building plugins, themes, and in-admin interfaces. Can you build the things you need? Are these ready for release, and is the world ready for them? (<a href="https://core.trac.wordpress.org/ticket/38373">#38373</a>)</li>\n<li><strong><code>WP_Hook</code></strong> &#8211; The code that lies beneath actions and filters has been overhauled. You likely aren&#8217;t affected, but if you&#8217;ve done things to the <code>$wp_filter</code> global or experienced funky recursion bugs in the past, <a href="https://make.wordpress.org/core/2016/09/08/wp_hook-next-generation-actions-and-filters/">please take a moment to read the dev note</a> and test your code.</li>\n<li><a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/"><strong>Custom bulk actions</strong></a> &#8211; List tables, now with more than bulk edit and delete.</li>\n<li>Expanded <a href="https://make.wordpress.org/core/2016/10/26/registering-your-settings-in-wordpress-4-7/"><strong>Settings Registration API</strong></a> via <code>register_setting()</code>.</li>\n<li>For theme developers: <strong>Post type templates</strong> (<a href="https://core.trac.wordpress.org/ticket/18375">#18375</a>)</li>\n<li><strong><a href="https://make.wordpress.org/core/2016/09/09/new-functions-hooks-and-behaviour-for-theme-developers-in-wordpress-4-7/">More goodies for theme developers!</a></strong></li>\n<li><strong>Locale switching</strong> (<a href="https://core.trac.wordpress.org/ticket/26511">#26511</a>)</li>\n<li><a href="https://make.wordpress.org/core/2016/10/11/comment-allowed-checks-in-wordpress-4-7/"><strong>Comment allowed checks</strong></a> have the potential for a back-compat break.</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.7, <a href="https://make.wordpress.org/core/tag/4-7/">check out posts tagged with 4.7 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.7&amp;group=component&amp;order=priority">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>Happy testing, and please enjoy this extended haiku break, courtesy of <a href="https://profiles.wordpress.org/ramiabraham">Rami Abraham</a><em>.</em></p>\n<p><em>Exquisite endpoints</em><br />\n<em>Extol epic exabytes</em><br />\n<em>Enabling earthlings</em></p>\n<p><em>Careful interfaces</em><br />\n<em>Considerately conjured</em><br />\n<em>Customizer chic</em></p>\n<p><em>Ring in the new year</em><br />\n<em>With elegance and balance</em><br />\n<em>Twenty Seventeen</em></p>\n<p><em>Hooks hook healthily</em><br />\n<em>17817</em><br />\n<em>Sane iterations</em></p>\n<p><em>Admin in your tongue<br />\nOne site, many languages<br />\nWe all speak WordPress</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Join Us Again for Global WordPress Translation Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wordpress.org/news/2016/10/join-us-again-for-global-wordpress-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 13:33:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:19:"contributor weekend";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:32:"global wordpress translation day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"polyglots";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:12:"translations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4516";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"The WordPress Polyglots team is organizing the second Global WordPress Translation Day on November 12th. Everyone is invited to join – from anywhere in the world! Translating is one of the easiest ways to get involved with WordPress and contribute to the project. Global WordPress Translation Day is your chance to learn more about translating WordPress, meet [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Petya Raykovska";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4273:"<p>The WordPress Polyglots team is organizing the second <a href="https://wptranslationday.org/">Global WordPress Translation Day</a> on November 12th. Everyone is invited to join – from anywhere in the world!</p>\n<p>Translating is one of the easiest ways to get involved with WordPress and contribute to the project. Global WordPress Translation Day is your chance to learn more about translating WordPress, meet people from all over the world, and <a href="https://make.wordpress.org/polyglots/teams">translate WordPress into one of more than 160 languages</a>.</p>\n<h3>Join us on November 12th from anywhere in the world</h3>\n<p>The translation day starts on Saturday, November 12th, 2016, at 0:00 UTC and ends 24 hours later. <a href="http://arewemeetingyet.com/UTC/2016-11-12/00:00/Global%20WordPress%20Translation%20Day%202">See what time that is for you!</a> You can join right from the start, or any time it&#8217;s convenient for you throughout the day.</p>\n<h3>What are we doing?</h3>\n<p>Local contributor days are happening all over the world, and are a great way to get involved. <a href="https://www.google.com/maps/d/viewer?mid=12Gni4JMfShyWHPqGNwh5-PMneMM&amp;usp=sharing">Check out this map</a> to see if there&#8217;s already a local event happening near you. Can&#8217;t find one? <a href="https://make.wordpress.org/polyglots/2016/09/22/global-wordpress-translation-day-2-on-november-12th-2016/">Organize a local event!</a></p>\n<p>At the same time, <a href="https://www.crowdcast.io/e/gwtd2/register">join the community for 24 hours of live-streamed, remote sessions</a> in numerous languages. Sessions will cover localization, internationalization, and contributing in your language.</p>\n<h3>Who&#8217;s it for?</h3>\n<p>Whether you&#8217;re new to translating and want to learn how to translate, or an experienced translation editor building a strong team, the translation day is for <i>you</i>. Developers will also enjoy topics from experienced contributors, whether you&#8217;re learning about internationalization and or want to find more translators for your themes and plugins. There&#8217;s a session for everyone!</p>\n<h3>Get Involved</h3>\n<p>Joining is easy! On November 12th, in your own timezone, <a href="https://translate.wordpress.org">translate WordPress</a> or your favorite plugins and themes into your language, while watching live sessions over the course of the day.</p>\n<p>Want to get more involved? <a href="https://make.wordpress.org/polyglots/2016/09/22/global-wordpress-translation-day-2-on-november-12th-2016/">Sign up to organize a local event</a> and invite your local community to translate together on November 12th. Events can be formal or completely informal – grab your laptop and a couple of friends, and head to a local coffee shop to translate for an hour or two.</p>\n<h3>Can you get involved if you only speak English?</h3>\n<p>Absolutely! Even if you only speak English, there are great sessions about internationalization that can benefit every developer. There&#8217;s also lots of English variants that need your help! For example, English is spoken and written differently in Australia, Canada, New Zealand, South Africa, and the United Kingdom. You can learn about these differences and why these variants are important during the sessions.</p>\n<p>And if you’re feeling fun, try translating WordPress into emoji! Yep, we have a translation of WordPress in emoji! <img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30e.png" alt="🌎" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30d.png" alt="🌍" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30f.png" alt="🌏" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<h3>Questions?</h3>\n<p>If you have any questions, the polyglots team and the event organizers hang out in <a href="http://wordpress.slack.com/messages/polyglots/">#polyglots in Slack</a> and are happy to help! (Get an invite to Slack at <a href="https://chat.wordpress.org">chat.wordpress.org</a>.)</p>\n<p>Sign up to take part in the event on the <a href="https://wptranslationday.org/">official website</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4516";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.6.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Sep 2016 15:52:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4507";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:377:"WordPress 4.6.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher Cengiz Han Sahin; and a path traversal vulnerability in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jeremy Felt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2757:"<p>WordPress 4.6.1 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher <a href="https://twitter.com/cengizhansahin">Cengiz Han Sahin</a>; and a path traversal vulnerability in the upgrade package uploader, reported by <a href="https://dominikschilling.de/">Dominik Schilling</a> from the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.6.1 fixes 15 bugs from 4.6. For more information, see the <a href="https://codex.wordpress.org/Version_4.6.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.6.1">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.6.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.6.1.</p>\n<p>Thanks to everyone who contributed to 4.6.1:</p>\n<p><a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4507";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 10 Jan 2017 06:07:10 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Tue, 06 Dec 2016 19:27:41 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20160601094851";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2912, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1484071631', 'no'),
(2913, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1484028431', 'no'),
(2914, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1484071631', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2915, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: How Laravel Forge Can Help You Run WordPress in the Cloud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64940";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/how-laravel-forge-can-help-you-run-wordpress-in-the-cloud";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7837:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2015/05/petersuhm.jpeg?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2015/05/petersuhm.jpeg?resize=150%2C150&ssl=1" alt="petersuhm" class="alignright size-thumbnail wp-image-43613" /></a>This opinion piece was contributed by guest author <a href="https://twitter.com/petersuhm" target="_blank">Peter Suhm</a>. Peter is a web developer from the Land of the Danes. He is the creator of <a href="https://wppusher.com/" target="_blank">WP Pusher</a> and a huge travel addict, bringing his work along with him as he goes.<br />\n&nbsp;</p>\n<hr />\n<p><a href="http://forge.laravel.com/" target="_blank">Laravel Forge</a> is a server and application provisioning tool that was originally built to serve the Laravel PHP crowd. Recently, it has been made available to WordPress developers too, with the introduction of 1-click installs of WordPress on Digital Ocean, Linode and AWS cloud servers. In this post, I&#8217;ll give you a brief introduction to Laravel Forge and show you how you can use it to manage all of your WordPress installations in the cloud.</p>\n<h3>Laravel Forge is good news for WordPress developers</h3>\n<p>Because so many WordPress developers are used to managed hosting, the thought of running their own servers seem quite intimidating. That&#8217;s a shame with so many great cloud server companies offering virtual servers for very low costs. Unless your traffic is very heavy, a small ($5 to $10 per month) server can run quite a few WordPress websites. Laravel Forge takes care of provisioning your servers and can even setup your database and install WordPress for you. This makes cloud hosting much more available to WordPress developers at a low cost (Laravel Forge is $15 per month for unlimited servers), compared to many of the existing options.</p>\n<p>Here are a few reasons why I think Laravel Forge is great for WordPress hosting:</p>\n<ul>\n<li>Your servers are configured in a secure way by default, with SSH authentication, firewalls, automatic security updates and free SSL certificates from Let&#8217;s Encrypt</li>\n<li>Your servers are going to be really fast with PHP 7</li>\n<li>You can run a lot of WordPress installs on 1 single server *</li>\n<li>You can scale your servers if you need more horse power *</li>\n</ul>\n<p><em>* Goes for the cloud in general</em></p>\n<h3>Creating a new server</h3>\n<p>Here is how the &#8220;Create Server&#8221; screen looks in Forge:</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/create-server-e1483980109591.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/create-server-e1483980109591.png?resize=1025%2C416&ssl=1" alt="" class="aligncenter size-full wp-image-64946" /></a></p>\n<p>If you use Digital Ocean, Forge can also create your servers. If you use another provider like Linode or AWS, Forge can only do the provisioning part.</p>\n<p>For Digital Ocean servers, here are the options you can configure:</p>\n<ul>\n<li>Which credentials to use, if you are managing multiple Digital Ocean accounts</li>\n<li>The server name</li>\n<li>The server size</li>\n<li>The server region</li>\n<li>The PHP version</li>\n<li>The default database name</li>\n</ul>\n<p>You can then choose to:</p>\n<ul>\n<li>Configure the server as a load balancer (if you have really heavy traffic and is running WordPress across multiple servers)</li>\n<li>Install <a href="https://mariadb.org/" target="_blank">MariaDB</a> instead of MySQL, which is a drop-in, faster replacement</li>\n<li>Enable weekly backups on Digital Ocean</li>\n</ul>\n<p>When Laravel Forge is done with the provisioning, your server is ready to go.</p>\n<h3>Setting up a database</h3>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/set-up-database-e1483980726266.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/set-up-database-e1483980726266.png?resize=1025%2C484&ssl=1" alt="" class="aligncenter size-full wp-image-64949" /></a></p>\n<p>Once your server has been created, setting up a database for your WordPress installation is very easy. You can create the user at the same time you&#8217;re creating the database, or you can create the user afterwards.</p>\n<h3>Installing WordPress</h3>\n<p>Before you install WordPress, you need to create a new &#8220;site&#8221; on your server. You can just stick with the defaults:</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/new-site-e1483981223250.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/new-site-e1483981223250.png?resize=1025%2C453&ssl=1" alt="" class="aligncenter size-full wp-image-64951" /></a></p>\n<p>For the &#8220;Root Domain&#8221;, you need to add the domain name of the site you are setting up. Remember that you need to add a DNS record for your domain that points to the IP address of your newly created server. If you are just testing, you can always add a record in your computer&#8217;s <code>hosts</code> file with a test domain that points to your server. Something like this:</p>\n<p><code># /etc/hosts</code></p>\n<p><code># Replace xx.xx.xx.xx with your server''s IP address<br />\nxx.xx.xx.xx wordpress-forge.test</code></p>\n<p>Once you click the &#8220;Add Site&#8221; button, you will see a spinning wheel while Forge is setting up your site&#8217;s nginx configuration.</p>\n<p>When the installation is done, you need to click the &#8220;Manage&#8221; icon next to your site in order to install WordPress. The first screen you will be presented with gives you the option to install an &#8220;App&#8221; on your site. Click the &#8220;WordPress&#8221; button, select your database and user from the previous step and relax while Laravel Forge completes the installation. Fun fact: Laravel Forge is actually using WP-CLI to install WordPress on your server.</p>\n<p>When the installation has completed, visit your site in a browser and you&#8217;ll be met with something familiar:</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/wp-install-e1483984375432.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/wp-install-e1483984375432.png?resize=1025%2C625&ssl=1" alt="" class="aligncenter size-full wp-image-64962" /></a></p>\n<h3>Setting up a free SSL certificate</h3>\n<p>Finally, you should set up SSL for your WordPress site. It&#8217;s more secure and Google likes it!</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/ssl-setup.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/ssl-setup.png?resize=1025%2C288&ssl=1" alt="" class="aligncenter size-full wp-image-64963" /></a></p>\n<p>Head over on the &#8220;SSL&#8221; tab and click the &#8220;LetsEncrypt (Beta)&#8221; button. Click the &#8220;Obtain Certificate&#8221; button and wait while Forge creates and installs the certificate. Once the certificate is installed, click the &#8220;Activate&#8221; icon and voila! Your site is now all set up and secured with SSL.</p>\n<p>That&#8217;s how easy it is to setup WordPress on a cloud server with Laravel Forge. I hope to see a lot of more products and tools like this that can help us building better, faster, and more secure WordPress websites. In fact, Laravel Forge was the original inspiration for my own product <a href="https://wppusher.com/" target="_blank">WP Pusher</a>. I wanted to create a similar experience, but for WordPress plugins and themes instead.</p>\n<h3>Note on backups and security</h3>\n<p><em>Please note that even though Laravel Forge makes for a great starting point, ultimately you are the one in charge of the security of your servers. You should always try to educate yourself about security and have a backup strategy for your data.</em></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Jan 2017 18:44:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Post Status: Contributing to Twenty Seventeen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=31886";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://poststatus.com/contributing-to-twenty-seventeen-theme/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:12307:"<p><em><strong>Editor&#8217;s Note</strong>: This is a guest post by <a href="https://poststatus.com/profiles/sami-keijonen/">Sami Keijonen</a>. Sami is a developer, the owner of the <a href="https://foxland.fi/">Foxland theme and plugin shop</a>, and hails from Finland.</em></p>\n<p>Every year since 2010, WordPress has shipped with a new default theme, breaking the cycle of Kubrick being the primary default theme for years before that.</p>\n<p>In 2010, the default theme was called Twenty Ten. In 2011, the default theme was called Twenty Eleven. You get the idea.</p>\n<p>While every default theme has been unique in its own way, <a href="https://wordpress.org/themes/twentyseventeen/">Twenty Seventeen</a> was particularly compelling in a way we haven’t seen in a default theme since Twenty Fourteen.</p>\n<p><a href="https://wordpress.org/themes/twentyfourteen/">Twenty Fourteen</a> was the first theme that really made people think WordPress could be used for more than “just a blog” on a mass scale. It is a magazine theme.</p>\n<p>Twenty Seventeen &#8212; <a href="https://poststatus.com/wordpress-4-7-released/">released with WordPress 4.7</a> &#8212; is the first theme that really made people think WordPress could be used for more than “just publishing content” on a mass scale. It is a business theme.</p>\n<p><img class="aligncenter wp-image-32027 size-large" src="https://cdn.poststatus.com/wp-content/uploads/2017/01/twenty-seventeen-wp-about-752x423.jpg" alt="Twenty Seventeen WordPress Theme Screenshots" width="752" height="423" /></p>\n<p>Prior to WordPress 4.7, I contributed by helping out in the support forums and building <a href="https://foxland.fi/downloads/category/themes/">accessible themes</a>. But I had never contributed to core before.</p>\n<p>When I saw the <a href="https://make.wordpress.org/core/2016/09/09/say-hello-to-twenty-seventeen-%25F0%259F%2591%258B%25F0%259F%258F%25BD/">previews</a>, I knew I wanted to contribute, and began to follow development on GitHub to see if there was anything that I could lend my talents to and eventually make my first core contributions.</p>\n<p>When I saw Morten Rand-Hendriksen <a href="https://github.com/WordPress/twentyseventeen/issues/60">open an issue</a> about replacing icon fonts with SVG icons, I knew I had found the perfect “in” to start contributing to core.</p>\n<h3>Contributing SVG icons system to Twenty Seventeen</h3>\n<p><img class="aligncenter wp-image-32026 size-large" src="https://cdn.poststatus.com/wp-content/uploads/2017/01/svg-twentyseventeen-icons-752x217.png" alt="Example image of SVG icon set" width="752" height="217" /></p>\n<p>I had already <a href="https://foxland.fi/switch-away-icon-fonts-svg/">switched from icon fonts to SVG icons</a> in my public themes, so this was something I immediately felt confident in contributing to core.</p>\n<p>Development started in <a href="https://github.com/WordPress/twentyseventeen/">GitHub</a>, where fellow contributors would create issues and submit pull requests.</p>\n<p>Then, everything moved to <a href="https://core.trac.wordpress.org/browser/trunk">WordPress SVN</a>, where new patches were submitted.</p>\n<p>I’ll summarize what I learned in the process.</p>\n<h3>What I learned about contributing</h3>\n<p>I regret not keeping a diary. Not necessarily to keep track of what I contributed, since that’s all documented in the open.</p>\n<p>But rather things like my emotional state. My feelings ranged from despair to overwhelming joy throughout my contribution experience.</p>\n<p>I learned new things about code and collaborating with others in GitHub and SVN. Again, something not necessarily documented in patches and the like.</p>\n<h4>Git workflow</h4>\n<p>I’m not good with Git, and still don’t fully understand how rebasing works. I messed up my commits a couple of times. Not a big deal, but I got different error messages no matter which workflow I tried. I realized that I need to know more about Git, and be more patient.</p>\n<p>Eventually I understood enough to get my contributions through the door, but I’m still confused about <a href="https://github.com/edx/edx-platform/wiki/How-to-Rebase-a-Pull-Request">how to rebase a pull request</a>.</p>\n<h4>Follow the development through to the end, and beyond</h4>\n<p>I started out by replacing only the social link icon fonts to SVG icons. Soon, I realized that a step-by-step process was not going to work because of new related commits coming in all the time that potentially conflicted with my code.</p>\n<p>It was better to replace all icon fonts, not just the social ones, with SVGs, and then work from there. I was also keeping track of style changes in RTL languages and IE8.</p>\n<p>At this point, the work was just getting started.</p>\n<p>Once you start contributing, you shouldn&#8217;t just disappear with no explanation. If you’re running low on time or have other obligations, it’s totally understandable, but be sure to politely inform others you can’t continue anymore, so they can pick up where you left off.</p>\n<p>As the <a href="https://geto2.com/">o2</a> slogan states: &#8220;Communication is oxygen.&#8221;</p>\n<h4>Coding standards and automated tests</h4>\n<p>After several commits and iterations, <a>my first pull request was accepted</a>.</p>\n<p>As you can see in my first commits, I didn’t pass the WordPress coding standards. I needed to be more precise and follow the coding standards to the tee. With enough practice, I’m sure it’s possible to write standards-compliant code “naturally” but I was looking for a way to automate the code checks.</p>\n<p>I tried to get Atom to evaluate my code on the fly, but I just couldn’t get it to work. Like my Git experience, I got different error messages no matter what I tried.</p>\n<p>Eventually, I was able to use <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards">PHPCS</a> via the command line, and fixed any issues discovered manually. But it would’ve been nice to have those checks automated.</p>\n<h4>Working with batches in SVN</h4>\n<p>Once the development moved to SVN, I began to get a little worried. As I described earlier, not too long ago, I was struggling just to use Git. However, thanks to the following tutorials I quickly got up to speed.</p>\n<ul>\n<li><a href="https://make.wordpress.org/core/handbook/tutorials/installing-wordpress-locally/from-svn/">Installing via SVN</a></li>\n<li><a href="https://make.wordpress.org/core/handbook/tutorials/installing-a-vcs/%23installing-tortoisesvn">Installing TortoiseSVN</a> (I use Windows)</li>\n<li><a href="https://make.wordpress.org/core/handbook/tutorials/trac/submitting-a-patch/">Submitting a Patch</a></li>\n<li><a href="https://make.wordpress.org/core/handbook/tutorials/working-with-patches/%23creating-a-patch-with-tortoisesvn">Creating a Patch with TortoiseSVN</a></li>\n</ul>\n<p>Turns out, it wasn’t much to be worried about. Although I didn’t quite understand the concept of branches and tags in my local environments, and jumping between them like I know how to do with Git.</p>\n<p>Anyway, I eventually got <a href="https://core.trac.wordpress.org/changeset/39072">my first props</a> with the help of others.</p>\n<h3>Technical overview of the SVG icons system</h3>\n<p>I adapted this contribution from the code and concepts first presented by others.</p>\n<ol>\n<li><a href="https://webdevstudios.com/">WebDevStudios</a> has their own starter theme called <a href="https://github.com/WebDevStudios/wd_s">wd_s</a>. I really like how they set up SVG icons and we fine-tuned them in Twenty Seventeen. Perhaps they will integrate those improvements back into their own project. Again, open source rocks.</li>\n<li><a href="http://themehybrid.com/">Justin Tadlock</a> invented the <a href="http://justintadlock.com/archives/2013/08/14/social-nav-menus-part-2">social links menu</a> concept. I just took that concept and applied it to SVG icons rather than icon fonts.</li>\n</ol>\n<p>All the main SVG-related functions can be found in the <a href="https://core.trac.wordpress.org/browser/trunk/src/wp-content/themes/twentyseventeen/inc/icon-functions.php">inc/icon-functions.php file</a>. It’s well-documented in the code, but here’s a summary:</p>\n<ul>\n<li>Include the SVG sprite file via the <code>wp_footer</code> hook.</li>\n<li><code>twentyseventeen_get_svg()</code> function returns the SVG icon markup. In most cases, the SVG icon is injected in template files or via hooks and filters. In some cases, the SVG icon is injected via JavaScript.</li>\n<li>Default markup looks like this: <code>&lt;svg class="icon icon-name" aria-hidden="true" role="img"&gt; &lt;use href="#icon-name" xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-name"&gt;&lt;/use&gt; &lt;/svg&gt;</code>.</li>\n<li>Note that we could use the absolute path to the SVG file in the <code>href</code> attribute of the use element. In that case:\n<ul>\n<li>there is no need to inject icons via the <code>wp_footer</code> hook.</li>\n<li>The <a href="https://github.com/Keyamoon/svgxuse">svgxuse</a> JS polyfill must be used, because Internet Explorer doesn’t support external files referenced in the <code>&lt;use&gt;</code> element.</li>\n<li>This method helps caching the SVG sprite file.</li>\n</ul>\n</li>\n<li>By default, all icons are decorative, but I insisted we show how to use non-decorative icons in an accessible way. Check the examples in the aforementioned <code>twentyseventeen_get_svg()</code> function.</li>\n<li>We replace the default icon for supported social media links by using the <code>walker_nav_menu_start_el</code> filter.</li>\n</ul>\n<h3>Open source rocks</h3>\n<p>WordPress default themes are one of the best themes out there and they set an example how to use new WordPress features. The reason for this is simple.</p>\n<ul>\n<li>Default themes gets lots of love and attention.</li>\n<li>Many talented people contribute to default themes. <a href="https://davidakennedy.com/2016/12/07/dear-twenty-seventeen-contributors/">Twenty Seventeen had over 100 contributors</a> and we thank you all!</li>\n<li>Default themes are tested before release in many platforms and browsers. And default themes are used on so many sites that any remaining bugs will be found after the release.</li>\n</ul>\n<p>Building default themes really is a community driven project. I&#8217;d like to say extra thanks for couple of people.</p>\n<h4>Special thank you</h4>\n<p>Any web project needs good leadership, design, and code. Those were all covered in Twenty Seventeen.</p>\n<ul>\n<li><a href="https://twitter.com/DavidAKennedy">David A. Kennedy</a> was leading the project and kept everything rolling. He had a really friendly touch and he was open to ideas. At the same time he wasn&#8217;t afraid to make decisions; for example, a flexbox layout was rejected for this theme.</li>\n<li><a href="https://twitter.com/melchoyce">Mel Choyce</a> created the modern, business looking design. She wrote a great article <a href="https://choycedesign.com/2016/12/07/behind-the-scenes-of-twenty-seventeen/">with her behind the scenes take</a>.</li>\n<li><a href="https://twitter.com/laurelfulford">Laurel Fulford</a> was the primary coding lead. She seem to have a solution for every new feature and brought Mel&#8217;s design to life with detailed code.</li>\n</ul>\n<p>Last but not least, remember <a href="http://mor10.com/">Morten Rand-Hendriksen</a>, the one that opened the SVG icon issue that caught my eye?</p>\n<p>He was pretty happy with the end result.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr"><a href="https://twitter.com/brad_frost">@brad_frost</a> the SVG icon system solution by <a href="https://twitter.com/samikeijonen">@samikeijonen</a> embedded in the new Twenty Seventeen theme in <a href="https://twitter.com/hashtag/WordPress?src=hash">#WordPress</a> is pure genius</p>\n<p>&mdash; MortenRandHendriksen (@mor10) <a href="https://twitter.com/mor10/status/805808154520883200">December 5, 2016</a></p></blockquote>\n<p></p>\n<p>Who knows if I would’ve contributed if it wasn’t for him posting that. Remember, reporting issues and bugs is contributing too, and can inspire first-time contributors like me to stop sitting on the sidelines and finally get started with core contributions.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 07 Jan 2017 22:42:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sami Keijonen";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Let’s Encrypt Passes 20 Million Active Certificates in 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64815";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/lets-encrypt-passes-20-million-active-certificates-in-2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5050:"<p>Let&#8217;s Encrypt has just closed out its first full year as a certificate authority with more than <a href="https://letsencrypt.org/2017/01/06/le-2016-in-review.html" target="_blank">20 million active certificates</a>. The free and open certificate authority focuses on lowering the complexity of setting up TLS encryption by making the process more automated. It came <a href="https://wptavern.com/lets-encrypt-is-now-out-of-beta" target="_blank">out of beta</a> in April 2016 and the number of certificates issued per day has grown steadily since then.</p>\n<p>&#8220;At the start of 2016, Let’s Encrypt certificates had been available to the public for less than a month and we were supporting approximately 240,000 active (unexpired) certificates,&#8221; said Josh Aas, Executive Director of the non-profit Internet Security Research Group (ISRG). &#8220;Now we’re frequently issuing that many new certificates in a single day while supporting more than 20,000,000 active certificates in total. We’ve issued more than a million certificates in a single day a few times recently.&#8221;</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/lets-encrypt-2016.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/lets-encrypt-2016.png?resize=1025%2C503&ssl=1" alt="" class="aligncenter size-full wp-image-64920" /></a></p>\n<p>Let&#8217;s Encrypt operates as a 501(c)(3) nonprofit and has received more than three dozen corporate <a href="https://letsencrypt.org/sponsors/" target="_blank">sponsorships</a> and grants, but funds for the coming year have fallen short. In November, Let&#8217;s Encrypt launched a <a href="https://www.generosity.com/community-fundraising/make-a-more-secure-web-with-let-s-encrypt" target="_blank">crowdfunding campaign</a> to cover the cost of one month of operating expenses. So far, the campaign has raised more than $100K towards its $200K fundraising goal.</p>\n<h3>Let&#8217;s Encrypt is Growing Fastest with Smaller, Previously-Unencrypted Sites</h3>\n<p>Let&#8217;s Encrypt is used with some larger organizations, such as WordPress.com, OVH, Shopify, Akamai, and Dreamhost, but the vast majority of users are smaller entities that were not previously encrypted. According to the Electronic Frontier Foundation (EFF), a founding sponsor of the certificate authority, most of Let&#8217;s Encrypt&#8217;s growth has not come from taking customers away from competitors:</p>\n<blockquote><p>\nOne of the ways Let&#8217;s Encrypt has been helping to secure the web is by making it easy and affordable for sites that have never had certs before to turn on secure HTTPS connections, and for software systems to start enabling HTTPS automatically and by default. Our free certificates may be more likely to be left unused than expensive certificates, and less expert webmasters may accidentally duplicate certificates—but that’s part of making HTTPS integration available to more webmasters across a range of resource and skill levels. Statistics suggest that most of our growth has come not at the expense of other CAs, but from giving previously unencrypted sites their first-ever certificates.</p></blockquote>\n<p>EFF analyzed various sources of usage statistics and estimates that <a href="https://www.eff.org/deeplinks/2016/10/lets-encrypt-largest-certificate-authority-web" target="_blank">Let&#8217;s Encrypt is now the largest certificate authority on the web</a>. Its rapid adoption has spurred impressive progress towards getting the entire web encrypted. Let&#8217;s Encrypt tracks progress by measuring the percentage of page loads using HTTPS, as seen by browsers.</p>\n<p>&#8220;According to Firefox Telemetry, the Web has gone from approximately 39% of page loads using HTTPS each day to just about 49% during the past year,&#8221; Aas said in Let&#8217;s Encrypt&#8217;s <a href="https://letsencrypt.org/2017/01/06/le-2016-in-review.html" target="_blank">2016 in Review</a> report. &#8220;We’re incredibly close to a Web that is more encrypted than not.&#8221;</p>\n<p>The proliferation of Let&#8217;s Encrypt <a href="https://letsencrypt.org/docs/client-options/" target="_blank">client options</a> in 2016 puts the certificate authority in an even better position to continue driving web encryption in 2017. Aas attributes last year&#8217;s progress to many organizations advocating for HTTPS and working to get their sites encrypted. His team has grown from four full-time employees to nine, and he anticipates that 2017 will be a year of even greater growth.</p>\n<p>&#8220;Much of the infrastructure and many of the plans necessary for a 100% encrypted Web came into being or solidified in 2016,&#8221; Aas said. &#8220;More and more hosting providers and CDNs are supporting HTTPS with one click or by default, often without additional fees. It has never been easier for people and organizations running their own sites to find the tools, services, and information they need to move to HTTPS.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 07 Jan 2017 21:42:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WPTavern: How Do You Educate People New to WordPress?";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64890";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wptavern.com/how-do-you-educate-people-new-to-wordpress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5213:"<p>When a friend of mine asked for suggestions on what he should use to create a new site, I suggested WordPress. It is well supported, has an amazing community, and a ton of free themes and plugins to choose from. After getting WordPress installed on a new webhosting account, I left him be to see what issues he would run into and how he would configure the site.</p>\n<p>After noticing the site was loading slowly three weeks later, I obtained admin access to try to determine what the problem was. The first thing I did was check which plugins he installed. One of the plugins added the ability to embed YouTube videos on the site using shortcodes. My friend was unaware that WordPress has <a href="https://codex.wordpress.org/Embeds">oEmbed support</a> which allows users to easily embed videos by pasting the URL into the editor.</p>\n<p>He also installed a couple of other plugins that mimicked core functionality. He was unaware that WordPress does most of the things he wants without the need for plugins.</p>\n<h2>Page Builder Shenanigans</h2>\n<p>After activating a theme that was compatible with the <a href="https://wordpress.org/plugins/sportspress/">SportsPress</a> plugin, he installed the <a href="http://www.getmotopress.com/plugins/content-editor/">MotoPress Content Editor</a>. MotoPress Content Editor is a front-end page builder that enables users to visually construct pages. The front page of the site was a long vertical column filled with information that mimicked blog posts.</p>\n<p>Because he didn&#8217;t understand how WordPress works, he forgot to configure the site to display the latest posts instead of using a front page. What he ended up doing is recreating the blog post layout on the static front page using the MotoPress Content Editor. He also added a lot of page builder elements such as YouTube videos to the page which was a contributing factor to the site&#8217;s poor loading times.</p>\n<p>Page builders are a tool that can make building sites and pages more convenient, but in the wrong hands, they can help users <a href="https://wptavern.com/wordpress-visual-page-and-website-builders-make-it-easy-to-create-ugly-sites">ruin their sites</a>. I replaced the video elements with a text widget that displays the latest video from a YouTube channel. Since he was mimicking the blog post layout on a static page, I configured the site to display the latest blog posts first.</p>\n<p>Once I fixed these issues, I removed the page builder and explained to my friend why it was unnecessary. He was recreating WordPress functionality and doing unnecessary work without realizing it.</p>\n<p>This experience makes me wonder how many other newer WordPress users end up in a similar situation. They don&#8217;t know what WordPress is capable of out-of-the-box and they end up installing a myriad of plugins with descriptions that sound similar to the features they want. I spent about a week undoing all of the work my friend did in three. Had I not stepped in, the site would likely not scale and its performance would decrease further.</p>\n<h2>Getting New Users Started on the Right Track</h2>\n<p>In early 2015, a community initiative dubbed <a href="https://make.wordpress.org/core/2015/02/05/4-2-community-initiative-nux-working-group/">NUX Working Group</a> was created to brainstorm ideas on how to improve the new user experiences throughout the WordPress admin. While the group initially had a head of steam, it lost a lot of momentum last year. I&#8217;d like to see it re-emerge and work in concert with the <a href="https://wptavern.com/matt-mullenweg-announces-tech-and-design-leads-for-new-focus-based-development-cycle">focus-based approach</a> to developing WordPress this year.</p>\n<p>How can WordPress explain to new users what its capable of without drowning them in technical information? Is it feasible to create something that caters to the majority without explaining every feature in detail? <a href="https://codex.wordpress.org/Version_3.3">Admin Pointers</a> were introduced in WordPress 3.3 and while they&#8217;re typically used to introduce new features in a release, they don&#8217;t act as a guided tour to what WordPress can do.</p>\n<p>Education is likely a key component to improving the new user experience. WordPress.com has a <a href="https://learn.wordpress.com/get-started/">12-step beginner&#8217;s guide</a> that walks people through the process of configuring and customizing their sites. For self-hosted WordPress users, there&#8217;s a <a href="https://codex.wordpress.org/New_To_WordPress_-_Where_to_Start">New to WordPress &#8211; Where to Start guide</a> that covers what WordPress is, choosing a host, and considerations to keep in mind. However, much of the information is technical in nature.</p>\n<p>If you&#8217;re a consultant or coach who works with people new to WordPress, how do you handle the educational part of your projects? What are the most common roadblocks that they encounter? Do you have a custom-made getting started guide or do you forward them to a site with video tutorials like <a href="https://wordpress.tv/">WordPress.TV</a> or <a href="https://www.wp101.com/">WP101</a>?</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Jan 2017 19:19:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"WPTavern: Incubator WordCamp Denpasar a Success";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64903";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com/incubator-wordcamp-denpasar-a-success";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4625:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/taylor-lovett.jpg?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/taylor-lovett.jpg?resize=150%2C150&ssl=1" alt="" class="alignright size-thumbnail wp-image-64907" /></a>This post was contributed by guest author Taylor Lovett. Lovett is based in the Washington DC area, is the Director of Web Engineering at <a href="https://10up.com" target="_blank">10up</a>, creator of ElasticPress, and general open source enthusiast.<br />\n&nbsp;</p>\n<hr />\n<p>In February 2016, the <a href="http://wordpressfoundation.org/" target="_blank">WordPress Foundation</a> announced the <a href="https://wordpress.org/news/2016/02/experiment-wordcamp-incubator/" target="_blank">WordCamp incubator program</a>, focused on spreading WordPress and open source values to remote areas of the world through extra hands-on support to first time WordCamps. WordCamp Denpasar, which took place in Bali’s capital city, is the first of three camps to be supported as a part of the program — other WordCamps include Harare and Medellín. As Director of Web Engineering at <a href="https://10up.com" target="_blank">10up</a>, I was sent to attend and speak at the inaugural event. Our company values open source projects and the WordPress community, so we’re proud to support emerging communities by attending events like this.</p>\n<p>The incubator program supports WordCamps by providing them with an experienced organizer. In Denpasar’s case, Rocio Valdivia, a Community Wrangler for Automattic, was the WordCamp Incubator sponsored organizer. According to Ivan Kristianto, the lead organizer for WordCamp Denpasar, “Rocio was a hands-on consultant provided by the WordPress Foundation to help incubate the camp. She helped [us] in budgeting, managing the organizers, submission timelines, and more”.</p>\n<p>WordCamp Denpasar attracted 180 attendees, twice the initial goal. Many attendees came from other parts of Indonesia to attend the Camp, which bubbled with an aura of excitement as Indonesia has not had a WordCamp in over three years. The venue, the <a href="http://www.sofitel.com/gb/hotel-5551-the-royal-beach-seminyak-bali-mgallery-collection/index.shtml" target="_blank">Royal Beach Seminyak Hotel</a>, was of ample size and served the crowd well. There was a single session track, mixed with user, business, and developer topics. Lunch included a nice buffet featuring local Balinese cuisine. Overall, the WordCamp attendance, venue, and amenities were quite impressive.</p>\n<p>The speaker lineup was diverse, with speakers from Indonesia, Australia, Europe, Japan, and the United States. Attendees were extremely enthusiastic throughout the sessions and actively engaged in questions. I was last to speak, presenting on <a href="https://10up.com/blog/2016/twenty-sixteen-react-nodeifywp/" target="_blank">NodeifyWP and Twenty Sixteen React</a>. WordCamp Denpasar was the debut presentation of our new isomorphic JavaScript framework. The crowd was extremely excited to hear my presentation and attendees were grateful 10up choose Bali as a first occasion to show the framework. After my talk, I received more questions than could fit in the allotted time slot.</p>\n<p>In the weeks after the Camp, I talked with Rocio about the overall success of the event and Incubator program as a whole. Rocio believed the WordCamp went extremely well. She cited some key events that followed the inaugural camp:</p>\n<ol>\n<li>The local Indonesian meetup group has grown to more than 50 new members across different groups.</li>\n<li>The existing WP Meetup Bekasi group in Indonesia has applied to join the Meetup chapter program.</li>\n<li>The non-active WP Meetup of Jakarta has now two members interested in re-activating the group and have applied to join the chapter program. They are also interested in organizing WordCamp Jakarta 2017.</li>\n<li>The WordPress Foundation has received an application for organizing WordCamp Ubud in 2017 (one hour from Denpasar) which is in pre-planning now.</li>\n<li>A WP Indonesia Slack channel is being created to connect the whole community in the country.</li>\n</ol>\n<p>Clearly, WordCamp Denpasar has had a positive effect on the Indonesian WordPress community. As more areas of the world getting involved contributing to and using WordPress, the project’s internationalization and diversity improves. If Denpasar is any indication, expanding the incubator program to more areas of the world will have long-lasting benefits within the entire WordPress community.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Jan 2017 18:59:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: Matt Mullenweg Announces Tech and Design Leads for New Focus-Based Development Cycle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/matt-mullenweg-announces-tech-and-design-leads-for-new-focus-based-development-cycle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:7237:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/sharpened-pencil.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/01/sharpened-pencil.jpg?resize=960%2C542&ssl=1" alt="" class="size-full wp-image-64886" /></a>photo credit: <a href="https://stocksnap.io/photo/JLXDNN5BNE">Angelina Litvin</a>\n<p>WordPress core development is kicking off in 2017 with the new focus-based development process that Matt Mullenweg announced during the <a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle" target="_blank">2016 State of the Word</a>. The new approach to releases shifts WordPress from the familiar time-based release cycle to one that is more project-based. The idea is that design and user testing will lead the way and upcoming releases will ship when significant user-facing improvements are ready.</p>\n<p>Mullenweg, who will serve as the overall product lead for 2017, <a href="https://make.wordpress.org/core/2017/01/04/focus-tech-and-design-leads/" target="_blank">announced</a> tech and design leads for each of the three focus areas: the REST API, the editor, and the customizer.</p>\n<p>&#8220;For the REST API we’re going to work on getting first party wp-admin usage of the new endpoints, and hopefully replace all of the core places where we still use admin-ajax,&#8221; Mullenweg said. The REST API team nominated Ryan McCue and K.Adam White to take the lead on the objectives Mullenweg outlined, as well as infrastructure and endpoint performance, security, and improvements to authentication options and documentation.</p>\n<p>&#8220;The editor will endeavor to create a new page and post building experience that makes writing rich posts effortless, and has &#8216;blocks&#8217; to make it easy what today might take shortcodes, custom HTML, or &#8216;mystery meat&#8217; embed discovery,&#8221; Mullenweg said. Automattic employees Matias Ventura and Joen Asmussen will be taking point on the editor.</p>\n<p>The <a href="https://wordpress.org/plugins/shortcode-ui/" target="_blank">Shortcake UI</a> feature plugin is one attempt at giving the existing shortcodes feature a more user-friendly interface, but contributors are also exploring other ideas for simplifying the experience of adding rich content to posts. Ella Van Dorpe recently posted an idea for <a href="https://make.wordpress.org/core/2016/12/24/idea-uniform-resource-identifiers-as-an-alternative-to-shortcodes/" target="_blank">using uniform resource identifiers as an alternative to shortcodes</a> in certain use cases. This would work similar to <a href="https://codex.wordpress.org/Embeds" target="_blank">WordPress&#8217; implementation of oEmbed</a> where data is stored elsewhere and embedded in a post using a URL.</p>\n<p>Mullenweg&#8217;s proposed direction for the customizer team is to &#8220;help out the editor at first, then shift to bring those fundamental building blocks into something that could allow customization &#8216;outside of the box&#8217; of post_content, including sidebars and possibly even an entire theme.&#8221; Weston Ruter and Mel Choyce will be taking the lead on the customizer focus.</p>\n<p>Ruter and contributors have been working on a project called <a href="https://github.com/xwp/wp-js-widgets" target="_blank">JS Widgets</a> that uses the Customize API to power the next generation of JavaScript-widgets in core. It opens the door for managing widgets via the REST API and ties in nicely with all three focus areas.</p>\n<p>A preliminary discussion on upcoming Customizer priorities cropped up in the comments. Nick Halsey, co-maintainer of the customize component, <a href="https://make.wordpress.org/core/2017/01/04/focus-tech-and-design-leads/#comment-31891" target="_blank">responded</a> to the proposal of having the customizer help out the editor at first. He believes the best approach is to create the new editor within the Customize API, giving it live previews from the start.</p>\n<p>&#8220;Improving the editor within an &#8216;admin&#8217; interface that lacks live preview doesn’t address the fundamental problems with the current content editing experience and creates something that still has to be entirely rebuilt and reimagined within a live preview context eventually,&#8221; Halsey said. &#8220;If the editor is built on the Customize API first, rather than rethinking the editor and then bringing it into the live preview API, the customize and editor contributors would be able to join forces to focus on improving the content editing experience much more effectively.&#8221;</p>\n<p>It will be interesting to see what direction Mullenweg and the leads decide to take in the foundational task of architecting the new editing experience. Mullenweg made it clear in the State of the Word address that he would like to see Calypso or a similar interface replace wp-admin in the future. However, Calypso was not built using the Customize API, WordPress&#8217; own single page application admin interface that plugins and themes already widely support.</p>\n<p>After WordCamp US, I asked Mullenweg about his intentions for Calypso in relationship to WordPress core. He said the application was &#8220;designed to be in core someday,&#8221; which is one reason they selected the same license and made it open source.</p>\n<p>&#8220;My real hope is that it is something that is ready for core someday &#8211; both Calypso the interface and the concept.&#8221; Mullenweg said. &#8220;That&#8217;s why I said Calypso or something like it. There&#8217;s obviously a lot of WordPress.com stuff in Calypso that will never be in core. If we think of a wp-admin replacement, it would be replacing wp-admin with the parts that Calypso does that are the same thing, kind of more of the my sites section of it. But I do believe the future of a great wp-admin experience is JavaScript &#8211; probably React, talking to APIs, super fast, and maybe even working offline.&#8221;</p>\n<p>Automattic is actively recruiting popular plugin authors to make their plugins Calypso-aware. Demonstrating the application&#8217;s interoperability with the WordPress plugin ecosystem is a must before Calypso can be considered a promising replacement for the WordPress admin. In the meantime, the foundation for a new page and post building experience is being laid with consideration for how the customizer can improve the editor.</p>\n<p>Mullenweg responded to comments on the post indicating that feature plugins or other improvements to WordPress outside of the three focus areas would need to continue on as plugins for the time being. However, performance improvements may be included in minor releases.</p>\n<p>&#8220;What goes in a minor release will broaden a bit, which I know is something we have to approach carefully, but performance is very important and improvements will be something I will consider for being in a minor release,&#8221; Mullenweg said. Contributors are currently working on <a href="https://make.wordpress.org/core/tag/4-7-1/" target="_blank">WordPress 4.7.1</a>, which is planned for release on Tuesday, January 10.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Jan 2017 00:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:116:"WPTavern: Micro.blog Surpasses Kickstarter Funding Goal, Set to Launch New Social Network for Independent Microblogs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64805";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:126:"https://wptavern.com/micro-blog-surpasses-kickstarter-funding-goal-set-to-launch-new-social-network-for-independent-microblogs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6754:"<p>Developer <a href="http://www.manton.org/" target="_blank">Manton Reece</a> is on a mission to take back short form content for the open web by providing better tools for independent microblogging. Most short form content today is posted through centralized social networking sites like Facebook, Twitter, and Instagram, where posts are mixed with promoted content and users have no control of their timelines. There&#8217;s no guarantee that these social networks will be around forever, as many before them have disappeared, eclipsed by new ways to connect online.</p>\n<p>Reece set out to create <a href="http://micro.blog/" target="_blank">Micro.blog</a>, a timeline and publishing platform for the open web, as an alternative social network that encourages more independent writing. He <a href="https://www.kickstarter.com/projects/manton/indie-microblogging-owning-your-short-form-writing" target="_blank">launched a Kickstarter campaign</a> to fund the platform along with his work on a book called Indie Microblogging. The project&#8217;s $10K goal was fully funded on the first day and has passed $22,000 on the second day of the campaign.</p>\n<p>Micro.blog has a timeline experience similar to Twitter with replies and favorites, but the main difference is that it is based on RSS, pulling posts from independent sites. Those who don&#8217;t have their own websites will be able to opt for a hosted microblog and map a custom domain. Users with hosted microblogs can post via a web interface that includes a Markdown editor or use the service&#8217;s iPhone app.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/micro-blog-1.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/01/micro-blog-1.png?resize=1025%2C590&ssl=1" alt="" class="aligncenter size-full wp-image-64853" /></a></p>\n<h3>Micro.blog Will Integrate with WordPress</h3>\n<p>Reece, who self-hosts <a href="http://manton.org/" target="_blank">his own blog</a> on WordPress, will be launching Micro.blog with full integration for WordPress users, making it easy to cross post between the two platforms. I asked him about the workflow for publishing from WordPress and he said his Indie Microblogging book will contain a section specifically on WordPress.</p>\n<p>&#8220;After you&#8217;ve told Micro.blog about your WordPress RSS feed, you can continue to post to your blog as you normally would, although I&#8217;ll have some tips for taking the best advantage of it,&#8221; Reece said. &#8220;There&#8217;s also a native iPhone app for Micro.blog that supports direct posting to WordPress. I&#8217;ve found that it really improves the user experience to have a single app with a timeline experience, replies, favorites, as well as easy posting directly to your own site. But there&#8217;s no requirement to use any specific app.&#8221;</p>\n<p>Reece said he plans to implement a very strict, reverse-chronological timeline for content that users are following. He also does not plan to introduce any algorithms or advertising. Basic accounts will be free and the plan is to sustain the platform with revenue from a paid plan that includes extra features like microblog hosting.</p>\n<p>&#8220;One thing that is very important to me is not letting someone you don&#8217;t follow interrupt your timeline with harassment or other replies that aren&#8217;t appropriate,&#8221; Reece said. &#8220;I&#8217;m working on some features around this that I hope will help avoid similar issues that Twitter has faced in its community, for example. So if there are any custom algorithms or curation it will be around trying to deal with abuse before it happens.&#8221;</p>\n<p>The Micro.blog platform is currently built using Ruby, Sinatra, Ember.js, MySQL, and Redis. Reece said he is in the process of rewriting some of the app with a more traditional Ruby on Rails setup.</p>\n<p>&#8220;Ember didn&#8217;t end up being a great fit for the design,&#8221; Reece said. &#8220;There is also a portion of the microblog publishing engine built on Jekyll, so that themes and data files can be more portable.&#8221;</p>\n<p>Micro.blog isn&#8217;t entirely distributed where users host their own &#8220;pods&#8221; like Diaspora, but Reece said he is open to making it more decentralized in the future.</p>\n<p>&#8220;It&#8217;s a good goal to eventually move to something even more distributed, but it introduces a lot of complexity, which has prevented most of those kind of solutions from taking off,&#8221; Reece said. &#8220;I hope that Micro.blog is a step in the right direction, encouraging people to write more on their own site even for short microblog posts, instead of just Twitter and Facebook, with more open formats and APIs. It&#8217;s more achievable if we can build off of tools like WordPress instead of starting over.&#8221;</p>\n<p>Reece said he thinks WordPress.com (Automattic) is one of only a couple web publishing companies he believes could last 100 years. &#8220;Only 2 companies keep coming to mind: WordPress.com and GitHub,&#8221; he said in a <a href="http://mirror.manton.org/2015/09/complete-mirror-of-this-blog.html" target="_blank">post about mirroring his blog to GitHub</a>. &#8220;I believe both will last for decades, maybe even 100 years, and both embrace the open web in a way that most other centralized web sites do not.&#8221;</p>\n<p>During his 14 years of blogging and 10 years of using Twitter, Reece became an advocate for the open web. He said he used to be excited about Twitter and built apps for the platform but grew disillusioned at their approach to locking down the API.</p>\n<p>&#8220;We&#8217;ve been so focused on writing on Twitter and Facebook that we&#8217;ve gotten away from more independent publishing that makes blogs and the open web great,&#8221; Reece said. &#8220;I think microblogging has a place on the open web, and that posting to a blog and reading posts from friends can have just as great a user experience as using a traditional social network. I&#8217;ve already heard from many people who have been inspired recently to blog again, which is really the main goal of Micro.blog.&#8221;</p>\n<p>The <a href="https://www.kickstarter.com/projects/manton/indie-microblogging-owning-your-short-form-writing/community" target="_blank">Micro.blog Kickstarter campaign</a> will end in 27 days. Reece said he was surprised the project was funded so quickly. He plans to work hard over the next month to roll out Micro.blog to everyone.</p>\n<p>&#8220;I can&#8217;t wait to see how users use the service, how the book can help WordPress users expand their existing blogs, and what developers want to build on the APIs going forward,&#8221; Reece said.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 04 Jan 2017 23:14:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"HeroPress: We Are The Same";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1556";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://heropress.com/essays/we-are-the-same/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9064:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/01/010417-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: To every woman... we are the same. I am you and you are me." /><p><em>Topher asked me to write an article for HeroPress as we sat together in an alcove in the Philly Convention Center. I was in a vulnerable space. My lightning talk at WordCamp US had concluded, and I was settling into the experience of being at another WordCamp. I thought about the life experiences that brought me to my second presentation a year later, and I started to cry. Below is why.</em></p>\n<p>One of my earliest memories is attending my mother&#8217;s graduate school graduation ceremony. It was a huge achievement. I wore a pink frilly dress with afro puffs to her graduation ceremony. I am sure I was gripping someone&#8217;s leg and hiding behind them. Behind my mother, my aunt or maybe my father. I was painfully awkward and shy. Which didn&#8217;t make any sense because my family was constantly telling me, &#8216;Be quiet&#8217;. That could have been their anthem for me. Children were meant to be seen, not heard.</p>\n<blockquote><p>I think of that young Sierra Leonean American girl I was, I think back to that day, and wonder what became of her.</p></blockquote>\n<p>She grew taller, much taller, transitioned from pink dresses to a pink bedroom, and, some say, is poised. But she is still painfully awkward. You wouldn&#8217;t know it, but you can catch her at times sitting quietly at an event achingly wishing she were alone and didn’t have to perform.</p>\n<p>I project confidence because I was drafted into an oratory competition in middle school. Something about my voice caught the attention of my middle school teacher Mrs. McNeil. She entered me into one. I don&#8217;t recall what I read or the outcome. I only remember my mom driving me to my competition and her, my sister and I pulling up to a very crowded parking lot. Everything gets fuzzy after we arrived.</p>\n<p>In high school, I didn&#8217;t need to be drafted into public speaking. I had strong ideals and opinions, and when it came to debate competitions I didn&#8217;t need to fit in and be cool. All I had to do was win. I debated as a Junior Statesmen, entered the Essex County Mock Trial competition, and the High School Moot Court Tournament at Princeton University. During 10th or 11th grade I got commendations for my role as a mother whose son died due to someone&#8217;s negligence at school. I argued with the other team’s attorneys. I was distraught. I channeled my inner mother. The judge gave our Mock Trial team extra points because I made the case believable. In 11th grade my partner and I came second place in the Moot Court competition at Princeton.</p>\n<p>I live in Maplewood, New Jersey. It is a town that actively engages its children. Our administration and teachers educate us to be competitive academically and in our extracurricular activities, and to actively seek out opportunities for service.</p>\n<blockquote><p>Teachers tell us we can be great &#8211; and expectations are that we will be great.</p></blockquote>\n<p>It is ingrained in us that to whom much is given much is expected. I do the best I can to embody what is expected of me.</p>\n<p>Truthfully, as an African girl, it was wonderful to be educated like this. At home my parents, aunts and uncles expect nothing less. Outside of home and my classes and clubs, I received mixed messages about who I was and what I could achieve. I was one of a handful of Africans in a diverse community. I didn&#8217;t look African or sound African I was told growing up. And I was surprised as a child of how differently I was treated by many of the same color other than my best friend and her family in elementary school. It was fascinating. On one occasion at school I achingly experienced different treatment. A college counselor lost interest in helping me with financial aid when it came up in conversation that I was African. After that conversation she was too busy to meet with me. I went to the head of guidance instead who was fabulous.</p>\n<blockquote><p>Occasions like this make me acutely proud of where my family comes from and the sacrifices my parents made 30 plus years ago when they immigrated here.</p></blockquote>\n<p>I see in them that resilience is a must and that success is accessible through motivation, hard work, focus, education and self-improvement.</p>\n<p>As a child, I hurt at the barriers some put up when I told them I am African. And I still do. At times, we are misunderstood and misrepresented. And it doesn&#8217;t make me any less proud of my Sierra Leonean heritage.</p>\n<p>Three weeks ago, I had dinner with someone I met years ago. I mentioned something related to my heritage. She stopped for a second. She said she was surprised to hear I am African. Her enthusiasm towards me immediately drained. I wasn&#8217;t shocked. I pushed away the feeling of disappointment I feel in these occasions. I acknowledged the difference internally and it didn&#8217;t stop me from enjoying her company. It&#8217;s a situation I&#8217;ve found myself in many, many times.</p>\n<p>I was told I could be great as a child growing up in Maplewood. I let this propel me forward through each obstacle in my way, and I let this make me stand tall as I take on each daunting task before me. I took this with me to every college class and graduate class I have taken even when overpowered by feelings of inadequacy. I have been to events at places where very few people will ever have the chance to go. There are organizations I have worked for that have a competitive selection process. There are certificates I have earned that make me wonder how I gathered the strength to make it through. And there are presentations like the ones I gave at WordCamp US in 2015 and 2016 where I fought through feelings of inadequacy to stand on stage and speak before hundreds of people in the tech industry.</p>\n<blockquote><p>At these times, I think of the little Sierra Leonean American girl in the pink frilly dress with afro puffs, and wonder how she could achieve each one of these accomplishments.</p></blockquote>\n<p>I wonder how she became so warmly embraced by the WordPress community, invited to plan WordCamp NYC at the United Nations in 2016, and invited to be a co-organizer of Meetups in NYC. It reflects how inclusive our community is.</p>\n<p>I think of my gender, my color, and my heritage.</p>\n<p>To every woman &#8211; we are the same. And, even if we glance at each other and look away, I am you and you are me. We can’t let anyone convince us otherwise.</p>\n<blockquote><p>I think of the African girl on the continent who doesn’t have the choices and resources I have. I cry for her, and I cry for me.</p></blockquote>\n<p>I cry because I may never meet her, never look deeply into her eyes, never tell her that she will be great, give her the resources she needs to fully realize her dreams and give her the space to be embraced by the WordPress community. Make no mistake in this digital age that this little girl is aware of what she doesn’t have, and that she needs us to propel her forward.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: We Are The Same" class="rtsocial-twitter-button" href="https://twitter.com/share?text=We%20Are%20The%20Same&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwe-are-the-same%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: We Are The Same" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwe-are-the-same%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwe-are-the-same%2F&title=We+Are+The+Same" rel="nofollow" target="_blank" title="Share: We Are The Same"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/we-are-the-same/&media=https://heropress.com/wp-content/uploads/2017/01/010417-150x150.jpg&description=We Are The Same" rel="nofollow" target="_blank" title="Pin: We Are The Same"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/we-are-the-same/" title="We Are The Same"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/we-are-the-same/">We Are The Same</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 04 Jan 2017 12:00:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Winstina Hughes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: W3Techs Ranks WordPress as the Fastest Growing CMS of 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64826";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/w3techs-ranks-wordpress-as-the-fastest-growing-cms-of-2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3019:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/05/blogging.jpg?resize=960%2C521&ssl=1" alt="" class="size-full wp-image-54799" /></a>photo credit: <a href="https://stocksnap.io/photo/3ZHG0XOIT6">Luis Llerena</a>\n<p>W3Techs published its <a href="https://w3techs.com/blog/entry/web_technologies_of_the_year_2016" target="_blank">Web Technologies of 2016</a> report today, compiling technologies that saw the largest increase in usage last year. The survey pulls data from the top 10 million sites (according to Alexa rankings) and compares the number of sites for each technology by measuring the difference from January 1, 2016 to January 1, 2017.</p>\n<p>W3Techs ranks WordPress as the fastest growing content management system with 58.5% market share. Shopify and Squarespace demonstrated the second and third largest increases in usage. Squarespace is a newcomer to the top three. In <a href="https://w3techs.com/blog/entry/web_technologies_of_the_year_2015" target="_blank">2015</a> the second and third place winners were Drupal and Shopify. WordPress has dominated the top spot every year since 2010.</p>\n<p>CMS usage on the whole saw a 3.3% increase. Of the top 15 CMS&#8217;s only six demonstrated growth, including the aforementioned top three, as well as Joomla, Drupal, and Bitrix, which showed nominal 0.1% increases in market share by the end of 2016. Blogger is on the decline, and the remaining CMS&#8217;s showed no increase or decrease.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/cms-usage-2016.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2017/01/cms-usage-2016.png?resize=1025%2C444&ssl=1" alt="" class="aligncenter size-full wp-image-64832" /></a></p>\n<p>PHP regained its top ranking among server-side programming languages as the fastest growing in 2016, a title which it temporarily lost to Java in 2015. W3Techs estimates PHP to be used by 82.4% of all websites for which it can detect a server-side programming language.</p>\n<p>Another interesting result of the survey is that &#8220;WordPress Jetpack,&#8221; the stats module in Jetpack, ranks third among the fastest growing traffic analysis tools, trailing Google Analytics and Yandex.Metrika. Jetpack Stats has been on a slow upward trend, rising from 1.6% in 2011 to 4.5% in 2017. The top fastest growing players in this category have repeated several years in a row.</p>\n<p>It&#8217;s important to note that many Jetpack stats users also use Google Analytics, but these numbers also give a rough idea of Jetpack usage increase, since it is one of the most popular modules in the plugin. According to W3Techs, <a href="https://w3techs.com/technologies/details/ta-wordpressstats/all/all" target="_blank">Jetpack Stats</a> is used by 6.9% of sites for which it can detect a traffic analysis tool, which it estimates as 4.5% of all websites.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Jan 2017 23:03:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"WPTavern: WP-CLI Gets Official WordPress.org Support";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64789";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wptavern.com/wp-cli-gets-official-wordpress-org-support";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5086:"<p>The WP-CLI open source project will be coming under the WordPress.org umbrella in 2017. After recent talks with Daniel Bachhuber, WP-CLI&#8217;s official maintainer, Matt Mullenweg <a href="https://make.wordpress.org/core/2016/12/28/supporting-the-future-of-wp-cli/" target="_blank">announced WordPress&#8217; support for the project</a>, calling it &#8220;one of the highest impact developments for WP in many years.&#8221; The wp-cli.org website will soon be migrated to WordPress.org and a <a href="https://make.wordpress.org/cli/" target="_blank">CLI Make site</a> with its own P2 is now available to contributors.</p>\n<p>&#8220;As we head into 2017, I wanted to make sure that its future is certain for everyone who builds on it, and that the major contributors to the project, chiefly Daniel Bachhuber, are able to work on it even more in the coming year,&#8221; Mullenweg said. Now that the project is part of WordPress.org, Mullenweg said he will be leading a coalition of companies to &#8220;solidify their financial support&#8221; of <a href="http://wp-cli.org/blog/the-big-question.html" target="_blank">the existing fundraising effort</a> that Bachhuber launched in mid-December 2016.</p>\n<p>The logistics of the new funding model haven&#8217;t yet been completely ironed out, but Bachhuber says <a href="https://runcommand.io/" target="_blank">runcommand</a> will not be shutting down.</p>\n<p>&#8220;Runcommand&#8217;s sole focus will be to hire people to work on WP-CLI,&#8221; he said. &#8220;This hybrid approach better ensures WP-CLI&#8217;s long-term future (e.g. the project is under the wing of the WordPress project), while also being a creative way for paying for dedicated resources to it.&#8221;</p>\n<p>Bachhuber explored different funding models for WP CLI throughout 2016 without much success. When discussions about making it an official WordPress core project first began, he was leaning towards keeping WP-CLI operating as an independent project. The new hybrid approach gives companies the opportunity to financially support an official WordPress project via runcommand, where Bachhuber hopes to hire additional maintainers on a part-time basis.</p>\n<p>&#8220;I&#8217;ve thought a lot about funding open source over the last year,&#8221; Bachhuber said. &#8220;In the context of WP-CLI, I came to the conclusion that I didn&#8217;t have confidence in WP-CLI being a completely independent project + financially sustainable business.&#8221;</p>\n<p>Bachhuber said he feels &#8220;reasonably confident&#8221; about the future of the project after recent developments and hopes to have funding for a few part-time maintainers.</p>\n<p>&#8220;I think part-time is key because each of us needs to be working / solving problems in the real-world, and then taking those solutions back to the project,&#8221; Bachhuber said. Although many open source projects operate without paying people for contributions, he believes there is an important distinction between maintainers and contributors.</p>\n<p>&#8220;Contributors act in a voluntary manner (e.g. contributing code when they have a couple hours free),&#8221; Bachhuber said. &#8220;Maintainers take responsibility for the project, showing up every day, and doing most of the unglamorous work. I think maintainership is an important aspect of a healthy open source project. Everyone has an example of an open source project they use that&#8217;s no longer maintained and how painful it is to be dependent on it.&#8221;</p>\n<p>Responses to the news of WP-CLI gaining official WordPress.org support were overwhelmingly positive, as the tool is critical to the WordPress developer community. The decision to have WP-CLI operate under WordPress.org&#8217;s umbrella makes it better positioned to drive the financial support needed to sustain the ongoing burden of maintainership.</p>\n<p>Bachhuber said the current fundraising effort, which is <a href="https://wptavern.com/wp-cli-project-launches-patron-support-model-to-fund-ongoing-development" target="_blank">based on a patron support model</a>, is approximately 1/5 of the way to his funding goal. He is still waiting to hear from a number of large players but the funding drive will remain open indefinitely for now. Bachhuber said they will re-evaluate once they reach the goal.</p>\n<p>&#8220;I consider this the best possible outcome of my efforts trying to identify sustainability for the project over the last year,&#8221; Bachhuber said in the <a href="https://make.wordpress.org/cli/2017/01/03/lets-do-this/" target="_blank">first post</a> on the Make WordPress CLI site. &#8220;The decision to make WP-CLI an official WordPress project also means there’s a clear path forward for me to invest more of my own time into the <a href="http://wp-cli.org/docs/roadmap/" target="_blank">WP-CLI roadmap</a>. Concurrent with the transition process over the next couple of months, I want to move forward the conversation of how we realize a future where WP-CLI is the fastest way to do anything with WordPress.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 03 Jan 2017 06:50:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:11:"\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"HeroPress: Help a HeroPress friend";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://heropress.com/?p=1553";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:44:"https://heropress.com/help-heropress-friend/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2334:"<p>Hey folks, HeroPress contributor Michael Beil is fighting for his life right now. Michael&#8217;s a personal friend, and a tremendous person. There&#8217;s an <a href="https://www.plumfund.com/financial-hardship/michael-john-beil">online donation form</a> to help with medical bills and life in general. If you can, please help out.</p>\n<p><a href="https://heropress.com/essays/life-without-limits/">You can read Michael&#8217;s HeroPress essay here</a>.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Help a HeroPress friend" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Help%20a%20HeroPress%20friend&via=heropress&url=https%3A%2F%2Fheropress.com%2Fhelp-heropress-friend%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Help a HeroPress friend" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fhelp-heropress-friend%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fhelp-heropress-friend%2F&title=Help+a+HeroPress+friend" rel="nofollow" target="_blank" title="Share: Help a HeroPress friend"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/help-heropress-friend/&media=http://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=Help a HeroPress friend" rel="nofollow" target="_blank" title="Pin: Help a HeroPress friend"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/help-heropress-friend/" title="Help a HeroPress friend"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/help-heropress-friend/">Help a HeroPress friend</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 31 Dec 2016 01:20:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: WPWeekly Episode 258 – 2016 Year in Review Part 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=64794&preview=true&preview_id=64794";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wptavern.com/wpweekly-episode-258-2016-year-in-review-part-1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1078:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I recap the news and headlines of the first half of 2016. Part two will be recorded on January 4th, 2017, where we&#8217;ll look back at the headlines during the second half of 2016, give our predictions for 2017, and share what we&#8217;re looking forward to in the new year.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, January 4th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #258:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Dec 2016 21:45:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"Post Status: What we want from WordPress in 2017, live from Post Status Publish";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=31717";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://poststatus.com/post-status-draft-live-at-publish/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1751:"<p>After Post Status Publish&#8217;s main talks concluded, Joe Hoyle and I recorded the podcast during the reception. It was a laid back format where we discuss the future of WordPress, including our own wishlist features, and then we spent the majority of the hour taking questions from the audience.</p>\n<p>We recorded this prior to the announcement of the <a href="https://poststatus.com/matt-mullenweg-state-word-2016/">new development schedule</a> and changes to major releases, but most of our conversation remains relevant, as many of our wishlist items are within the three release focus areas that have been chosen.</p>\n<p>You can listen to just the audio, also on our podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher.</p>\n<!--[if lt IE 9]><script>document.createElement(''audio'');</script><![endif]-->\n<a href="https://audio.simplecast.com/56018.mp3">https://audio.simplecast.com/56018.mp3</a>\n<p><a href="https://audio.simplecast.com/56018.mp3">Direct Download</a></p>\n<p>Or just watch the <a href="https://youtu.be/Xoteb83jmD8">video on YouTube</a>, or below for the full experience. And don&#8217;t forget to subscribe to <a href="https://www.youtube.com/c/PostStatus">my new channel on YouTube</a>.</p>\n<p></p>\n<p>The rest of the videos from <a href="https://poststatus.com/publish">Publish</a> are available to Post Status members.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 Dec 2016 15:21:13 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"HeroPress: Over The Atlantic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1545";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"https://heropress.com/essays/over-the-atlantic/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6054:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2016/12/122816-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: I''ve come to realise the WordPress community doesn''t tolerate bad actors." /><p>I’m on a plane. They’ve just served lunch and I realise I’m stuck. There isn’t enough room to slip out for a bathroom break without tipping my meal and the trolley blocks the aisle.</p>\n<p>I cough and notice I’m tense, what’s going on? I enjoy flying, why should today be any different? Is it that I might be sick? Maybe it’s shovelling clothes off of the dining table into an open suitcase and rushing for a taxi at 6am? Or responding to a client at 11pm then playing Rimworld till 2am knowing I’d be up at 5? Maybe it’s Mr Robot? Anyone who’s seen that show knows it isn’t exactly happy.</p>\n<p>I open my watch up and try the new breathe app. I’ve installed watch apps before but never found much use from them, but this came with the update from Apple this morning so I’ll give it a go. It holds me steady but I’m still tense.</p>\n<p>I put on some music and try to eat some food. Maybe that’s the problem? I get anxious sometimes about food, it can get me in trouble. During speaker submissions for WordCamp Europe Sophia I wrote a mini rant about sandwiches and labeling. Siobhan thought it was funny, but I should know better. It was that year I saw a talk on depression.</p>\n<p>I’ve seen several people speak about it, but right now I’m anxious, and I’m typing. After WCEU 2016 I promised Topher I’d write an article for him, and I’ve been occupied. The last month or so, I’ve been working and not taking care of myself. I’m not sure if I&#8217;m actually sick or if this is burn out. I’ve noticed aches in my hands, it worries me.</p>\n<p>I think about what writing this will do. My WP Tavern article ranks higher than me on Facebook search.</p>\n<blockquote><p>There’s nothing like an article on anxiety popping up when a date searches your name. I don’t want to be known as the mental health guy.</p></blockquote>\n<p>But a promise is a promise. When I last did this people were supportive. They said nice things, they talked about their own feelings and gave talks. Nobody sent their pity.</p>\n<p>The food tray’s gone now, I’m not sure how I feel but I know there’s 2 Automatticians in front of me and 2 to the side. We land in Vancouver in 6 hours for the grand meet up, and I know I’ll get a big hug from several people. They’re genuine nice people, and I’ve come to realise the WordPress community doesn’t tolerate bad actors. We share what we think is important, what people need to hear.</p>\n<p>I’ve got one more episode of Mr Robot, I’ll think about those I see at WordCamps and close this app. It isn’t long before I can talk in person.</p>\n<hr />\n<p>I’m home! Despite a total lack of scrambled eggs on toast in not one, not two, but three major international airports, I’ve finally returned home. My friends dragged me jet lagged to a play entitled “The pacifists answer to the war on cancer” where a jolly sequinned cancer cell sings a song moments after a woman screams in agony. I got to sing happy birthday to my family with a room of Automatticians, climb a mountain, it was fun!</p>\n<p>I think about what I’ve written, and wish I’d been more positive.</p>\n<blockquote><p>Life can be scary but I’m surrounded by people who want to help.</p></blockquote>\n<p>Sometimes that’s family, or friends, but user groups and events help too. These people have the same problems and worries I do, and deal with them in many ways.</p>\n<p>Importantly, they’re willing to talk about their problems in front of hundreds of people, and share their solutions. I feel it’s something that isn’t mentioned often enough. Burnout and stress is rampant in our industry, and I’m glad people are stepping up to the challenge.</p>\n<p>I’m a lead organiser for a WordCamp Manchester now. That means I can’t speak at my own conference, but I’m hoping to get a good talk or two. Maybe things aren’t so terrible? Maybe next time I’ll get a window seat.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Over The Atlantic" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Over%20The%20Atlantic&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fover-the-atlantic%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Over The Atlantic" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fover-the-atlantic%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fover-the-atlantic%2F&title=Over+The+Atlantic" rel="nofollow" target="_blank" title="Share: Over The Atlantic"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/over-the-atlantic/&media=https://heropress.com/wp-content/uploads/2016/12/122816-150x150.jpg&description=Over The Atlantic" rel="nofollow" target="_blank" title="Pin: Over The Atlantic"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/over-the-atlantic/" title="Over The Atlantic"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/over-the-atlantic/">Over The Atlantic</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 28 Dec 2016 12:00:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Tom Nowell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:38:"Matt: Christmas Music: Leslie Odom Jr.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=47002";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://ma.tt/2016/12/christmas-music-leslie-odom-jr/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:629:"<p>I love Christmas music, and <a href="https://ma.tt/2013/12/christmas-jazz-music/">most years</a> I like to recommend a Christmas music album that is a bit more jazz or has something interesting about it. This year I want to point you to Leslie Odom Jr., aka Aaron Burr in the hit musical Hamilton, who is a gifted vocalist. <cite>Hat tip: Rose Kuo.</cite> Check out &#8220;My Favorite Things.&#8221; Embedded on Spotify below, also on <a href="https://itunes.apple.com/us/album/simply-christmas/id1170245823">iTunes</a> and <a href="https://www.amazon.com/Simply-Christmas-Leslie-Odom-Jr/dp/B01L22Y87K">Amazon</a>.</p>\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 Dec 2016 18:18:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:98:"WPTavern: BuddyPress 2.7.4 Patches Security Vulnerability That Could Allow Arbitrary File Deletion";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=64736&preview=true&preview_id=64736";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:109:"https://wptavern.com/buddypress-2-7-4-patches-security-vulnerability-that-could-allow-arbitrary-file-deletion";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1223:"<p>The BuddyPress development team has <a href="https://buddypress.org/2016/12/buddypress-2-7-4-security-release/">released BuddyPress 2.7.4</a> to address a security vulnerability that affects all versions back to 2.0.</p>\n<p>According to John James Jacoby, lead developer of BuddyPress, &#8220;This version patches a vulnerability to the BuddyPress core attachments API that could allow arbitrary file deletion on certain installation configurations.&#8221;</p>\n<p>The vulnerability was responsibly disclosed by Sam Pizzey through the <a href="https://hackerone.com/automattic">HackerOne bounty program</a>. Although Automattic primarily uses the service for its own products, they accept reports for open source projects such as WordPress and BuddyPress.</p>\n<p>Boone Gorges and Paul Gibbs collaborated on a fix for all affected versions of BuddyPress while Stephen Edgar and Dion helped package the release. Those who use BuddyPress are highly encouraged to update as soon as possible to protect against this vulnerability. If you encounter any issues or need help, please create a post on the project&#8217;s<a href="https://buddypress.org/support/"> support forums.</a></p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Dec 2016 19:59:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"BuddyPress: BuddyPress 2.7.4 – Security Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=262326";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"https://buddypress.org/2016/12/buddypress-2-7-4-security-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1235:"<p>BuddyPress 2.7.4 is now available, and is a security release &amp; recommended upgrade for all BuddyPress installations. We&#8217;ve also ported the code changes in 2.7.4 to all branches back 2.0, and are pushing updates out for all installations where we are able to do so.</p>\n<p>These releases include a fix to the BuddyPress core attachments API that could allow arbitrary file deletion on certain installation configurations.</p>\n<p>This bug was responsibly disclosed to the WordPress security team (and the BuddyPress team) through the WordPress HackerOne Bounty Program by Sam Pizzey (mopman).</p>\n<p>Both Boone &amp; Paul worked together to fix this for all versions of BuddyPress that are currently in active use, and Stephen &amp; Dion helped package and push these releases out.</p>\n<p>Please update to these latest versions of BuddyPress today in your WordPress Dashboard, or by <a href="https://wordpress.org/plugins/buddypress/">downloading from the wordpress.org plugin repository</a>.</p>\n<p>Questions or comments? Check out the <a href="https://codex.buddypress.org/releases/version-2-7-4/">2.7.4 changelog</a>, or stop by our <a href="https://buddypress.org/support/">support forums</a> or  Trac.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 23 Dec 2016 02:25:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"John James Jacoby";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"WPTavern: WordPress.org Launches Homepage Redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64708";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wptavern.com/wordpress-org-launches-homepage-redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2790:"<p><a href="https://wordpress.org/" target="_blank">WordPress.org</a> made its new <a href="https://wptavern.com/the-wordpress-org-homepage-is-getting-a-redesign" target="_blank">homepage redesign</a> live today. The meta team worked quickly to put the new design in place in time for the holidays.</p>\n<p>&#8220;While this is only the first iteration, the plan is to continue design and development to create something truly amazing,&#8221; Mark Uraine said in the <a href="https://make.wordpress.org/meta/2016/12/22/new-homepage-is-launched/" target="_blank">announcement</a>. &#8220;This is the first step toward that goal.&#8221;</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordpress-homepage-new-design-e1482443742169.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordpress-homepage-new-design-e1482443742169.png?resize=1025%2C854&ssl=1" alt="" class="aligncenter size-full wp-image-64722" /></a></p>\n<p>The header and footer have been kept from the previous design. According to meta team member Samuel Wood, matching them to the new design is beyond the scope of this first iteration.</p>\n<p>&#8220;The header and footer are global pieces,&#8221; Wood said. &#8220;Redesigning them, in any way, will have to be part of a much larger effort in redesigning, well, everything. The entire site would need adjustments to adjust them.&#8221;</p>\n<p>Uraine <a href="https://make.wordpress.org/meta/2016/12/12/new-homepage-redesign/#comment-8739" target="_blank">said</a> in a previous post that there are iterations underway for a new, more minimal header that better aligns with the new homepage style.</p>\n<p>Feedback on the <a href="https://make.wordpress.org/meta/2016/12/12/new-homepage-redesign/" target="_blank">initial draft</a> included notes on the copy, particularly the &#8220;Meet WordPress&#8221; headline. One person commented on it not being inclusive of people who have already met WordPress and are returning. Also, a few found the tagline to be too narrow: <em>WordPress is open source software you can use to create a beautiful website, blog, or app.</em> Some suggested the inclusion of other use cases, such as store, forum, and membership site. These ideas have not been incorporated but they were recognized by the design team in the comments on the initial draft.</p>\n<p>The homepage redesign went from sketches to prototype to live on WordPress.org in a matter of a couple weeks. Feedback has been overwhelmingly positive so far, and most see it as a huge improvement. The new design should receive a great deal more exposure now that it&#8217;s live, which will hopefully bring in more varied perspectives towards making it extraordinary in future iterations.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Dec 2016 23:13:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"Matt: New .org Homepage";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46996";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:39:"https://ma.tt/2016/12/new-org-homepage/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:410:"<p>For the first time in&#8230; many years, <a href="https://wordpress.org/">WordPress.org has a new home page</a>. What&#8217;s on the page today actually isn&#8217;t that important, even though it&#8217;s better in many ways, the key is that it&#8217;s changing again, the stone has <a href="https://make.wordpress.org/meta/2016/12/22/new-homepage-is-launched/">been unstuck</a> and can now keep rolling.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Dec 2016 22:10:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: WPWeekly Episode 257 – My Side Project, WordPress 4.7, and the News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=64711&preview=true&preview_id=64711";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wptavern.com/wpweekly-episode-257-my-side-project-wordpress-4-7-and-the-news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3589:"<p>In this episode of WordPress Weekly, <a href="http://www.marcuscouch.com/">Marcus Couch</a> and I discuss the news of the week including, WooCommerce&#8217;s 42% market share, the redesign concept of WordPress.org, and two plugin acquisitions. I also share details of a side project I&#8217;m working on that involves BuddyPress. Last but not least, we briefly discuss <a href="https://twitter.com/kingjeff2">Jeff King&#8217;s</a> impact on GoDaddy as he&#8217;s leaving the company at the end of this year.</p>\n<h2>Stories Discussed:</h2>\n<p><a href="https://wptavern.com/wordpress-4-7-introduces-twenty-seventeen-default-theme-and-wp-rest-api-content-endpoints">WordPress 4.7 Introduces Twenty Seventeen Default Theme and WP REST API Content Endpoints</a><br />\n<a href="https://wptavern.com/the-wordpress-org-homepage-is-getting-a-redesign">The WordPress.org Homepage is Getting a Redesign</a><br />\n<a href="https://wptavern.com/woocommerce-powers-42-of-all-online-stores">WooCommerce Powers 42% of All Online Stores</a><br />\n<a href="https://wptavern.com/podcast-motor-acquires-seriously-simple-podcasting-plugin">Podcast Motor Acquires Seriously Simple Podcasting Plugin</a><br />\n<a href="https://wptavern.com/updraftplus-acquires-wp-optimize-will-be-integrated-into-updraftcentral">UpdraftPlus Acquires WP-Optimize, Will Be Integrated Into UpdraftCentral</a><br />\n<a href="https://wptavern.com/wordpress-com-launches-vr-content-coming-soon-to-jetpack">WordPress.com Launches VR Content, Coming Soon to Jetpack</a></p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/wp-youtube-live/">WP YouTube Live</a> displays a YouTube live video from a specified channel via shortcode. There are several shortcode options available that allow you to autoplay and change the video&#8217;s dimensions. There&#8217;s also an option to not display a video if there isn&#8217;t a live video taking place.</p>\n<p><a href="https://wordpress.org/plugins/woo-floating-cart-lite/">Woo Floating Cart Lite</a> is an interactive floating cart for WooCommerce that slides into view when a user decides to buy an item. Products, quantities, and prices are updated instantly via AJAX. It&#8217;s similar to many of the professional carts you may have seen at the big retail stores where the cart is in view at all times.</p>\n<p><a href="https://wordpress.org/plugins/import-facebook-events/">Import Facebook Events</a> allows you to import events from Facebook into <a href="https://wordpress.org/plugins/the-events-calendar/">The Events Calendar</a> and <a href="https://wordpress.org/plugins/events-manager/">Events Manager</a> plugins. If you are like me and use The Events Manager as your events plugin of choice, this plugin is a no-brainer as an extra add-on. As an add-on plugin this plugin needs The Events Calendar or Events Manager Installed and activated.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 28th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #257:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Dec 2016 21:20:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: Nadia Eghbal Publishes Guide to Financial Support for Open Source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64676";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wptavern.com/nadia-eghbal-publishes-guide-to-financial-support-for-open-source";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4614:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/lemonade-stand.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/lemonade-stand.jpg?resize=1024%2C577&ssl=1" alt="" class="size-full wp-image-64693" /></a>photo credit: rachaelvoorhees <a href="http://www.flickr.com/photos/17237319@N00/2521106411">A Young Entrepreneur on a Hot Day at Portland State</a> &#8211; <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>\n<p>If you want to make a living in the world of open source software, <a href="http://nadiaeghbal.com/" target="_blank">Nadia Eghbal</a> has created a <a href="https://github.com/nayafia/lemonade-stand#consulting--services" target="_blank">guide</a> that explores various models for funding your work. Eghbal, who has written extensively on <a href="http://nadiaeghbal.com/oss" target="_blank">sustainability and open source</a>, recently authored <a href="https://wptavern.com/ford-foundation-publishes-non-technical-white-paper-on-open-source-software-and-the-challenges-of-sustaining-digital-infrastructure" target="_blank">a white paper published by the Ford Foundation</a> called “Roads and Bridges: The Unseen Labor Behind Our Digital Infrastructure.” The whitepaper was written to help consumers and companies understand the challenges of sustaining open source software.</p>\n<p>Eghbal published &#8220;A handy guide to financial support for open source&#8221; on GitHub so that others with experience can contribute to the reference. The repository is called &#8220;<a href="https://github.com/nayafia/lemonade-stand" target="_blank">lemonade stand</a>,&#8221; a term that references a common summertime business venture where children cut their teeth in entrepreneurship. The lemonade stand is often used as a symbol of capitalism, a new arena that many developers will need to embrace if they want to provide a sustainable future for their open source work.</p>\n<p>Eghbal&#8217;s guide currently includes 16 different categories of funding, starting with the smallest (donations, bounties, crowdfunding) to the largest (foundations, consortiums, and venture capital). The funding categories explore pros, cons, and relevent case studies where the particular model has been explored.</p>\n<p>&#8220;The purpose of this guide is to provide an exhaustive list of all the ways you can get paid, so that you can figure out what works best for you,&#8221; Eghbal said. It has already received additions from 12 contributors, including Daniel Bachhuber, who is currently <a href="https://wptavern.com/wp-cli-project-launches-patron-support-model-to-fund-ongoing-development" target="_blank">exploring a patron support model to fund his work on WP-CLI</a>.</p>\n<p>With a few notable exceptions like Red Hat and Linux, open source projects suffer from a severe lack of funding, a problem which Eghbal calls &#8220;<a href="https://medium.com/@nayafia/how-i-stumbled-upon-the-internet-s-biggest-blind-spot-b9aa23618c58#.6efp8nk2c" target="_blank">the internet&#8217;s biggest blind spot</a>.&#8221; She notes that the problem of funding digital infrastructure is relatively new but is accelerating as more people are using open source software but ignoring the developer tools everyone relies on.</p>\n<p>WP-CLI is a prime example in the WordPress community. Developers who use it are more inclined to send sporadic donations than become personally invested in maintaining the code base, which has led Bachhuber to test different funding models throughout 2016. There have been <a href="https://twitter.com/dd32/status/807435845724577792" target="_blank">discussions</a> about making it an official WordPress core project with the goal of widening the contributor base and ensuring its longterm future. However, Bachhuber <a href="https://twitter.com/danielbachhuber/status/806563582968115201" target="_blank">said</a> he &#8220;strongly believes WP-CLI should be an independent project.&#8221;</p>\n<p>Eghbal&#8217;s funding <a href="https://github.com/nayafia/lemonade-stand" target="_blank">guide</a> is an important document for open source software maintainers who are struggling to fund their efforts and looking for more options beyond sticking a simple download button on the project&#8217;s website. If you&#8217;re looking for more discussion on this topic, Eghbal co-produces a podcast called <a href="https://changelog.com/rfc/archive" target="_blank">Request for Commits</a> that explores open source&#8217;s complicated relationship with money and various sustainability models.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 22 Dec 2016 20:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: Wallace: A Free WordPress Theme Built on the WP REST API and Angular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64652";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wptavern.com/wallace-a-free-wordpress-theme-built-on-the-wp-rest-api-and-angular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4819:"<p><a href="https://twitter.com/Bradley_Kirby" target="_blank">Bradley Kirby</a> released version 1.0 of his <a href="https://wallacetheme.com/" target="_blank">Wallace WordPress theme</a> today. The theme is built using the WP REST API and <a href="https://angular.io/" target="_blank">Angular 2</a>. Kirby has been working on Wallace for the past two years and has rewritten it several times in order to keep pace with changes in the REST API and Angular.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/wallace-theme.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/wallace-theme.png?resize=1025%2C925&ssl=1" alt="" class="aligncenter size-full wp-image-64661" /></a></p>\n<p>If you view the <a href="https://demo.wallacetheme.com/" target="_blank">Wallace demo</a>, you&#8217;ll notice that the theme is super fast because the interface is rendered on the client side with JavaScript.</p>\n<p>&#8220;It really opens a whole new world of possibility for WordPress themes,&#8221; Kirby said. &#8220;For this release I&#8217;ve primarily focused on smooth page transitions. That&#8217;s just not possible with the traditional server-rendered themes. But I think there&#8217;s a lot of really cool customization techniques that the API allows for, too. That&#8217;s what I&#8217;m hoping to explore next.&#8221;</p>\n<p>Although React has emerged as <a href="https://wptavern.com/state-of-javascript-survey-results-published-react-emerges-as-clear-winner-in-front-end-frameworks" target="_blank">the most popular JavaScript framework for front-end development</a> in 2016, Kirby said he chose Angular mostly because he learned it first.</p>\n<p>&#8220;I really like the prescriptive nature of Angular,&#8221; Kirby said. &#8220;There&#8217;s a &#8216;right&#8217; way to do things that you&#8217;ll find in example projects and all the functionality comes with the framework itself. With React you have to use a collection of third-party libraries with various maintainers. With Angular, it&#8217;s all Google, and all one repository. I think React is a perfectly fine framework, and they actually share a lot of concepts.&#8221;</p>\n<p>Wallace currently only supports posts, but Kirby plans to implement more core WordPress features, including pages, comments, searching, and category filtering. He said those features shouldn&#8217;t be too difficult to implement now that the frame is there.</p>\n<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/wallace-posts.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/wallace-posts.png?resize=500%2C494&ssl=1" alt="" class="aligncenter size-large wp-image-64669" /></a></p>\n<p>&#8220;From a programming perspective, this was way more difficult to create than a PHP-rendered theme, because you get so much &#8216;for free&#8217; with the PHP theming API that you don&#8217;t get when you&#8217;re just making raw requests to the REST API,&#8221; Kirby said. The primary advantage of theming with the API is more instantaneous interactions with the content, but creating API-driven themes is not yet as easy as the old way of theming.</p>\n<p>Kirby said he is actively exploring the idea of submitting Wallace to WordPress.org, but the Theme Review Team does not permit the use of Twig templates.</p>\n<p>&#8220;I&#8217;ve brought it up with the team that approves themes, and they didn&#8217;t like that I was using the Twig templating library on the PHP side,&#8221; Kirby said. &#8220;So I&#8217;d have to maintain two versions of the theme if I were to submit it to the directory.&#8221; Kirby hasn&#8217;t ruled it out yet and said he will probably revisit the idea next year.</p>\n<p>&#8220;Twig templates mirror Angular templates really nicely,&#8221; Kirby said. &#8220;It cuts down on the maintenance burden quite a bit, because I have to exactly mirror the templates on the server side and the client side. That would be more difficult if I had to construct PHP echo strings, the typical WordPress template way.&#8221;</p>\n<p>Wallace is integrated with the Customizer and will disable its JavaScript when it detects the Customizer is open, reverting back to a &#8220;normal&#8221; theme. Currently the only option users can customize is the site icon and site title. Wallace does not yet offer support for setting a static front page.</p>\n<p>The next items on Wallace&#8217;s roadmap are adding more core features into the theme. Kirby said he is also exploring the idea of creating a commercial magazine theme in the future.</p>\n<p>&#8220;I think the real killer use case for this way of developing themes is e-commerce, but I want to get a good solid magazine style premium theme done before I tackle that,&#8221; Kirby said.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2016 22:43:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:62:"WPTavern: How to Make BuddyPress User Registration Invite-Only";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64644";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"https://wptavern.com/how-to-make-buddypress-user-registration-invite-only";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3486:"<p>One of the first things I recommend users do after installing WordPress is to either close user registration or install a plugin that protects the site against spam registrations. A friend of mine recently started a new WordPress site that has BuddyPress installed.</p>\n<p>After two weeks, I chipped in to help him out and discovered more than 300 registered spam accounts. To make matters worse, these accounts were able to create new groups in BuddyPress and each one contained spam content. The first thing I did was close user registration then I began the boring process of removing the accounts.</p>\n<p>We ran into an issue where legitimate users needed to create accounts while user registration was closed. After asking <a href="https://twitter.com/jeffr0/status/810664097868107777">for suggestions</a> on Twitter and performing a few Google searches, I discovered the <a href="https://wordpress.org/plugins/invite-anyone/">Invite Anyone</a> plugin by <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>. Invite Anyone allows registered members to invite people to register to the site via email while registration is closed.</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/InviteAnyoneSettings.png?ssl=1"><img class="size-full wp-image-64646" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/InviteAnyoneSettings.png?resize=859%2C836&ssl=1" alt="Invite Anyone Settings" /></a>Invite Anyone Settings\n<p>Using variables provided by the plugin, you can customize the email invitation subject line, the invitation message, and the text at the end of the email. I used the default values which happened to suit my needs. You can also give registered users the ability to customize the invitation subject line or message body and limit the number of emails members can send at one time. In my case, the most important setting to enable was allowing email invitations to be accepted even when site registration is disabled.</p>\n<p>There are other configuration settings as well such as controlling who can send emails and limiting group invitations. Invite Only also has <a href="https://www.cloudsponge.com/signup/invite-anyone/">built-in support for CloudSponge</a>, a service where users can invite anyone from their address books without leaving your site. Stats are built-in as well but during testing I couldn&#8217;t get the Stats tab to load. The Stats tab loads the General Settings page instead.</p>\n<p>Here&#8217;s what Invite Anyone looks like from a user&#8217;s BuddyPress profile page. In addition to inviting someone to the site, users can also invite them to a BuddyPress group as well.</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/InviteAnyoneFrontEnd.png?ssl=1"><img class="size-full wp-image-64647" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/InviteAnyoneFrontEnd.png?resize=885%2C658&ssl=1" alt="What Invite Anyone Looks Like on the Frontend" /></a>What Invite Anyone Looks Like on the Frontend\n<p>I&#8217;m using this plugin on a site running WordPress 4.7 and it&#8217;s functioning as expected. So far, we&#8217;ve invited three people and all of them were able to successfully register an account despite user registration being disabled. If you use BuddyPress and need a free solution that implements a user invitation system, I recommend <a href="https://wordpress.org/plugins/invite-anyone/">Invite Anyone</a>.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2016 19:33:19 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"HeroPress: The WordPress Mantra Is Mine Too";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1537";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://heropress.com/essays/wordpress-mantra-mine/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8731:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2016/12/122116-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: The simple fact that I improve someone''s life through my work means the world to me." /><h3>Transparency makes the world go round</h3>\n<p>I like being honest, so please allow me to provide a context for this story. First of all, I&#8217;m a pretty introvert kind of guy, and I often need to be thrown in the cold water to start learning how to swim. This was exactly what happened with my teammate, Oana, when she asked me if I&#8217;d be tempted to give HeroPress a go. Of course I would, and so it started the beginning of this story. The next lines are the result of a friendly dialogue between us. Enjoy the ride, dear fellows.</p>\n<p>Here&#8217;s Andrei, a passionate web dev who truly admires the WordPress world. I&#8217;m a full-time backend at Pixelgrade, a design studio where we create WordPress themes that solve real and painful digital problems. Yes, we don&#8217;t just play around with eye-candy pixels, we strive to show up with trustworthy solutions that make people&#8217;s lives easier and more pleasant.</p>\n<p>I&#8217;ve experienced an intense professional rollercoaster till I got here. I still remember the first time I met with the WordPress fascinating world. It was during my first job interview. The employer (today a good friend of mine) told me that I would need to play around with Joomla, something I loved at that time. You can laugh, it&#8217;s okay. I do the same.</p>\n<p>However, the interview was full of tricks since I needed to do something totally different: create a homepage into WordPress. This way, the team could have seen how fast I&#8217;m able to learn new stuff. Pretty good trap since everyone working in the digital playground needs to be open-minded and capable of improving their skills and knowledge.</p>\n<p>That was the very first contact with WordPress, and I was surprised to see its potential. Not only it was easy-to-learn and get along with thanks to an in-depth documentation, but it also had an active community eager to help. Fast forward and the story had a happy ending: I got the job.</p>\n<blockquote><p>Becoming better is kind of a mantra for the true WordPress people</p></blockquote>\n<p>Starting from there and since today I still appreciate WordPress from top to toe. I have a bunch of reasons why I feel this world fits my values and principles. First of all, I enjoy all the PHP talking around WordPress. I find it interesting and challenging at the same time, and every time I have the chance to get involved, I accept it without hesitations. Another great aspect is directly related to my day-to-day job at Pixelgrade. The backend universe where I can improve an amount of cool things keeps my motivation up and kicking. On top of that, I resonate with JavaScript in various ways, backend and frontend too, and from time-to-time I write down my thoughts on my personal blog. I&#8217;m always happy to share ideas and provide feedback that helps. In the end, this is all about when you think of WordPress as an ecosystem, right?</p>\n<p>Talking about this core mission, I must confess that WordPress can be felt like a lifestyle into a room with glass walls. Everyone sees what you do, how you do it, and why you keep doing it. Nobody can take your work for granted, but can easily be inspired by it and even improving it. Becoming better is kind of a mantra for the true WordPress people, and that&#8217;s why they jump in and start spreading solutions about how things can achieve a superior level. With other words, it&#8217;s like sailing with a bunch of amazing people eager to enjoy the same outstanding experience.</p>\n<p>On the other hand, there are some coders that still think that WordPress is not that sexy and challenging in the end. They&#8217;re definitely not in the same boat, but I think it&#8217;s fair from our side to help them change their mind. And not because we chose to work in this playground, mostly because this platform changed a lot in the last years.</p>\n<blockquote><p>The simple fact that I improve someone&#8217;s life through my work means the world to me.</p></blockquote>\n<p>Here are my thoughts for all those programming lovers that would like to try WordPress, but need an extra boost.</p>\n<h3>A wide range of features</h3>\n<p>Articles, menus, widgets, users, live previews, e-commerce, e-learning, listings and so on. You can administrate them, make them better, simply play around as you wish. It might sound naive, but in reality these different areas are constantly bringing all kind of challenges on the table.</p>\n<h3>Legacy code</h3>\n<p>WordPress still strives to support the PHP 5.2.4 version, which was dropped five years ago but 7.5% from today&#8217;s websites still use it. But hey, WordPress is all about keeping users on board, happy and loyal, not skipping the battle. In the end, it does say something about the whole philosophy of the people behind the scenes.</p>\n<h3>Colleges got it wrong</h3>\n<p>There was a time where people studying Object Oriented Programming didn&#8217;t take WordPress seriously since it&#8217;s based on functional programming and that handy and approachable isn&#8217;t something that helps you progress. Well, things changed, people changed, now functional programming is turning back as the coolest thing to do nowadays, and WordPress is trying to get the best from both paradigms.</p>\n<h3>WordPress makes me proud</h3>\n<p>I mean it. It&#8217;s not just shiny words thrown into the digital garden. I&#8217;m a proud WordPress backend dev who deeply feels that impact matters, and building things for an open-source community matters even more. I&#8217;m also happy with the diverse work I do at Pixelgrade: one day can be Customify or the WP Body Class plugin, the next one can be improving Listable, a WordPress theme used by thousands of users spread all over the world. In between could be the passionate discussions regarding the core of WordPress, some advice tailored on other authors or the amazing WordCamp Europe. Whatever it is, I am grateful that I found my place where creativity, freedom, and braveness are in the first place.</p>\n<p>Call it as you wish, but the simple fact that I improve someone&#8217;s life through my work means the world to me. It gives me a sense of fulfillment, the necessary energy to keep improving, and the never-ending joy that I did something useful. And hey, there&#8217;s just another beginning since Pixelgrade has reshaped its digital presence through an outstanding website and more consistent brand story. So bring it on, fellows!</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: The WordPress Mantra Is Mine Too" class="rtsocial-twitter-button" href="https://twitter.com/share?text=The%20WordPress%20Mantra%20Is%20Mine%20Too&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-mantra-mine%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: The WordPress Mantra Is Mine Too" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-mantra-mine%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-mantra-mine%2F&title=The+WordPress+Mantra+Is+Mine+Too" rel="nofollow" target="_blank" title="Share: The WordPress Mantra Is Mine Too"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/wordpress-mantra-mine/&media=https://heropress.com/wp-content/uploads/2016/12/122116-150x150.jpg&description=The WordPress Mantra Is Mine Too" rel="nofollow" target="_blank" title="Pin: The WordPress Mantra Is Mine Too"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/wordpress-mantra-mine/" title="The WordPress Mantra Is Mine Too"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/wordpress-mantra-mine/">The WordPress Mantra Is Mine Too</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 21 Dec 2016 12:00:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Andrei Lupu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: The WordPress.org Homepage is Getting a Redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64587";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/the-wordpress-org-homepage-is-getting-a-redesign";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3549:"<p>A WordPress.org homepage redesign is now in the works with a strong focus on marketing to new users. As the face of the open source project, the site is long overdue for some design attention. Mark Uraine, a designer at Automattic, <a href="https://make.wordpress.org/meta/2016/12/12/new-homepage-redesign/" target="_blank">posted</a> on the Make/Meta blog about how quickly the project is coming together:</p>\n<p>&#8220;During the Contributor Day at WordCamp US, the Marketing Team sat down with a project in mind — the homepage of wordpress.org,&#8221; Uraine said. &#8220;Since the new design style is making an appearance in various places across the site, there was a desire to reboot the homepage as well.&#8221;</p>\n<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordpress-homepage.png?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordpress-homepage.png?resize=203%2C500&ssl=1" alt="" class="alignleft size-large wp-image-64631" /></a>Uraine posted the group&#8217;s original sketches as well as a screenshot of the initial draft on desktop and mobile. The screenshot doesn&#8217;t include the site&#8217;s header and footer, which will be added when the design is implemented. The team has also created a <a href="http://codepen.io/mapk/full/MbGpvR/" target="_blank">Codepen Prototype</a>, which demonstrates the fixed background featuring high profile WordPress sites that visitors see as they scroll.</p>\n<p>&#8220;Keep in mind that this is only version 1.0 and we’re planning on launching and iterating quickly,&#8221; Uraine said when asking for feedback from the community. &#8220;Otto has offered his help to get this implemented. After a few technical revisions, I’ll be passing it over to him for implementation and providing support where I can.&#8221;</p>\n<p>The redesign focuses on social proof (market share and showcase examples) as well as WordPress&#8217; features and extensibility:</p>\n<p><em>&#8220;Extend WordPress with over 45,000 plugins to help your website meet your needs. Add an online store, galleries, mailing lists, forums, analytics, and much more.&#8221;</em></p>\n<p>Since Uraine posted the design draft, commenters have been weighing in with revisions to the site copy, which hasn&#8217;t yet been finalized. A few contributors have also suggested including A/B testing, although no specific metrics have been determined. The redesign is moving fast, so make sure to jump in on the <a href="https://make.wordpress.org/meta/2016/12/12/new-homepage-redesign/" target="_blank">Make/Meta post</a> if you have feedback on the draft.</p>\n<p>WordPress is getting more strategic about its marketing in 2017. Matt Mullenweg announced during the <a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle" target="_blank">2016 State of the Word</a> that he is bringing a new product-based leadership to core development and is assembling a <a href="https://wptavern.com/matt-mullenweg-proposes-wordpress-growth-council" target="_blank">Growth Council</a> to coordinate strategy with organizations invested in WordPress&#8217; growth.</p>\n<p>&#8220;I think in the past WordPress got by on a lot of marketing happenstance,&#8221; Mullenweg said. &#8220;We can become a lot more sophisticated with our messaging and presentation on WordPress.org to bring people in and tell the story about what makes WordPress different.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2016 20:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:69:"WPTavern: How to Change the Default Members Landing Tab in BuddyPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64592";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"https://wptavern.com/how-to-change-the-default-members-landing-tab-in-buddypress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2880:"<p>For the past two weeks, I&#8217;ve been helping a friend build his site. The site uses WordPress and BuddyPress and is the first opportunity I&#8217;ve had to use BuddyPress for a project. The site is dedicated to a Hockey League league that&#8217;s specific to a video game. The league has a number of players and teams.</p>\n<p>By default, when a visitor browses a BuddyPress member&#8217;s profile, the activity tab is displayed. Since a player&#8217;s team is displayed on a user&#8217;s profile, I wanted the profile tab to be the first thing users see. According to the <a href="https://codex.buddypress.org/getting-started/guides/change-members-profile-landing-tab/">BuddyPress Codex</a>, it&#8217;s possible to change the default landing tab by adding a line of code to either a bp-custom.php file or to wp-config.php. The code is as follows:</p>\n<p><code>/**<br />\n* Change BuddyPress default Members landing tab.<br />\n*/<br />\ndefine(''BP_DEFAULT_COMPONENT'', ''profile'' );</code></p>\n<p>As I didn&#8217;t want to create and upload another php file, I inserted the code into wp-config.php. At the time of writing this article, the help document on the BuddyPress Codex did not specify where in the wp-config file the code should be placed. After adding the code to the bottom of the wp-config file, I noticed it didn&#8217;t work.</p>\n<p>The trick is to add it to a place that runs before BuddyPress is fully loaded. I moved the code so that is was after the define(&#8216;DB_COLLATE&#8217;, &#8221;); line in wp-config. This allowed the code to run without any issues.</p>\n<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/BPAddedCodetoWPConfig.png?ssl=1"><img class="size-full wp-image-64616" src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/BPAddedCodetoWPConfig.png?resize=645%2C203&ssl=1" alt="Code Added to the Proper Place in the wpconfig File" /></a>Code Added to the Proper Place in the wp-config File\n<p>With the code in place, whenever someone clicks on a player&#8217;s name that&#8217;s mentioned in a post, the first thing they see is their profile and the team they&#8217;re assigned too.</p>\n<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/ProfilePageLoadsFirst.png?ssl=1"><img class="size-full wp-image-64617" src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/ProfilePageLoadsFirst.png?resize=645%2C370&ssl=1" alt="Profile Page Loads First in BuddyPress" /></a>Profile Page Loads First in BuddyPress\n<p>This is a small change in how BuddyPress works but for an implementor like me, it was a bit of a hassle. The largest obstacle in achieving what I wanted were the directions that don&#8217;t specify where in the config file the code should be placed. I&#8217;ve since edited the Codex article to prevent others from experiencing the same trouble.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2016 03:30:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: WPWeekly Episode 256 – Interview With Tony Perez, CEO and Co-Founder of Sucuri";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=64479&preview=true&preview_id=64479";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:96:"https://wptavern.com/wpweekly-episode-256-interview-with-tony-perez-ceo-and-co-founder-of-sucuri";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2577:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <a href="https://perezbox.com/">Tony Perez</a>, co-founder and CEO of <a href="https://sucuri.net/">Sucuri</a>. It&#8217;s easy to tell from this episode that Perez is extremely passionate about web security.</p>\n<p>We discussed a wide range of topics related to security including, trends involving WordPress, <a href="https://blog.sucuri.net/2016/10/security-confusion-fud-factor.html">the FUD factor</a>, messaging surrounding HTTPS, and what <a href="https://blog.sucuri.net/2016/10/accounting-for-defense-in-depth-in-website-security.html">Defense in Depth</a> really means. We also discussed the three basic elements of security, <a href="https://perezbox.com/2015/10/website-security-is-not-an-absolute/">people, process, and technology</a>.</p>\n<p>Perez spoke relatively quickly and at times, the conversation was technical. I recommend listening to the show at least twice in order to digest everything.</p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/product-review/">Product Review</a> comes with common features that you may need for a review focused site. This includes editor reviews, user reviews, segmented rating, pros and cons, affiliate button and a lot more.</p>\n<p><a href="https://wordpress.org/plugins/messenger-bot-for-woocommerce/">Messengerbot for WooCommerce</a> provides the ability to send your customers messages via Facebook Messenger. It supports Order Receipts, Order status changes, and Customer Order notes.</p>\n<p><a href="https://wordpress.org/plugins/email-tracker/">Email Tracker</a> is a plugin that notifies you if the emails sent by WordPress using the wp_mail function have been read or not. It displays statistics like how many times an email has been read with the date and time.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 21st 9:30 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #256:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2016 01:33:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: WordCamp Bangkok 2017 Adds English Track, Debuts New Wapuu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64566";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/wordcamp-bangkok-2017-adds-english-track-debuts-new-wapuu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1978:"<p>Tickets for WordCamp Bangkok 2017 <a href="https://2017.bangkok.wordcamp.org/tickets-are-ready/" target="_blank">went on sale</a> over the weekend and there are 235 remaining. The event will be held on February 18, 2017, at CP Tower on Silom Road. This is the third WordCamp to take place in the Bangkok area but organizers are including an English Track for the first time at this year&#8217;s event. The Thai and English tracks will run side-by-side and will include WordPress topics for users of all levels.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/wordcamp-bangkok-wapuu-e1482185243432.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordcamp-bangkok-wapuu-e1482185243432-300x274.jpg?resize=300%2C274&ssl=1" alt="" class="alignright size-medium wp-image-64601" /></a>Yesterday organizers <a href="https://2017.bangkok.wordcamp.org/wapuu-thailand/" target="_blank">unveiled the new Thailand Wapuu</a>, featuring traditional Thai garb and a banana stalk. Bananas leaves and stems, in addition to the fruit itself, make up an important part of Thai life with both ceremonial and practical uses.</p>\n<p>The calls for <a href="https://2017.bangkok.wordcamp.org/call-for-speakers/" target="_blank">speakers</a> and <a href="https://2017.bangkok.wordcamp.org/call-for-sponsors/" target="_blank">sponsors</a> are open and higher level sponsorships are already sold out. Speaker applications will be accepted through January 5, 2017.</p>\n<p>Previous WordCamps in the region were held in 2008 and 2009. During the past eight years the Thai WordPress community has grown and the <a href="https://www.facebook.com/groups/wpalliance/" target="_blank">Thai WordPress Alliance group</a> on Facebook now has more than 9,800 members. WordCamp Bangkok 2017 has a maximum capacity of 300 attendees. If you plan to go, make sure to purchase your ticket early before the event sells out.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2016 00:43:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:53:"WPTavern: WooCommerce Powers 42% of All Online Stores";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64550";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"https://wptavern.com/woocommerce-powers-42-of-all-online-stores";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5576:"<p>Last week Automattic<a href="https://automattic.com/year-in-review-2016/" target="_blank"> published</a> its annual &#8220;Year in Review&#8221; stats, including WooCommerce stats for the first time since the company <a href="https://wptavern.com/automattic-acquires-woocommerce" target="_blank">acquired Woo</a> in 2015. As of December, there are 1,594,894 active stores using WooCommerce and roughly 1/3 of those (530,000) are new in 2016.</p>\n<p>One of the most exciting areas of growth is WooCommerce&#8217;s global market share. Although both the Year in Review post and the <a href="https://woocommerce.com/" target="_blank">WooCommerce website</a> have the software at 39%, <a href="http://trends.builtwith.com/shop" target="_blank">Builtwith stats</a> show WooCommerce powers 42% of all online stores. This is a huge leap from 30% a year and a half ago, when it was acquired.</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/woocommerce-market-share.png?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/woocommerce-market-share.png?resize=1025%2C613&ssl=1" alt="" class="aligncenter size-full wp-image-64553" /></a></p>\n<p>WooCommerce market share is even higher in emerging markets like <a href="https://trends.builtwith.com/shop/country/India" target="_blank">India</a> (55% among stores using the .IN extension) and <a href="https://trends.builtwith.com/shop/country/Mexico" target="_blank">Mexico</a> (56% among stores using the .MX extension).</p>\n<h3>WooCommerce in 2017: Evolving Storefront for Independent Stores</h3>\n<p>In May 2016, <a href="https://wptavern.com/automattic-introduces-woocommerce-connect-hosted-components-for-e-commerce" target="_blank">WooCommerce introduced WC Connect</a>, its new Automattic-hosted SaaS architecture built on the WP REST API that makes it easier for users to add and configure store features. Real-time USPS shipping rates for US-based stores is the first of many planned hosted components. <a href="https://wptavern.com/woocommerce-2-6-introduces-shipping-zones-and-a-new-design-for-account-pages" target="_blank">Version 2.6</a> introduced the new Shipping Zones feature and an updated design for account pages. In 2016, WooCommerce also <a href="https://wptavern.com/woocommerce-releases-square-integration-to-sync-online-and-offline-purchases-and-inventory" target="_blank">released its Square integration</a> to sync online and offline purchases and inventory.</p>\n<p>The plan for 2017, according to the Year in Review summary, is to continue making setup and scaling easier. At WordCamp US I asked Matt Mullenweg, CEO of Automattic, what he looks for in a buying experience and how he hopes to bring that to WooCommerce.</p>\n<p>&#8220;When I buy from an independent store online, I&#8217;m looking for it to be as friction-free as possible,&#8221; Mullenweg said. &#8220;I don&#8217;t want a lot of steps. I don&#8217;t want it to force me to register if I don&#8217;t want to. I don&#8217;t want the form to error out in weird ways &#8211; anything that breaks my trust. When I visit a website to buy something, how a site looks can increase or decrease my trust.&#8221;</p>\n<p>WooCommerce&#8217;s official <a href="https://woocommerce.com/storefront/" target="_blank">Storefront theme</a>, which is active on more than 80,000 stores, plays an important part in shaping the buying experience for millions of customers. Mullenweg said Storefront has a lot of potential for improvement.</p>\n<p>&#8220;With the Storefront theme there&#8217;s actually a lot we can do there to make it look like a really cool store out of the box, much like the default themes in WordPress,&#8221; Mullenweg said. &#8220;Part of the reason we change them every year is what was cool in 2012 is not cool in 2017. Fashions change, trends change. I think Woo should evolve Storefront in the same way. There&#8217;s kind of a look for independent stores right now. They&#8217;ve got a certain vibe. Let&#8217;s make it easy to do that vibe, so that you don&#8217;t have to be on Etsy or Amazon or one of the e-commerce monoliths to keep people coming to you and supporting your product.&#8221;</p>\n<p>Mullenweg said there are features in the power packs and add-ons that could be good candidates for building into Storefront. The theme <a href="https://wptavern.com/woothemes-launches-storefront-a-free-wordpress-theme-with-woocommerce-integration" target="_blank">launched in 2014</a> and since that time has made mostly gradual improvements. The last major design improvements were released last May in <a href="https://github.com/woocommerce/storefront/blob/master/changelog.md#20160506---200" target="_blank">version 2.0</a>, but many store owners opt for a child theme if they want more extensive design changes to Storefront.</p>\n<p>If WooCommerce market share continues to grow at the same rate, it could easily pass 50% of all online stores in 2017. With <a href="https://woocommerce.com/meetups/" target="_blank">53 meetups</a> scattered across the globe &#8211; from Tokyo to Mumbai to Vancouver, the plugin is embracing the community factor that has made WordPress a success.</p>\n<p>&#8220;I think both Jetpack and WooCommerce individually could each be bigger than WordPress.com,&#8221; Mullenweg said. &#8220;They&#8217;re both smaller than WordPress.com right now but I think each on their own could be several times larger. There are multi-billion dollar opportunities in both, so that&#8217;s what we&#8217;re working on.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 19 Dec 2016 19:26:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: Podcast Motor Acquires Seriously Simple Podcasting Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/podcast-motor-acquires-seriously-simple-podcasting-plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2420:"<p><a href="http://seriouslysimplepodcasting.com/">Seriously Simple Podcasting</a>, created by <a href="https://hughlashbrooke.com/">Hugh Lashbrooke</a> in 2012, has been acquired by <a href="http://www.podcastmotor.com/">Podcast Motor</a>. The <a href="https://wordpress.org/plugins/seriously-simple-podcasting/">plugin</a> is actively installed on nearly 20K sites and out of 104 reviews, has an average rating of 4.9 stars.</p>\n<p>Lashbrooke no longer has the time to dedicate to the project, &#8220;I am in fact selling the plugin (along with all of its add-ons) as I just no longer have the time or bandwidth available to support it in the way that I know it deserves,&#8221; Lashbrooke said. Lashbrooke created the plugin to <a href="https://hughlashbrooke.com/2015/11/25/democratising-podcasting/">democratize podcasting</a> and says it was never meant to be a full-time project.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SSPSettingsPage.png?ssl=1"><img class="size-full wp-image-64542" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SSPSettingsPage.png?resize=1025%2C541&ssl=1" alt="Seriously Simply Podcasting Settings Page" /></a>Seriously Simply Podcasting Settings Page\n<p>Podcast Motor provides editing and production services to podcasters. Craig Hewitt, founder of Podcast Motor, acquired the plugin because of its established brand, ease of use, and it allows his company to serve a wider audience.</p>\n<p>Seriously Simple Podcasting will remain a free plugin and Hewitt will continue to support it through WordPress.org. He also plans to add free features to increase the plugin&#8217;s value, &#8220;This will include things like bulk importing of episodes/feeds from other providers, RSS feed validation, and some enhanced front end styling of the on-page podcast display,&#8221; he said.</p>\n<p>Hewitt is ready to breath new life into the project and is seeking feedback from users on what features they&#8217;d like to see added, &#8220;Our long-term goal is to enhance the functionality of the product so that it meets more needs of more podcasters down the road,&#8221; he said.</p>\n<p>Instead of abandoning the plugin or putting it up for adoption, Lashbrooke has found it a new home with a developer eager to improve on his work. If you use Seriously Simple Podcasting, what features do you want to see added?</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 16 Dec 2016 23:07:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: WP-CLI Project Launches Patron Support Model to Fund Ongoing Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64512";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wptavern.com/wp-cli-project-launches-patron-support-model-to-fund-ongoing-development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5912:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/wp-cli.png?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/05/wp-cli.png?resize=1025%2C411&ssl=1" alt="" class="aligncenter size-full wp-image-55961" /></a></p>\n<p>WP-CLI contributors have been <a href="https://wptavern.com/wp-cli-contributors-work-towards-a-more-sustainable-future-for-the-project" target="_blank">working towards a more sustainable future for the project</a> throughout 2016. Daniel Bachhuber, the project&#8217;s official maintainer, has launched an experiment to fund ongoing maintenance and new development, asking potential patrons, &#8220;<a href="http://wp-cli.org/blog/the-big-question.html" target="_blank">How much is WP-CLI worth to you?</a>&#8221; Options for contributions range from $100/yr &#8211; $7500/yr.</p>\n<p>This particular funding experiment is not asking for one-time contributions but rather follows a subscriber model where patrons will be billed annually. Bachhuber said he has a number in mind in order to consider the funding a success but he is not going to share it.</p>\n<p>&#8220;I want to see if this is a viable approach for funding a for-profit business,&#8221; Bacchuber said. He plans to fully refund subscribers if the campaign doesn&#8217;t reach its goal.</p>\n<p>Last year Bachhuber <a href="https://wptavern.com/a-more-restful-wp-cli-kickstarter-campaign-is-now-187-funded" target="_blank">raised $32,822</a> in a highly successful Kickstarter campaign from 107 backers, which funded development during the first part of 2016. After the campaign he started a business called <a href="https://runcommand.io/" target="_blank">runcommand</a> that offered enterprise support and custom development for hosts and agencies. This was an attempt to help subsidize his time spent on WP-CLI, but it didn&#8217;t work out the way he planned:</p>\n<blockquote><p>The business is doing alright, not great but not horrible. What I’ve come to realize, though, is that my time is zero-sum. I’m incentivized to spend time on runcommand, when I’d rather spend it on WP-CLI.</p>\n<p>Ultimately, the challenge I’m running into is opportunity cost. I’d love to be able to invest more into WP-CLI, but doing so comes at the cost of other business pursuits. Because WP-CLI is such a large project, the several hours I volunteer each week are basically enough to fight entropy — not make headway on larger initiatives.</p></blockquote>\n<p>Bachhuber said he hopes this patron-esque model will scale so he can hire a few people to work on WP-CLI, helping reduce his bus factor and creating a stronger contributor base.</p>\n<p>&#8220;The project itself is at a point where it needs dedicated attention from maintainers, not occasional changes from contributors,&#8221; Bachhuber said in response to commenters on the post.</p>\n<p>&#8220;I will, however, echo other comments here in regards to the wish for a public roadmap, more transparency, marketing efforts, and more in regards to the business being built upon WP-CLI,&#8221; subscriber Pippin Williamson said. &#8220;I have chosen to make my subscription payment as a donation to the project, not as a purchase/ of the product / service because, at this time at least, there&#8217;s not really anything I get out of it beyond continued development of the project.&#8221;</p>\n<p>Williamson said the new <a href="https://runcommand.io/wp/doctor/" target="_blank">wp doctor</a> and <a href="https://runcommand.io/wp/profile/" target="_blank">wp profile</a> commands would not be of much use to him or his team. He also suggested that Bachhuber sell a professional subscription that offers a library of additional commands for popular plugins, such as WooCommerce, Easy Digital Downloads, WP Migrate DB Pro, and Gravity Forms.</p>\n<p>&#8220;What I&#8217;ve come to appreciate is that WP-CLI will be far more successful in the long-term by building all of these in the open, instead of a more traditional model of making some selection of them paid-access,&#8221; Bachhuber said.</p>\n<p>Subscriptions will help fund the ongoing maintenance of WP-CLI, the creation of new commands, and improvements to the website and package index.</p>\n<p>For a project that is geared almost exclusively towards developers, there&#8217;s a surprisingly low number of contributors to its development. The brunt of it falls to Bachhuber as the official maintainer. His campaign puts the impetus on subscribers to help improve the tools they use every day through monetary contribution.</p>\n<p>Hopefully, funding the organization will also precipitate a culture shift resulting in more developers who are motivated to get their hands dirty and become personally invested in the code base. Funding one person&#8217;s time is not the most effective way to keep a project afloat and may not do much to reduce the bus factor on the project unless Bachhuber can hire or inspire more maintainers.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">This year, I''ve spent 308 hours on <a href="https://twitter.com/wpcli">@wpcli</a> (140 paid, 168 volunteer). Next year could be double or could be zero <a href="https://t.co/nujVBQZ3Bs">https://t.co/nujVBQZ3Bs</a></p>\n<p>&mdash; Daniel Bachhuber (@danielbachhuber) <a href="https://twitter.com/danielbachhuber/status/809056634337042432">December 14, 2016</a></p></blockquote>\n<p></p>\n<p>By choosing to wrestle with the challenges of funding open source software in a transparent way, Bachhuber is paving the way for other project maintainers to learn from his experiments and pursue similarly unorthodox funding options. So far WP-CLI has received 17 subscribers. If it reaches 50, Bachhuber plans to create a members-only forum. The <a href="http://wp-cli.org/blog/the-big-question.html" target="_blank">funding experiment</a> closes on December 28th.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Dec 2016 23:05:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Matt: A Poetition";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46988";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:34:"https://ma.tt/2016/12/a-poetition/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:239:"<p>Joseph O&#8217;Neill has <a href="http://www.newyorker.com/magazine/2016/12/12/pardon-edward-snowden">an amazing and funny poetry-related short story Pardon Edward Snowden in the New Yorker which pokes fun at itself quite a bit</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Dec 2016 20:11:10 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: WordPress.com Launches VR Content, Coming Soon to Jetpack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64486";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wptavern.com/wordpress-com-launches-vr-content-coming-soon-to-jetpack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4476:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/VR.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/VR.jpg?resize=960%2C589&ssl=1" alt="" class="size-full wp-image-64492" /></a>photo credit: <a href="https://stocksnap.io/photo/OQLN09UT3X">Sebastian Voortman</a>\n<p>WordPress.com <a href="http://en.blog.wordpress.com/2016/12/15/introducing-vr-and-360-content-for-all-wordpress-com-sites" target="_blank">announced</a> today that users can now upload and publish VR content on their sites, including 360° photos and 360° videos. Regular photos and panoramas are also now viewable in VR. The VR gear tested so far includes Cardboard, Gear, Daydream, Rift, and Vive.</p>\n<p>Uploading VR content works just like adding normal pictures and videos. Users can then add 360° photos and videos to posts using a &#8220;vr&#8221; shortcode. The Harvard Gazette&#8217;s <a href="http://news.harvard.edu/gazette/story/2016/10/confronting-the-refugee-crisis/" target="_blank">Confronting the Refugee Crisis</a> story is one live example of the new VR content in action:</p>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/vr-example.gif?ssl=1"><img src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/vr-example.gif?resize=523%2C526&ssl=1" alt="" class="aligncenter size-full wp-image-64503" /></a></p>\n<p>&#8220;Our goal is to make publishing VR content as simple as publishing text or photos to the web,&#8221; Automattic team lead Toni Schneider said. Schneider, who is <a href="https://toni.org/2016/06/06/comparing-the-vive-to-the-rift/" target="_blank">a big VR fan himself</a>, led the team to bring VR capabilities to WordPress.com. He <a href="https://toni.org/2014/10/29/my-vr-memory/" target="_blank">worked in a VR startup</a> in the 90&#8217;s after college and has been a VR fan ever since.</p>\n<p>&#8220;With the re-emergence of VR, it struck me that WordPress can play a role in making VR content easy to create and access for everyone, just like we did for text and photos,&#8221; Schneider said. His team at Automattic uses VR for collaboration and Schneider said &#8220;hearing [teammates&#8217;] voices in their proper spatial locations makes for a more natural and seamless collaboration experience&#8221; that feels less forced than a screenshare or video chat.</p>\n<p>Immersive storytelling driven by VR technology is also finding its way into the publishing industry. As part of his article in <a href="http://www.niemanlab.org/collection/predictions-2017/" target="_blank">NiemanLab&#8217;s Predictions for Journalism 2017</a> series, Mario García, a media consultant and adjunct professor at Columbia University Graduate School of Journalism, predicts that &#8220;storytelling using VR will be easier to achieve, and more members of the audience will be prepared to welcome it.”</p>\n<p>García cites the The New York Times and its <a href="https://www.nytimes.com/video/the-daily-360" target="_blank">Daily 360</a> section as one of the first publications to experiment with the medium. WordPress.com uses a similar UI, as you can see on the Harvard Gazette example, with an overlay that indicates VR content.</p>\n<p>&#8220;One form of storytelling that will gain momentum: virtual reality,&#8221; García said. &#8220;It’s no coincidence: Editors and publishers are looking for ways to tell stories on mobile devices, and the future of virtual reality is also on mobile. For many newsrooms, VR is going to be the one big area for experimentation in 2017.&#8221;</p>\n<p>WordPress.com is ready to ride this trend, making immersive storytelling available to all users &#8211; from large publications to small blogs. A few plugins, such as <a href="https://wordpress.org/plugins/vr-views/" target="_blank">VR Views</a> and <a href="https://wordpress.org/plugins/wp-vr-view/" target="_blank">WP-VR-view</a>, are already available for self-hosted sites, and WordPress.com plans to make its VR capabilities more widely available to the WordPress world soon.</p>\n<p>&#8220;It will be in Jetpack soon, as soon as the next Jetpack release comes out,&#8221; Schneider said. &#8220;The technology is built to work on all WordPress sites and even beyond that, on any web site. We consider this first release just a start. As soon as we see how people use it, we will start adding more features and supporting more types of VR experiences.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 15 Dec 2016 17:39:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"Matt: Another Dongle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46982";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:37:"https://ma.tt/2016/12/another-dongle/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:508:"<p>One of my favorite new .blogs is The Dongle blog, at dongle.blog. I think it&#8217;s mostly meant to be funny, but I really agree with this post pointing out you <a href="http://dongle.blog/an-opportunity-for-a-new-dongle/">really need something that lets you plug in your lightning headphones to your laptop</a>. I&#8217;ve been trying out <a href="https://www.amazon.com/Audeze-Closed-Back-Headphones-Integrated-Lightning/dp/B01FE8VM8Q/">the Audeze EL-8</a> and they only have a lightning connector.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Dec 2016 20:06:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Matt Mullenweg Proposes WordPress Growth Council";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=59774";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/matt-mullenweg-proposes-wordpress-growth-council";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9717:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2015/01/plants.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2015/01/plants.jpg?resize=1025%2C505&ssl=1" alt="" class="aligncenter size-full wp-image-38240" /></a></p>\n<p>During the last <a href="https://wptavern.com/wordsesh-4-now-available-on-video" target="_blank">WordSesh</a> event held in August 2016, Matt Mullenweg joined the community for a <a href="https://www.crowdcast.io/e/wordsesh4/21" target="_blank">session</a> where he spoke about the growth of WordPress and his thoughts on confronting the project&#8217;s external threats. Mullenweg floated the idea of a WordPress Growth Council &#8211; a collection of individuals and organizations interested in contributing to WordPress&#8217; growth.</p>\n<p>&#8220;We have very direct competitors in Squarespace, Weebly, and Wix,&#8221; Mullenweg said. &#8220;Wix is a public company so it&#8217;s actually possible to see their numbers and look at things. This year alone there&#8217;s about a quarter billion dollars being spent in marketing by proprietary systems that compete against WordPress. That&#8217;s more spent in one year than has ever been invested in all of the WordPress companies combined since they started. That&#8217;s more money spent in marketing than for many consumer brands.&#8221;</p>\n<p>WordPress has grown organically over the past 13 years through the power of its community, without expensive advertising campaigns or traditional marketing initiatives. For the first time, Mullenweg is looking to tap a segment of the community that hasn&#8217;t often been directly involved in contributions &#8211; people and organizations with large scale marketing expertise.</p>\n<p>&#8220;I think we could do a lot to figure out a roadmap for countering this huge marketing spending being directed against us, because we are the big guy here,&#8221; Mullenweg said. &#8220;We are the 26% and they are like a 1%. But even though they&#8217;re smaller, they might be cannibalizing some of the most valuable aspects of the WordPress customer base.&#8221;</p>\n<p>Just before WordCamp US, he formalized the idea with <a href="https://ma.tt/2016/12/wp-growth-council/" target="_blank">a post on his blog</a> and an open invitation for council member applicants:</p>\n<blockquote><p>\nNever have there been more threats to the open web and WordPress. Over three hundred million dollars has been spent in 2016 advertising proprietary systems, and even more is happening in investment. No one company in the WP world is large enough to fight this, nor should anyone need to do it on their own. We’d like to bring together organizations that would like to contribute to growing WordPress.</p></blockquote>\n<p>The <a href="http://mcm.polldaddy.com/s/wordpress-growth-council" target="_blank">survey for potential council members</a> asks them to share what they bring to the table as well as a few ideas about the growth of WordPress so far, how it can be accelerated, and how the project can best respond to the millions of dollars competitors are spending in advertising. Responses have already started coming in.</p>\n<p>Alexa Scordato, VP of Marketing at Stack Overflow, <a href="http://alexascordato.com/the-wordpress-growth-council-an-experiment-in-open-source-marketing/" target="_blank">applied to be part of the council</a>. She said her experience as a long-time WordPress user and marketing executive has motivated her to help improve the overall consumer experience.</p>\n<p>&#8220;I’ve been tinkering with self-hosted WordPress sites since 2007 and I’ve helped probably 100+ individuals and organizations explore the merits of the .com and .org experience,&#8221; Scordato said. &#8220;Let’s get real – the relationship is confusing, the admin panel is intimidating, and the learning curve is steep. The product marketer in me is itching to help streamline the value proposition across these funnels to help make it easier to educate and on-board new users.&#8221;</p>\n<p>She is also an advocate for the open web and sees WordPress as a key player in combating the threat of walled gardens and closed systems that diminish user freedoms.</p>\n<p>&#8220;While many enterprises are beginning to invest more in open source projects, there’s an imbalance in the force,&#8221; Scordato said. &#8220;The fact that an open source platform like WordPress powers 27% of the web makes it the greatest agent in defending Internet freedom.&#8221;</p>\n<p>Nuno Morgadinho, co-founder of WidgiLabs and co-organizer of WordCamp Lisbon, is another applicant to the growth council who <a href="http://www.morgadinho.org/2016/12/03/wp-growth-council/" target="_blank">published</a> thoughts on what it should address. He thinks WordPress needs to take a hard look at attrition before considering advertising.</p>\n<p>&#8220;As important as advertising is, a lot of businesses struggle and fail, not because they aren’t adding new users, but because they are lousy at keeping the ones they’ve got,&#8221; Morgadinho said. &#8220;We have to look at ourselves and see where we are losing users rather than just desperately try to reach new ones. Most people use things based on referrals.&#8221;</p>\n<h3>What Will the Growth Council Look Like?</h3>\n<p>After WordCamp US, I had the opportunity to ask Mullenweg a few questions about what types of applicants he&#8217;s hoping to attract to the council. He said he envisions it will function very much like a working group or mastermind group where council members learn from each other.</p>\n<p>&#8220;It&#8217;s not necessarily only people at larger companies &#8211; the biggest contributions will come from people who currently are or have in the past managed some sort of large promotion of something,&#8221; Mullenweg said. &#8220;It doesn&#8217;t need to be WordPress. Maybe they sold Starbucks. Large advertising campaigns are what we&#8217;re trying to counter so experience for that is a good precondition for participating in the growth council.&#8221;</p>\n<p>Mullenweg said he has received applications from people whose companies aren&#8217;t in the WordPress ecosystem but who are experienced in this area and want to contribute some night and weekend hours to help out.</p>\n<p>&#8220;I imagine there will be other folks, including from Automattic, that are going to be spending budgets of tens of millions of dollars in the coming year and want to talk about that,&#8221; Mullenweg said. &#8220;There are some things that could be shared, including publicly. Everyone who does marketing does some research first. Why don&#8217;t we open up that research? That&#8217;s part of what I want to encourage. By taking an open source approach to this, doing more sharing both within the council and in the wider WordPress community, I think there&#8217;s a lot more to learn.&#8221;</p>\n<p>Mullenweg said the meetings won&#8217;t be completely open, as companies may want to share some confidential information. The council may have some house rules in place to make it a safe space for companies to share what they are doing and to keep strategies safe from competitors.</p>\n<p>In 2017 Mullenweg has committed to putting on the &#8220;product lead&#8221; hat for WordPress core development and it seems he&#8217;ll be bringing that same approach to the growth council.</p>\n<p>&#8220;Advertising is just a product, just like an interface is, just like a website is, just like anything else,&#8221; Mullenweg said. &#8220;There&#8217;s a lot of opportunity there.&#8221;</p>\n<p>During his WordSesh session he outlined a few initial objectives for the council to tackle, including figuring out why the project has grown so far and understanding where the community&#8217;s resources are currently being spent.</p>\n<p>&#8220;We should try to enumerate and track what is being spent right now, add up all the advertising, affiliate fees, and sponsorships of events,&#8221; Mullenweg said. &#8220;Determine what that adds up to so we know what is the gap we need to close and the relative arsenals on both sides.&#8221;</p>\n<p>Mullenweg said he would like the council to figure out a plan for advertising where &#8220;we&#8217;re not competing with each other but really directing that outward against the folks who might go to Wix or Squarespace.&#8221; This particular aspect may be a challenge, as the council will need to avoid the appearance of serving only larger corporate interests in the fight against external threats.</p>\n<p>&#8220;These external threats and proprietary threats are far bigger than any intra-WordPress open source threats,&#8221; Mullenweg said. &#8220;We can grow the pie far faster than we can take shares from people in the same pie.&#8221;</p>\n<p>For the past three years, WordPress has consistently added 2% to its market share each year without any form of advertising. Instead of the project continuing to get by on &#8220;marketing happenstance,&#8221; as Mullenweg put it in the State of the Word address, 2017 will be the first year that WordPress makes a coordinated marketing effort to change the growth curve.</p>\n<p>&#8220;The people power of WordPress is probably the thing that contributes most to the usage of WordPress,&#8221; Mullenweg said. The growth council&#8217;s challenge with advertising is producing that same magnetism on a larger scale without tarnishing the organic quality of the message. Can they come up with a marketing campaign that captures the essence of what WordPress is to the people who love it most? If the council is successful, it stands to have a positive impact on the WordPress economy as a whole.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Dec 2016 19:50:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: UpdraftPlus Acquires WP-Optimize, Will Be Integrated Into UpdraftCentral";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64460";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:92:"https://wptavern.com/updraftplus-acquires-wp-optimize-will-be-integrated-into-updraftcentral";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4048:"<p><a href="https://updraftplus.com">UpdraftPlus</a>, a European company that maintains a <a href="https://wordpress.org/plugins/updraftplus/">backup plugin by the same name</a> with nearly 1M active installs, <a href="https://updraftplus.com/updraftplus-confirms-acquired-wp-optimize/">has acquired</a> the <a href="https://wordpress.org/plugins/wp-optimize/">WP-Optimize</a> plugin. WP-Optimize was created eight years ago by <a href="https://profiles.wordpress.org/ruhanirabin/">Ruhani Rabin</a> and is actively installed on more than 500K sites. Its primary function is to clean and optimize databases. WP-Optimize will become part of a suite of plugins that make up <a href="https://updraftplus.com/updraftcentral/">UpdraftCentral</a>, a service that allows users to manage sites remotely.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/WPOptimize.png?ssl=1"><img class="size-full wp-image-64466" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/WPOptimize.png?resize=819%2C673&ssl=1" alt="WP Optimize Settings Page" /></a>WP-Optimize Settings Page\n<p>In an effort to simply the process of optimizing databases, Rabin created WP-Optimize to automates tasks such as:</p>\n<ul>\n<li>Removing all unnecessary data (e.g. trashed/unapproved/spam comments, stale data) plus pingbacks, trackbacks and expired transient options</li>\n<li>Compact/de-fragment MySQL tables</li>\n<li>Perform optimizations without the need for running manual queries</li>\n<li>Show database statistics and potential savings</li>\n</ul>\n<p>WP-Optimize started as a personal project but when Rabin discovered that other users were looking for similar functionality, he uploaded the plugin to WordPress.org, &#8220;It ended up being a much bigger project than I imagined; when I connected with other people, I was suddenly opened up to a world of new challenges,&#8221; Rabin said. &#8220;I was encouraged to constantly improve the software’s functionality and compatibility, as well as the support information available.&#8221;</p>\n<p>As the plugin&#8217;s popularity and user base increased, it eventually became too much work to support and maintain. Rabin received a few acquisition offers over the years but decided not to sell, &#8220;For me, WP-Optimize’s legacy was of prime importance. I didn’t set it up to make money, but to help out as many people as possible,&#8221; he said.</p>\n<p>One of the reasons Rabin accepted UpdraftPlus&#8217; offer is his familiarity with the plugin and its business model, &#8220;Even though they are business-driven, they still have a great freemium ecosystem,&#8221; Rabin said. He also appreciates the company&#8217;s enthusiasm and drive to take the product to the next level.</p>\n<p>David Anderson, founder and lead developer of UpdraftPlus, says the acquisition makes perfect sense, &#8220;Although we see a lot of revolution on the outside, the WordPress core has been stable for a long time, and as such, there will always be a need for database optimization in order for sites to run efficiently.&#8221;</p>\n<p>As part of the acquisition, Rabin will take on an advisory role in its continued development. Multisite support, a commercial version with additional features, and the ability for users to control it remotely through UpdraftCentral, are among the top priorities in development.</p>\n<p>Since the acquisition, UpdraftPlus has released a new version of <a href="https://wordpress.org/plugins/wp-optimize/changelog/">WP-Optimize </a>that Anderson says paves the way for future developments, &#8220;This release has a complete re-factoring of the plugin’s internals, to lay a solid foundation for future improvements.&#8221;</p>\n<p>&#8220;Although it looks the same outwardly, it has been modernized and solidified,&#8221; Anderson said. &#8220;We have a great and growing team, a lot of experience in the internals of WordPress and also a lot of users who trust and depend on us. There’s plenty of opportunity for us to expand.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Dec 2016 19:39:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"HeroPress: Changing Careers with WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=1525";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/essays/changing-careers-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8191:"<img width="960" height="480" src="http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2016/12/121416-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Anyone who says it''s easy to change your life is lying to you." /><p>Working in WordPress full time did not come quickly, directly, or in the ways I expected, and it was worth every step of the way. I started out in marketing in the music industry and ended up as the project manager at a WordPress development agency nearly 10 years later. Changing careers is a lot of work and none of it happens by accident. Here’s a story about how I took some dashed hopes and an economic crash and turned it into everything I ever wanted.</p>\n<p>I started out by moving to NYC the day I graduated college to work in the music industry. Armed with my BA in English, I found my way in &#8211; I don’t care what anyone says, my English degree is my secret weapon.</p>\n<blockquote><p>If you can’t communicate effectively and hold someone’s interest in the process, it doesn’t matter how many letters you have after your name or how many specialized degrees you hold.</p></blockquote>\n<p>However, once I established myself as a project manager a major record label in the big city, it wasn’t easy to stay. I loved New York, but I did not love working nights to make ends meet. Realizing that my career in the music industry might not be something I could do long-term, I enrolled part-time in an accredited web development diploma program. All the classes were online, so I could do classwork around my work schedule. However, the record label was bought out and privatized, and the new owners instituted a 50% reduction in headcount worldwide. I tried to look at it as a blessing in disguise &#8212; more time to spend on completing my diploma while working fewer hours as a temp! But, answering phones and entering data didn’t exactly make me want to get out of bed in the morning. I tried to focus on shifting gears to becoming a developer.</p>\n<h3>Becoming A Developer</h3>\n<p>Though I got a great base of knowledge in HTML, CSS, PHP, Photoshop, light JavaScript, and, yes, Flash and ActionScript, I didn’t really have the goods to get a programming job right away. I was eventually re-hired in a different position by the record label, but this time I was slowly but surely working more digital into my marketing position. Finally, I had done enough to get another job as the head of digital marketing for a boutique music and entertainment-focused agency.</p>\n<p>Though I was finally doing the type of work I wanted to do, I was starting to feel like New York wasn’t where I needed to be. One major pull was my long-distance NY to LA relationship. Sometimes, career is just not enough to keep you in one spot, so in June of 2011, I moved to Orange County, CA.</p>\n<p>I was able to continue working remotely for the entertainment PR firm, but I wanted a more meaningful connection with the artists I was working with. I started freelancing for select bands, and then found a position handling all things internet-related for an Orange County-based artist management company.</p>\n<p>It was an absolute dream &#8211; I was the social media voice for one of my favorite bands, plus many more new clients and projects I would have loved even if I wasn’t on the management team. In the interest of meeting new people in this new place as well as learning something, I started attending the Orange County WordPress Meetup at Zeek Interactive and learned how to take my general knowledge of PHP and apply it to this CMS that everyone seemed to be talking about. As some of our up-and-coming bands needed websites, I’d volunteer to build them. It was cost-effective for the client, and it gave me a chance to try out all the things I’d learned at the OCWP meetup. I also served as internal project manager for sites built by an external agency.</p>\n<blockquote><p>I learned more from the many mistakes I made in developing websites than I did anything else.</p></blockquote>\n<p>Coding myself into a corner was an opportunity to grow through asking someone else to show me where I went wrong. For a while, the OCWP developer night featured some time for someone to get up in front of everyone, walk the group through an issue they were working on, show their steps and reasoning, and ask for assistance. All the more experienced developers in the room were very kind to me, several of them going out of their way to help me learn new concepts to make my themes even better.</p>\n<h3>Branching Out</h3>\n<p>Bands don’t need websites all that often, and I wanted to keep learning, so I found some non-entertainment website work to do on evenings and weekends. For a lot of it, I was a second pair of hands for another developer. For others, friends or friends of friends would come to me for help with their small business sites. These small sites worked out great, but I fully understood that the way I was working had a ceiling to it. If it’s a relatively small site with not a lot of traffic to scale, I could help. If it was going to be a big site that a lot of people would see, my code would probably not be ideal. I knew enough to be dangerous, and I knew how to fix a site if and when it white-screened, but not enough to implement all the latest and greatest techniques.</p>\n<p>So, I started looking to get back into my first love: project management, only this time for websites instead of musicians. Thankfully, my friend Steve Zehngut suddenly found himself with a need to replace his PM, and after we talked through goals and methods of working, we made it official.</p>\n<p>I’ve been the project manager at Zeek Interactive for two years now, and it’s been everything I could have ever hoped for. It took nearly a decade, retraining, lots of late nights and weekends spent learning new things and getting way outside my comfort zone, but I successfully changed industries and careers. Anyone who says it’s easy to change your life is lying to you. But I’m hard-pressed to find a reason not to do it anyway if you want to make new and better things happen.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Changing Careers with WordPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Changing%20Careers%20with%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchanging-careers-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Changing Careers with WordPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fchanging-careers-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fchanging-careers-wordpress%2F&title=Changing+Careers+with+WordPress" rel="nofollow" target="_blank" title="Share: Changing Careers with WordPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/changing-careers-wordpress/&media=https://heropress.com/wp-content/uploads/2016/12/121416-150x150.jpg&description=Changing Careers with WordPress" rel="nofollow" target="_blank" title="Pin: Changing Careers with WordPress"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/changing-careers-wordpress/" title="Changing Careers with WordPress"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/changing-careers-wordpress/">Changing Careers with WordPress</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 14 Dec 2016 12:00:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Sarah Wefald";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: Harare, Zimbabwe Hosts Its First WordCamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64419";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wptavern.com/harare-zimbabwe-hosts-its-first-wordcamp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3497:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordcamp-harare.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/wordcamp-harare.jpg?resize=1025%2C560&ssl=1" alt="" class="size-full wp-image-64426" /></a>photo credit: <a href="http://www.techzim.co.zw/2016/12/wordcamp-2016-harare-learning-pictures/">Limbikani Soul Makani Kabweza</a>\n<p><a href="https://2016.harare.wordcamp.org/" target="_blank">WordCamp Harare</a>, the first ever WordCamp in Zimbabwe, was held over the weekend at the Harare City Library. Harare was selected out of 182 applicants as one of the three locations for the <a href="https://wptavern.com/wordcamp-incubator-program-to-launch-in-indonesia-zimbabwe-and-columbia" target="_blank">WordCamp Incubator Program</a>. The experimental program launched in February 2016 with the goal of bringing WordCamps to new locations around the world where local meetups may not be as well established.</p>\n<p>WordCamp Harare was successful at connecting the Zimbabwean WordPress community and introducing the attendees to the concept of a WordCamp.</p>\n<p>&#8220;It was a great day because we met lots of people who are passionate about WordPress and building stuff on the internet,&#8221; Limbikani Soul Makani Kabweza said in his <a href="http://www.techzim.co.zw/2016/12/wordcamp-2016-harare-learning-pictures/" target="_blank">recap</a> of the event. Kabweza is a contributor at <a href="http://www.techzim.co.zw/" target="_blank">Techzim</a>, a Zimbabwean tech publication that runs on WordPress.</p>\n<p>&#8220;As Techzim (and the other startups we work with like <a href="http://www.soccer24.co.zw/" target="_blank">Soccer24</a> and <a href="http://www.pindula.co.zw/news/" target="_blank">Pindula</a>) the internet is our lifeblood, so a day dedicated to discussing internet platforms and how to do things better was the amazingly enriching experience we expected it to be.&#8221;</p>\n<p>Co-organizer Charles Muzonzini, who works as a web and mobile app developer with <a href="http://www.csz.org.zw/" target="_blank">The Computer Society of Zimbabwe</a>, said, &#8220;WordCamp Harare 2016 was an awesome success, far exceeding my expectations. Everything was on point and I’m glad to have met so many great people and learnt so much. This is hands down the best IT conference this year.&#8221; Muzonzini is also a co-organizer of the <a href="http://www.meetup.com/Harare-WordPress-Meetup/" target="_blank">Harare WordPress Meetup</a>, which now has 82 members.</p>\n<p>Job Thomas, who works as an Education Vanguard at Automattic, traveled from Cape Town to speak about WooCommerce at the WordCamp. In a <a href="https://2016.harare.wordcamp.org/open-source-empowering-africa/" target="_blank">guest post</a> for the event Thomas wrote about the importance of open source for the empowerment of Africa in removing hindrances for becoming successful.</p>\n<p>&#8220;It is great to see WordCamp Harare happening,&#8221; Thomas said. &#8220;WordCamps are not primarily events for communicating ideas – although this plays a big role. WordCamps are primarily a celebration of the open source community; they gather people with a similar passion for making the web a better place.&#8221;</p>\n<p>WordCamp Harare was the fourth WordCamp held in Africa in 2016, joining events in Nairobi, Johannesburg, and Cape Town in the expansion of the WordPress community in southern and eastern Africa.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Dec 2016 05:11:55 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"WPTavern: WordPress 2.7 Is the Role Model for How Design Can Lead the Way";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64183";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wptavern.com/wordpress-2-7-is-the-role-model-for-how-design-can-lead-the-way";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:11607:"<p>When Matt Mullenweg, co-creator of the WordPress open source project, <a href="https://videopress.com/v/IYfHX4jN?at=3472">announced that</a> design would lead the way for WordPress development in 2017, utilizing user research and mockups, the first thing that came to my mind was WordPress 2.7. That release was the culmination of effective leadership and effort from Jen Mylo and Liz Danzico. In order to learn why this release is in a class of its own, we must look at how it was created.</p>\n<h2>Introducing Crazyhorse</h2>\n<p>On March 29th, 2008, WordPress 2.5 &#8220;Brecker&#8221; <a href="https://wordpress.org/news/2008/03/wordpress-25-brecker/">was released</a> to the world. The biggest feature in 2.5 was the redesigned backend that was built in collaboration with <a href="http://happycog.com/">Happy Cog</a>.</p>\n<p>When Mullenweg gave the public a <a href="https://wordpress.org/news/2008/03/25-sneak-peek/">sneak peek</a> at the redesigned backend, he had this to say:</p>\n<blockquote><p>For the past few months, we’ve been working with our friends at Happy Cog — <a href="http://zeldman.com/">Jeffrey Zeldman</a>, <a href="http://jasonsantamaria.com/">Jason Santa Maria</a>, and <a href="http://bobulate.com/">Liz Danzico</a> — to redesign WordPress from the ground-up. The result is a new way of interacting with WordPress that will remain familiar to seasoned users while improving the experience for everyone. This isn’t just a fresh coat of paint — we’ve re-thought the look of WordPress, as well as how it’s organized so that you can forget about the software and focus on your own creative pursuits.</p></blockquote>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/WordPress25PostEditor.jpg?ssl=1"><img class="size-full wp-image-64399" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/WordPress25PostEditor.jpg?resize=1008%2C643&ssl=1" alt="WordPress 2.5 Post Editor" /></a>WordPress 2.5 Post Editor\n<p>While some people <a href="http://socializedsoftware.com/2008/03/30/wordpress-25-review/">praised the redesign</a>, others <a href="http://scottberkun.com/2008/wordpress-25-review/">were not happy</a>, particularly with the menu hierarchy. Since sentiment in the community was mixed, Mylo contracted Ball State University’s Center for Media Design, Insight and Research to <a href="https://wordpress.org/news/2008/10/usability-testing-report-25-and-crazyhorse/">perform a usability report</a> on the WordPress 2.5 admin design. The report was used to figure out which issues were based on interface problems versus people simply not liking the changes.</p>\n<p>Usability <a href="http://wpdotorg.wordpress.com/files/2008/10/wp-testreport-205-crazyhorse-1028a08jw.pdf">testing results</a> were shared with lead developers which inspired a prototype interface to address some of the issues discovered. This allowed developers to use WordPress 2.5 on their own sites and the prototype on a test site. However, once testing began with the prototype interface, it became clear that a more ambitious approach was required.</p>\n<p>According to Mylo, the second prototype known as &#8220;Crazyhorse&#8221; blew test subjects away:</p>\n<blockquote><p>The second round of testing blew everyone away. The research team had never seen such consistent results. Tasks were completed faster, participant opinions rated it higher, understanding of how interface elements worked was greater, and it wasn’t even a fully functional application. Of the test participants, every single one said they would choose the prototype over their current administrative interface, and it wasn’t even pretty.</p></blockquote>\n<p>Throughout the 2.7 development process, Mylo used a number of communication channels to gather user feedback. On September 15th, 2008, Mylo published a <a href="https://wordpress.org/news/2008/09/wordpress-27-navigation-options-survey/">Navigation Options Survey</a>. The survey was part of a broader effort to get more people involved in the design and decision process:</p>\n<blockquote><p>As part of the mission to increase user involvement in design decisions, we’ve created a survey intended to give WordPress users the ability to play a part in deciding how the navigation options should be grouped and labeled.</p></blockquote>\n<p>Later that month, a <a href="https://wordpress.org/news/2008/09/wordpress-2-7-survey-no2/">second survey</a> was created that allowed users to vote on mockups of the search box, favorites menu, the Future/Publish and Edit Timestamp buttons. It only took two days for the survey to reach its maximum response count of 5,000.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/CrazyhorseWireframe.png?ssl=1"><img class="size-full wp-image-64416" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/CrazyhorseWireframe.png?resize=894%2C666&ssl=1" alt="Crazyhorse Wireframe" /></a>Crazyhorse Wireframe\n<p>Once the survey concluded, Mylo <a href="https://wordpress.org/news/2008/10/wordpress-27-wireframes/">published a follow-up post</a> as well as a document containing <a href="https://wpdotorg.files.wordpress.com/2008/10/wf-dashboard_v002_093008jw.pdf">wireframes</a> that gave users an idea of what the end product might look like. Near the middle of October, 2008, Mylo <a href="https://wordpress.org/news/2008/10/the-visual-design-of-27/">published</a> semi-polished screenshots of the 2.7 interface and explained how it worked. Matt Thomas and Andy Peatling are largely responsible for the design of WordPress 2.7.</p>\n<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/WordPress27Dashboard.png?ssl=1"><img class="size-full wp-image-64418" src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/WordPress27Dashboard.png?resize=597%2C753&ssl=1" alt="WordPress 2.7 Dashboard" /></a>WordPress 2.7 Dashboard\n<p>The response to the screenshots was <a href="https://wordpress.org/news/2008/10/the-new-27-dashboard/">overwhelmingly positive</a>. A week after showcasing the 2.7 dashboard, Mylo <a href="https://wordpress.org/news/2008/10/calling-all-wordpress-loving-icon-designers/">asked the WordPress community</a> to create a set of icons to go with each of the navigation sections. More than a dozen people submitted icon sets and instead of choosing one, Mylo <a href="https://wordpress.org/news/2008/11/wordpress-27-project-icon/">let the community vote</a> on which set best matched WordPress 2.7&#8217;s style. With 35% of the vote, the <a href="https://wordpress.org/news/2008/11/the-results-of-project-icon/">winning set</a> was created by <a href="http://bendunkle.com/">Ben Dunkle</a>.</p>\n<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/BDIcons.png?ssl=1"><img class="size-full wp-image-64421" src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/BDIcons.png?resize=147%2C479&ssl=1" alt="Ben Dunkle''s Winning Icon Set" /></a>Winning Icon Set\n<p>I asked Dunkle what inspired him to create the icons and if Mylo didn&#8217;t offer the opportunity to the community the way that she did, if he would have contributed to WordPress 2.7 otherwise.</p>\n<p>&#8220;When I saw Jen&#8217;s post calling for icon designers to submit a set for 2.7, it was right at the deadline,&#8221; Dunkle told the Tavern. &#8220;I can&#8217;t remember how I found the post, since I didn&#8217;t visit the WordPress development blog very often. I&#8217;d been building sites with WordPress for few years by that time, and really enjoyed it, but I didn&#8217;t think much about the online community.&#8221;</p>\n<p>&#8220;Jen expressed the direction eloquently: &#8216;Icons should be subtle, with a classic/designed look, nothing cartoonish. Thin lines. Maybe a little old-fashioned looking.&#8217; I was designing icons for other open source projects around that time, and the language of the post struck a chord with me. I rushed out an email.</p>\n<p>&#8220;I ended up as a finalist, pushed the pixels, and sent off the design. Mine got the most votes. The contest caused some controversy, since anything resembling spec work has always been a lightning rod in the design community. I didn&#8217;t see it that way. It was an open source project and I was a volunteer, not a contractor.</p>\n<p>&#8220;In the end, it launched an ongoing connection that I maintain to this day. They&#8217;re now called Dashicons, made with vectors instead of pixels, and soon to be SVGs instead of web fonts (once we get the bugs sorted out).&#8221;</p>\n<p>After going through the beta and release candidate stages, WordPress 2.7 &#8220;Coltrane&#8221; was <a href="https://wordpress.org/news/2008/12/coltrane/">released to the public</a> on December 11th, 2008. More than 150 people contributed code directly to the release and countless others contributed with valuable feedback during opportune times through surveys, mailing lists, and testing.</p>\n<p>Referring to WordPress 2.7, longtime user Ozh <a href="http://planetozh.com/blog/2008/12/a-journey-through-five-years-of-wordpress-interface/">had this to say</a>, &#8220;The dev team asked users what they wanted and what they liked, and the result is light years beyond what the design studio produced for 2.5 six months earlier. One word to summarize it all: &#8216;Above the fold!''&#8221;</p>\n<h2>WordPress 2.7 Set a Great Standard</h2>\n<p>During Contributor day at WordCamp US 2016, I asked Mullenweg if the WordPress 2.7 development process inspired the experimental approach to developing WordPress in 2017.</p>\n<blockquote><p>Yeah, I mean that was one of the beginnings to Jen&#8217;s contributions and her huge impact on the WordPress world. She brought an entirely different way of thinking with a user first, usability, research led mindset. It was fantastic to have female leadership demonstrating very early on in the WordPress community that this is software made by everyone for everyone. What that was for its time is a great standard to hold ourselves up to as we move forward in 2017.</p></blockquote>\n<p>Out of all the WordPress releases I&#8217;ve covered since 2007, WordPress 2.7 is special. It&#8217;s the only release where I feel like a lot of the community rallied together and focused on making WordPress better. Through surveys, comments, blog posts, testing, and reaching out to talented people in the community for help, Mylo proved that the community can be part of the development and design process of WordPress and end up with a better product as a result.</p>\n<p>Things have changed since 2008. The community, contributor pool, and the project itself has become larger. Communication is spread out among the Make Blogs as well as SlackHQ. The WordPress development process is more open now than ever before. Since WordPress 2.7&#8217;s release, I haven&#8217;t felt the same spark of rallying together for a common goal that Mylo was able to foster. Perhaps it&#8217;s because I&#8217;m not part of a project team like the REST API or I&#8217;m not searching for it in the right places. I hope those feelings are rekindled in 2017.</p>\n<p>It will be interesting to see how the new development process works out. Until then, I leave you with a wonderful quote from Mylo as it succinctly captures the way I feel and remember the WordPress 2.7 development cycle.</p>\n<p>&#8220;I hope you enjoy getting an inside look at how we’ve been organizing our thoughts around 2.7, and that when the community feedback starts flowing everyone remembers that we all want the same thing: the best WordPress possible.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Dec 2016 01:56:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Matt: State of the Word, 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=46950";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://ma.tt/2016/12/state-of-the-word-2016/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2117:"<p></p>\n<p>The full video and Q&amp;A from 2016&#8217;s State of the Word last week in Philadelphia is now online. This year was especially exciting because it wasnt&#8217; just a look back at the previous year, but sets out a new direction for where WordPress will be in 2017 and beyond.</p>\n<p>If you want just the slides, here they are:</p>\n<p>  </p>\n<div> <strong> <a href="https://www.slideshare.net/photomatt/state-of-the-word-2016" title="State of the Word 2016" target="_blank">State of the Word 2016</a> </strong> from <strong><a target="_blank" href="http://www.slideshare.net/photomatt">photomatt</a></strong> </div>\n<p>Like every year, there was a ton of help bringing this together. Mark Uraine led the slides, and at various points these folks pitched in as well: Mel Choyce, Tammie Lister, Michael Arestad, Ashleigh Axios, Ian Dunn, Corey McKrill, Martin Remy, Josepha Haden, Alex Kirk, Marina Pape, Alx Block, Cami Kaos, Matias Ventura, Donncha O Caoimh, John Maeda, Barry Abrahamson, Nikolay Bachiyski, Chrissie Pollock, Sam Sidler, Boris Gorelik, Dion Hulse, Brooke Dukes, Sarah Blackstock. I also got input and suggestions from Petya Raykovska, Tony Perez, Joe Casabona, Helen Hou-Sandi, Jon Bossenger, Jason Cohen, Daniel Bachhuber, Drew Butler, Ryan Boren, Andrew Roberts, Joost de Valk, Stephane Daury, Dion Hulse, Gary Pendergast, David Bisset, Ryan McCue, Alex Shiels, Brian Krogsgard, Joe Hoyle, Sean Blakeley, Andrew Nacin, Mark Jaquith, John Blackbourn, and thank you to Rose Kuo for inspiring the poetry theme which featured prominently this year.</p>\n<p><a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle">Tavern</a> and <a href="https://poststatus.com/matt-mullenweg-state-word-2016/">Post Status</a> wrote up the talk itself. As a follow-up I did interviews with both to expand on some of what was discussed in the speech. The <a href="https://poststatus.com/interview-matt-mullenweg-new-wordpress-release-cycle/">Post Status one is now up</a> and you can watch it here:</p>\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2016 21:10:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: Bluehost Network Outage Hits Customers with 12 Hours of Downtime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64386";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:81:"https://wptavern.com/bluehost-network-outage-hits-users-with-12-hours-of-downtime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4435:"<p>Over the weekend, <a href="https://www.bluehost.com/" target="_blank">Bluehost</a> experienced a severe, widespread network issue that caused customer sites to go down. The incident began Friday evening and continued into the night. As WP Tavern is hosted on Bluehost, we were watching the situation with keen interest, finally clocking the downtime at 12 hours before our site was back up.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">We are seeing problems w/ network flapping which could be caused by denial of service or other network issues in our switching fabric. (1/5)</p>\n<p>&mdash; Bluehost (@bluehost) <a href="https://twitter.com/bluehost/status/807394100630667265">December 10, 2016</a></p></blockquote>\n<p></p>\n<p>The Bluehost Twitter and Facebook accounts kept customers updated as network engineers worked to resolve the issue. Shortly after midnight Bluehost said they identified a network loop within a portion of the network. Staff worked to restore services &#8220;while making sure we do not reintroduce the loop into the network.&#8221;</p>\n<p>At approximately 10 hours into the downtime, Bluehost updated customers who were still down, citing &#8220;a packet filtering problem&#8221; in its core routing layer for which the team had created a fix. Within a couple more hours most of the company&#8217;s customers were back online.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">We have identified a packet filtering problem in our core routing layer. We have worked closely with our vendor to develop a global fix- 1/2</p>\n<p>&mdash; Bluehost (@bluehost) <a href="https://twitter.com/bluehost/status/807491514830098432">December 10, 2016</a></p></blockquote>\n<p></p>\n<p>Bluehost&#8217;s earliest communications about the downtime indicated a DDoS attack may have caused the incident, though this is no longer a strong consideration.</p>\n<p>&#8220;It doesn’t appear to be a DDoS but we are conducting a full investigation,&#8221; Bluehost head of product Brady Nord told the Tavern after the incident. His team worked around the clock to identify and resolve issues until customer sites came back up.</p>\n<p>&#8220;Many of our dedicated and VPS customers were affected to some degree for approximately 12 hours,&#8221; Nord said. &#8220;We made every attempt to keep our customers informed during the event as information became available because we understand our customers depend on our products and services.&#8221;</p>\n<p>Nord would not share further details about the cause of the outage but said the company plans to complete a detailed post mortem to prevent future outages.</p>\n<p>&#8220;With any significant event that affects our customer base, we conduct an extensive examination after the event to ensure we understand the root cause and develop a course of action to improve our systems and procedures,&#8221; Nord said.</p>\n<p>Bluehost is one of the hosts listed on <a href="https://wordpress.org/hosting/" target="_blank">WordPress&#8217; recommended hosting page</a> and Nord said roughly 2/3 of the company&#8217;s customer base uses WordPress.</p>\n<p>&#8220;The incident last night mainly impacted our dedicated and VPS customers which is a lower density section of the platform,&#8221; Nord said.</p>\n<p>Bluehost has not yet published the results of its investigation, but support staff have <a href="https://twitter.com/bluehostsupport/status/807670769685856256" target="_blank">replied</a> to customer inquiries with a fairly definitive assessment of the issue as having been due to a spanning tree issue on their core routing layer.</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr"><a href="https://twitter.com/saxangle">@saxangle</a> Sure we can tell you what happened. We discovered a spanning tree issue on our core routing layer which caused network degradation</p>\n<p>&mdash; help.bluehost.com (@bluehostsupport) <a href="https://twitter.com/bluehostsupport/status/807670769685856256">December 10, 2016</a></p></blockquote>\n<p></p>\n<p><a href="http://www.cisco.com/c/en/us/support/docs/lan-switching/spanning-tree-protocol/10556-16.html" target="_blank">Spanning tree protocol</a> misconfigurations can cause network problems similar to what Bluehost experienced but results of the investigation should confirm whether this was the root of problem that took customer sites down over the weekend.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2016 17:48:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:11:"\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:52:"HeroPress: WordCamp US Talk, The People Of WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://heropress.com/?p=1524";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/wordcamp-us-talk-people-wordpress/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2810:"<p>I was incredibly honored to speak at WordCamp US in Philadelphia this year. It was especially cool to hear from people all over the world watching on the live stream.</p>\n<p>The hardest part was telling only a few stories that would fit into the time slot, and not every story on this site.</p>\n<p>If you missed the talk, it&#8217;s now on <a href="http://wordpress.tv/2016/12/11/topher-derosia-heropress-the-people-of-wordpress/">WordPress.tv</a>, but you can also watch it right here.</p>\n<p></p>\n<p>I love speaking, and I&#8217;ll probably talk about HeroPress again, what are some other topics and ideas you&#8217;d like to hear about?</p>\n<p>Please leave a comment and let me know.</p>\n<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: WordCamp US Talk, The People Of WordPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=WordCamp%20US%20Talk%2C%20The%20People%20Of%20WordPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Fwordcamp-us-talk-people-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: WordCamp US Talk, The People Of WordPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fwordcamp-us-talk-people-wordpress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fwordcamp-us-talk-people-wordpress%2F&title=WordCamp+US+Talk%2C+The+People+Of+WordPress" rel="nofollow" target="_blank" title="Share: WordCamp US Talk, The People Of WordPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/wordcamp-us-talk-people-wordpress/&media=http://heropress.com/wp-content/plugins/rtsocial/images/default-pinterest.png&description=WordCamp US Talk, The People Of WordPress" rel="nofollow" target="_blank" title="Pin: WordCamp US Talk, The People Of WordPress"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/wordcamp-us-talk-people-wordpress/" title="WordCamp US Talk, The People Of WordPress"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/wordcamp-us-talk-people-wordpress/">WordCamp US Talk, The People Of WordPress</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 12 Dec 2016 00:50:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"Post Status: Interview with Matt Mullenweg on the new WordPress release cycle and more";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=31281";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"https://poststatus.com/interview-matt-mullenweg-new-wordpress-release-cycle/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1765:"<p>During contributor day of WordCamp US in Philadelphia, I was able to interview Matt Mullenweg to follow up on several items he announced in the <a href="https://poststatus.com/matt-mullenweg-state-word-2016/">State of the Word</a>.</p>\n<p>We mostly discussed the new WordPress development cycle and how it will work with the three focus areas. We also discussed how that will affect other non-major updates and WordPress features.</p>\n<p>Matt also talked about the WordPress REST API, how he defines success for it, what he hopes to see out of it, and what he thinks would cause it to revert to a plugin only feature.</p>\n<p>And as this was the second and final year of WordCamp US in Philadelphia, we reflected on the event, and talked about what there is to look forward to in Nashville for WordCamp US 2017 and 2018.</p>\n<p>You can listen to just the audio, also on our podcast, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher.</p>\n<a href="https://audio.simplecast.com/54882.mp3">https://audio.simplecast.com/54882.mp3</a>\n<p><a href="https://audio.simplecast.com/54882.mp3">Direct Download</a></p>\n<p>Or just watch the <a href="https://www.youtube.com/watch?v=Lh5DF5-6UoE">video on YouTube</a>, or below for the full experience. And don&#8217;t forget to subscribe to <a href="https://www.youtube.com/c/PostStatus">my new channel on YouTube</a>.</p>\n<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 10 Dec 2016 22:53:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"bbPress: bbPress 2.5.12 – Requires WordPress 4.7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://bbpress.org/?p=179733";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://bbpress.org/blog/2016/12/bbpress-2-5-12-requires-wordpress-4-7/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:959:"<p>Oh, bother! Out now is bbPress 2.5.12, which fixes a bug for WordPress 4.7 users who did the right thing and updated to bbPress 2.5.11. Some of you may have noticed your bbPress menu items disappear &#8211; this release fixes that stinger. <img src="https://s.w.org/images/core/emoji/2/72x72/1f41d.png" alt="🐝" class="wp-smiley" /></p>\n<p>2.5.12 officially bumps the minimum WordPress version requirement to 4.7 for all releases going forward. If you are stuck on a previous version of WordPress, please continue to use 2.5.11.</p>\n<p>This cut-off is in place because the improvements to user-roles in WordPress 4.7 are really that important, and all future bug-fix releases to 2.5 and major releases going forward will be taking advantage of them.</p>\n<p>If you&#8217;ve updated to 4.7 and are one of the unlucky few to get stung by the missing-menu bug, please accept my sincere apologies along with an update to 2.5.12 to relieve the itching.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Dec 2016 08:02:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"John James Jacoby";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:59:"WPTavern: WPWeekly Episode 255 – All About the Customizer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=64372&preview=true&preview_id=64372";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wptavern.com/wpweekly-episode-255-all-about-the-customizer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2964:"<p>In this episode of WordPress Weekly, <a href="http://marcuscouch.com/">Marcus Couch</a> and I are joined by <a href="https://weston.ruter.net/">Weston Ruter</a> and <a href="http://celloexpressions.com/">Nick Halsey, </a>lead developers of the <a href="https://make.wordpress.org/core/components/customize/">Customize component</a> in WordPress.</p>\n<p>I invited Ruter and Halsey on the show to give us some insight into its origin and why it was created. We also discuss its evolution since WordPress 3.6 and why it&#8217;s an important <a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle">part of WordPress&#8217; future</a>.</p>\n<p>The duo shared their experience of what it&#8217;s like to iterate on a feature that routinely receives push-back from a subset of the community. We also talk about the perception that features are continuously being crammed into the Customizer when it&#8217;s really about adding live previews to WordPress functionality.</p>\n<p>Last but not least, Ruter and Halsey describe what improvements we can expect to see going forward. For details on how to contribute to the Customize component, please visit the <a href="https://make.wordpress.org/core/components/customize/">Make Core Customize Component </a>website.</p>\n<h2>Plugins Picked By Marcus:</h2>\n<p><a href="https://wordpress.org/plugins/product-designer/">Product Designer</a> allows you to display an awesome Product Designer on your website via short-code. You can add unlimited clip art using a custom post. Text can be used with a fancy font family, font size and color.</p>\n<p><a href="https://wordpress.org/plugins/text-to-speech-widget/">Text To Speech Widget</a> converts any text into speech in a selected language and voice. It supports 63 voices in different languages. The plugin is based on HTML5 and doesn&#8217;t require using Flash.</p>\n<p><a href="https://wordpress.org/plugins/featured-products-first-for-woocommerce/">Featured Products First for WooCommerce</a> allows a product in WooCommerce to be featured on the first shop page as well as search results. It also comes with a sidebar widget to display featured products on the homepage.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, December 14th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href="https://wptavern.com/feed/podcast" target="_blank">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr" target="_blank">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #255:</strong><br />\n</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Dec 2016 01:23:24 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: WordCamp Europe Calls for Host City Applications for 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64343";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"https://wptavern.com/wordcamp-europe-calls-for-host-city-applications-for-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3711:"<a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/planning.jpg?ssl=1"><img src="https://i1.wp.com/wptavern.com/wp-content/uploads/2016/12/planning.jpg?resize=960%2C416&ssl=1" alt="" class="size-full wp-image-64370" /></a>photo credit: <a href="https://stocksnap.io/photo/5ZMT04MIW6">Oli Dale</a>\n<p>Even though the <a href="https://2017.europe.wordcamp.org/2016/11/28/join-us-as-a-speaker-at-wordcamp-europe/" target="_blank">call for speakers</a> for WordCamp Europe 2017 has just opened, organizers are already on the hunt for a city to <a href="https://2017.europe.wordcamp.org/2016/12/08/apply-to-host-wordcamp-europe-2018/" target="_blank">host the event in 2018</a>. The team chosen to host in 2018 will need to be planning throughout 2017 and should be present on the ground in Paris, so the selection process is already underway.</p>\n<p>WordCamp Europe is currently WordPress&#8217; largest community event, and support and mentorship have been a key part of its success. Petya Raykovska, a past organizer, said the prospect of organizing the event can be intimidating for new teams but mentors will be available to applicants throughout the process.</p>\n<p>&#8220;The mentors are supposed to help the local teams prepare a better application,&#8221; Raykovska said. &#8220;They are all experienced WCEU organizers who can help with many aspects of the planning.&#8221;</p>\n<p>Host city selection is based on more than two dozen factors, including organizer experience, location, venue, and budget considerations. One of the most challenging aspects is securing a venue that can accommodate 3,000 attendees, but applicants are given a lot of flexibility on the event date.</p>\n<p>&#8220;We ask volunteers to book a venue for 3,000 people,&#8221; Raykovska said. &#8220;Not only are there not many venues that can fit us at this scale, most of them are booked years in advance.&#8221;</p>\n<p>Raykovska said organizers can book dates anywhere from May 1 &#8211; June 31, 2018. This makes it possible to have more cities and venues vying to host the event.</p>\n<p>Raykovska volunteered in Leiden in 2013 and helped organize WordCamp Sofia after that. In 2014, she applied to host WordCamp Europe in Sofia along with Tina Kesova, Nikolay Bachiyski, Veselin Nikolov, and Mario Peshev. Since that time she has been involved in organizing the event and mentoring newcomers. Potential applicants are encouraged to get in touch if they are wondering if their team has what it takes.</p>\n<p>&#8220;Sometimes these conversations serve as a reality check,&#8221; Raykovska said. &#8220;People can get super enthusiastic about organizing without having an idea of the time commitment. We want WCEU to be a positive experience for organizers and make sure our local teams have enough people and are aware what it takes to get involved as a local host.&#8221;</p>\n<p><a href="https://2017.europe.wordcamp.org/2016/12/08/apply-to-host-wordcamp-europe-2018/" target="_blank">Applications for host city</a> will be open through February 15, 2017 and the decision will be made by the end of February. The team selected for 2018 will then join the 2017 planning team to gain a better understanding of the process. Potential applicants who want to be matched to a mentor can get in touch by emailing host at wp-europe.org.</p>\n<p>&#8220;In late 2013, one tweet pushed the WordCamp Sofia team to apply to host WCEU,&#8221; Raykovska said. &#8220;It turned into the most incredible journey I&#8217;ve taken so far with stops further beyond the future host cities of Seville, Vienna, and Paris. It&#8217;s time for someone to write the next chapter of the story.&#8221;</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Dec 2016 23:44:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"Post Status: Photos from Post Status Publish and WordCamp US 2016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=31040";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:52709:"<p>Last week was a whirlwind of events. On Thursday, December 1st, I hosted the inaugural <a href="https://poststatus.com/publish">Post Status Publish</a>, which was a ton of fun. And following that event, we had three straight days of <a href="https://2016.us.wordcamp.org">WordCamp US</a>.</p>\n<p><a href="https://twitter.com/rzen">Brian Richards</a> and I teamed up to take pictures and cover the event.</p>\n<h3>Post Status Publish</h3>\n<p>Publish was on Thursday. We have a lot of video, but fewer pictures. Here is a selection taken by Brian Richards. If you took photos at Publish, we&#8217;d love to see them as well!</p>\n\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-1/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-1-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-4/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-4-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-3/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-3-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-6/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-6-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-5/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-5-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-7/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-7-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-8/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-8-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-10/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-10-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-9/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-9-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-11/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-11-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-12/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-12-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-14/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-14-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-13/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-13-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-16/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-16-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-15/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-15-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-17/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-17-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-19/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-19-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-20/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-20-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-21/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-21-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-22/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-22-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-24/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-24-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-23/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-23-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-25/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-25-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-26/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-26-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-27/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-27-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-28/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-28-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-29/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-29-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-31/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-31-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-32/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-32-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-34/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-34-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/publish-2016-33/"><img width="114" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/publish-2016-33-114x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n\n<h3>WordCamp US</h3>\n<p>Then there was WordCamp US. I unfortunately didn&#8217;t get to any sessions other than Matt&#8217;s State of the Word. But thankfully they&#8217;ll all be up on WordPress.tv, so I can catch up on the many that I wanted to attend.</p>\n<p>All photos directly before and during Matt&#8217;s <a href="https://poststatus.com/matt-mullenweg-state-word-2016/">State of the Word</a> are by Brian Richards. I took most of the hallway shots.</p>\n\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-1/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-1-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-2/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-2-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-3/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-3-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-4/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-4-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-5/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-5-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-6/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-6-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-8/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-8-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-7/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-7-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-10/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-10-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-11/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-11-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-12/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-12-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-14/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-14-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-13/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-13-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-16/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-16-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-15/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-15-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-17/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-17-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-18/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-18-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-19/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-19-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-20/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-20-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-21/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-21-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-22/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-22-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-24/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-24-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-23/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-23-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-25/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-25-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-27/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-27-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-28/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-28-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-29/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-29-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-30/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-30-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-31/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-31-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-32/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-32-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-33/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-33-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-35/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-35-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-34/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-34-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-36/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-36-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-37/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-37-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-39/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-39-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-38/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-38-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-41/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-41-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-40/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-40-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-43/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-43-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-42/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-42-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-44/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-44-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-45/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-45-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-47/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-47-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-46/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-46-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-48/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-48-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-49/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-49-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-51/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-51-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-50/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-50-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-52/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-52-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-53/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-53-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-54/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-54-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-55/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-55-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-57/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-57-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-56/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-56-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-58/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-58-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-59/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-59-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-60/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-60-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-61/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-61-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-62/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-62-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-63/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-63-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-66/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-66-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-65/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-65-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-67/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-67-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-68/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-68-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-69/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-69-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-70/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-70-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-71/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-71-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-72/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-72-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-73/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-73-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-74/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-74-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-75/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-75-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-76/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-76-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-77/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-77-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-78/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-78-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-79/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-79-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-80/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-80-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-81/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-81-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-82/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-82-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-83/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-83-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-84/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-84-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-85/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-85-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-86/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-86-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-87/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-87-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-89/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-89-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-92/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-92-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-93/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-93-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-96/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-96-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-97/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-97-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-101/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-101-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-102/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-102-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-103/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-103-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-104/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-104-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-105/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-105-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-106/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-106-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-107/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-107-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-108/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-108-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-110/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-110-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-111/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-111-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-112/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-112-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-113/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-113-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-114/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-114-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-115/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-115-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-116/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-116-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-117/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-117-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-118/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-118-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-119/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-119-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-120/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-120-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n\n<h3>WordCamp US Contributor Day</h3>\n<p>Finally, Contributor Day was on Sunday. In addition to the contributor area itself, lunch was at the market where you can choose from a variety of lunch spots, with common cafeteria seating. I had an awesome spicy roast pork sandwich from Dinic&#8217;s, which I took a few pictures of as well.</p>\n\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-122/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-122-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-121/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-121-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-123/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-123-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-124/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-124-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-125/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-125-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-127/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-127-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-126/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-126-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-128/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-128-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-129/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-129-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-130/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-130-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-131/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-131-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-132/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-132-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-133/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-133-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-134/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-134-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-135/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-135-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-136/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-136-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-137/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-137-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-138/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-138-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-139/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-139-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-140/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-140-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-141/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-141-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-142/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-142-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-143/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-143-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-144/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-144-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-145/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-145-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-146/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-146-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-147/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-147-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-148/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-148-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-149/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-149-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-150/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-150-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-151/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-151-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-152/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-152-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-153/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-153-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-154/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-154-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-155/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-155-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-156/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-156-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-159/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-159-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-158/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-158-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-161/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-161-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-160/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-160-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-163/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-163-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-162/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-162-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-164/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-164-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-165/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-165-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-166/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-166-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-167/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-167-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-168/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-168-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-169/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-169-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-170/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-170-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-172/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-172-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-171/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-171-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-174/"><img width="150" height="100" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-174-150x100.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n<a href="https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/wcus-2016-173/"><img width="100" height="150" src="https://cdn.poststatus.com/wp-content/uploads/2016/12/wcus-2016-173-100x150.jpg" class="attachment-thumbnail size-thumbnail" alt="" /></a>\n\n<p>I&#8217;ll have more coverage of both Publish and WordCamp US for Post Status Members in the coming days. In the meantime, I hope you enjoy the pictures! If you&#8217;d like to use any of them, you are free to do so, and while credit is not required, it&#8217;s always appreciated.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Dec 2016 20:49:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WPTavern: GoDaddy Acquires WP Curve, Aims to Become a One-Stop Shop for WordPress Professionals";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64287";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/godaddy-acquires-wp-curve-aims-to-become-a-one-stop-shop-for-wordpress-professionals";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5040:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/09/godaddy-logo.jpg?ssl=1"><img src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/09/godaddy-logo.jpg?resize=680%2C295&ssl=1" alt="" class="aligncenter size-full wp-image-61236" /></a></p>\n<p><a href="https://wpcurve.com/" target="_blank">WP Curve</a>, a WordPress services business that focuses on completing small jobs for customers, <a href="https://wpcurve.com/wp-curve-joins-godaddy/" target="_blank">announced</a> this week that GoDaddy has acquired the company. Founders Dan Norris and Alex McClafferty bootstrapped WP Curve in 2013 and have processed 105,000+ jobs through its pipeline.</p>\n<p>&#8220;WP Curve complements GoDaddy’s expanding WordPress offering including Managed WordPress and the recent ManageWP addition,&#8221; the company said in the announcement.</p>\n<p>Existing customers will be on-boarded to GoDaddy accounts with their current subscriptions. After the transition, the newly acquired WP Curve team will assist in scaling the services to support GoDaddy&#8217;s WordPress customers. Norris plans to exit the company and McClafferty will lead the team at GoDaddy.</p>\n<h3>GoDaddy&#8217;s Plans for WP Curve</h3>\n<p>Gabe Mays, head of WordPress Products at GoDaddy, said the WP Curve acquisition is an important part of GoDaddy&#8217;s goal to become &#8220;a one-stop shop for WordPress professionals.&#8221; Roughly one third of all GoDaddy sites are running on WordPress, and half of all new sites are using the software. This is one of the reasons GoDaddy plans to <a href="https://wptavern.com/wordpress-passes-27-market-share-banks-on-customizer-for-continued-success" target="_blank">invest in improvements to WordPress&#8217; core customizer component</a>.</p>\n<p>&#8220;WP Curve will help us in two ways,&#8221; Mays said. &#8220;First we’re adding WP Curve’s WordPress experts to the company and we’ll leverage their expertise to improve the training and tools for the hundreds of GoDaddy Customer Care representatives that support our customers globally.</p>\n<p>&#8220;Second, we’ll directly offer WP Curve&#8217;s services to our customers,&#8221; Mays said. &#8220;This combination will be amazing for our customers and create a compelling one-stop shop for WordPress professionals and their clients.&#8221;</p>\n<p>Mays said WP Curve&#8217;s services &#8220;will continue to be offered as standalone services&#8221; but GoDaddy may consider adding them to its hosting plans sometime in the future.</p>\n<p>&#8220;Down the road it&#8217;s possible we&#8217;ll see aspects integrated into our Hosting plans to improve the customer experience, especially for nascent WordPress users,&#8221; Mays said.</p>\n<p>Mays would not comment on whether GoDaddy has more acquisitions in the pipeline, but the company is likely to require additional expertise if it aims to become a one-stop shop for WordPress professionals. GoDaddy is part of a more recent trend of hosting companies acquiring WordPress products and services, including its <a href="https://wptavern.com/godaddy-acquires-wordpress-site-management-service-managewp" target="_blank">ManageWP acquisition</a> and <a href="https://wptavern.com/flywheel-acquires-wordpress-local-development-tool-pressmatic" target="_blank">Flywheel&#8217;s purchase of Pressmatic</a>. The trend has sparked some recent discussion on Twitter regarding &#8220;hosting companies eating WordPress:&#8221;</p>\n<blockquote class="twitter-tweet">\n<p lang="en" dir="ltr">If software is eating the world, then hosting companies are eating WordPress.</p>\n<p>&mdash; Cory Miller (@corymiller303) <a href="https://twitter.com/corymiller303/status/805891418866806784">December 5, 2016</a></p></blockquote>\n<p></p>\n<p>Mays sees this notion as a positive development and an opportunity for hosts to become more deeply invested in WordPress core and the surrounding ecosystem.</p>\n<p>&#8220;We see it as win-win for hosts and the WordPress community, more investment in WordPress is better for everyone,&#8221; Mays said. &#8220;For example, this year we hired our first core contributor, contributed full translations to some of the most popular themes and plugins, built a number of themes and plugins and contributed them to the WordPress repo and more. As a WordPress community we need all the investment we can get to reach our 50% goal and beyond.&#8221;</p>\n<p>Just days after the WP Curve acquisition, GoDaddy <a href="https://aboutus.godaddy.net/newsroom/news-releases/news-releases-details/2016/GoDaddy-Acquires-Host-Europe-Group-Becomes-Market-Leader-In-Europe-For-Small-Business-Cloud-Services/default.aspx" target="_blank">announced</a> its acquisition of <a href="https://www.heg.com/" target="_blank">Host Europe Group</a> (HEG) for $1.8 billion. HEG is Europe&#8217;s largest privately-owned web services provider in Europe and the purchase delivers 1.7 million new customers to GoDaddy, expanding the company&#8217;s international reach.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Dec 2016 20:49:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: The Value of Sponsoring a WordCamp from a Business’ Perspective";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=64315";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wptavern.com/the-value-of-sponsoring-a-wordcamp-from-a-business-perspective";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:27974:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/tony-perez-sucuri.jpg?ssl=1"><img class="wp-image-64317 size-thumbnail" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/tony-perez-sucuri.jpg?resize=150%2C150&ssl=1" alt="Tony Perez, CEO of Sucuri" /></a>Tony Perez, CEO of Sucuri\n<p>This is a guest post written by Tony Perez, <a href="http://perezbox.com/about/">co-founder and CEO</a> of <a href="https://sucuri.net">Sucuri</a>. Sucuri is a website security platform that helps clean and protect websites. I would consider us a small mid-sized company. Our annual sponsorship budget is in the range of $300 &#8211; $400k per calendar year (CY).</p>\n<p>One of the industry events we’ve been actively participating in since our inception has been WordCamps. Unlike 2015, in 2016 I decided to be more pragmatic in the way we invest in WordCamps. This new approach stemmed from two basic questions &#8211; <b>What is the ROI of sponsoring a WordCamp and should a business sponsor a WordCamp?</b></p>\n<p>One qualifier I want to add before getting started is that tracking success at events is very difficult. Even with the number of tools and approaches in the market, many organizations struggle getting their hands around the actual ROI of any event sponsorship. This means that many of the points in this post are not unique to the WordPress ecosystem, but the uniqueness and openness of the community makes it worth discussing.</p>\n<hr />\n<h1>The Reality of WordCamps and Sponsors</h1>\n<p>It’s been many years since I helped co-organize a WordCamp (<a href="https://2011.sandiego.wordcamp.org/">San Diego back in 2011</a>), and there is no denying that a lot has changed in the way they are put together. The one thing that hasn’t changed however, is the struggle organizers face when it comes to fundraising. Over the years we’ve seen a number of awesome initiatives by the <a href="http://wordpressfoundation.org/">WordPress Foundation</a> to help assist in the process.</p>\n<p>At <a href="https://2016.us.wordcamp.org/">WordCamp US 2016</a>, <a href="https://wptavern.com/state-of-the-word-2016-mullenweg-pushes-calypso-as-future-of-wordpress-interface-proposes-major-changes-to-release-cycle">the State of Word reported </a>that in 2016 alone there were:</p>\n<ul>\n<li>116 WordCamps around the world</li>\n<li>36,000 attendees</li>\n<li>2,056 speakers</li>\n<li>1,036 sponsors</li>\n<li>750 organizers</li>\n</ul>\n<p>What makes it even more impressive is that these are events put on by volunteers. Matt Mullenweg also shared that these WordCamps are made possible by the generosity of the various sponsors which cover 85 &#8211; 95% of the costs associated with such events.</p>\n<p>It’s because of these sponsors that the costs are kept so low for attendees; including the annual event (WCUS) which came in at a cost greater than $500 per person but sold for ~$20 / day (Total of $40 / person). This is truly a herculean feat, and I commend them on their success to date.</p>\n<h1>The Sponsor Canoe Is Leaking</h1>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/Canoes.png?ssl=1"><img class="size-full wp-image-64321" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/Canoes.png?resize=705%2C210&ssl=1" alt="Canoes" /></a>photo credit: dolbinator1000 <a href="http://www.flickr.com/photos/126654539@N08/25305151246">Boyhood</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>\n<p>With this in mind, I think it’s fair to say that at the rate things are going we might find ourselves with a problem of scale. While there have been 1k + sponsors in 2016, I would wager that a majority of the money is likely coming from a smaller subset of that group.</p>\n<p>Taking this into consideration, unless you’re Automattic, I can’t help but imagine that as a business the ROI question continues to come up as it does for me. This is further compounded by the dramatic increase in the <strong>a)</strong> request for sponsorships (# of camps) and <strong>b)</strong> the economics of the sponsorship itself (the $$ amount).</p>\n<p>This makes me think that it’s only a matter of time when the source of funds will be exhausted. Organizations have fiduciary responsibilities to their companies to spend their cash flow wisely, especially in today’s turbulent economic times.</p>\n<p>The impacts of this, as highlighted above, are going to be felt (if not already) by those volunteers trying to put on these great WordCamps. This will become exceptionally difficult for new camps, especially those in remote cities and countries.</p>\n<h1>Why Do Businesses Sponsor WordCamps?</h1>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/QuestionmarkSmaller.png?ssl=1"><img class="size-full wp-image-48305" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2015/09/QuestionmarkSmaller.png?resize=650%2C200&ssl=1" alt="Smaller Question mark featured image" /></a>photo credit: <a href="https://www.flickr.com/photos/matthewmcvickar/4380126801/">Matthew McVickar</a> &#8211; <a href="http://creativecommons.org/licenses/by-nc-sa/2.0/">cc</a>\n<p>There is one common phrase every business that has invested in WordCamps has come to terms with &#8211; <b>sponsorships are done in-kind; expect nothing</b>.<i> I’m not clear how this guidance came to be, whether it was explicitly outlined by the Foundation or guidance that came to be over time. What I do know is that a good number of sponsors are familiar with it. </i></p>\n<p>Whether intended or not, allow me to be the first to publicly admit that while we are familiar with the phrase, no one really subscribes to it. The dirty little secret is that every business has some form of an expected ROI. It’s not always financially based, but there is some expectation. Companies sponsor events because there is some vested interest unless we’re talking about a child’s gymnastics or softball team.</p>\n<p>ROI takes many different shapes. Allow me to share the ROI as I see it when I look across the spectrum of some of today’s top sponsors (know that these are all my opinions as a third-party observer):</p>\n<h3><b>GoDaddy </b></h3>\n<p>They sponsor because they need to. When they came into the space two to three years ago, after the changing of the guard they identified the potential in WordPress. They had an image problem; one that couldn’t be fixed remotely. It had to be fixed with boots on the ground.</p>\n<p>Building relationships. Sharing experiences. Engaging influencers (do not underestimate the power of influencers). Whatever you might think of the brand today is nothing compared to what it was a few years ago. WordCamps have been a critical piece of their strategy to make this work. Who doesn’t know <a href="https://ifyouwillit.com/about-mendel-kurland/">Mendel Kurland</a>?</p>\n<h3><b>SiteGround </b></h3>\n<p>When they started to make their big push into the market, they were at every camp giving away free accounts. For them, it wasn’t about the short-term gain as much as the long-term gain. They had everything going against them. They were from Bulgaria working to service the biggest economic market, the US. They were trying to penetrate what many would argue was an already saturated market.</p>\n<p>I remember when they first appeared. No one knew them, and yet through their guerrilla marketing tactics, brand ambassadorship, stellar performance with customers, and word-of-mouth referrals, they are a powerhouse in the WP hosting space.</p>\n<h3><b>WP Engine</b></h3>\n<p>While they exploded through a number of initiatives, I believe that WordCamps and their strategy to engage with the community is what propelled them ahead of their competitors. Their focus wasn’t revenue generation early on. I recall their free accounts campaign. I think it ran for close to two years.</p>\n<p>What better combination than to have a freemium-like model where all you have to do is focus on user adoption (oversimplification of course). Your product and support are spot on, you just need more people touching it, more people telling their friends about it. They grew organically and these events made that possible.</p>\n<h3><b>Automattic</b></h3>\n<p>Honestly, they have no choice but to sponsor. They are the project sponsor by design. They are in many ways tied to the success and continued growth of the platform. They too have their free services that require adoption and user growth, things like Jetpack, Akismet, WooCommerce, and so many others.</p>\n<p>Without growth, they are dead solutions. They have to show support for a product that they’ve gone all in on. If they don’t sponsor, why would anyone else? Their fates are intertwined.</p>\n<p>And the observations go on. Granted, these are obvious gross oversimplifications, but I share them to highlight what ROI can look like. I also share them to show you what success looks like, and what the DNA of these organizations look like. Most of the scenarios above are built on the idea of “free” or “free-ish” services, with the exception being GoDaddy whose prices are so low you might as well consider them a freemium-like model.</p>\n<h1>Measuring the ROI of Events</h1>\n<p>What happens if you’re a premium service though? In this scenario, your ROI is no longer about adoption or user growth. Instead you’re now focused on growth in the form of revenue and sales. User adoption will never be as great as the freemium model.</p>\n<p>As organizations, we’ve invested a lot of money. There has to be something we’re getting out of this. Only in the WordCamp community have I seen this idea that people will donate not only time, but money, under the assumption that there will be nothing at the end of the tunnel.</p>\n<p>I wanted to better understand this myself, and what better place to look for ROI than our own data here at Sucuri.</p>\n<p>The data below highlights the period between December 2015 &#8211; June 2016. I encourage other businesses to share their own data to add to the conversation. When speaking to ROI, I looked for measurable attributes first:</p>\n<ul>\n<li>How many marketing leads were captured?</li>\n<li>How many sales leads were captured?</li>\n<li>How many of those leads converted to sales?</li>\n<li>What kind of exposure did we get via social?</li>\n<li>What kind of exposure did we get via backlinks?</li>\n</ul>\n<p>Perhaps the biggest immeasurable metric being:</p>\n<ul>\n<li>What kind of brand awareness are you really getting?</li>\n</ul>\n<p>In the table below, <b>sponsorship</b> is exactly what you’d think, while <b>financial investment</b> implies ancillary costs of getting people there, lodging and eating. It does not include labor, collateral, shipping and other items.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucurisWordCampsInvestments.png?ssl=1"><img class="size-full wp-image-64325" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucurisWordCampsInvestments.png?resize=996%2C265&ssl=1" alt="Sucuri WordCamp Investments Dec. 2015 - June 2016" /></a>Sucuri&#8217;s WordCamp Investments Dec. 2015 &#8211; June 2016\n<p>This chart shows the ROI we got in terms of money (did we close deals?) As a for-profit business one of the many attributes we look at are the total net-new customers we can generate from any investment, including events.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriCPLCACInvestment.png?ssl=1"><img class="wp-image-64327 size-full" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriCPLCACInvestment.png?resize=887%2C259&ssl=1" alt="Sucuri Investment CPL/CAC Analysis" /></a>Sucuri Investment CPL/CAC Analysis\n<p>To date, from all the events including WordCamp US (2015), we were able to track a total of 13 deals that closed from a direct engagement at the event. Putting the Customer Acquisition Cost (CAC) in the neighborhood of $12.4k per closed lead.</p>\n<p>This means that my lifetime value (LTV), if they purchased a basic plan at $199.99 would have to be 45 years. If they purchased our $499.99 plan, we&#8217;d be looking at a 18 year LTV.</p>\n<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriInvestmentMeasurableROI.png?ssl=1"><img class="size-full wp-image-64328" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriInvestmentMeasurableROI.png?resize=1006%2C165&ssl=1" alt="Sucuri Investment Measurable ROI" /></a>Sucuri Investment Measurable ROI\n<p>Focusing on exposure, it is one of the many things you get from sponsoring an event. You get linkbacks from the event, shout outs on the pages, posts highlighting your sponsorship. What does that really amount to? Can it be measured? The easiest way to answer these questions was to look at the main site links and social engagements.</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriWebSocialImpact.png?ssl=1"><img class="size-full wp-image-64329" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/SucuriWebSocialImpact.png?resize=577%2C304&ssl=1" alt="Sucuri Web / Social Sponsorship Impact" /></a>Sucuri Web / Social Sponsorship Impact\n<p>We generated 190 sessions total, the most coming from WordCamp US (at the time of the event, not leading up to it, or after). We generate over 500k sessions a month across all our platforms. This makes 190 total sessions over a six month period negligible.</p>\n<p>In my review, we looked at direct traffic from referrals and traced down the social <b>&#8220;thank you&#8221;</b> and <b>&#8220;promotions&#8221;</b> each event provided. It&#8217;s fair to note, that the lack of success in the measurable values above could be very closely be related to our ineffectiveness as an organization as well. We could just be really bad at working events; it’s an art in and of itself.</p>\n<p>I intentionally did not include marketing leads. For me, my focus is looking at what actually converts so when we go to events, we place more emphasis on qualified sales leads (opportunities) than marketing leads; I am not very big on getting into the card collection and SPAM business.</p>\n<p><b>What does this all mean?</b></p>\n<p>Well, if I was a rational person this would mean that as a premium service provider, investing in WordCamps doesn’t make sense. Trust me, I love the community. We are involved in many ways, but this is really too difficult to digest and justify. I wonder what happens when more companies, even the ones that I shared above, start doing the same mathematics.</p>\n<h1>The WordCamp Sponsorship Conundrum</h1>\n<p>The WordPress platform promotes the idea of Free and targets a very curious niche of people &#8211; self-service/Do It Yourself (DIY) types. By this self-proclaimed profile, they are not buyers of premium services; they are the ones that will invest sweat equity to build or find an alternative to their problem &#8211; <b>it just has to be free. </b></p>\n<p>This ideology is fine, but it also means that it frankly may not be the right market for most premium businesses. I would be remiss however, if I did not highlight the fact that a number of the sponsors for WCUS 2016 were premium service providers. The only challenge I would make to this claim is that just because they are sponsoring, doesn’t mean they are getting a return.</p>\n<p>I’d also challenge it and say some of them have a need to sponsor for some of the same reasons described above. Just because a premium service sponsors, it doesn’t mean their goal is defined purely around selling, in many instances it’s built around brand awareness and ambassadorship &#8211; especially unknown brands, or those with bad reputations. GoDaddy is a perfect example of this.</p>\n<p>Does this mean that there is no hope? No, I don’t think so. I just think we have to ask ourselves some key questions, both as organizations and a community. To assist in the conversation, I’ve highlighted a few areas that I find challenging as a business and encourage others to introduce their own. If nothing else, this can help both the Foundation and organizers alike better work with sponsors.</p>\n<h2>The Audience Quality Factor</h2>\n<p>When we turn our attention to WordCamps, events designed to promote and bring together these ideals, you realize that the problem with WordCamps for businesses is the audience.</p>\n<p>I&#8217;m by no way saying that their current design is bad for what WordCamps were designed for. On the contrary, I&#8217;d say they&#8217;ve done an exceptional job sticking to their predefined audience, at least in terms of cost bracket. They don’t, however, do a good job of differentiating between the various personas in attendance. They’re all rolled up into one big bucket. This creates a severe imbalance between the economic investment and audience potential.</p>\n<p>This imbalance I think has to do with the quality of the audience. This is not meant to imply that the audience is not good in their own right, but from a company perspective not so much (i.e., as a potential customer). In a world where everything is expected to be free, and quickly commoditized, how do you bridge that divide?</p>\n<p>This also has residual effects as well into the quality that can be expected at the event, in terms of organization, presentation and speakers. There are so many different ways this can go, does it mean WordCamp Pro like events? I’m not sure, but what I do know is that in it’s current incarnation something has to give.</p>\n<p>Granted, this does not apply to everyone. I know a number of theme shops that bring and meet their customers at these events. Where closing one deal cannot only cover their costs, but set them up nicely for a couple of months.  My points here are more tailored at product / premium shops that are operating at a very different scale and configuration.</p>\n<h2>Increasing Number of Events Globally</h2>\n<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2013/05/WPWorldLogo.jpg?ssl=1"><img class="alignright size-full wp-image-6948" src="https://i0.wp.com/wptavern.com/wp-content/uploads/2013/05/WPWorldLogo.jpg?resize=200%2C160&ssl=1" alt="WordPress World" /></a>The sheer volume of camps and sponsorships presents a very big problem, not just for the Foundation but for businesses as well. Which ones do you invest in? Which will offer the most return?</p>\n<p>I assure you, these are the conversations that are occurring. There are so many, and it’s impossible to invest in them all (at least in a meaningful way). This will continue to put undue pressures on all the organizing teams looking to raise funds. I think you can see an example of this with this years WCUS 2016 sponsorships, a very different (stark) representation of today’s reality when it comes to sponsorships.</p>\n<p>Yes, I&#8217;m very familiar with the new Global Sponsorship opportunities the Foundation has put together. They&#8217;re divided by geographic region, and don&#8217;t include the main geographic events like WordCamp US and WordCamp Europe. The prices are below:</p>\n<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/GlobalSponsorshipOpportunities.png?ssl=1"><img class="size-full wp-image-64326" src="https://i2.wp.com/wptavern.com/wp-content/uploads/2016/12/GlobalSponsorshipOpportunities.png?resize=730%2C143&ssl=1" alt="Global Sponsorship Prices" /></a>Global Sponsorship Prices\n<p>It’s definitely a great idea, but providing a large sum of cash that gets distributed across events that you may or may not attend isn’t something I’m particularly fond of. I worry about the longevity of this program, and while I know there are always new sponsors, what will the churn look like in the program. Only time will tell.</p>\n<h2>Impacts of a Corporation Type</h2>\n<p>For those unfamiliar, the entity responsible for facilitating the growth and management of WordCamps around the world is now known as the <a href="https://make.wordpress.org/community/2016/03/02/transitioning-to-wordpress-community-support/">“WordPress Community Support (WPCS) Public Benefit Corporation (PBC)”</a>. This new entity is a subsidiary of the WordPress Foundation, which is still a non-profit, and established in 2016 (Yes, Matt said it’d take effect in 2017 but I’m pretty sure that was in error).</p>\n<blockquote><p>After March 31, sponsorship payments sent to WordPress Foundation accounts will be returned to sender. Please send <a href="https://make.wordpress.org/community/handbook/wordcamp-organizer-handbook/first-steps/budget-and-finances/running-the-money-through-wpcs/#sponsorship-revenue">revised payment instructions</a> to any sponsors who have not yet paid.</p></blockquote>\n<p>This new entity is what is known as a benefit corporation, and should NOT be confused with a b-corp. Although it is used in many instances interchangeably, there are a number of differentiating factors, the biggest being that to obtain a b-corp classification an entity must be certified.</p>\n<blockquote><p>B Corps are for-profit companies certified by the nonprofit B Lab to meet rigorous standards of social and environmental performance, accountability, and transparency.</p></blockquote>\n<p>Establishing a PBC to handle the WordCamps I firmly believe was done with the best of intentions for the community, but it does present a few challenges for private businesses. A PBC is still a private for-profit company. The biggest difference, however, is that unlike other corporation types (e.g., C, S, etc..) a PBC allows an organization to be a charter (or mission focused) in addition to more traditional goals of generating profits for its shareholders.</p>\n<p>This change is a bit more significant than might be implied when reading through <a href="https://make.wordpress.org/community/2016/03/02/transitioning-to-wordpress-community-support/">the announcement</a>. One of the driving forces for the change was to make the sponsorship process easier for both the organizers and sponsors alike:</p>\n<blockquote><p>One of the main advantages to the change from the WordPress Foundation (a non-profit) to the WPCS (a public benefit corporation) is that the rules around sponsoring official WordPress events are much simpler.</p>\n<p>The people involved in overseeing the program have updated sponsor rules accordingly, to eliminate the barriers to value-adding stuff like direct links, discounts, and calls to action, while keeping the ones that helped us form such a trustworthy, community-focused sponsor program, like the rule about not using superlatives or unprovable claims.</p></blockquote>\n<p>As a prior WordCamp organizer, there is perhaps no greater challenge in my mind than asking people for money. While my experience was back in 2011, I can only imagine that the struggles are still the same and one of the things leveraged when pitching to companies are the benefits of a non-profit. The non-profit classification was not just about securing donations like venues (which is very important) but it’s critical for some in securing the dollars they require.</p>\n<p>For a company, it also makes it harder to justify the costs. As the dollar investment continues to increase, the one thing that could always be counted on was the non-profit status. By changing it to a private organization (on paper) it’s donating money to another company (regardless of what the mission may or may not be). This might not be a big deal for some, but when we start talking significant investments, it becomes a serious problem.</p>\n<h1>Incentivizing Businesses</h1>\n<p>When you read through the <a href="https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/fundraising/wordcamp-sponsorship/#wordcamp-sponsorship-rules-for-2016">Sponsorship rules for 2016</a> the changes are not incentivizing enough for a business. The biggest change being the ability to print comparisons or introduce pricing on collateral, both of which are insignificant as you can account for most of your physical collateral to end up in the trash and difficult to track.</p>\n<p>I believe there will be, or are changes in the works, to include pricing on virtual print as well which will definitely be a positive move, but I defer to the ROI measurements above as well.</p>\n<p>While the idea of incentivizing a business might be repulsive, it’s a necessity. As a good friend of mine mentioned, it’s about exposure for businesses. If we’re investing significant dollars and being such pivotal players in the success of these events, then we’re going to ask for as much exposure as possible.</p>\n<p>We’re also going to push the limits of our imaginations and require some flexibility, in return I think most companies would willingly be open to negotiation and flexibility. If ROI is going to be based on exposure and brand awareness, we need to be able to capitalize on that.</p>\n<p>What might be interesting here is to perhaps do a survey of businesses, those that have been supporting the WordCamp communities for years, and take a poll. Maybe present some options and make them part of the process. Even if it’s a fixed list, maybe ask for a wishlist of things; things that can be discussed and openly taken into consideration.</p>\n<p>Like I tell my teams &#8211;<b>most reasonable people don’t need to always win, they just want to be heard and be part of the process.</b> This applies to companies as well. When it comes down to it, it’s but a few people at each organization that will be your evangelists.</p>\n<h1>WordCamp Sponsorship Can Work</h1>\n<p>I am not saying that sponsoring WordCamps is not valuable. I’m also not saying that it’s a lost cause working with WordCamps.  I am saying that it’s important to have a dialog if longevity is what we’re after in the community,  sponsorships are the bloodline that keep these events going.</p>\n<p>There is little that can be done about the growth of events or the new subsidiary (and I don’t think either is bad). They are today’s realities and as organizations we’ll have to work through them independently.</p>\n<p>The two areas I think can be improved on is the audience and how businesses are incentivized.</p>\n<ul>\n<li>I’m not particularly hopeful of the audience, that’s a problem the community will need to solve and not necessarily something the Foundation should concern themselves with. If I were the Foundation, I would be doing exactly what they are doing &#8211;<b> keep the price as low as possible to make it reachable to everyone (need a low barrier to entry). </b>We’ve already seen a few events attempt this, and the best example in my opinion so far has been <a href="https://wooconf.com/">WooConf</a> and <a href="https://wpcampus.org/">WPCampus</a>.</li>\n</ul>\n<ul>\n<li>The one I’m more hopeful of is how businesses are incentivized. If we can agree that at a minimum all organizations are looking for exposure, then that should be the easiest place to start. A few examples might include: speaking guarantees, more prominent branding, access to some form of audience information. Yes, some of these are highly controversial, but I have faith that together we can make something work that is in line with the spirit of these events. I would also encourage other camps to look at <a href="https://2017.miami.wordcamp.org/">WordCamp Miami</a>; beyond  having a Learn JavaScript Deeply track, they do an exceptional job with the way they engage with their sponsors.</li>\n</ul>\n<p>I share this post as a way to provide a perspective that I hope is unique and valuable. If it starts a discussion, and opens a better dialog between businesses, WordCamp organizers and the Foundation then I will consider it a success. Sponsors are a critical piece to the continued success and growth of these community events, and I’d like to ensure that continues.</p>\n<div id="epoch-width-sniffer"></div>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 08 Dec 2016 04:36:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"\n	\n	\n	\n	\n	\n	\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:28:"BuddyPress: BuddyPress 2.7.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"https://buddypress.org/?p=261855";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://buddypress.org/2016/12/buddypress-2-7-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:756:"<p>BuddyPress 2.7.3 is now available. This is a maintenance release and a recommended upgrade for all BuddyPress installations.</p>\n<p>BP 2.7.3 fixes bugs in several components. For more information, see the <a href="https://buddypress.trac.wordpress.org/query?group=status&milestone=2.7.3">2.7.3 milestone</a> on <a>BuddyPress Trac</a>.</p>\n<p>Update to BuddyPress 2.7.3 today in your WordPress Dashboard, or by <a href="https://wordpress.org/plugins/buddypress/">downloading from the wordpress.org plugin repository</a>.</p>\n<p>Questions or comments? Check out the <a href="https://codex.buddypress.org/releases/version-2-7-3/">2.7.3 changelog</a>, or stop by our <a href="https://buddypress.org/support/">support forums</a> or  <a>Trac</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Dec 2016 23:15:56 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"@mercime";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 10 Jan 2017 06:07:11 GMT";s:12:"content-type";s:8:"text/xml";s:14:"content-length";s:6:"343659";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Tue, 10 Jan 2017 05:45:11 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:13:"accept-ranges";s:5:"bytes";}s:5:"build";s:14:"20160601094851";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2916, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1484071632', 'no'),
(2917, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1484028432', 'no'),
(2918, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1484071633', 'no'),
(2919, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 10 Jan 2017 05:47:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"NextGEN Gallery - WordPress Gallery Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 16 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:118:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"One of the most downloaded WordPress plugins (over 30 million downloads since 2007). Use All in One SEO Pack to optimize your site for Search Engines.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly. Provides tool t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"SiteOrigin Widgets Bundle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/so-widgets-bundle/#post-67824";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 May 2014 14:27:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"67824@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"A collection of all widgets, neatly bundled into a single plugin. It&#039;s also a framework to code your own widgets on top of.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 10 Jan 2017 06:07:13 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Tue, 10 Jan 2017 06:22:36 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Tue, 10 Jan 2017 05:47:36 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";}s:5:"build";s:14:"20160601094851";}', 'no'),
(2920, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1484071633', 'no'),
(2921, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1484028433', 'no'),
(2922, '_transient_timeout_plugin_slugs', '1484131014', 'no'),
(2923, '_transient_plugin_slugs', 'a:9:{i:0;s:14:"admin_menu.php";i:1;s:19:"akismet/akismet.php";i:2;s:57:"customize-woocommerce-shop/customize-woocommerce-shop.php";i:3;s:9:"hello.php";i:4;s:27:"mail-subscribe-list/sml.php";i:5;s:27:"woocommerce/woocommerce.php";i:6;s:34:"woocommerce-compare-list/index.php";i:7;s:37:"woocommerce-products-filter/index.php";i:8;s:34:"yith-woocommerce-wishlist/init.php";}', 'no'),
(2924, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1484071633', 'no'),
(2925, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/12/vaughan/''>WordPress 4.7 “Vaughan”</a> <span class="rss-date">December 6, 2016</span><div class="rssSummary">Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah &quot;Sassy&quot; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/how-laravel-forge-can-help-you-run-wordpress-in-the-cloud''>WPTavern: How Laravel Forge Can Help You Run WordPress in the Cloud</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/contributing-to-twenty-seventeen-theme/''>Post Status: Contributing to Twenty Seventeen</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/lets-encrypt-passes-20-million-active-certificates-in-2016''>WPTavern: Let’s Encrypt Passes 20 Million Active Certificates in 2016</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Google Analytics Dashboard for WP&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=57c6c3ae37&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Google Analytics Dashboard for WP">(Install)</a></li></ul></div>', 'no'),
(2931, '_transient_timeout_wc_upgrade_notice_2.5.5', '1484114959', 'no'),
(2932, '_transient_wc_upgrade_notice_2.5.5', '', 'no'),
(2933, '_transient_timeout_yith_wcwl_user_default_count_1', '1484633381', 'no'),
(2934, '_transient_yith_wcwl_user_default_count_1', '1', 'no'),
(2935, '_transient_timeout_wc_related_53', '1484114991', 'no'),
(2936, '_transient_wc_related_53', 'a:11:{i:0;s:2:"11";i:1;s:2:"13";i:2;s:2:"21";i:3;s:2:"23";i:4;s:2:"38";i:5;s:2:"39";i:6;s:2:"40";i:7;s:2:"41";i:8;s:2:"48";i:9;s:2:"49";i:10;s:2:"52";}', 'no'),
(2937, '_transient_timeout_wc_related_49', '1484115021', 'no'),
(2938, '_transient_wc_related_49', 'a:11:{i:0;s:2:"11";i:1;s:2:"13";i:2;s:2:"21";i:3;s:2:"23";i:4;s:2:"38";i:5;s:2:"39";i:6;s:2:"40";i:7;s:2:"41";i:8;s:2:"48";i:9;s:2:"52";i:10;s:2:"53";}', 'no'),
(2939, 'wpc-general-options', 'a:12:{s:11:"wpc_page_id";s:3:"110";s:18:"wpc-content-filter";s:1:"1";s:8:"canvas-w";s:3:"800";s:8:"canvas-h";s:3:"500";s:23:"wpc-parts-position-cart";s:9:"thumbnail";s:15:"wpc-preview-btn";s:1:"1";s:16:"wpc-download-btn";s:1:"1";s:29:"wpc-user-account-download-btn";s:1:"1";s:20:"wpc-send-design-mail";s:1:"1";s:12:"wpc-cart-btn";s:1:"1";s:23:"wpc-redirect-after-cart";s:1:"0";s:17:"wpc-load-bs-modal";s:1:"1";}', 'yes'),
(2940, 'wpc-upload-options', 'a:12:{s:11:"visible-tab";s:3:"yes";s:9:"grayscale";s:3:"yes";s:6:"invert";s:3:"yes";s:6:"sepia1";s:3:"yes";s:6:"sepia2";s:3:"yes";s:4:"blur";s:3:"yes";s:7:"sharpen";s:3:"yes";s:7:"opacity";s:3:"yes";s:6:"emboss";s:3:"yes";s:12:"wpc-uploader";s:6:"custom";s:18:"wpc-upl-extensions";a:6:{i:0;s:3:"jpg";i:1;s:4:"jpeg";i:2;s:3:"png";i:3;s:3:"gif";i:4;s:3:"bmp";i:5;s:3:"svg";}s:29:"wpc-custom-designs-extensions";s:0:"";}', 'yes'),
(2941, 'wpc-output-options', 'a:6:{s:10:"pdf-format";s:2:"A0";s:15:"pdf-orientation";s:1:"P";s:13:"pdf-margin-tb";s:2:"20";s:13:"pdf-margin-lr";s:2:"20";s:16:"wpc-generate-pdf";s:2:"no";s:16:"wpc-generate-zip";s:2:"no";}', 'yes'),
(2942, 'wpc-texts-options', 'a:16:{s:11:"visible-tab";s:3:"yes";s:9:"underline";s:3:"yes";s:4:"bold";s:3:"yes";s:6:"italic";s:3:"yes";s:10:"text-color";s:3:"yes";s:16:"background-color";s:3:"yes";s:7:"outline";s:3:"yes";s:6:"curved";s:3:"yes";s:11:"font-family";s:3:"yes";s:9:"font-size";s:3:"yes";s:13:"outline-width";s:3:"yes";s:7:"opacity";s:3:"yes";s:14:"text-alignment";s:3:"yes";s:18:"text-strikethrough";s:3:"yes";s:13:"text-overline";s:3:"yes";s:12:"text-spacing";s:2:"no";}', 'yes'),
(2943, 'wpc-shapes-options', 'a:12:{s:11:"visible-tab";s:3:"yes";s:6:"square";s:3:"yes";s:8:"r-square";s:3:"yes";s:6:"circle";s:3:"yes";s:8:"triangle";s:3:"yes";s:7:"polygon";s:3:"yes";s:4:"star";s:3:"yes";s:5:"heart";s:3:"yes";s:7:"outline";s:3:"yes";s:16:"background-color";s:3:"yes";s:13:"outline-width";s:3:"yes";s:7:"opacity";s:3:"yes";}', 'yes'),
(2944, 'wpc-images-options', 'a:9:{s:11:"visible-tab";s:3:"yes";s:9:"grayscale";s:3:"yes";s:6:"invert";s:3:"yes";s:6:"sepia1";s:3:"yes";s:6:"sepia2";s:3:"yes";s:4:"blur";s:3:"yes";s:7:"sharpen";s:3:"yes";s:7:"opacity";s:3:"yes";s:6:"emboss";s:3:"yes";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2945, 'wpc-designs-options', 'a:3:{s:11:"visible-tab";s:2:"no";s:5:"saved";s:2:"no";s:6:"orders";s:2:"no";}', 'yes'),
(2946, '_transient_timeout_wc_uf_pid_5d61043f3ba23a44af384f647b8e826b', '1486621017', 'no'),
(2947, '_transient_wc_uf_pid_5d61043f3ba23a44af384f647b8e826b', 'a:12:{i:0;i:53;i:1;i:52;i:2;i:49;i:3;i:48;i:4;i:41;i:5;i:40;i:6;i:39;i:7;i:38;i:8;i:23;i:9;i:21;i:10;i:13;i:11;i:11;}', 'no'),
(2948, '_transient_timeout_wc_related_23', '1484115431', 'no'),
(2949, '_transient_wc_related_23', 'a:11:{i:0;s:2:"11";i:1;s:2:"13";i:2;s:2:"21";i:3;s:2:"38";i:4;s:2:"39";i:5;s:2:"40";i:6;s:2:"41";i:7;s:2:"48";i:8;s:2:"49";i:9;s:2:"52";i:10;s:2:"53";}', 'no'),
(2950, 'wpc-parts', 'a:1:{i:1;s:13:"Customization";}', 'yes'),
(2951, 'wpc-fonts', 'a:1:{i:1;a:2:{i:0;s:10:"Montserrat";i:1;s:50:"https://fonts.googleapis.com/css?family=Montserrat";}}', 'yes'),
(2960, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1484054809', 'yes'),
(2961, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6130";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3761";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3755";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3274";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2870";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2562";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2237";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2158";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2113";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2107";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2096";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2056";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1987";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1958";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1773";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1668";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1646";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1473";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1390";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1304";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1302";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1158";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1141";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1076";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1029";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1027";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"977";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"974";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"971";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"941";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"935";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"918";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"867";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"862";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"862";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"829";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"791";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"790";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"790";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"772";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"767";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"761";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"751";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"747";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"737";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"735";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"731";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"724";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"711";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"711";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"661";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"656";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"650";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"641";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"638";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"625";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"620";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"620";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"616";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"603";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"593";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"588";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"586";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"585";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"574";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"558";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"557";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"552";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"549";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"544";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"543";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"535";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"525";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"521";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"518";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"509";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"502";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"488";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"472";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"472";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"468";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"467";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"464";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"452";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"451";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"444";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"437";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"437";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"435";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"434";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"428";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"427";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"424";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"423";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"420";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"418";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"416";}}', 'yes'),
(3013, 'db_upgraded', '', 'yes'),
(3016, 'can_compress_scripts', '0', 'no'),
(3018, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(3019, 'woocommerce_all_except_countries', '', 'yes'),
(3020, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(3021, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(3022, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(3023, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(3024, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(3025, 'woocommerce_version', '2.6.11', 'yes'),
(3027, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(3076, '_transient_timeout_wc_term_counts', '1488030671', 'no'),
(3077, '_transient_wc_term_counts', 'a:65:{i:26;s:0:"";i:8;s:0:"";i:13;s:0:"";i:54;s:0:"";i:27;s:0:"";i:28;s:0:"";i:29;s:0:"";i:33;s:0:"";i:32;s:0:"";i:30;s:0:"";i:31;s:0:"";i:36;s:0:"";i:37;s:0:"";i:35;s:0:"";i:34;s:0:"";i:40;s:0:"";i:41;s:0:"";i:38;s:0:"";i:39;s:0:"";i:18;s:0:"";i:6;s:0:"";i:42;s:0:"";i:19;s:0:"";i:20;s:0:"";i:21;s:0:"";i:22;s:0:"";i:9;s:0:"";i:12;s:0:"";i:10;s:0:"";i:11;s:0:"";i:45;s:0:"";i:44;s:0:"";i:43;s:0:"";i:46;s:0:"";i:14;s:0:"";i:23;s:0:"";i:49;s:0:"";i:16;s:0:"";i:17;s:0:"";i:15;s:0:"";i:7;s:0:"";i:48;s:0:"";i:24;s:0:"";i:25;s:0:"";i:47;s:0:"";i:51;s:0:"";i:50;s:0:"";i:53;s:0:"";i:52;s:0:"";i:55;s:0:"";i:56;s:0:"";i:57;s:0:"";i:58;s:0:"";i:61;s:0:"";i:59;s:0:"";i:60;s:0:"";i:62;s:0:"";i:65;s:0:"";i:63;s:0:"";i:64;s:0:"";i:66;s:0:"";i:67;s:0:"";i:69;s:0:"";i:70;s:0:"";i:68;s:0:"";}', 'no'),
(3088, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.2";s:7:"version";s:5:"4.7.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1487801757;s:15:"version_checked";s:5:"4.7.2";s:12:"translations";a:0:{}}', 'no'),
(3169, '_transient_timeout_wc_shipping_method_count_1_1467201592', '1490086515', 'no'),
(3170, '_transient_wc_shipping_method_count_1_1467201592', '1', 'no'),
(3197, '_site_transient_timeout_theme_roots', '1487803558', 'no'),
(3198, '_site_transient_theme_roots', 'a:10:{s:17:"accesspress-store";s:7:"/themes";s:14:"corporate-plus";s:7:"/themes";s:9:"ecommerce";s:7:"/themes";s:7:"eshoper";s:7:"/themes";s:9:"fashstore";s:7:"/themes";s:10:"storefront";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:3:"woo";s:7:"/themes";}', 'no'),
(3199, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1487801759;s:7:"checked";a:10:{s:17:"accesspress-store";s:5:"2.0.6";s:14:"corporate-plus";s:5:"1.2.0";s:9:"ecommerce";s:3:"1.2";s:7:"eshoper";s:3:"1.5";s:9:"fashstore";s:5:"1.0.9";s:10:"storefront";s:5:"1.6.1";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";s:3:"woo";s:3:"1.2";}s:8:"response";a:7:{s:17:"accesspress-store";a:4:{s:5:"theme";s:17:"accesspress-store";s:11:"new_version";s:5:"2.1.6";s:3:"url";s:47:"https://wordpress.org/themes/accesspress-store/";s:7:"package";s:65:"https://downloads.wordpress.org/theme/accesspress-store.2.1.6.zip";}s:14:"corporate-plus";a:4:{s:5:"theme";s:14:"corporate-plus";s:11:"new_version";s:5:"1.2.1";s:3:"url";s:44:"https://wordpress.org/themes/corporate-plus/";s:7:"package";s:62:"https://downloads.wordpress.org/theme/corporate-plus.1.2.1.zip";}s:9:"fashstore";a:4:{s:5:"theme";s:9:"fashstore";s:11:"new_version";s:5:"1.1.4";s:3:"url";s:39:"https://wordpress.org/themes/fashstore/";s:7:"package";s:57:"https://downloads.wordpress.org/theme/fashstore.1.1.4.zip";}s:10:"storefront";a:4:{s:5:"theme";s:10:"storefront";s:11:"new_version";s:5:"2.1.8";s:3:"url";s:40:"https://wordpress.org/themes/storefront/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/storefront.2.1.8.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'no'),
(3200, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1487801759;s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":1:{s:5:"4.7.2";O:8:"stdClass":3:{s:7:"percent";i:100;s:5:"votes";i:1;s:11:"total_votes";i:1;}}}s:27:"mail-subscribe-list/sml.php";O:8:"stdClass":8:{s:2:"id";s:5:"36664";s:4:"slug";s:19:"mail-subscribe-list";s:6:"plugin";s:27:"mail-subscribe-list/sml.php";s:11:"new_version";s:5:"2.1.3";s:3:"url";s:50:"https://wordpress.org/plugins/mail-subscribe-list/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/mail-subscribe-list.2.1.3.zip";s:6:"tested";s:5:"4.6.3";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":8:{s:2:"id";s:5:"25331";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:6:"2.6.14";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/woocommerce.2.6.14.zip";s:6:"tested";s:5:"4.7.2";s:13:"compatibility";O:8:"stdClass":1:{s:5:"4.7.2";O:8:"stdClass":3:{s:7:"percent";i:50;s:5:"votes";i:1;s:11:"total_votes";i:2;}}}s:34:"yith-woocommerce-wishlist/init.php";O:8:"stdClass":8:{s:2:"id";s:5:"41084";s:4:"slug";s:25:"yith-woocommerce-wishlist";s:6:"plugin";s:34:"yith-woocommerce-wishlist/init.php";s:11:"new_version";s:6:"2.0.16";s:3:"url";s:56:"https://wordpress.org/plugins/yith-woocommerce-wishlist/";s:7:"package";s:75:"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.2.0.16.zip";s:6:"tested";s:5:"4.5.6";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:14:"admin_menu.php";O:8:"stdClass":6:{s:2:"id";s:4:"4223";s:4:"slug";s:21:"admin-menu-management";s:6:"plugin";s:14:"admin_menu.php";s:11:"new_version";s:3:"1.1";s:3:"url";s:52:"https://wordpress.org/plugins/admin-menu-management/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/admin-menu-management.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:34:"woocommerce-compare-list/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"50153";s:4:"slug";s:24:"woocommerce-compare-list";s:6:"plugin";s:34:"woocommerce-compare-list/index.php";s:11:"new_version";s:5:"1.1.1";s:3:"url";s:55:"https://wordpress.org/plugins/woocommerce-compare-list/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/woocommerce-compare-list.zip";}s:37:"woocommerce-products-filter/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"55691";s:4:"slug";s:27:"woocommerce-products-filter";s:6:"plugin";s:37:"woocommerce-products-filter/index.php";s:11:"new_version";s:7:"1.1.6.1";s:3:"url";s:58:"https://wordpress.org/plugins/woocommerce-products-filter/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/woocommerce-products-filter.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1847 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 11, '_edit_last', '1'),
(3, 11, '_edit_lock', '1462441134:1'),
(4, 12, '_wp_attached_file', 'mad_0.png'),
(5, 12, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:392;s:6:"height";i:251;s:4:"file";s:9:"mad_0.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mad_0-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:17:"mad_0-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"mad_0-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"mad_0-300x251.png";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 11, '_visibility', 'visible'),
(8, 11, '_stock_status', 'outofstock'),
(9, 11, 'total_sales', '4'),
(10, 11, '_downloadable', 'no'),
(11, 11, '_virtual', 'no'),
(12, 11, '_purchase_note', ''),
(13, 11, '_featured', 'no'),
(14, 11, '_weight', '.23'),
(15, 11, '_length', '1'),
(16, 11, '_width', '2'),
(17, 11, '_height', '3'),
(18, 11, '_sku', 'nokia-ami'),
(19, 11, '_product_attributes', 'a:0:{}'),
(20, 11, '_regular_price', '8000'),
(21, 11, '_sale_price', '2000'),
(22, 11, '_sale_price_dates_from', ''),
(23, 11, '_sale_price_dates_to', ''),
(24, 11, '_price', '2000'),
(25, 11, '_sold_individually', ''),
(26, 11, '_manage_stock', 'no'),
(27, 11, '_backorders', 'no'),
(28, 11, '_stock', ''),
(29, 11, '_upsell_ids', 'a:0:{}'),
(30, 11, '_crosssell_ids', 'a:0:{}'),
(31, 11, '_product_version', '2.5.5'),
(32, 11, '_product_image_gallery', ''),
(33, 11, '_wc_rating_count', 'a:0:{}'),
(34, 11, '_wc_average_rating', '0'),
(35, 13, '_edit_last', '1'),
(36, 13, '_edit_lock', '1462441037:1'),
(37, 13, '_visibility', 'visible'),
(38, 13, '_stock_status', 'instock'),
(39, 13, 'total_sales', '2'),
(40, 13, '_downloadable', 'no'),
(41, 13, '_virtual', 'no'),
(42, 13, '_purchase_note', ''),
(43, 13, '_featured', 'no'),
(44, 13, '_weight', '.44'),
(45, 13, '_length', ''),
(46, 13, '_width', ''),
(47, 13, '_height', ''),
(48, 13, '_sku', 'nokia-tui'),
(49, 13, '_product_attributes', 'a:0:{}'),
(50, 13, '_regular_price', '2000'),
(51, 13, '_sale_price', '1000'),
(52, 13, '_sale_price_dates_from', ''),
(53, 13, '_sale_price_dates_to', ''),
(54, 13, '_price', '1000'),
(55, 13, '_sold_individually', ''),
(56, 13, '_manage_stock', 'no'),
(57, 13, '_backorders', 'no'),
(58, 13, '_stock', ''),
(59, 13, '_upsell_ids', 'a:0:{}'),
(60, 13, '_crosssell_ids', 'a:0:{}'),
(61, 13, '_product_version', '2.5.5'),
(62, 13, '_product_image_gallery', ''),
(63, 13, '_wc_rating_count', 'a:0:{}'),
(64, 13, '_wc_average_rating', '0'),
(65, 13, '_wc_review_count', '0'),
(66, 14, '_wp_attached_file', 'Developing-Mobile-Learning-Which-Device-Are-You-Targeting1.jpg'),
(67, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:350;s:4:"file";s:62:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:70:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:70:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:70:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:70:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:70:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-600x350.jpg";s:5:"width";i:600;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 11, '_wc_review_count', '0'),
(70, 15, '_order_key', 'wc_order_572987cd04793'),
(71, 15, '_order_currency', 'INR'),
(72, 15, '_prices_include_tax', 'no'),
(73, 15, '_customer_ip_address', '127.0.0.1'),
(74, 15, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(75, 15, '_customer_user', '1'),
(76, 15, '_created_via', 'checkout'),
(77, 15, '_order_version', '2.5.5'),
(78, 15, '_billing_first_name', 'santosh'),
(79, 15, '_billing_last_name', 'chakraborty'),
(80, 15, '_billing_company', 'home'),
(81, 15, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(82, 15, '_billing_phone', '777777777'),
(83, 15, '_billing_country', 'IN'),
(84, 15, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(85, 15, '_billing_address_2', ''),
(86, 15, '_billing_city', 'kolkata'),
(87, 15, '_billing_state', 'WB'),
(88, 15, '_billing_postcode', '700078'),
(89, 15, '_shipping_first_name', 'santosh'),
(90, 15, '_shipping_last_name', 'chakraborty'),
(91, 15, '_shipping_company', 'home'),
(92, 15, '_shipping_country', 'IN'),
(93, 15, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(94, 15, '_shipping_address_2', ''),
(95, 15, '_shipping_city', 'kolkata'),
(96, 15, '_shipping_state', 'WB'),
(97, 15, '_shipping_postcode', '700078'),
(98, 15, '_payment_method', 'cod'),
(99, 15, '_payment_method_title', 'Cash on Delivery'),
(100, 15, '_order_shipping', ''),
(101, 15, '_cart_discount', '0'),
(102, 15, '_cart_discount_tax', '0'),
(103, 15, '_order_tax', '0'),
(104, 15, '_order_shipping_tax', '0'),
(105, 15, '_order_total', '6000.00'),
(106, 15, '_download_permissions_granted', '1'),
(107, 15, '_recorded_sales', 'yes'),
(108, 15, '_order_stock_reduced', '1'),
(109, 16, '_order_key', 'wc_order_5729cc0a8509e'),
(110, 16, '_order_currency', 'INR'),
(111, 16, '_prices_include_tax', 'no'),
(112, 16, '_customer_ip_address', '127.0.0.1'),
(113, 16, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(114, 16, '_customer_user', '1'),
(115, 16, '_created_via', 'checkout'),
(116, 16, '_order_version', '2.5.5'),
(117, 16, '_billing_first_name', 'santosh'),
(118, 16, '_billing_last_name', 'chakraborty'),
(119, 16, '_billing_company', 'home'),
(120, 16, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(121, 16, '_billing_phone', '777777777'),
(122, 16, '_billing_country', 'IN'),
(123, 16, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(124, 16, '_billing_address_2', ''),
(125, 16, '_billing_city', 'kolkata'),
(126, 16, '_billing_state', 'WB'),
(127, 16, '_billing_postcode', '700078'),
(128, 16, '_shipping_first_name', 'santosh'),
(129, 16, '_shipping_last_name', 'chakraborty'),
(130, 16, '_shipping_company', 'home'),
(131, 16, '_shipping_country', 'IN'),
(132, 16, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(133, 16, '_shipping_address_2', ''),
(134, 16, '_shipping_city', 'kolkata'),
(135, 16, '_shipping_state', 'WB'),
(136, 16, '_shipping_postcode', '700078'),
(137, 16, '_payment_method', 'cod'),
(138, 16, '_payment_method_title', 'Cash on Delivery'),
(139, 16, '_order_shipping', ''),
(140, 16, '_cart_discount', '0'),
(141, 16, '_cart_discount_tax', '0'),
(142, 16, '_order_tax', '0'),
(143, 16, '_order_shipping_tax', '0'),
(144, 16, '_order_total', '8000.00'),
(145, 16, '_download_permissions_granted', '1'),
(146, 16, '_recorded_sales', 'yes'),
(147, 16, '_order_stock_reduced', '1'),
(148, 17, '_edit_last', '1'),
(149, 17, '_edit_lock', '1462360754:1'),
(150, 17, 'discount_type', 'fixed_cart'),
(151, 17, 'coupon_amount', '3000'),
(152, 17, 'individual_use', 'no'),
(153, 17, 'product_ids', ''),
(154, 17, 'exclude_product_ids', ''),
(155, 17, 'usage_limit', ''),
(156, 17, 'usage_limit_per_user', ''),
(157, 17, 'limit_usage_to_x_items', ''),
(158, 17, 'expiry_date', '2016-05-27'),
(159, 17, 'free_shipping', 'no'),
(160, 17, 'exclude_sale_items', 'no'),
(161, 17, 'product_categories', 'a:0:{}'),
(162, 17, 'exclude_product_categories', 'a:0:{}'),
(163, 17, 'minimum_amount', ''),
(164, 17, 'maximum_amount', ''),
(165, 17, 'customer_email', 'a:0:{}'),
(166, 18, '_order_key', 'wc_order_5729dd21225eb'),
(167, 18, '_order_currency', 'INR'),
(168, 18, '_prices_include_tax', 'no'),
(169, 18, '_customer_ip_address', '127.0.0.1'),
(170, 18, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(171, 18, '_customer_user', '1'),
(172, 18, '_created_via', 'checkout'),
(173, 18, '_order_version', '2.5.5'),
(174, 18, '_billing_first_name', 'santosh'),
(175, 18, '_billing_last_name', 'chakraborty'),
(176, 18, '_billing_company', 'home'),
(177, 18, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(178, 18, '_billing_phone', '777777777'),
(179, 18, '_billing_country', 'IN'),
(180, 18, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(181, 18, '_billing_address_2', ''),
(182, 18, '_billing_city', 'kolkata'),
(183, 18, '_billing_state', 'WB'),
(184, 18, '_billing_postcode', '700078'),
(185, 18, '_shipping_first_name', 'santosh'),
(186, 18, '_shipping_last_name', 'chakraborty'),
(187, 18, '_shipping_company', 'home'),
(188, 18, '_shipping_country', 'IN'),
(189, 18, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(190, 18, '_shipping_address_2', ''),
(191, 18, '_shipping_city', 'kolkata'),
(192, 18, '_shipping_state', 'WB'),
(193, 18, '_shipping_postcode', '700078'),
(194, 18, '_order_shipping', ''),
(195, 18, '_cart_discount', '2000'),
(196, 18, '_cart_discount_tax', '0'),
(197, 18, '_order_tax', '0'),
(198, 18, '_order_shipping_tax', '0'),
(199, 18, '_order_total', '0.00'),
(200, 18, '_download_permissions_granted', '1'),
(201, 18, '_recorded_sales', 'yes'),
(202, 17, 'usage_count', '2'),
(203, 17, '_used_by', '1'),
(204, 18, '_recorded_coupon_usage_counts', 'yes'),
(205, 18, '_paid_date', '2016-05-04 11:29:38'),
(206, 18, '_order_stock_reduced', '1'),
(207, 19, '_wp_attached_file', 'Digital-Storm-Laptops.jpg'),
(208, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1859;s:6:"height";i:1080;s:4:"file";s:25:"Digital-Storm-Laptops.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Digital-Storm-Laptops-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Digital-Storm-Laptops-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"Digital-Storm-Laptops-1024x595.jpg";s:5:"width";i:1024;s:6:"height";i:595;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Digital-Storm-Laptops-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"Digital-Storm-Laptops-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"Digital-Storm-Laptops-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(209, 21, '_edit_last', '1'),
(210, 21, '_edit_lock', '1462440985:1'),
(211, 22, '_wp_attached_file', 'Dell-Studio-14z_large.jpg'),
(212, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:371;s:4:"file";s:25:"Dell-Studio-14z_large.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"Dell-Studio-14z_large-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"Dell-Studio-14z_large-300x223.jpg";s:5:"width";i:300;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"Dell-Studio-14z_large-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"Dell-Studio-14z_large-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(214, 21, '_visibility', 'visible'),
(215, 21, '_stock_status', 'instock'),
(216, 21, 'total_sales', '5'),
(217, 21, '_downloadable', 'no'),
(218, 21, '_virtual', 'no'),
(219, 21, '_purchase_note', ''),
(220, 21, '_featured', 'no'),
(221, 21, '_weight', '2'),
(222, 21, '_length', ''),
(223, 21, '_width', ''),
(224, 21, '_height', ''),
(225, 21, '_sku', 'DEll'),
(226, 21, '_product_attributes', 'a:0:{}'),
(227, 21, '_regular_price', '4000'),
(228, 21, '_sale_price', '3500'),
(229, 21, '_sale_price_dates_from', ''),
(230, 21, '_sale_price_dates_to', ''),
(231, 21, '_price', '3500'),
(232, 21, '_sold_individually', ''),
(233, 21, '_manage_stock', 'no'),
(234, 21, '_backorders', 'no'),
(235, 21, '_stock', ''),
(236, 21, '_upsell_ids', 'a:0:{}'),
(237, 21, '_crosssell_ids', 'a:0:{}'),
(238, 21, '_product_version', '2.5.5'),
(239, 21, '_product_image_gallery', ''),
(240, 23, '_edit_last', '1'),
(241, 23, '_edit_lock', '1462440913:1'),
(242, 24, '_wp_attached_file', 'sony1-6.jpg'),
(243, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:633;s:6:"height";i:406;s:4:"file";s:11:"sony1-6.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"sony1-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"sony1-6-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"sony1-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"sony1-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:19:"sony1-6-600x406.jpg";s:5:"width";i:600;s:6:"height";i:406;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(245, 23, '_visibility', 'visible'),
(246, 23, '_stock_status', 'instock'),
(247, 23, 'total_sales', '22'),
(248, 23, '_downloadable', 'no'),
(249, 23, '_virtual', 'no'),
(250, 23, '_purchase_note', ''),
(251, 23, '_featured', 'no'),
(252, 23, '_weight', '1.5'),
(253, 23, '_length', ''),
(254, 23, '_width', ''),
(255, 23, '_height', ''),
(256, 23, '_sku', 'vio'),
(257, 23, '_product_attributes', 'a:0:{}'),
(258, 23, '_regular_price', '1000'),
(259, 23, '_sale_price', '800'),
(260, 23, '_sale_price_dates_from', ''),
(261, 23, '_sale_price_dates_to', ''),
(262, 23, '_price', '800'),
(263, 23, '_sold_individually', ''),
(264, 23, '_manage_stock', 'no'),
(265, 23, '_backorders', 'no'),
(266, 23, '_stock', ''),
(267, 23, '_upsell_ids', 'a:0:{}'),
(268, 23, '_crosssell_ids', 'a:0:{}'),
(269, 23, '_product_version', '2.5.5'),
(270, 23, '_product_image_gallery', '36'),
(271, 21, '_wc_rating_count', 'a:0:{}'),
(272, 21, '_wc_average_rating', '0'),
(276, 21, '_wc_review_count', '0'),
(277, 25, '_wp_attached_file', '1000x1000.jpg'),
(278, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:13:"1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"1000x1000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"1000x1000-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1228320502";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(279, 26, '_wp_attached_file', 'boboli-tshirt-5380061100_a-1000x1000.jpg'),
(280, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:40:"boboli-tshirt-5380061100_a-1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"boboli-tshirt-5380061100_a-1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"boboli-tshirt-5380061100_a-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"boboli-tshirt-5380061100_a-1000x1000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"boboli-tshirt-5380061100_a-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:48:"boboli-tshirt-5380061100_a-1000x1000-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(281, 27, '_wp_attached_file', 'Dell-Studio-14z_large-1.jpg'),
(282, 27, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:371;s:4:"file";s:27:"Dell-Studio-14z_large-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Dell-Studio-14z_large-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Dell-Studio-14z_large-1-300x223.jpg";s:5:"width";i:300;s:6:"height";i:223;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"Dell-Studio-14z_large-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"Dell-Studio-14z_large-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(283, 28, '_wp_attached_file', 'Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1.jpg'),
(284, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:350;s:4:"file";s:64:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:72:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:72:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:72:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:72:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:72:"Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1-600x350.jpg";s:5:"width";i:600;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(285, 29, '_wp_attached_file', 'Digital-Storm-Laptops-1.jpg'),
(286, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1859;s:6:"height";i:1080;s:4:"file";s:27:"Digital-Storm-Laptops-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"Digital-Storm-Laptops-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"Digital-Storm-Laptops-1-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:36:"Digital-Storm-Laptops-1-1024x595.jpg";s:5:"width";i:1024;s:6:"height";i:595;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:35:"Digital-Storm-Laptops-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:35:"Digital-Storm-Laptops-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:35:"Digital-Storm-Laptops-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:36:"Digital-Storm-Laptops-1-1200x697.jpg";s:5:"width";i:1200;s:6:"height";i:697;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(287, 30, '_wp_attached_file', 'Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men.jpg'),
(288, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:67:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:75:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:75:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:75:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:75:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:75:"Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(289, 31, '_wp_attached_file', 'mad_0-1.png'),
(290, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:392;s:6:"height";i:251;s:4:"file";s:11:"mad_0-1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"mad_0-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"mad_0-1-300x192.png";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:19:"mad_0-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:19:"mad_0-1-300x251.png";s:5:"width";i:300;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(291, 32, '_wp_attached_file', 'mitre-polarize-t-shirt-p177-1103_zoom.jpg'),
(292, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:41:"mitre-polarize-t-shirt-p177-1103_zoom.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:49:"mitre-polarize-t-shirt-p177-1103_zoom-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:49:"mitre-polarize-t-shirt-p177-1103_zoom-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:49:"mitre-polarize-t-shirt-p177-1103_zoom-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:49:"mitre-polarize-t-shirt-p177-1103_zoom-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:49:"mitre-polarize-t-shirt-p177-1103_zoom-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(293, 33, '_wp_attached_file', 'New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts.jpg'),
(294, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:69:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:77:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:77:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:77:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:77:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:77:"New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(295, 34, '_wp_attached_file', 'sheldons-bat-question-mark-t-shirt_1000.jpg'),
(296, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:43:"sheldons-bat-question-mark-t-shirt_1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:51:"sheldons-bat-question-mark-t-shirt_1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:51:"sheldons-bat-question-mark-t-shirt_1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:51:"sheldons-bat-question-mark-t-shirt_1000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:51:"sheldons-bat-question-mark-t-shirt_1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:51:"sheldons-bat-question-mark-t-shirt_1000-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(297, 35, '_wp_attached_file', 'sony1-6-1.jpg'),
(298, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:633;s:6:"height";i:406;s:4:"file";s:13:"sony1-6-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"sony1-6-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"sony1-6-1-300x192.jpg";s:5:"width";i:300;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"sony1-6-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"sony1-6-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"sony1-6-1-600x406.jpg";s:5:"width";i:600;s:6:"height";i:406;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 36, '_wp_attached_file', 'terminator-2-t1000-costume-sub-juniors-t-shirt-4.jpg'),
(300, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:52:"terminator-2-t1000-costume-sub-juniors-t-shirt-4.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"terminator-2-t1000-costume-sub-juniors-t-shirt-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"terminator-2-t1000-costume-sub-juniors-t-shirt-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:60:"terminator-2-t1000-costume-sub-juniors-t-shirt-4-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:60:"terminator-2-t1000-costume-sub-juniors-t-shirt-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:60:"terminator-2-t1000-costume-sub-juniors-t-shirt-4-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 23, '_thumbnail_id', '36'),
(302, 21, '_thumbnail_id', '34'),
(303, 13, '_thumbnail_id', '33'),
(304, 11, '_thumbnail_id', '32'),
(305, 38, '_edit_last', '1'),
(306, 38, '_edit_lock', '1462441253:1'),
(307, 38, '_thumbnail_id', '30'),
(308, 38, '_visibility', 'visible'),
(309, 38, '_stock_status', 'instock'),
(310, 38, 'total_sales', '3'),
(311, 38, '_downloadable', 'no'),
(312, 38, '_virtual', 'no'),
(313, 38, '_purchase_note', ''),
(314, 38, '_featured', 'no'),
(315, 38, '_weight', ''),
(316, 38, '_length', ''),
(317, 38, '_width', ''),
(318, 38, '_height', ''),
(319, 38, '_sku', ''),
(320, 38, '_product_attributes', 'a:0:{}'),
(321, 38, '_regular_price', '1000'),
(322, 38, '_sale_price', '200'),
(323, 38, '_sale_price_dates_from', ''),
(324, 38, '_sale_price_dates_to', ''),
(325, 38, '_price', '200'),
(326, 38, '_sold_individually', ''),
(327, 38, '_manage_stock', 'no'),
(328, 38, '_backorders', 'no'),
(329, 38, '_stock', ''),
(330, 38, '_upsell_ids', 'a:0:{}'),
(331, 38, '_crosssell_ids', 'a:0:{}'),
(332, 38, '_product_version', '2.5.5'),
(333, 38, '_product_image_gallery', ''),
(334, 39, '_edit_last', '1'),
(335, 39, '_edit_lock', '1462441481:1'),
(336, 39, '_thumbnail_id', '26'),
(337, 39, '_visibility', 'visible'),
(338, 39, '_stock_status', 'instock'),
(339, 39, 'total_sales', '2'),
(340, 39, '_downloadable', 'no'),
(341, 39, '_virtual', 'no'),
(342, 39, '_purchase_note', ''),
(343, 39, '_featured', 'no'),
(344, 39, '_weight', ''),
(345, 39, '_length', ''),
(346, 39, '_width', ''),
(347, 39, '_height', ''),
(348, 39, '_sku', ''),
(349, 39, '_product_attributes', 'a:0:{}'),
(350, 39, '_regular_price', '2000'),
(351, 39, '_sale_price', '1000'),
(352, 39, '_sale_price_dates_from', ''),
(353, 39, '_sale_price_dates_to', ''),
(354, 39, '_price', '1000'),
(355, 39, '_sold_individually', ''),
(356, 39, '_manage_stock', 'no'),
(357, 39, '_backorders', 'no'),
(358, 39, '_stock', ''),
(359, 39, '_upsell_ids', 'a:0:{}'),
(360, 39, '_crosssell_ids', 'a:0:{}'),
(361, 39, '_product_version', '2.5.5'),
(362, 39, '_product_image_gallery', ''),
(363, 40, '_edit_last', '1'),
(364, 40, '_edit_lock', '1462441326:1'),
(365, 40, '_thumbnail_id', '25'),
(366, 40, '_visibility', 'visible'),
(367, 40, '_stock_status', 'instock'),
(368, 40, 'total_sales', '1'),
(369, 40, '_downloadable', 'no'),
(370, 40, '_virtual', 'no'),
(371, 40, '_purchase_note', ''),
(372, 40, '_featured', 'no'),
(373, 40, '_weight', ''),
(374, 40, '_length', ''),
(375, 40, '_width', ''),
(376, 40, '_height', ''),
(377, 40, '_sku', ''),
(378, 40, '_product_attributes', 'a:0:{}'),
(379, 40, '_regular_price', '10000'),
(380, 40, '_sale_price', '1000'),
(381, 40, '_sale_price_dates_from', ''),
(382, 40, '_sale_price_dates_to', ''),
(383, 40, '_price', '1000'),
(384, 40, '_sold_individually', ''),
(385, 40, '_manage_stock', 'no'),
(386, 40, '_backorders', 'no'),
(387, 40, '_stock', ''),
(388, 40, '_upsell_ids', 'a:0:{}'),
(389, 40, '_crosssell_ids', 'a:0:{}'),
(390, 40, '_product_version', '2.5.5'),
(391, 40, '_product_image_gallery', ''),
(392, 38, '_wc_rating_count', 'a:0:{}'),
(393, 38, '_wc_average_rating', '0'),
(394, 39, '_wc_rating_count', 'a:0:{}'),
(395, 39, '_wc_average_rating', '0'),
(396, 40, '_wc_rating_count', 'a:0:{}'),
(397, 40, '_wc_average_rating', '0'),
(398, 41, '_edit_last', '1'),
(399, 41, '_edit_lock', '1462443134:1'),
(400, 42, '_wp_attached_file', '4e8a88df2f785bac89fa5191030cfad0.jpg'),
(401, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:736;s:6:"height";i:803;s:4:"file";s:36:"4e8a88df2f785bac89fa5191030cfad0.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"4e8a88df2f785bac89fa5191030cfad0-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"4e8a88df2f785bac89fa5191030cfad0-275x300.jpg";s:5:"width";i:275;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:44:"4e8a88df2f785bac89fa5191030cfad0-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:44:"4e8a88df2f785bac89fa5191030cfad0-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:44:"4e8a88df2f785bac89fa5191030cfad0-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(402, 43, '_wp_attached_file', '1000x1000-1.jpg'),
(403, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:15:"1000x1000-1.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"1000x1000-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"1000x1000-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"1000x1000-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"1000x1000-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:23:"1000x1000-1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(404, 44, '_wp_attached_file', 'BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg.jpg'),
(405, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:70:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:78:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:78:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:78:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:78:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:78:"BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:11:"StyleShoots";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:54:"Shot on StyleShoots - Processed by AutoAlpha algorithm";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(406, 45, '_wp_attached_file', 'Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt.jpg'),
(407, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:75:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:83:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:83:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:83:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:83:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:83:"Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(408, 46, '_wp_attached_file', 'Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000.jpg'),
(409, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:55:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:63:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:63:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:63:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:63:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:63:"Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(410, 47, '_wp_attached_file', 't-shirt_6195_1-1000x1000.jpg'),
(411, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:1000;s:4:"file";s:28:"t-shirt_6195_1-1000x1000.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"t-shirt_6195_1-1000x1000-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"t-shirt_6195_1-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"t-shirt_6195_1-1000x1000-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"t-shirt_6195_1-1000x1000-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"t-shirt_6195_1-1000x1000-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(412, 41, '_thumbnail_id', '47'),
(413, 41, '_visibility', 'visible'),
(414, 41, '_stock_status', 'instock'),
(415, 41, 'total_sales', '3'),
(416, 41, '_downloadable', 'no'),
(417, 41, '_virtual', 'no'),
(418, 41, '_purchase_note', ''),
(419, 41, '_featured', 'no'),
(420, 41, '_weight', ''),
(421, 41, '_length', ''),
(422, 41, '_width', ''),
(423, 41, '_height', ''),
(424, 41, '_sku', '5000'),
(425, 41, '_product_attributes', 'a:0:{}'),
(426, 41, '_regular_price', '2000'),
(427, 41, '_sale_price', ''),
(428, 41, '_sale_price_dates_from', ''),
(429, 41, '_sale_price_dates_to', ''),
(430, 41, '_price', '2000'),
(431, 41, '_sold_individually', ''),
(432, 41, '_manage_stock', 'no'),
(433, 41, '_backorders', 'no'),
(434, 41, '_stock', ''),
(435, 41, '_upsell_ids', 'a:0:{}'),
(436, 41, '_crosssell_ids', 'a:0:{}'),
(437, 41, '_product_version', '2.5.5'),
(438, 41, '_product_image_gallery', ''),
(439, 48, '_edit_last', '1'),
(440, 48, '_edit_lock', '1462443183:1'),
(441, 48, '_thumbnail_id', '45'),
(442, 48, '_visibility', 'visible'),
(443, 48, '_stock_status', 'instock'),
(444, 48, 'total_sales', '1'),
(445, 48, '_downloadable', 'no'),
(446, 48, '_virtual', 'no'),
(447, 48, '_purchase_note', ''),
(448, 48, '_featured', 'no'),
(449, 48, '_weight', ''),
(450, 48, '_length', ''),
(451, 48, '_width', ''),
(452, 48, '_height', ''),
(453, 48, '_sku', ''),
(454, 48, '_product_attributes', 'a:0:{}'),
(455, 48, '_regular_price', '6000'),
(456, 48, '_sale_price', '3000'),
(457, 48, '_sale_price_dates_from', ''),
(458, 48, '_sale_price_dates_to', ''),
(459, 48, '_price', '3000'),
(460, 48, '_sold_individually', ''),
(461, 48, '_manage_stock', 'no'),
(462, 48, '_backorders', 'no'),
(463, 48, '_stock', ''),
(464, 48, '_upsell_ids', 'a:0:{}'),
(465, 48, '_crosssell_ids', 'a:0:{}'),
(466, 48, '_product_version', '2.5.5'),
(467, 48, '_product_image_gallery', ''),
(468, 41, '_wc_rating_count', 'a:0:{}'),
(469, 41, '_wc_average_rating', '0'),
(470, 48, '_wc_rating_count', 'a:0:{}'),
(471, 48, '_wc_average_rating', '0'),
(472, 49, '_edit_last', '1'),
(473, 49, '_edit_lock', '1465797597:1'),
(474, 49, '_thumbnail_id', '46'),
(475, 49, '_visibility', 'visible'),
(476, 49, '_stock_status', 'instock'),
(477, 49, 'total_sales', '18'),
(478, 49, '_downloadable', 'no'),
(479, 49, '_virtual', 'no'),
(480, 49, '_purchase_note', ''),
(481, 49, '_featured', 'no'),
(482, 49, '_weight', ''),
(483, 49, '_length', ''),
(484, 49, '_width', ''),
(485, 49, '_height', ''),
(486, 49, '_sku', ''),
(487, 49, '_product_attributes', 'a:1:{s:5:"color";a:6:{s:4:"name";s:5:"Color";s:5:"value";s:18:"Red | Green | Blue";s:8:"position";s:1:"0";s:10:"is_visible";i:1;s:12:"is_variation";i:0;s:11:"is_taxonomy";i:0;}}'),
(488, 49, '_regular_price', '999'),
(489, 49, '_sale_price', '888'),
(490, 49, '_sale_price_dates_from', ''),
(491, 49, '_sale_price_dates_to', ''),
(492, 49, '_price', '888'),
(493, 49, '_sold_individually', ''),
(494, 49, '_manage_stock', 'no'),
(495, 49, '_backorders', 'no'),
(496, 49, '_stock', ''),
(497, 49, '_upsell_ids', 'a:0:{}'),
(498, 49, '_crosssell_ids', 'a:0:{}'),
(499, 49, '_product_version', '2.5.5'),
(500, 49, '_product_image_gallery', ''),
(571, 52, '_edit_last', '1'),
(572, 52, '_edit_lock', '1465560268:1'),
(574, 52, '_visibility', 'visible'),
(575, 52, '_stock_status', 'instock'),
(576, 52, '_downloadable', 'no'),
(577, 52, '_virtual', 'no'),
(578, 52, '_purchase_note', ''),
(579, 52, '_featured', 'no'),
(580, 52, '_weight', ''),
(581, 52, '_length', ''),
(582, 52, '_width', ''),
(583, 52, '_height', ''),
(584, 52, '_sku', ''),
(585, 52, '_product_attributes', 'a:0:{}'),
(586, 52, '_regular_price', '999'),
(587, 52, '_sale_price', '888'),
(588, 52, '_sale_price_dates_from', ''),
(589, 52, '_sale_price_dates_to', ''),
(590, 52, '_price', '888'),
(591, 52, '_sold_individually', ''),
(592, 52, '_manage_stock', 'no'),
(593, 52, '_backorders', 'no'),
(594, 52, '_stock', ''),
(595, 52, '_upsell_ids', 'a:0:{}'),
(596, 52, '_crosssell_ids', 'a:0:{}'),
(597, 52, '_product_version', '2.5.5'),
(598, 52, '_product_image_gallery', ''),
(602, 52, '_thumbnail_id', '42'),
(603, 52, 'total_sales', '4'),
(604, 52, '_wc_rating_count', 'a:0:{}'),
(605, 52, '_wc_average_rating', '0'),
(606, 53, '_edit_last', '1'),
(607, 53, '_edit_lock', '1465563949:1'),
(608, 53, '_visibility', 'visible'),
(609, 53, '_stock_status', 'instock'),
(610, 53, '_downloadable', 'no'),
(611, 53, '_virtual', 'no'),
(612, 53, '_purchase_note', ''),
(613, 53, '_featured', 'no'),
(614, 53, '_weight', ''),
(615, 53, '_length', ''),
(616, 53, '_width', ''),
(617, 53, '_height', ''),
(618, 53, '_sku', ''),
(619, 53, '_product_attributes', 'a:0:{}'),
(620, 53, '_regular_price', '999'),
(621, 53, '_sale_price', '888'),
(622, 53, '_sale_price_dates_from', ''),
(623, 53, '_sale_price_dates_to', ''),
(624, 53, '_price', '888'),
(625, 53, '_sold_individually', ''),
(626, 53, '_manage_stock', 'no'),
(627, 53, '_backorders', 'no'),
(628, 53, '_stock', ''),
(629, 53, '_upsell_ids', 'a:0:{}'),
(630, 53, '_crosssell_ids', 'a:0:{}'),
(631, 53, '_product_version', '2.5.5'),
(632, 53, '_product_image_gallery', ''),
(637, 53, '_thumbnail_id', '43'),
(638, 53, 'total_sales', '1'),
(639, 53, '_wc_rating_count', 'a:0:{}'),
(640, 53, '_wc_average_rating', '0'),
(641, 40, '_wc_review_count', '0'),
(642, 55, '_edit_last', '1'),
(643, 55, '_edit_lock', '1462950480:1'),
(644, 55, 'discount_type', 'fixed_cart'),
(645, 55, 'coupon_amount', '200'),
(646, 55, 'individual_use', 'no'),
(647, 55, 'product_ids', ''),
(648, 55, 'exclude_product_ids', ''),
(649, 55, 'usage_limit', ''),
(650, 55, 'usage_limit_per_user', ''),
(651, 55, 'limit_usage_to_x_items', ''),
(652, 55, 'expiry_date', ''),
(653, 55, 'free_shipping', 'no'),
(654, 55, 'exclude_sale_items', 'no'),
(655, 55, 'product_categories', 'a:0:{}'),
(656, 55, 'exclude_product_categories', 'a:0:{}'),
(657, 55, 'minimum_amount', ''),
(658, 55, 'maximum_amount', ''),
(659, 55, 'customer_email', 'a:0:{}'),
(660, 38, '_wc_review_count', '0'),
(661, 6, '_edit_lock', '1463051855:1'),
(662, 5, '_edit_lock', '1463051866:1'),
(663, 56, '_order_key', 'wc_order_5739c0a022904'),
(664, 56, '_order_currency', 'INR'),
(665, 56, '_prices_include_tax', 'no'),
(666, 56, '_customer_ip_address', '127.0.0.1'),
(667, 56, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(668, 56, '_customer_user', '1'),
(669, 56, '_created_via', 'checkout'),
(670, 56, '_order_version', '2.5.5'),
(671, 56, '_billing_first_name', 'santosh'),
(672, 56, '_billing_last_name', 'chakraborty'),
(673, 56, '_billing_company', 'home'),
(674, 56, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(675, 56, '_billing_phone', '777777777'),
(676, 56, '_billing_country', 'IN'),
(677, 56, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(678, 56, '_billing_address_2', ''),
(679, 56, '_billing_city', 'kolkata');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(680, 56, '_billing_state', 'WB'),
(681, 56, '_billing_postcode', '700078'),
(682, 56, '_shipping_first_name', 'santosh'),
(683, 56, '_shipping_last_name', 'chakraborty'),
(684, 56, '_shipping_company', 'home'),
(685, 56, '_shipping_country', 'IN'),
(686, 56, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(687, 56, '_shipping_address_2', ''),
(688, 56, '_shipping_city', 'kolkata'),
(689, 56, '_shipping_state', 'WB'),
(690, 56, '_shipping_postcode', '700078'),
(691, 56, '_payment_method', 'bacs'),
(692, 56, '_payment_method_title', 'Direct Bank Transfer'),
(693, 56, '_order_shipping', ''),
(694, 56, '_cart_discount', '0'),
(695, 56, '_cart_discount_tax', '0'),
(696, 56, '_order_tax', '0'),
(697, 56, '_order_shipping_tax', '0'),
(698, 56, '_order_total', '3500.00'),
(699, 56, '_recorded_sales', 'yes'),
(700, 56, '_order_stock_reduced', '1'),
(701, 57, '_order_key', 'wc_order_5739c0ddaf6e8'),
(702, 57, '_order_currency', 'INR'),
(703, 57, '_prices_include_tax', 'no'),
(704, 57, '_customer_ip_address', '127.0.0.1'),
(705, 57, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(706, 57, '_customer_user', '1'),
(707, 57, '_created_via', 'checkout'),
(708, 57, '_order_version', '2.5.5'),
(709, 57, '_billing_first_name', 'santosh'),
(710, 57, '_billing_last_name', 'chakraborty'),
(711, 57, '_billing_company', 'home'),
(712, 57, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(713, 57, '_billing_phone', '777777777'),
(714, 57, '_billing_country', 'IN'),
(715, 57, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(716, 57, '_billing_address_2', ''),
(717, 57, '_billing_city', 'kolkata'),
(718, 57, '_billing_state', 'WB'),
(719, 57, '_billing_postcode', '700078'),
(720, 57, '_shipping_first_name', 'santosh'),
(721, 57, '_shipping_last_name', 'chakraborty'),
(722, 57, '_shipping_company', 'home'),
(723, 57, '_shipping_country', 'IN'),
(724, 57, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(725, 57, '_shipping_address_2', ''),
(726, 57, '_shipping_city', 'kolkata'),
(727, 57, '_shipping_state', 'WB'),
(728, 57, '_shipping_postcode', '700078'),
(729, 57, '_payment_method', 'bacs'),
(730, 57, '_payment_method_title', 'Direct Bank Transfer'),
(731, 57, '_order_shipping', ''),
(732, 57, '_cart_discount', '0'),
(733, 57, '_cart_discount_tax', '0'),
(734, 57, '_order_tax', '0'),
(735, 57, '_order_shipping_tax', '0'),
(736, 57, '_order_total', '888.00'),
(737, 57, '_recorded_sales', 'yes'),
(738, 57, '_order_stock_reduced', '1'),
(739, 58, '_order_key', 'wc_order_5739c1d3943dc'),
(740, 58, '_order_currency', 'INR'),
(741, 58, '_prices_include_tax', 'no'),
(742, 58, '_customer_ip_address', '127.0.0.1'),
(743, 58, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(744, 58, '_customer_user', '1'),
(745, 58, '_created_via', 'checkout'),
(746, 58, '_order_version', '2.5.5'),
(747, 58, '_billing_first_name', 'santosh'),
(748, 58, '_billing_last_name', 'chakraborty'),
(749, 58, '_billing_company', 'home'),
(750, 58, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(751, 58, '_billing_phone', '777777777'),
(752, 58, '_billing_country', 'IN'),
(753, 58, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(754, 58, '_billing_address_2', ''),
(755, 58, '_billing_city', 'kolkata'),
(756, 58, '_billing_state', 'WB'),
(757, 58, '_billing_postcode', '700078'),
(758, 58, '_shipping_first_name', 'santosh'),
(759, 58, '_shipping_last_name', 'chakraborty'),
(760, 58, '_shipping_company', 'home'),
(761, 58, '_shipping_country', 'IN'),
(762, 58, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(763, 58, '_shipping_address_2', ''),
(764, 58, '_shipping_city', 'kolkata'),
(765, 58, '_shipping_state', 'WB'),
(766, 58, '_shipping_postcode', '700078'),
(767, 58, '_payment_method', 'cheque'),
(768, 58, '_payment_method_title', 'Cheque Payment'),
(769, 58, '_order_shipping', ''),
(770, 58, '_cart_discount', '0'),
(771, 58, '_cart_discount_tax', '0'),
(772, 58, '_order_tax', '0'),
(773, 58, '_order_shipping_tax', '0'),
(774, 58, '_order_total', '800.00'),
(775, 58, '_recorded_sales', 'yes'),
(776, 58, '_order_stock_reduced', '1'),
(777, 59, '_order_key', 'wc_order_5739c23fb5a8a'),
(778, 59, '_order_currency', 'INR'),
(779, 59, '_prices_include_tax', 'no'),
(780, 59, '_customer_ip_address', '127.0.0.1'),
(781, 59, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(782, 59, '_customer_user', '1'),
(783, 59, '_created_via', 'checkout'),
(784, 59, '_order_version', '2.5.5'),
(785, 59, '_billing_first_name', 'santosh'),
(786, 59, '_billing_last_name', 'chakraborty'),
(787, 59, '_billing_company', 'home'),
(788, 59, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(789, 59, '_billing_phone', '777777777'),
(790, 59, '_billing_country', 'IN'),
(791, 59, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(792, 59, '_billing_address_2', ''),
(793, 59, '_billing_city', 'kolkata'),
(794, 59, '_billing_state', 'WB'),
(795, 59, '_billing_postcode', '700078'),
(796, 59, '_shipping_first_name', 'santosh'),
(797, 59, '_shipping_last_name', 'chakraborty'),
(798, 59, '_shipping_company', 'home'),
(799, 59, '_shipping_country', 'IN'),
(800, 59, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(801, 59, '_shipping_address_2', ''),
(802, 59, '_shipping_city', 'kolkata'),
(803, 59, '_shipping_state', 'WB'),
(804, 59, '_shipping_postcode', '700078'),
(805, 59, '_payment_method', 'cod'),
(806, 59, '_payment_method_title', 'Cash on Delivery'),
(807, 59, '_order_shipping', ''),
(808, 59, '_cart_discount', '0'),
(809, 59, '_cart_discount_tax', '0'),
(810, 59, '_order_tax', '0'),
(811, 59, '_order_shipping_tax', '0'),
(812, 59, '_order_total', '800.00'),
(813, 59, '_download_permissions_granted', '1'),
(814, 59, '_recorded_sales', 'yes'),
(815, 59, '_order_stock_reduced', '1'),
(816, 60, '_order_key', 'wc_order_573aa469e5a18'),
(817, 60, '_order_currency', 'INR'),
(818, 60, '_prices_include_tax', 'no'),
(819, 60, '_customer_ip_address', '127.0.0.1'),
(820, 60, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(821, 60, '_customer_user', '2'),
(822, 60, '_created_via', 'checkout'),
(823, 60, '_order_version', '2.5.5'),
(824, 60, '_billing_first_name', 'Sumit'),
(825, 60, '_billing_last_name', 'Mandal'),
(826, 60, '_billing_company', 'NIS'),
(827, 60, '_billing_email', 'sumitmandal@nisbusiness.com'),
(828, 60, '_billing_phone', '7894561230'),
(829, 60, '_billing_country', 'IN'),
(830, 60, '_billing_address_1', 'Halisahar'),
(831, 60, '_billing_address_2', ''),
(832, 60, '_billing_city', 'kolkata'),
(833, 60, '_billing_state', 'WB'),
(834, 60, '_billing_postcode', '700078'),
(835, 60, '_shipping_first_name', 'Sumit'),
(836, 60, '_shipping_last_name', 'Mandal'),
(837, 60, '_shipping_company', 'NIS'),
(838, 60, '_shipping_country', 'IN'),
(839, 60, '_shipping_address_1', 'Halisahar'),
(840, 60, '_shipping_address_2', ''),
(841, 60, '_shipping_city', 'kolkata'),
(842, 60, '_shipping_state', 'WB'),
(843, 60, '_shipping_postcode', '700078'),
(844, 60, '_payment_method', 'cod'),
(845, 60, '_payment_method_title', 'Cash on Delivery'),
(846, 60, '_order_shipping', ''),
(847, 60, '_cart_discount', '0'),
(848, 60, '_cart_discount_tax', '0'),
(849, 60, '_order_tax', '0'),
(850, 60, '_order_shipping_tax', '0'),
(851, 60, '_order_total', '3700.00'),
(852, 60, '_download_permissions_granted', '1'),
(853, 60, '_recorded_sales', 'yes'),
(854, 60, '_order_stock_reduced', '1'),
(855, 61, '_order_key', 'wc_order_573aac5413622'),
(856, 61, '_order_currency', 'INR'),
(857, 61, '_prices_include_tax', 'no'),
(858, 61, '_customer_ip_address', '127.0.0.1'),
(859, 61, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(860, 61, '_customer_user', '2'),
(861, 61, '_created_via', 'checkout'),
(862, 61, '_order_version', '2.5.5'),
(863, 61, '_billing_first_name', 'Sumit'),
(864, 61, '_billing_last_name', 'Mandal'),
(865, 61, '_billing_company', 'NIS'),
(866, 61, '_billing_email', 'sumitmandal@nisbusiness.com'),
(867, 61, '_billing_phone', '7894561230'),
(868, 61, '_billing_country', 'IN'),
(869, 61, '_billing_address_1', 'Halisahar'),
(870, 61, '_billing_address_2', ''),
(871, 61, '_billing_city', 'kolkata'),
(872, 61, '_billing_state', 'WB'),
(873, 61, '_billing_postcode', '700078'),
(874, 61, '_shipping_first_name', 'Sumit'),
(875, 61, '_shipping_last_name', 'Mandal'),
(876, 61, '_shipping_company', 'NIS'),
(877, 61, '_shipping_country', 'IN'),
(878, 61, '_shipping_address_1', 'Halisahar'),
(879, 61, '_shipping_address_2', ''),
(880, 61, '_shipping_city', 'kolkata'),
(881, 61, '_shipping_state', 'WB'),
(882, 61, '_shipping_postcode', '700078'),
(883, 61, '_payment_method', 'bacs'),
(884, 61, '_payment_method_title', 'Direct Bank Transfer'),
(885, 61, '_order_shipping', ''),
(886, 61, '_cart_discount', '0'),
(887, 61, '_cart_discount_tax', '0'),
(888, 61, '_order_tax', '0'),
(889, 61, '_order_shipping_tax', '0'),
(890, 61, '_order_total', '1600.00'),
(891, 61, '_recorded_sales', 'yes'),
(892, 61, '_order_stock_reduced', '1'),
(893, 62, '_order_key', 'wc_order_573aad820d9bf'),
(894, 62, '_order_currency', 'INR'),
(895, 62, '_prices_include_tax', 'no'),
(896, 62, '_customer_ip_address', '127.0.0.1'),
(897, 62, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(898, 62, '_customer_user', '2'),
(899, 62, '_created_via', 'checkout'),
(900, 62, '_order_version', '2.5.5'),
(901, 62, '_billing_first_name', 'Sumit'),
(902, 62, '_billing_last_name', 'Mandal'),
(903, 62, '_billing_company', 'NIS'),
(904, 62, '_billing_email', 'sumitmandal@nisbusiness.com'),
(905, 62, '_billing_phone', '7894561230'),
(906, 62, '_billing_country', 'IN'),
(907, 62, '_billing_address_1', 'Halisahar'),
(908, 62, '_billing_address_2', ''),
(909, 62, '_billing_city', 'kolkata'),
(910, 62, '_billing_state', 'WB'),
(911, 62, '_billing_postcode', '700078'),
(912, 62, '_shipping_first_name', 'Sumit'),
(913, 62, '_shipping_last_name', 'Mandal'),
(914, 62, '_shipping_company', 'NIS'),
(915, 62, '_shipping_country', 'IN'),
(916, 62, '_shipping_address_1', 'Halisahar'),
(917, 62, '_shipping_address_2', ''),
(918, 62, '_shipping_city', 'kolkata'),
(919, 62, '_shipping_state', 'WB'),
(920, 62, '_shipping_postcode', '700078'),
(921, 62, '_payment_method', 'bacs'),
(922, 62, '_payment_method_title', 'Direct Bank Transfer'),
(923, 62, '_order_shipping', ''),
(924, 62, '_cart_discount', '0'),
(925, 62, '_cart_discount_tax', '0'),
(926, 62, '_order_tax', '0'),
(927, 62, '_order_shipping_tax', '0'),
(928, 62, '_order_total', '800.00'),
(929, 62, '_recorded_sales', 'yes'),
(930, 62, '_order_stock_reduced', '1'),
(931, 63, '_order_key', 'wc_order_573aca0a41c51'),
(932, 63, '_order_currency', 'INR'),
(933, 63, '_prices_include_tax', 'no'),
(934, 63, '_customer_ip_address', '127.0.0.1'),
(935, 63, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(936, 63, '_customer_user', '2'),
(937, 63, '_created_via', 'checkout'),
(938, 63, '_order_version', '2.5.5'),
(939, 63, '_billing_first_name', 'Sumit'),
(940, 63, '_billing_last_name', 'Mandal'),
(941, 63, '_billing_company', 'NIS'),
(942, 63, '_billing_email', 'sumitmandal@nisbusiness.com'),
(943, 63, '_billing_phone', '7894561230'),
(944, 63, '_billing_country', 'IN'),
(945, 63, '_billing_address_1', 'Halisahar'),
(946, 63, '_billing_address_2', ''),
(947, 63, '_billing_city', 'kolkata'),
(948, 63, '_billing_state', 'WB'),
(949, 63, '_billing_postcode', '700078'),
(950, 63, '_shipping_first_name', 'Sumit'),
(951, 63, '_shipping_last_name', 'Mandal'),
(952, 63, '_shipping_company', 'NIS'),
(953, 63, '_shipping_country', 'IN'),
(954, 63, '_shipping_address_1', 'Halisahar'),
(955, 63, '_shipping_address_2', ''),
(956, 63, '_shipping_city', 'kolkata'),
(957, 63, '_shipping_state', 'WB'),
(958, 63, '_shipping_postcode', '700078'),
(959, 63, '_payment_method', 'bacs'),
(960, 63, '_payment_method_title', 'Direct Bank Transfer'),
(961, 63, '_order_shipping', ''),
(962, 63, '_cart_discount', '0'),
(963, 63, '_cart_discount_tax', '0'),
(964, 63, '_order_tax', '0'),
(965, 63, '_order_shipping_tax', '0'),
(966, 63, '_order_total', '4552.00'),
(967, 63, '_recorded_sales', 'yes'),
(968, 63, '_order_stock_reduced', '1'),
(969, 63, '_edit_lock', '1463482732:1'),
(970, 61, '_download_permissions_granted', '1'),
(971, 64, '_order_key', 'wc_order_573bf8b12460b'),
(972, 64, '_order_currency', 'INR'),
(973, 64, '_prices_include_tax', 'no'),
(974, 64, '_customer_ip_address', '127.0.0.1'),
(975, 64, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(976, 64, '_customer_user', '0'),
(977, 64, '_created_via', 'checkout'),
(978, 64, '_order_version', '2.5.5'),
(979, 64, '_billing_first_name', 'Sumit'),
(980, 64, '_billing_last_name', 'Mandal'),
(981, 64, '_billing_company', 'NIS'),
(982, 64, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(983, 64, '_billing_phone', '7894561230'),
(984, 64, '_billing_country', 'IN'),
(985, 64, '_billing_address_1', 'Halisahar'),
(986, 64, '_billing_address_2', ''),
(987, 64, '_billing_city', 'kolkata'),
(988, 64, '_billing_state', 'WB'),
(989, 64, '_billing_postcode', '743136'),
(990, 64, '_shipping_first_name', 'Sumit'),
(991, 64, '_shipping_last_name', 'Mandal'),
(992, 64, '_shipping_company', 'NIS'),
(993, 64, '_shipping_country', 'IN'),
(994, 64, '_shipping_address_1', 'Halisahar'),
(995, 64, '_shipping_address_2', ''),
(996, 64, '_shipping_city', 'kolkata'),
(997, 64, '_shipping_state', 'WB'),
(998, 64, '_shipping_postcode', '743136'),
(999, 64, '_payment_method', 'bacs'),
(1000, 64, '_payment_method_title', 'Direct Bank Transfer'),
(1001, 64, '_order_shipping', ''),
(1002, 64, '_cart_discount', '0'),
(1003, 64, '_cart_discount_tax', '0'),
(1004, 64, '_order_tax', '0'),
(1005, 64, '_order_shipping_tax', '0'),
(1006, 64, '_order_total', '1688.00'),
(1007, 64, '_recorded_sales', 'yes'),
(1008, 64, '_order_stock_reduced', '1'),
(1009, 65, '_order_key', 'wc_order_573c029c40c93'),
(1010, 65, '_order_currency', 'INR'),
(1011, 65, '_prices_include_tax', 'no'),
(1012, 65, '_customer_ip_address', '127.0.0.1'),
(1013, 65, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1014, 65, '_customer_user', '1'),
(1015, 65, '_created_via', 'checkout'),
(1016, 65, '_order_version', '2.5.5'),
(1017, 65, '_billing_first_name', 'santosh'),
(1018, 65, '_billing_last_name', 'chakraborty'),
(1019, 65, '_billing_company', 'home'),
(1020, 65, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1021, 65, '_billing_phone', '777777777'),
(1022, 65, '_billing_country', 'IN'),
(1023, 65, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1024, 65, '_billing_address_2', ''),
(1025, 65, '_billing_city', 'kolkata'),
(1026, 65, '_billing_state', 'WB'),
(1027, 65, '_billing_postcode', '700078'),
(1028, 65, '_shipping_first_name', 'santosh'),
(1029, 65, '_shipping_last_name', 'chakraborty'),
(1030, 65, '_shipping_company', 'home'),
(1031, 65, '_shipping_country', 'IN'),
(1032, 65, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1033, 65, '_shipping_address_2', ''),
(1034, 65, '_shipping_city', 'kolkata'),
(1035, 65, '_shipping_state', 'WB'),
(1036, 65, '_shipping_postcode', '700078'),
(1037, 65, '_payment_method', 'bacs'),
(1038, 65, '_payment_method_title', 'Direct Bank Transfer'),
(1039, 65, '_order_shipping', ''),
(1040, 65, '_cart_discount', '3200'),
(1041, 65, '_cart_discount_tax', '0'),
(1042, 65, '_order_tax', '0'),
(1043, 65, '_order_shipping_tax', '0'),
(1044, 65, '_order_total', '1188.00'),
(1045, 65, '_recorded_sales', 'yes'),
(1046, 55, 'usage_count', '1'),
(1047, 55, '_used_by', '1'),
(1048, 17, '_used_by', '1'),
(1049, 65, '_recorded_coupon_usage_counts', 'yes'),
(1050, 65, '_order_stock_reduced', '1'),
(1052, 49, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1053, 49, '_wc_review_count', '1'),
(1054, 49, '_wc_average_rating', '4.00'),
(1055, 66, '_order_key', 'wc_order_573c5754153c8'),
(1056, 66, '_order_currency', 'INR'),
(1057, 66, '_prices_include_tax', 'no'),
(1058, 66, '_customer_ip_address', '127.0.0.1'),
(1059, 66, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1060, 66, '_customer_user', '1'),
(1061, 66, '_created_via', 'checkout'),
(1062, 66, '_order_version', '2.5.5'),
(1063, 66, '_billing_first_name', 'santosh'),
(1064, 66, '_billing_last_name', 'chakraborty'),
(1065, 66, '_billing_company', 'home'),
(1066, 66, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1067, 66, '_billing_phone', '777777777'),
(1068, 66, '_billing_country', 'IN'),
(1069, 66, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1070, 66, '_billing_address_2', ''),
(1071, 66, '_billing_city', 'kolkata'),
(1072, 66, '_billing_state', 'WB'),
(1073, 66, '_billing_postcode', '700078'),
(1074, 66, '_shipping_first_name', 'santosh'),
(1075, 66, '_shipping_last_name', 'chakraborty'),
(1076, 66, '_shipping_company', 'home'),
(1077, 66, '_shipping_country', 'IN'),
(1078, 66, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1079, 66, '_shipping_address_2', ''),
(1080, 66, '_shipping_city', 'kolkata'),
(1081, 66, '_shipping_state', 'WB'),
(1082, 66, '_shipping_postcode', '700078'),
(1083, 66, '_payment_method', 'bacs'),
(1084, 66, '_payment_method_title', 'Direct Bank Transfer'),
(1085, 66, '_order_shipping', ''),
(1086, 66, '_cart_discount', '0'),
(1087, 66, '_cart_discount_tax', '0'),
(1088, 66, '_order_tax', '0'),
(1089, 66, '_order_shipping_tax', '0'),
(1090, 66, '_order_total', '888.00'),
(1091, 66, '_recorded_sales', 'yes'),
(1092, 66, '_order_stock_reduced', '1'),
(1093, 67, '_order_key', 'wc_order_573c5afd3fc2b'),
(1094, 67, '_order_currency', 'INR'),
(1095, 67, '_prices_include_tax', 'no'),
(1096, 67, '_customer_ip_address', '127.0.0.1'),
(1097, 67, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1098, 67, '_customer_user', '1'),
(1099, 67, '_created_via', 'checkout'),
(1100, 67, '_order_version', '2.5.5'),
(1101, 67, '_billing_first_name', 'santosh'),
(1102, 67, '_billing_last_name', 'chakraborty'),
(1103, 67, '_billing_company', 'home'),
(1104, 67, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1105, 67, '_billing_phone', '777777777'),
(1106, 67, '_billing_country', 'IN'),
(1107, 67, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1108, 67, '_billing_address_2', ''),
(1109, 67, '_billing_city', 'kolkata'),
(1110, 67, '_billing_state', 'WB'),
(1111, 67, '_billing_postcode', '700078'),
(1112, 67, '_shipping_first_name', 'santosh'),
(1113, 67, '_shipping_last_name', 'chakraborty'),
(1114, 67, '_shipping_company', 'home'),
(1115, 67, '_shipping_country', 'IN'),
(1116, 67, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1117, 67, '_shipping_address_2', ''),
(1118, 67, '_shipping_city', 'kolkata'),
(1119, 67, '_shipping_state', 'WB'),
(1120, 67, '_shipping_postcode', '700078'),
(1121, 67, '_payment_method', 'cod'),
(1122, 67, '_payment_method_title', 'Cash on Delivery'),
(1123, 67, '_order_shipping', ''),
(1124, 67, '_cart_discount', '0'),
(1125, 67, '_cart_discount_tax', '0'),
(1126, 67, '_order_tax', '0'),
(1127, 67, '_order_shipping_tax', '0'),
(1128, 67, '_order_total', '4500.00'),
(1129, 67, '_download_permissions_granted', '1'),
(1130, 67, '_recorded_sales', 'yes'),
(1131, 67, '_order_stock_reduced', '1'),
(1132, 69, '_order_key', 'wc_order_57429132249a6'),
(1133, 69, '_order_currency', 'INR'),
(1134, 69, '_prices_include_tax', 'no'),
(1135, 69, '_customer_ip_address', '127.0.0.1'),
(1136, 69, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1137, 69, '_customer_user', '1'),
(1138, 69, '_created_via', 'checkout'),
(1139, 69, '_order_version', '2.5.5'),
(1140, 69, '_billing_first_name', 'santosh'),
(1141, 69, '_billing_last_name', 'chakraborty'),
(1142, 69, '_billing_company', 'home'),
(1143, 69, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1144, 69, '_billing_phone', '777777777'),
(1145, 69, '_billing_country', 'IN'),
(1146, 69, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1147, 69, '_billing_address_2', ''),
(1148, 69, '_billing_city', 'kolkata'),
(1149, 69, '_billing_state', 'WB'),
(1150, 69, '_billing_postcode', '700078'),
(1151, 69, '_shipping_first_name', 'santosh'),
(1152, 69, '_shipping_last_name', 'chakraborty'),
(1153, 69, '_shipping_company', 'home'),
(1154, 69, '_shipping_country', 'IN'),
(1155, 69, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1156, 69, '_shipping_address_2', ''),
(1157, 69, '_shipping_city', 'kolkata'),
(1158, 69, '_shipping_state', 'WB'),
(1159, 69, '_shipping_postcode', '700078'),
(1160, 69, '_payment_method', 'cod'),
(1161, 69, '_payment_method_title', 'Cash on Delivery'),
(1162, 69, '_order_shipping', ''),
(1163, 69, '_cart_discount', '0'),
(1164, 69, '_cart_discount_tax', '0'),
(1165, 69, '_order_tax', '0'),
(1166, 69, '_order_shipping_tax', '0'),
(1167, 69, '_order_total', '400.00'),
(1168, 69, '_download_permissions_granted', '1'),
(1169, 69, '_recorded_sales', 'yes'),
(1170, 69, '_order_stock_reduced', '1'),
(1171, 70, '_order_key', 'wc_order_57429907b3eda'),
(1172, 70, '_order_currency', 'INR'),
(1173, 70, '_prices_include_tax', 'no'),
(1174, 70, '_customer_ip_address', '127.0.0.1'),
(1175, 70, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1176, 70, '_customer_user', '1'),
(1177, 70, '_created_via', 'checkout'),
(1178, 70, '_order_version', '2.5.5'),
(1179, 70, '_billing_first_name', 'santosh'),
(1180, 70, '_billing_last_name', 'chakraborty'),
(1181, 70, '_billing_company', 'home'),
(1182, 70, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1183, 70, '_billing_phone', '777777777'),
(1184, 70, '_billing_country', 'IN'),
(1185, 70, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1186, 70, '_billing_address_2', ''),
(1187, 70, '_billing_city', 'kolkata'),
(1188, 70, '_billing_state', 'WB'),
(1189, 70, '_billing_postcode', '700078'),
(1190, 70, '_shipping_first_name', 'santosh'),
(1191, 70, '_shipping_last_name', 'chakraborty'),
(1192, 70, '_shipping_company', 'home'),
(1193, 70, '_shipping_country', 'IN'),
(1194, 70, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1195, 70, '_shipping_address_2', ''),
(1196, 70, '_shipping_city', 'kolkata'),
(1197, 70, '_shipping_state', 'WB'),
(1198, 70, '_shipping_postcode', '700078'),
(1199, 70, '_payment_method', 'cod'),
(1200, 70, '_payment_method_title', 'Cash on Delivery'),
(1201, 70, '_order_shipping', ''),
(1202, 70, '_cart_discount', '0'),
(1203, 70, '_cart_discount_tax', '0'),
(1204, 70, '_order_tax', '0'),
(1205, 70, '_order_shipping_tax', '0'),
(1206, 70, '_order_total', '2400.00'),
(1207, 70, '_download_permissions_granted', '1'),
(1208, 70, '_recorded_sales', 'yes'),
(1209, 70, '_order_stock_reduced', '1'),
(1210, 71, '_order_key', 'wc_order_5742e2647d2ce'),
(1211, 71, '_order_currency', 'INR'),
(1212, 71, '_prices_include_tax', 'no'),
(1213, 71, '_customer_ip_address', '127.0.0.1'),
(1214, 71, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1215, 71, '_customer_user', '1'),
(1216, 71, '_created_via', 'checkout'),
(1217, 71, '_order_version', '2.5.5'),
(1218, 71, '_billing_first_name', 'santosh'),
(1219, 71, '_billing_last_name', 'chakraborty'),
(1220, 71, '_billing_company', 'home'),
(1221, 71, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1222, 71, '_billing_phone', '777777777'),
(1223, 71, '_billing_country', 'IN'),
(1224, 71, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1225, 71, '_billing_address_2', ''),
(1226, 71, '_billing_city', 'kolkata'),
(1227, 71, '_billing_state', 'WB'),
(1228, 71, '_billing_postcode', '700078'),
(1229, 71, '_shipping_first_name', 'santosh'),
(1230, 71, '_shipping_last_name', 'chakraborty'),
(1231, 71, '_shipping_company', 'home'),
(1232, 71, '_shipping_country', 'IN'),
(1233, 71, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1234, 71, '_shipping_address_2', ''),
(1235, 71, '_shipping_city', 'kolkata'),
(1236, 71, '_shipping_state', 'WB'),
(1237, 71, '_shipping_postcode', '700078'),
(1238, 71, '_payment_method', 'cod'),
(1239, 71, '_payment_method_title', 'Cash on Delivery'),
(1240, 71, '_order_shipping', ''),
(1241, 71, '_cart_discount', '0'),
(1242, 71, '_cart_discount_tax', '0'),
(1243, 71, '_order_tax', '0'),
(1244, 71, '_order_shipping_tax', '0'),
(1245, 71, '_order_total', '1776.00'),
(1246, 71, '_download_permissions_granted', '1'),
(1247, 71, '_recorded_sales', 'yes'),
(1248, 71, '_order_stock_reduced', '1'),
(1249, 72, '_order_key', 'wc_order_5742e57b11e8a'),
(1250, 72, '_order_currency', 'INR'),
(1251, 72, '_prices_include_tax', 'no'),
(1252, 72, '_customer_ip_address', '127.0.0.1'),
(1253, 72, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1254, 72, '_customer_user', '1'),
(1255, 72, '_created_via', 'checkout'),
(1256, 72, '_order_version', '2.5.5'),
(1257, 72, '_billing_first_name', 'santosh'),
(1258, 72, '_billing_last_name', 'chakraborty'),
(1259, 72, '_billing_company', 'home'),
(1260, 72, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1261, 72, '_billing_phone', '777777777'),
(1262, 72, '_billing_country', 'IN'),
(1263, 72, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1264, 72, '_billing_address_2', ''),
(1265, 72, '_billing_city', 'kolkata'),
(1266, 72, '_billing_state', 'WB'),
(1267, 72, '_billing_postcode', '700078'),
(1268, 72, '_shipping_first_name', 'santosh'),
(1269, 72, '_shipping_last_name', 'chakraborty'),
(1270, 72, '_shipping_company', 'home'),
(1271, 72, '_shipping_country', 'IN'),
(1272, 72, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1273, 72, '_shipping_address_2', ''),
(1274, 72, '_shipping_city', 'kolkata'),
(1275, 72, '_shipping_state', 'WB'),
(1276, 72, '_shipping_postcode', '700078'),
(1277, 72, '_payment_method', 'cod'),
(1278, 72, '_payment_method_title', 'Cash on Delivery'),
(1279, 72, '_order_shipping', ''),
(1280, 72, '_cart_discount', '0'),
(1281, 72, '_cart_discount_tax', '0'),
(1282, 72, '_order_tax', '0'),
(1283, 72, '_order_shipping_tax', '0'),
(1284, 72, '_order_total', '888.00'),
(1285, 72, '_download_permissions_granted', '1'),
(1286, 72, '_recorded_sales', 'yes'),
(1287, 72, '_order_stock_reduced', '1'),
(1288, 73, '_order_key', 'wc_order_5742e8c883e97'),
(1289, 73, '_order_currency', 'INR'),
(1290, 73, '_prices_include_tax', 'no'),
(1291, 73, '_customer_ip_address', '127.0.0.1'),
(1292, 73, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1293, 73, '_customer_user', '1'),
(1294, 73, '_created_via', 'checkout'),
(1295, 73, '_order_version', '2.5.5'),
(1296, 73, '_billing_first_name', 'santosh'),
(1297, 73, '_billing_last_name', 'chakraborty'),
(1298, 73, '_billing_company', 'home'),
(1299, 73, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1300, 73, '_billing_phone', '777777777'),
(1301, 73, '_billing_country', 'IN'),
(1302, 73, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1303, 73, '_billing_address_2', ''),
(1304, 73, '_billing_city', 'kolkata'),
(1305, 73, '_billing_state', 'WB'),
(1306, 73, '_billing_postcode', '700078'),
(1307, 73, '_shipping_first_name', 'santosh'),
(1308, 73, '_shipping_last_name', 'chakraborty'),
(1309, 73, '_shipping_company', 'home'),
(1310, 73, '_shipping_country', 'IN'),
(1311, 73, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1312, 73, '_shipping_address_2', ''),
(1313, 73, '_shipping_city', 'kolkata'),
(1314, 73, '_shipping_state', 'WB'),
(1315, 73, '_shipping_postcode', '700078'),
(1316, 73, '_payment_method', 'cod'),
(1317, 73, '_payment_method_title', 'Cash on Delivery'),
(1318, 73, '_order_shipping', ''),
(1319, 73, '_cart_discount', '0'),
(1320, 73, '_cart_discount_tax', '0'),
(1321, 73, '_order_tax', '0'),
(1322, 73, '_order_shipping_tax', '0'),
(1323, 73, '_order_total', '800.00'),
(1324, 73, '_download_permissions_granted', '1'),
(1325, 73, '_recorded_sales', 'yes'),
(1326, 73, '_order_stock_reduced', '1'),
(1327, 74, '_order_key', 'wc_order_5742ef0029aef'),
(1328, 74, '_order_currency', 'INR'),
(1329, 74, '_prices_include_tax', 'no'),
(1330, 74, '_customer_ip_address', '127.0.0.1'),
(1331, 74, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1332, 74, '_customer_user', '1'),
(1333, 74, '_created_via', 'checkout'),
(1334, 74, '_order_version', '2.5.5'),
(1335, 74, '_billing_first_name', 'santosh'),
(1336, 74, '_billing_last_name', 'chakraborty'),
(1337, 74, '_billing_company', 'home'),
(1338, 74, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1339, 74, '_billing_phone', '777777777'),
(1340, 74, '_billing_country', 'IN'),
(1341, 74, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1342, 74, '_billing_address_2', ''),
(1343, 74, '_billing_city', 'kolkata'),
(1344, 74, '_billing_state', 'WB'),
(1345, 74, '_billing_postcode', '700078'),
(1346, 74, '_shipping_first_name', 'santosh'),
(1347, 74, '_shipping_last_name', 'chakraborty'),
(1348, 74, '_shipping_company', 'home'),
(1349, 74, '_shipping_country', 'IN'),
(1350, 74, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1351, 74, '_shipping_address_2', ''),
(1352, 74, '_shipping_city', 'kolkata'),
(1353, 74, '_shipping_state', 'WB'),
(1354, 74, '_shipping_postcode', '700078'),
(1355, 74, '_payment_method', 'cod'),
(1356, 74, '_payment_method_title', 'Cash on Delivery'),
(1357, 74, '_order_shipping', ''),
(1358, 74, '_cart_discount', '0'),
(1359, 74, '_cart_discount_tax', '0'),
(1360, 74, '_order_tax', '0'),
(1361, 74, '_order_shipping_tax', '0'),
(1362, 74, '_order_total', '800.00'),
(1363, 74, '_download_permissions_granted', '1'),
(1364, 74, '_recorded_sales', 'yes'),
(1365, 74, '_order_stock_reduced', '1'),
(1366, 75, '_order_key', 'wc_order_5742f01a82423'),
(1367, 75, '_order_currency', 'INR'),
(1368, 75, '_prices_include_tax', 'no'),
(1369, 75, '_customer_ip_address', '127.0.0.1'),
(1370, 75, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1371, 75, '_customer_user', '1'),
(1372, 75, '_created_via', 'checkout'),
(1373, 75, '_order_version', '2.5.5'),
(1374, 75, '_billing_first_name', 'santosh'),
(1375, 75, '_billing_last_name', 'chakraborty'),
(1376, 75, '_billing_company', 'home'),
(1377, 75, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1378, 75, '_billing_phone', '777777777'),
(1379, 75, '_billing_country', 'IN'),
(1380, 75, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1381, 75, '_billing_address_2', ''),
(1382, 75, '_billing_city', 'kolkata'),
(1383, 75, '_billing_state', 'WB'),
(1384, 75, '_billing_postcode', '700078'),
(1385, 75, '_shipping_first_name', 'santosh'),
(1386, 75, '_shipping_last_name', 'chakraborty'),
(1387, 75, '_shipping_company', 'home'),
(1388, 75, '_shipping_country', 'IN'),
(1389, 75, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1390, 75, '_shipping_address_2', ''),
(1391, 75, '_shipping_city', 'kolkata'),
(1392, 75, '_shipping_state', 'WB'),
(1393, 75, '_shipping_postcode', '700078'),
(1394, 75, '_payment_method', 'cod'),
(1395, 75, '_payment_method_title', 'Cash on Delivery'),
(1396, 75, '_order_shipping', ''),
(1397, 75, '_cart_discount', '0'),
(1398, 75, '_cart_discount_tax', '0'),
(1399, 75, '_order_tax', '0'),
(1400, 75, '_order_shipping_tax', '0'),
(1401, 75, '_order_total', '800.00'),
(1402, 75, '_download_permissions_granted', '1'),
(1403, 75, '_recorded_sales', 'yes'),
(1404, 75, '_order_stock_reduced', '1'),
(1405, 76, '_order_key', 'wc_order_5747ecd6b43f3'),
(1406, 76, '_order_currency', 'INR'),
(1407, 76, '_prices_include_tax', 'no'),
(1408, 76, '_customer_ip_address', '127.0.0.1'),
(1409, 76, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1410, 76, '_customer_user', '0'),
(1411, 76, '_created_via', 'checkout'),
(1412, 76, '_order_version', '2.5.5'),
(1413, 76, '_billing_first_name', 'santosh'),
(1414, 76, '_billing_last_name', 'chakraborty'),
(1415, 76, '_billing_company', 'NIS'),
(1416, 76, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1417, 76, '_billing_phone', '7894561230'),
(1418, 76, '_billing_country', 'IN'),
(1419, 76, '_billing_address_1', 'Halisahar'),
(1420, 76, '_billing_address_2', ''),
(1421, 76, '_billing_city', 'kolkata'),
(1422, 76, '_billing_state', 'MP'),
(1423, 76, '_billing_postcode', 'ADMIN'),
(1424, 76, '_shipping_first_name', 'santosh'),
(1425, 76, '_shipping_last_name', 'chakraborty'),
(1426, 76, '_shipping_company', 'NIS'),
(1427, 76, '_shipping_country', 'IN'),
(1428, 76, '_shipping_address_1', 'Halisahar'),
(1429, 76, '_shipping_address_2', ''),
(1430, 76, '_shipping_city', 'kolkata'),
(1431, 76, '_shipping_state', 'MP'),
(1432, 76, '_shipping_postcode', 'ADMIN'),
(1433, 76, '_payment_method', 'cod'),
(1434, 76, '_payment_method_title', 'Cash on Delivery'),
(1435, 76, '_order_shipping', ''),
(1436, 76, '_cart_discount', '0'),
(1437, 76, '_cart_discount_tax', '0'),
(1438, 76, '_order_tax', '0'),
(1439, 76, '_order_shipping_tax', '0'),
(1440, 76, '_order_total', '1600.00'),
(1441, 76, '_download_permissions_granted', '1'),
(1442, 76, '_recorded_sales', 'yes'),
(1443, 76, '_order_stock_reduced', '1'),
(1444, 7, '_edit_lock', '1464331445:1'),
(1445, 78, '_order_key', 'wc_order_574d21bb40e6a'),
(1446, 78, '_order_currency', 'INR'),
(1447, 78, '_prices_include_tax', 'no'),
(1448, 78, '_customer_ip_address', '127.0.0.1'),
(1449, 78, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1450, 78, '_customer_user', '0'),
(1451, 78, '_created_via', 'checkout'),
(1452, 78, '_order_version', '2.5.5'),
(1453, 78, '_billing_first_name', 'dgdrgfd'),
(1454, 78, '_billing_last_name', 'afgdasfg'),
(1455, 78, '_billing_company', 'asggfadadfg'),
(1456, 78, '_billing_email', 'sumitmandal@nisbusiness.com'),
(1457, 78, '_billing_phone', '7894561230'),
(1458, 78, '_billing_country', 'IN'),
(1459, 78, '_billing_address_1', 'Halisahar'),
(1460, 78, '_billing_address_2', ''),
(1461, 78, '_billing_city', 'agf'),
(1462, 78, '_billing_state', 'MZ'),
(1463, 78, '_billing_postcode', '700105'),
(1464, 78, '_shipping_first_name', 'dgdrgfd'),
(1465, 78, '_shipping_last_name', 'afgdasfg'),
(1466, 78, '_shipping_company', 'asggfadadfg'),
(1467, 78, '_shipping_country', 'IN'),
(1468, 78, '_shipping_address_1', 'Halisahar'),
(1469, 78, '_shipping_address_2', ''),
(1470, 78, '_shipping_city', 'agf'),
(1471, 78, '_shipping_state', 'MZ'),
(1472, 78, '_shipping_postcode', '700105'),
(1473, 78, '_payment_method', 'cod'),
(1474, 78, '_payment_method_title', 'Cash on Delivery'),
(1475, 78, '_order_shipping', ''),
(1476, 78, '_cart_discount', '0'),
(1477, 78, '_cart_discount_tax', '0'),
(1478, 78, '_order_tax', '0'),
(1479, 78, '_order_shipping_tax', '0'),
(1480, 78, '_order_total', '800.00'),
(1481, 78, '_download_permissions_granted', '1'),
(1482, 78, '_recorded_sales', 'yes'),
(1483, 78, '_order_stock_reduced', '1'),
(1484, 52, '_wc_review_count', '0'),
(1485, 53, '_wc_review_count', '0'),
(1486, 39, '_wc_review_count', '0'),
(1487, 79, '_order_key', 'wc_order_574d53c41e893'),
(1488, 79, '_order_currency', 'INR'),
(1489, 79, '_prices_include_tax', 'no'),
(1490, 79, '_customer_ip_address', '127.0.0.1'),
(1491, 79, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1492, 79, '_customer_user', '1'),
(1493, 79, '_created_via', 'checkout'),
(1494, 79, '_order_version', '2.5.5'),
(1495, 79, '_billing_first_name', 'santosh'),
(1496, 79, '_billing_last_name', 'chakraborty'),
(1497, 79, '_billing_company', 'home'),
(1498, 79, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1499, 79, '_billing_phone', '777777777'),
(1500, 79, '_billing_country', 'IN'),
(1501, 79, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1502, 79, '_billing_address_2', ''),
(1503, 79, '_billing_city', 'kolkata'),
(1504, 79, '_billing_state', 'WB'),
(1505, 79, '_billing_postcode', '700078'),
(1506, 79, '_shipping_first_name', 'santosh'),
(1507, 79, '_shipping_last_name', 'chakraborty'),
(1508, 79, '_shipping_company', 'home'),
(1509, 79, '_shipping_country', 'IN'),
(1510, 79, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1511, 79, '_shipping_address_2', ''),
(1512, 79, '_shipping_city', 'kolkata'),
(1513, 79, '_shipping_state', 'WB'),
(1514, 79, '_shipping_postcode', '700078'),
(1515, 79, '_payment_method', 'cod'),
(1516, 79, '_payment_method_title', 'Cash on Delivery'),
(1517, 79, '_order_shipping', ''),
(1518, 79, '_cart_discount', '0'),
(1519, 79, '_cart_discount_tax', '0'),
(1520, 79, '_order_tax', '0'),
(1521, 79, '_order_shipping_tax', '0'),
(1522, 79, '_order_total', '3776.00'),
(1523, 79, '_download_permissions_granted', '1'),
(1524, 79, '_recorded_sales', 'yes'),
(1525, 79, '_order_stock_reduced', '1'),
(1526, 41, '_wc_review_count', '0'),
(1527, 48, '_wc_review_count', '0'),
(1528, 81, '_order_key', 'wc_order_574eee5d18236'),
(1529, 81, '_order_currency', 'INR'),
(1530, 81, '_prices_include_tax', 'no'),
(1531, 81, '_customer_ip_address', '103.51.59.45'),
(1532, 81, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1533, 81, '_customer_user', '1'),
(1534, 81, '_created_via', 'checkout'),
(1535, 81, '_order_version', '2.5.5'),
(1536, 81, '_billing_first_name', 'santosh'),
(1537, 81, '_billing_last_name', 'chakraborty'),
(1538, 81, '_billing_company', 'home'),
(1539, 81, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1540, 81, '_billing_phone', '777777777'),
(1541, 81, '_billing_country', 'IN'),
(1542, 81, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1543, 81, '_billing_address_2', ''),
(1544, 81, '_billing_city', 'kolkata'),
(1545, 81, '_billing_state', 'WB'),
(1546, 81, '_billing_postcode', '700078'),
(1547, 81, '_shipping_first_name', 'santosh'),
(1548, 81, '_shipping_last_name', 'chakraborty'),
(1549, 81, '_shipping_company', 'home'),
(1550, 81, '_shipping_country', 'IN'),
(1551, 81, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1552, 81, '_shipping_address_2', ''),
(1553, 81, '_shipping_city', 'kolkata'),
(1554, 81, '_shipping_state', 'WB'),
(1555, 81, '_shipping_postcode', '700078'),
(1556, 81, '_payment_method', 'cheque'),
(1557, 81, '_payment_method_title', 'Cheque Payment'),
(1558, 81, '_order_shipping', ''),
(1559, 81, '_cart_discount', '0'),
(1560, 81, '_cart_discount_tax', '0'),
(1561, 81, '_order_tax', '0'),
(1562, 81, '_order_shipping_tax', '0'),
(1563, 81, '_order_total', '2000.00'),
(1564, 81, '_recorded_sales', 'yes'),
(1565, 81, '_order_stock_reduced', '1'),
(1566, 82, '_order_key', 'wc_order_574f1c22af1e6'),
(1567, 82, '_order_currency', 'INR'),
(1568, 82, '_prices_include_tax', 'no'),
(1569, 82, '_customer_ip_address', '103.251.83.2'),
(1570, 82, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1571, 82, '_customer_user', '0'),
(1572, 82, '_created_via', 'checkout'),
(1573, 82, '_order_version', '2.5.5'),
(1574, 82, '_billing_first_name', 'Sumit'),
(1575, 82, '_billing_last_name', 'mandal'),
(1576, 82, '_billing_company', 'Test'),
(1577, 82, '_billing_email', 'sumit@gmail.com'),
(1578, 82, '_billing_phone', '9038241073'),
(1579, 82, '_billing_country', 'IN'),
(1580, 82, '_billing_address_1', 'Kolkata'),
(1581, 82, '_billing_address_2', ''),
(1582, 82, '_billing_city', 'halisahar'),
(1583, 82, '_billing_state', 'WB'),
(1584, 82, '_billing_postcode', '743136'),
(1585, 82, '_shipping_first_name', 'Sumit'),
(1586, 82, '_shipping_last_name', 'mandal'),
(1587, 82, '_shipping_company', 'Test'),
(1588, 82, '_shipping_country', 'IN'),
(1589, 82, '_shipping_address_1', 'Kolkata'),
(1590, 82, '_shipping_address_2', ''),
(1591, 82, '_shipping_city', 'halisahar'),
(1592, 82, '_shipping_state', 'WB'),
(1593, 82, '_shipping_postcode', '743136'),
(1594, 82, '_payment_method', 'cod'),
(1595, 82, '_payment_method_title', 'Cash on Delivery'),
(1596, 82, '_order_shipping', ''),
(1597, 82, '_cart_discount', '0'),
(1598, 82, '_cart_discount_tax', '0'),
(1599, 82, '_order_tax', '0'),
(1600, 82, '_order_shipping_tax', '0'),
(1601, 82, '_order_total', '3800.00'),
(1602, 82, '_download_permissions_granted', '1'),
(1603, 82, '_recorded_sales', 'yes'),
(1604, 82, '_order_stock_reduced', '1'),
(1605, 83, '_edit_lock', '1465202148:1'),
(1606, 83, '_edit_last', '1'),
(1607, 83, '_wp_page_template', 'customercare.php'),
(1608, 88, '_order_key', 'wc_order_57550eec6dd21'),
(1609, 88, '_order_currency', 'INR'),
(1610, 88, '_prices_include_tax', 'no'),
(1611, 88, '_customer_ip_address', '43.231.50.14'),
(1612, 88, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1613, 88, '_customer_user', '1'),
(1614, 88, '_created_via', 'checkout'),
(1615, 88, '_order_version', '2.5.5'),
(1616, 88, '_billing_first_name', 'santosh'),
(1617, 88, '_billing_last_name', 'chakraborty'),
(1618, 88, '_billing_company', 'home'),
(1619, 88, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1620, 88, '_billing_phone', '777777777'),
(1621, 88, '_billing_country', 'IN'),
(1622, 88, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1623, 88, '_billing_address_2', ''),
(1624, 88, '_billing_city', 'kolkata'),
(1625, 88, '_billing_state', 'WB'),
(1626, 88, '_billing_postcode', '700078'),
(1627, 88, '_shipping_first_name', 'santosh'),
(1628, 88, '_shipping_last_name', 'chakraborty'),
(1629, 88, '_shipping_company', 'home'),
(1630, 88, '_shipping_country', 'IN'),
(1631, 88, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1632, 88, '_shipping_address_2', ''),
(1633, 88, '_shipping_city', 'kolkata'),
(1634, 88, '_shipping_state', 'WB'),
(1635, 88, '_shipping_postcode', '700078'),
(1636, 88, '_payment_method', 'cheque'),
(1637, 88, '_payment_method_title', 'Cheque Payment'),
(1638, 88, '_order_shipping', ''),
(1639, 88, '_cart_discount', '0'),
(1640, 88, '_cart_discount_tax', '0'),
(1641, 88, '_order_tax', '0'),
(1642, 88, '_order_shipping_tax', '0'),
(1643, 88, '_order_total', '11992.00'),
(1644, 88, '_recorded_sales', 'yes'),
(1645, 88, '_order_stock_reduced', '1'),
(1646, 89, '_order_key', 'wc_order_5757b6792ad72'),
(1647, 89, '_order_currency', 'INR'),
(1648, 89, '_prices_include_tax', 'no'),
(1649, 89, '_customer_ip_address', '43.231.49.156'),
(1650, 89, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:46.0) Gecko/20100101 Firefox/46.0'),
(1651, 89, '_customer_user', '3'),
(1652, 89, '_created_via', 'checkout'),
(1653, 89, '_order_version', '2.5.5'),
(1654, 89, '_billing_first_name', 'supriya'),
(1655, 89, '_billing_last_name', 'panja'),
(1656, 89, '_billing_company', 'asfsda pby.ltf'),
(1657, 89, '_billing_email', 'supriya.nisbusiness@gmail.com'),
(1658, 89, '_billing_phone', '9038109749'),
(1659, 89, '_billing_country', 'IN'),
(1660, 89, '_billing_address_1', 'kolkaya'),
(1661, 89, '_billing_address_2', ''),
(1662, 89, '_billing_city', 'kolkata'),
(1663, 89, '_billing_state', 'KL'),
(1664, 89, '_billing_postcode', 'ADMIN'),
(1665, 89, '_shipping_first_name', 'supriya'),
(1666, 89, '_shipping_last_name', 'panja'),
(1667, 89, '_shipping_company', 'asfsda pby.ltf'),
(1668, 89, '_shipping_country', 'IN'),
(1669, 89, '_shipping_address_1', 'kolkaya'),
(1670, 89, '_shipping_address_2', ''),
(1671, 89, '_shipping_city', 'kolkata'),
(1672, 89, '_shipping_state', 'KL'),
(1673, 89, '_shipping_postcode', 'ADMIN'),
(1674, 89, '_payment_method', 'cod'),
(1675, 89, '_payment_method_title', 'Cash on Delivery'),
(1676, 89, '_order_shipping', ''),
(1677, 89, '_cart_discount', '0'),
(1678, 89, '_cart_discount_tax', '0'),
(1679, 89, '_order_tax', '0'),
(1680, 89, '_order_shipping_tax', '0'),
(1681, 89, '_order_total', '888.00'),
(1682, 89, '_download_permissions_granted', '1'),
(1683, 89, '_recorded_sales', 'yes'),
(1684, 89, '_order_stock_reduced', '1'),
(1685, 60, '_edit_lock', '1465795863:1'),
(1686, 91, '_edit_lock', '1465995656:1'),
(1687, 91, '_edit_last', '1'),
(1688, 92, '_wp_attached_file', 'b1-1.png'),
(1689, 92, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:278;s:4:"file";s:8:"b1-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"b1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"b1-1-70x100.png";s:5:"width";i:70;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"b1-1-260x260.png";s:5:"width";i:260;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1690, 93, '_wp_attached_file', 'b2-1.png'),
(1691, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:278;s:4:"file";s:8:"b2-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"b2-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"b2-1-70x100.png";s:5:"width";i:70;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"b2-1-260x260.png";s:5:"width";i:260;s:6:"height";i:260;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1692, 94, '_wp_attached_file', 'blog.jpg'),
(1693, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:415;s:4:"file";s:8:"blog.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"blog-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"blog-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"blog-70x100.jpg";s:5:"width";i:70;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"blog-260x260.jpg";s:5:"width";i:260;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"blog-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:16:"blog-825x415.jpg";s:5:"width";i:825;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:25:"© 2013 Robert S. Donovan";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1694, 95, '_wp_attached_file', 'blog2.jpg'),
(1695, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:415;s:4:"file";s:9:"blog2.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"blog2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"blog2-300x125.jpg";s:5:"width";i:300;s:6:"height";i:125;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"blog2-70x100.jpg";s:5:"width";i:70;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"blog2-260x260.jpg";s:5:"width";i:260;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:17:"blog2-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"blog2-825x415.jpg";s:5:"width";i:825;s:6:"height";i:415;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1696, 96, '_wp_attached_file', 'c1.jpg'),
(1697, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:300;s:4:"file";s:6:"c1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"c1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"c1-70x100.jpg";s:5:"width";i:70;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"c1-260x260.jpg";s:5:"width";i:260;s:6:"height";i:260;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"c1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1698, 91, '_thumbnail_id', '95'),
(1701, 98, '_edit_lock', '1466061975:1'),
(1702, 98, '_edit_last', '1'),
(1703, 98, '_thumbnail_id', '95'),
(1710, 101, '_edit_lock', '1465995965:1'),
(1711, 101, '_edit_last', '1'),
(1712, 101, '_wp_page_template', 'page-blog.php'),
(1719, 105, '_edit_last', '1'),
(1720, 105, '_wp_page_template', 'default'),
(1721, 105, '_edit_lock', '1467178502:1'),
(1722, 107, '_order_key', 'wc_order_5773b7fe27be7'),
(1723, 107, '_order_currency', 'USD'),
(1724, 107, '_prices_include_tax', 'no'),
(1725, 107, '_customer_ip_address', '43.231.51.67'),
(1726, 107, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),
(1727, 107, '_customer_user', '1'),
(1728, 107, '_created_via', 'checkout'),
(1729, 107, '_order_version', '2.5.5'),
(1730, 107, '_order_shipping', '0'),
(1731, 107, '_billing_first_name', 'santosh'),
(1732, 107, '_billing_last_name', 'chakraborty'),
(1733, 107, '_billing_company', 'home'),
(1734, 107, '_billing_email', 'sumit.nisbusiness@gmail.com'),
(1735, 107, '_billing_phone', '777777777'),
(1736, 107, '_billing_country', 'IN'),
(1737, 107, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1738, 107, '_billing_address_2', ''),
(1739, 107, '_billing_city', 'kolkata'),
(1740, 107, '_billing_state', 'WB'),
(1741, 107, '_billing_postcode', '700078'),
(1742, 107, '_shipping_first_name', 'santosh'),
(1743, 107, '_shipping_last_name', 'chakraborty'),
(1744, 107, '_shipping_company', 'home'),
(1745, 107, '_shipping_country', 'IN'),
(1746, 107, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1747, 107, '_shipping_address_2', ''),
(1748, 107, '_shipping_city', 'kolkata'),
(1749, 107, '_shipping_state', 'WB'),
(1750, 107, '_shipping_postcode', '700078'),
(1751, 107, '_payment_method', 'paypal'),
(1752, 107, '_payment_method_title', 'PayPal'),
(1753, 107, '_cart_discount', '0'),
(1754, 107, '_cart_discount_tax', '0'),
(1755, 107, '_order_tax', '0'),
(1756, 107, '_order_shipping_tax', '0'),
(1757, 107, '_order_total', '1800.00'),
(1758, 23, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(1759, 23, '_wc_review_count', '1'),
(1760, 23, '_wc_average_rating', '5.00');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1761, 108, '_order_key', 'wc_order_5773cf41888de'),
(1762, 108, '_order_currency', 'USD'),
(1763, 108, '_prices_include_tax', 'no'),
(1764, 108, '_customer_ip_address', '43.231.51.67'),
(1765, 108, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:47.0) Gecko/20100101 Firefox/47.0'),
(1766, 108, '_customer_user', '1'),
(1767, 108, '_created_via', 'checkout'),
(1768, 108, '_order_version', '2.5.5'),
(1769, 108, '_order_shipping', '0'),
(1770, 108, '_billing_first_name', 'tester'),
(1771, 108, '_billing_last_name', 'test'),
(1772, 108, '_billing_company', 'tester'),
(1773, 108, '_billing_email', 'teser.nisbusiness@gmail.com'),
(1774, 108, '_billing_phone', '9038109794'),
(1775, 108, '_billing_country', 'IN'),
(1776, 108, '_billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1777, 108, '_billing_address_2', ''),
(1778, 108, '_billing_city', 'kolkata'),
(1779, 108, '_billing_state', 'WB'),
(1780, 108, '_billing_postcode', '700078'),
(1781, 108, '_shipping_first_name', 'tester'),
(1782, 108, '_shipping_last_name', 'test'),
(1783, 108, '_shipping_company', 'tester'),
(1784, 108, '_shipping_country', 'IN'),
(1785, 108, '_shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(1786, 108, '_shipping_address_2', ''),
(1787, 108, '_shipping_city', 'kolkata'),
(1788, 108, '_shipping_state', 'WB'),
(1789, 108, '_shipping_postcode', '700078'),
(1790, 108, '_payment_method', 'cod'),
(1791, 108, '_payment_method_title', 'Cash on Delivery'),
(1792, 108, '_cart_discount', '0'),
(1793, 108, '_cart_discount_tax', '0'),
(1794, 108, '_order_tax', '0'),
(1795, 108, '_order_shipping_tax', '0'),
(1796, 108, '_order_total', '3200.00'),
(1797, 108, '_download_permissions_granted', '1'),
(1798, 108, '_recorded_sales', 'yes'),
(1799, 108, '_order_stock_reduced', '1'),
(1801, 108, '_edit_lock', '1469029250:1'),
(1802, 110, '_edit_lock', '1484032658:1'),
(1803, 110, '_edit_last', '1'),
(1804, 110, '_wp_page_template', 'default'),
(1807, 117, '_order_key', 'wc_order_58a95e7b4f4d3'),
(1808, 117, '_order_currency', 'USD'),
(1809, 117, '_prices_include_tax', 'no'),
(1810, 117, '_customer_ip_address', '47.15.2.210'),
(1811, 117, '_customer_user_agent', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:51.0) Gecko/20100101 Firefox/51.0'),
(1812, 117, '_customer_user', '0'),
(1813, 117, '_created_via', 'checkout'),
(1814, 117, '_cart_hash', '6c488a05cc8c2beed509454da8dbe5fa'),
(1815, 117, '_order_version', '2.6.11'),
(1816, 117, '_order_shipping', '0'),
(1817, 117, '_billing_first_name', 'santosh'),
(1818, 117, '_billing_last_name', 'chakraborty'),
(1819, 117, '_billing_company', 'homee'),
(1820, 117, '_billing_email', 'santosh@gmail.com'),
(1821, 117, '_billing_phone', '9432324143'),
(1822, 117, '_billing_country', 'IN'),
(1823, 117, '_billing_address_1', 'kolkta'),
(1824, 117, '_billing_address_2', ''),
(1825, 117, '_billing_city', 'kolkata'),
(1826, 117, '_billing_state', 'WB'),
(1827, 117, '_billing_postcode', '700078'),
(1828, 117, '_shipping_first_name', 'santosh'),
(1829, 117, '_shipping_last_name', 'chakraborty'),
(1830, 117, '_shipping_company', 'homee'),
(1831, 117, '_shipping_country', 'IN'),
(1832, 117, '_shipping_address_1', 'kolkta'),
(1833, 117, '_shipping_address_2', ''),
(1834, 117, '_shipping_city', 'kolkata'),
(1835, 117, '_shipping_state', 'WB'),
(1836, 117, '_shipping_postcode', '700078'),
(1837, 117, '_payment_method', 'cod'),
(1838, 117, '_payment_method_title', 'Cash on Delivery'),
(1839, 117, '_cart_discount', '0'),
(1840, 117, '_cart_discount_tax', '0'),
(1841, 117, '_order_tax', '0'),
(1842, 117, '_order_shipping_tax', '0'),
(1843, 117, '_order_total', '5100.00'),
(1844, 117, '_download_permissions_granted', '1'),
(1845, 117, '_recorded_sales', 'yes'),
(1846, 117, '_order_stock_reduced', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2016-05-02 05:32:07', '2016-05-02 05:32:07', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://woocommerce.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-05-02 05:32:07', '2016-05-02 05:32:07', '', 0, 'http://woocommerce.local/?page_id=2', 0, 'page', '', 0),
(5, 1, '2016-05-02 09:05:22', '2016-05-02 09:05:22', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2016-05-02 09:05:22', '2016-05-02 09:05:22', '', 0, 'http://woocommerce.local/shop/', 0, 'page', '', 0),
(6, 1, '2016-05-02 09:05:22', '2016-05-02 09:05:22', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2016-05-02 09:05:22', '2016-05-02 09:05:22', '', 0, 'http://woocommerce.local/cart/', 0, 'page', '', 0),
(7, 1, '2016-05-02 09:05:22', '2016-05-02 09:05:22', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2016-05-02 09:05:22', '2016-05-02 09:05:22', '', 0, 'http://woocommerce.local/checkout/', 0, 'page', '', 0),
(8, 1, '2016-05-02 09:05:22', '2016-05-02 09:05:22', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2016-05-02 09:05:22', '2016-05-02 09:05:22', '', 0, 'http://woocommerce.local/my-account/', 0, 'page', '', 0),
(11, 1, '2016-05-04 05:16:21', '2016-05-04 05:16:21', 'at low cost.at low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low costat low cost', 'T4', '', 'publish', 'open', 'closed', '', 'nokia-ami', '', '', '2016-05-05 09:40:20', '2016-05-05 09:40:20', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=11', 0, 'product', '', 0),
(12, 1, '2016-05-04 05:14:50', '2016-05-04 05:14:50', '', 'mad_0', '', 'inherit', 'open', 'closed', '', 'mad_0', '', '', '2016-05-04 05:14:50', '2016-05-04 05:14:50', '', 11, 'http://woocommerce.local/wp-content/uploads/mad_0.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2016-05-04 05:20:31', '2016-05-04 05:20:31', 't', 'T3', '', 'publish', 'open', 'closed', '', 'nokia-tui', '', '', '2016-05-05 09:39:24', '2016-05-05 09:39:24', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=13', 0, 'product', '', 0),
(14, 1, '2016-05-04 05:22:58', '2016-05-04 05:22:58', '', 'Developing-Mobile-Learning-Which-Device-Are-You-Targeting1', '', 'inherit', 'open', 'closed', '', 'developing-mobile-learning-which-device-are-you-targeting1', '', '', '2016-05-04 05:22:58', '2016-05-04 05:22:58', '', 13, 'http://woocommerce.local/wp-content/uploads/Developing-Mobile-Learning-Which-Device-Are-You-Targeting1.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2016-05-04 05:25:33', '2016-05-04 05:25:33', '', 'Order &ndash; May 4, 2016 @ 05:25 AM', '', 'wc-processing', 'open', 'closed', 'order_572987ccec76a', 'order-may-04-2016-0525-am', '', '', '2016-05-04 05:25:33', '2016-05-04 05:25:33', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=15', 0, 'shop_order', '', 1),
(16, 1, '2016-05-04 10:16:42', '2016-05-04 10:16:42', '', 'Order &ndash; May 4, 2016 @ 10:16 AM', '', 'wc-processing', 'open', 'closed', 'order_5729cc0a82fdf', 'order-may-04-2016-1016-am', '', '', '2016-05-04 10:16:42', '2016-05-04 10:16:42', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=16', 0, 'shop_order', '', 1),
(17, 1, '2016-05-04 11:21:33', '2016-05-04 11:21:33', '', 'cr12', '', 'publish', 'closed', 'closed', '', 'cr12', '', '', '2016-05-04 11:21:33', '2016-05-04 11:21:33', '', 0, 'http://woocommerce.local/?post_type=shop_coupon&#038;p=17', 0, 'shop_coupon', '', 0),
(18, 1, '2016-05-04 11:29:37', '2016-05-04 11:29:37', '', 'Order &ndash; May 4, 2016 @ 11:29 AM', '', 'wc-processing', 'open', 'closed', 'order_5729dd21206fb', 'order-may-04-2016-1129-am', '', '', '2016-05-04 11:29:37', '2016-05-04 11:29:37', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=18', 0, 'shop_order', '', 1),
(19, 1, '2016-05-04 12:01:30', '2016-05-04 12:01:30', '', 'Digital-Storm-Laptops', '', 'inherit', 'open', 'closed', '', 'digital-storm-laptops', '', '', '2016-05-04 12:01:30', '2016-05-04 12:01:30', '', 0, 'http://woocommerce.local/wp-content/uploads/Digital-Storm-Laptops.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2016-05-04 12:03:45', '2016-05-04 12:03:45', 'T2', 'T2', '', 'publish', 'open', 'closed', '', 'dell', '', '', '2016-05-05 09:38:43', '2016-05-05 09:38:43', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=21', 0, 'product', '', 0),
(22, 1, '2016-05-04 12:03:23', '2016-05-04 12:03:23', '', 'Dell-Studio-14z_large', '', 'inherit', 'open', 'closed', '', 'dell-studio-14z_large', '', '', '2016-05-04 12:03:23', '2016-05-04 12:03:23', '', 21, 'http://woocommerce.local/wp-content/uploads/Dell-Studio-14z_large.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2016-05-04 12:05:15', '2016-05-04 12:05:15', 'T!', 'T1', '', 'publish', 'open', 'closed', '', 'vio', '', '', '2016-05-05 09:37:33', '2016-05-05 09:37:33', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=23', 0, 'product', '', 1),
(24, 1, '2016-05-04 12:04:42', '2016-05-04 12:04:42', '', 'sony1 (6)', '', 'inherit', 'open', 'closed', '', 'sony1-6', '', '', '2016-05-04 12:04:42', '2016-05-04 12:04:42', '', 23, 'http://woocommerce.local/wp-content/uploads/sony1-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2016-05-05 09:34:52', '2016-05-05 09:34:52', '', '1000x1000', '', 'inherit', 'open', 'closed', '', '1000x1000', '', '', '2016-05-05 09:34:52', '2016-05-05 09:34:52', '', 23, 'http://woocommerce.local/wp-content/uploads/1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-05-05 09:34:54', '2016-05-05 09:34:54', '', 'boboli-tshirt-5380061100_a-1000x1000', '', 'inherit', 'open', 'closed', '', 'boboli-tshirt-5380061100_a-1000x1000', '', '', '2016-05-05 09:34:54', '2016-05-05 09:34:54', '', 23, 'http://woocommerce.local/wp-content/uploads/boboli-tshirt-5380061100_a-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2016-05-05 09:34:56', '2016-05-05 09:34:56', '', 'Dell-Studio-14z_large', '', 'inherit', 'open', 'closed', '', 'dell-studio-14z_large-2', '', '', '2016-05-05 09:34:56', '2016-05-05 09:34:56', '', 23, 'http://woocommerce.local/wp-content/uploads/Dell-Studio-14z_large-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2016-05-05 09:34:57', '2016-05-05 09:34:57', '', 'Developing-Mobile-Learning-Which-Device-Are-You-Targeting1', '', 'inherit', 'open', 'closed', '', 'developing-mobile-learning-which-device-are-you-targeting1-2', '', '', '2016-05-05 09:34:57', '2016-05-05 09:34:57', '', 23, 'http://woocommerce.local/wp-content/uploads/Developing-Mobile-Learning-Which-Device-Are-You-Targeting1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2016-05-05 09:34:58', '2016-05-05 09:34:58', '', 'Digital-Storm-Laptops', '', 'inherit', 'open', 'closed', '', 'digital-storm-laptops-2', '', '', '2016-05-05 09:34:58', '2016-05-05 09:34:58', '', 23, 'http://woocommerce.local/wp-content/uploads/Digital-Storm-Laptops-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2016-05-05 09:35:00', '2016-05-05 09:35:00', '', 'Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men', '', 'inherit', 'open', 'closed', '', 'game-of-thrones-font-b-t-b-font-font-b-shirts-b-font-font-b-men', '', '', '2016-05-05 09:35:00', '2016-05-05 09:35:00', '', 23, 'http://woocommerce.local/wp-content/uploads/Game-Of-Thrones-font-b-T-b-font-font-b-Shirts-b-font-font-b-Men.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2016-05-05 09:35:01', '2016-05-05 09:35:01', '', 'mad_0', '', 'inherit', 'open', 'closed', '', 'mad_0-2', '', '', '2016-05-05 09:35:01', '2016-05-05 09:35:01', '', 23, 'http://woocommerce.local/wp-content/uploads/mad_0-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2016-05-05 09:35:03', '2016-05-05 09:35:03', '', 'mitre-polarize-t-shirt-p177-1103_zoom', '', 'inherit', 'open', 'closed', '', 'mitre-polarize-t-shirt-p177-1103_zoom', '', '', '2016-05-05 09:35:03', '2016-05-05 09:35:03', '', 23, 'http://woocommerce.local/wp-content/uploads/mitre-polarize-t-shirt-p177-1103_zoom.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2016-05-05 09:35:04', '2016-05-05 09:35:04', '', 'New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts', '', 'inherit', 'open', 'closed', '', 'new-tupac-shakur-font-b-2pac-b-font-font-b-t-b-font-font-b-shirts', '', '', '2016-05-05 09:35:04', '2016-05-05 09:35:04', '', 23, 'http://woocommerce.local/wp-content/uploads/New-Tupac-Shakur-font-b-2Pac-b-font-font-b-T-b-font-font-b-Shirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2016-05-05 09:35:05', '2016-05-05 09:35:05', '', 'sheldons-bat-question-mark-t-shirt_1000', '', 'inherit', 'open', 'closed', '', 'sheldons-bat-question-mark-t-shirt_1000', '', '', '2016-05-05 09:35:05', '2016-05-05 09:35:05', '', 23, 'http://woocommerce.local/wp-content/uploads/sheldons-bat-question-mark-t-shirt_1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2016-05-05 09:35:06', '2016-05-05 09:35:06', '', 'sony1 (6)', '', 'inherit', 'open', 'closed', '', 'sony1-6-2', '', '', '2016-05-05 09:35:06', '2016-05-05 09:35:06', '', 23, 'http://woocommerce.local/wp-content/uploads/sony1-6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2016-05-05 09:35:06', '2016-05-05 09:35:06', '', 'terminator-2-t1000-costume-sub-juniors-t-shirt-4', '', 'inherit', 'open', 'closed', '', 'terminator-2-t1000-costume-sub-juniors-t-shirt-4', '', '', '2016-05-05 09:35:06', '2016-05-05 09:35:06', '', 23, 'http://woocommerce.local/wp-content/uploads/terminator-2-t1000-costume-sub-juniors-t-shirt-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-05-05 09:35:10', '2016-05-05 09:35:10', 'T!', 'T1', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2016-05-05 09:35:10', '2016-05-05 09:35:10', '', 23, 'http://woocommerce.local/23-autosave-v1/', 0, 'revision', '', 0),
(38, 1, '2016-05-05 09:43:11', '2016-05-05 09:43:11', 'tttttttttt', 'T5', '', 'publish', 'open', 'closed', '', 't5', '', '', '2016-05-05 09:43:11', '2016-05-05 09:43:11', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=38', 0, 'product', '', 0),
(39, 1, '2016-05-05 09:43:54', '2016-05-05 09:43:54', 'ttt', 'T6', '', 'publish', 'open', 'closed', '', 't6', '', '', '2016-05-05 09:44:40', '2016-05-05 09:44:40', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2016-05-05 09:44:26', '2016-05-05 09:44:26', 't', 'T7', '', 'publish', 'open', 'closed', '', 't7', '', '', '2016-05-05 09:44:26', '2016-05-05 09:44:26', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=40', 0, 'product', '', 0),
(41, 1, '2016-05-05 10:14:34', '2016-05-05 10:14:34', 'rrrrrrrrr', 'T8', '', 'publish', 'open', 'closed', '', 't8', '', '', '2016-05-05 10:14:34', '2016-05-05 10:14:34', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2016-05-05 10:14:07', '2016-05-05 10:14:07', '', '4e8a88df2f785bac89fa5191030cfad0', '', 'inherit', 'open', 'closed', '', '4e8a88df2f785bac89fa5191030cfad0', '', '', '2016-05-05 10:14:07', '2016-05-05 10:14:07', '', 41, 'http://woocommerce.local/wp-content/uploads/4e8a88df2f785bac89fa5191030cfad0.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2016-05-05 10:14:08', '2016-05-05 10:14:08', '', '1000x1000', '', 'inherit', 'open', 'closed', '', '1000x1000-2', '', '', '2016-05-05 10:14:08', '2016-05-05 10:14:08', '', 41, 'http://woocommerce.local/wp-content/uploads/1000x1000-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 'BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg', '', 'inherit', 'open', 'closed', '', 'br-h15-m20-granddad-ls-t-shirt-1000-black-front-1000x1000-shop-jpg', '', '', '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 41, 'http://woocommerce.local/wp-content/uploads/BR-H15-M20-Granddad-LS-T-shirt-1000-black-Front-1000x1000-Shop-jpg.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 'Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt', '', 'inherit', 'open', 'closed', '', 'games-3d-t-shirts-men-new-font-b-ashe-b-font-cartoon-mens-font-b-tshirt', '', '', '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 41, 'http://woocommerce.local/wp-content/uploads/Games-3D-T-Shirts-Men-New-font-b-Ashe-b-font-Cartoon-Mens-font-b-tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 'Men''s long sleeve tshirt Burgundy - detail 2-1000x1000', '', 'inherit', 'open', 'closed', '', 'mens-long-sleeve-tshirt-burgundy-detail-2-1000x1000', '', '', '2016-05-05 10:14:09', '2016-05-05 10:14:09', '', 41, 'http://woocommerce.local/wp-content/uploads/Mens-long-sleeve-tshirt-Burgundy-detail-2-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-05-05 10:14:10', '2016-05-05 10:14:10', '', 't-shirt_6195_1-1000x1000', '', 'inherit', 'open', 'closed', '', 't-shirt_6195_1-1000x1000', '', '', '2016-05-05 10:14:10', '2016-05-05 10:14:10', '', 41, 'http://woocommerce.local/wp-content/uploads/t-shirt_6195_1-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-05-05 10:15:09', '2016-05-05 10:15:09', 'yyyy', 'T9', '', 'publish', 'open', 'closed', '', 't9', '', '', '2016-05-05 10:15:09', '2016-05-05 10:15:09', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2016-05-05 10:15:47', '2016-05-05 10:15:47', 'uuuuuu', 'T10', '', 'publish', 'open', 'closed', '', 't10', '', '', '2016-05-05 10:15:47', '2016-05-05 10:15:47', '', 0, 'http://woocommerce.local/?post_type=product&#038;p=49', 0, 'product', '', 1),
(52, 1, '2016-05-05 10:17:33', '2016-05-05 10:17:33', 'uuuuuu', 'T11', '', 'publish', 'open', 'closed', '', 't11', '', '', '2016-05-05 10:17:49', '2016-05-05 10:17:49', '', 0, 'http://woocommerce.local/product/t11/', 0, 'product', '', 0),
(53, 1, '2016-05-05 10:18:38', '2016-05-05 10:18:38', 'ooo', 'T13', '', 'publish', 'open', 'closed', '', 't13', '', '', '2016-06-10 12:14:41', '2016-06-10 12:14:41', '', 0, 'http://woocommerce.local/product/t13/', 0, 'product', '', 0),
(55, 1, '2016-05-11 07:10:00', '2016-05-11 07:10:00', '', 'cu1234', '', 'publish', 'closed', 'closed', '', 'cu1234', '', '', '2016-05-11 07:10:00', '2016-05-11 07:10:00', '', 0, 'http://woocommerce.local/?post_type=shop_coupon&#038;p=55', 0, 'shop_coupon', '', 0),
(56, 1, '2016-05-16 12:44:18', '2016-05-16 12:44:18', '', 'Order &ndash; May 16, 2016 @ 12:44 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5739c09f3bebc', 'order-may-16-2016-1244-pm', '', '', '2016-05-16 12:44:18', '2016-05-16 12:44:18', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=56', 0, 'shop_order', '', 1),
(57, 1, '2016-05-16 12:45:18', '2016-05-16 12:45:18', '', 'Order &ndash; May 16, 2016 @ 12:45 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5739c0dd95649', 'order-may-16-2016-1245-pm', '', '', '2016-05-16 12:45:18', '2016-05-16 12:45:18', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=57', 0, 'shop_order', '', 1),
(58, 1, '2016-05-16 12:49:24', '2016-05-16 12:49:24', '', 'Order &ndash; May 16, 2016 @ 12:49 PM', '', 'wc-on-hold', 'open', 'closed', 'order_5739c1d382a72', 'order-may-16-2016-1249-pm', '', '', '2016-05-16 12:49:24', '2016-05-16 12:49:24', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=58', 0, 'shop_order', '', 1),
(59, 1, '2016-05-16 12:51:12', '2016-05-16 12:51:12', '', 'Order &ndash; May 16, 2016 @ 12:51 PM', '', 'wc-processing', 'open', 'closed', 'order_5739c23f95179', 'order-may-16-2016-1251-pm', '', '', '2016-05-16 12:51:12', '2016-05-16 12:51:12', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=59', 0, 'shop_order', '', 1),
(60, 1, '2016-05-17 04:56:10', '2016-05-17 04:56:10', '', 'Order &ndash; May 17, 2016 @ 04:56 AM', '', 'wc-processing', 'open', 'closed', 'order_573aa469e3337', 'order-may-17-2016-0456-am', '', '', '2016-05-17 04:56:10', '2016-05-17 04:56:10', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=60', 0, 'shop_order', '', 1),
(61, 1, '2016-05-17 05:29:56', '2016-05-17 05:29:56', '', 'Order &ndash; May 17, 2016 @ 05:29 AM', '', 'wc-processing', 'open', 'closed', 'order_573aac53e38ee', 'order-may-17-2016-0529-am', '', '', '2016-05-17 11:01:21', '2016-05-17 11:01:21', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=61', 0, 'shop_order', '', 2),
(62, 1, '2016-05-17 05:34:58', '2016-05-17 05:34:58', '', 'Order &ndash; May 17, 2016 @ 05:34 AM', '', 'wc-on-hold', 'open', 'closed', 'order_573aad81f1b3a', 'order-may-17-2016-0534-am', '', '', '2016-05-17 05:34:58', '2016-05-17 05:34:58', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=62', 0, 'shop_order', '', 1),
(63, 1, '2016-05-17 07:36:44', '2016-05-17 07:36:44', '', 'Order &ndash; May 17, 2016 @ 07:36 AM', '', 'wc-on-hold', 'open', 'closed', 'order_573aca09ccf77', 'order-may-17-2016-0736-am', '', '', '2016-05-17 07:36:44', '2016-05-17 07:36:44', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=63', 0, 'shop_order', '', 1),
(64, 1, '2016-05-18 05:08:01', '2016-05-18 05:08:01', '', 'Order &ndash; May 18, 2016 @ 05:08 AM', '', 'wc-on-hold', 'open', 'closed', 'order_573bf8b119b1b', 'order-may-18-2016-0508-am', '', '', '2016-05-18 05:08:01', '2016-05-18 05:08:01', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=64', 0, 'shop_order', '', 1),
(65, 1, '2016-05-18 05:50:21', '2016-05-18 05:50:21', '', 'Order &ndash; May 18, 2016 @ 05:50 AM', '', 'wc-on-hold', 'open', 'closed', 'order_573c029c10da4', 'order-may-18-2016-0550-am', '', '', '2016-05-18 05:50:21', '2016-05-18 05:50:21', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=65', 0, 'shop_order', '', 1),
(66, 1, '2016-05-18 11:51:49', '2016-05-18 11:51:49', '', 'Order &ndash; May 18, 2016 @ 11:51 AM', '', 'wc-on-hold', 'open', 'closed', 'order_573c5753d6876', 'order-may-18-2016-1151-am', '', '', '2016-05-18 11:51:49', '2016-05-18 11:51:49', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=66', 0, 'shop_order', '', 1),
(67, 1, '2016-05-18 12:07:25', '2016-05-18 12:07:25', '', 'Order &ndash; May 18, 2016 @ 12:07 PM', '', 'wc-processing', 'open', 'closed', 'order_573c5afc9c990', 'order-may-18-2016-1207-pm', '', '', '2016-05-18 12:07:25', '2016-05-18 12:07:25', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=67', 0, 'shop_order', '', 1),
(69, 1, '2016-05-23 05:12:18', '2016-05-23 05:12:18', '', 'Order &ndash; May 23, 2016 @ 05:12 AM', '', 'wc-processing', 'open', 'closed', 'order_574291319b7a2', 'order-may-23-2016-0512-am', '', '', '2016-05-23 05:12:18', '2016-05-23 05:12:18', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=69', 0, 'shop_order', '', 1),
(70, 1, '2016-05-23 05:45:43', '2016-05-23 05:45:43', '', 'Order &ndash; May 23, 2016 @ 05:45 AM', '', 'wc-processing', 'open', 'closed', 'order_57429907a7984', 'order-may-23-2016-0545-am', '', '', '2016-05-23 05:45:43', '2016-05-23 05:45:43', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=70', 0, 'shop_order', '', 1),
(71, 1, '2016-05-23 10:58:45', '2016-05-23 10:58:45', '', 'Order &ndash; May 23, 2016 @ 10:58 AM', '', 'wc-processing', 'open', 'closed', 'order_5742e26427dfd', 'order-may-23-2016-1058-am', '', '', '2016-05-23 10:58:45', '2016-05-23 10:58:45', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=71', 0, 'shop_order', '', 1),
(72, 1, '2016-05-23 11:11:55', '2016-05-23 11:11:55', '', 'Order &ndash; May 23, 2016 @ 11:11 AM', '', 'wc-processing', 'open', 'closed', 'order_5742e57b01264', 'order-may-23-2016-1111-am', '', '', '2016-05-23 11:11:55', '2016-05-23 11:11:55', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=72', 0, 'shop_order', '', 1),
(73, 1, '2016-05-23 11:26:01', '2016-05-23 11:26:01', '', 'Order &ndash; May 23, 2016 @ 11:26 AM', '', 'wc-processing', 'open', 'closed', 'order_5742e8c86b05d', 'order-may-23-2016-1126-am', '', '', '2016-05-23 11:26:01', '2016-05-23 11:26:01', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=73', 0, 'shop_order', '', 1),
(74, 1, '2016-05-23 11:52:32', '2016-05-23 11:52:32', '', 'Order &ndash; May 23, 2016 @ 11:52 AM', '', 'wc-processing', 'open', 'closed', 'order_5742ef001433f', 'order-may-23-2016-1152-am', '', '', '2016-05-23 11:52:32', '2016-05-23 11:52:32', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=74', 0, 'shop_order', '', 1),
(75, 1, '2016-05-23 11:57:14', '2016-05-23 11:57:14', '', 'Order &ndash; May 23, 2016 @ 11:57 AM', '', 'wc-processing', 'open', 'closed', 'order_5742f01a72971', 'order-may-23-2016-1157-am', '', '', '2016-05-23 11:57:14', '2016-05-23 11:57:14', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=75', 0, 'shop_order', '', 1),
(76, 1, '2016-05-27 06:44:39', '2016-05-27 06:44:39', '', 'Order &ndash; May 27, 2016 @ 06:44 AM', '', 'wc-processing', 'open', 'closed', 'order_5747ecd6b257d', 'order-may-27-2016-0644-am', '', '', '2016-05-27 06:44:39', '2016-05-27 06:44:39', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=76', 0, 'shop_order', '', 1),
(77, 1, '2016-05-27 07:09:18', '2016-05-27 07:09:18', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2016-05-27 07:09:18', '2016-05-27 07:09:18', '', 0, 'http://woocommerce.local/wishlist/', 0, 'page', '', 0),
(78, 1, '2016-05-31 05:31:39', '2016-05-31 05:31:39', '', 'Order &ndash; May 31, 2016 @ 05:31 AM', '', 'wc-processing', 'open', 'closed', 'order_574d21bb3264f', 'order-may-31-2016-0531-am', '', '', '2016-05-31 05:31:39', '2016-05-31 05:31:39', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=78', 0, 'shop_order', '', 1),
(79, 1, '2016-05-31 09:05:08', '2016-05-31 09:05:08', '', 'Order &ndash; May 31, 2016 @ 09:05 AM', '', 'wc-processing', 'open', 'closed', 'order_574d53c41a2c4', 'order-may-31-2016-0905-am', '', '', '2016-05-31 09:05:08', '2016-05-31 09:05:08', '', 0, 'http://woocommerce.local/?post_type=shop_order&#038;p=79', 0, 'shop_order', '', 1),
(81, 1, '2016-06-01 14:17:01', '2016-06-01 14:17:01', '', 'Order &ndash; June 1, 2016 @ 02:17 PM', '', 'wc-on-hold', 'open', 'closed', 'order_574eee5d13eac', 'order-jun-01-2016-0217-pm', '', '', '2016-06-01 14:17:01', '2016-06-01 14:17:01', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=81', 0, 'shop_order', '', 1),
(82, 1, '2016-06-01 17:32:18', '2016-06-01 17:32:18', '', 'Order &ndash; June 1, 2016 @ 05:32 PM', '', 'wc-processing', 'open', 'closed', 'order_574f1c22a89c0', 'order-jun-01-2016-0532-pm', '', '', '2016-06-01 17:32:18', '2016-06-01 17:32:18', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=82', 0, 'shop_order', '', 1),
(83, 1, '2016-06-02 10:06:46', '2016-06-02 10:06:46', '', '24 x 7 Customer care', '', 'publish', 'closed', 'closed', '', '24-x-7-customer-care', '', '', '2016-06-06 05:59:09', '2016-06-06 05:59:09', '', 0, 'http://eshopper.nisbeta.org/?page_id=83', 0, 'page', '', 0),
(84, 1, '2016-06-02 10:06:46', '2016-06-02 10:06:46', '', '24 x 7 Customer care', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-06-02 10:06:46', '2016-06-02 10:06:46', '', 83, 'http://eshopper.nisbeta.org/83-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2016-06-02 10:11:51', '2016-06-02 10:11:51', '<div class="customer_wrapper">\n    	<div class="container">\n        	<div class="customer_wrap">\n            	 <div class="col-lg-8 col-sm-8">\n                 	<div class="customer_left">\n                    	<h6>Help Centre</h6>\n                        <p>Assistance at your finger tips</p>\n                        <div class="search">\n                        	<form class="form-inline">\n                              <div class="form-group">\n                                <label for="search" class="sr-only">search</label>\n                                <input type="text" placeholder="What can we help with?" id="" class="form-control">\n                              </div>\n                              <button class="btn btn-default" type="submit">Search</button>\n                            </form>\n                            <p>ex : Returns, Exchange, Damaged product</p>\n                        </div>\n                        <div class="issue_wrap">\n                        	<h6>Look up by issue type:</h6>\n                    		<ul class="cd-accordion-menu animated">\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-1" id="group-1">\n                                    <label for="group-1"><i class="icon Order"></i>Order</label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-1" id="sub-group-1">\n                                            <label for="sub-group-1">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-2" id="sub-group-2">\n                                            <label for="sub-group-2">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-2" id="group-2">\n                                    <label for="group-2"><i class="icon returns"></i>Cancellations and Returns </label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-3" id="sub-group-3">\n                                            <label for="sub-group-3">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-4" id="sub-group-4">\n                                            <label for="sub-group-4">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-3" id="group-3">\n                                    <label for="group-3"><i class="icon  payment "></i> Payment </label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-5" id="sub-group-5">\n                                            <label for="sub-group-5">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-6" id="sub-group-6">\n                                            <label for="sub-group-6">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-4" id="group-4">\n                                    <label for="group-4"><i class="icon shopping"></i>  Shopping  </label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-7" id="sub-group-7">\n                                            <label for="sub-group-7">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-8" id="sub-group-8">\n                                            <label for="sub-group-8">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-5" id="group-5">\n                                    <label for="group-5"><i class="icon wallet"></i>   Wallet   </label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-9" id="sub-group-9">\n                                            <label for="sub-group-9">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-10" id="sub-group-10">\n                                            <label for="sub-group-10">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-6" id="group-6">\n                                    <label for="group-6"><i class="icon others"></i> Others </label>\n                                    <ul>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-11" id="sub-group-11">\n                                            <label for="sub-group-11">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                        <li class="has-children">\n                                            <input type="checkbox" name ="sub-group-12" id="sub-group-12">\n                                            <label for="sub-group-12">How do I place an order?</label>\n                                            <ul>\n                                                <li>\n                                                	<div class="answer">\n                                                    	<p>Shopping from us is easy!</p>\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\n                                                        <p>Add products to your cart or just hit Buy Now</p>\n                                                        <p>Choose or Add delivery address</p>\n                                                        <p>Use a preferred payment mode and confirm the order</p>\n                                                        <p>Happy shopping.</p>\n                                                  	</div>\n                                             	</li>\n                                            </ul>\n                                        </li>\n                                    </ul>\n                                </li>\n                        	</ul>\n                        </div>\n                        <div class="clearfix"></div>\n                    </div>\n                 </div>\n                 \n                 <div class="col-lg-4 col-sm-4">\n                 	<div class="customer_right">\n                   		<h6>Frequently Asked Questions</h6> \n                        <div class="issue_right">\n                    		<ul class="cd-accordion-menu animated">\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-7" id="group-7">\n                                    <label for="group-7"><i class="icon Order"></i>How can I return or exchange an item? </label>\n                                    <ul>\n                                    	<li>\n                                        	<div class="answer">\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\n                                            </div>\n                                      	</li>\n                                    </ul>\n                           		</li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-8" id="group-8">\n                                    <label for="group-8"><i class="icon Order"></i>How can I return or exchange an item? </label>\n                                    <ul>\n                                    	<li>\n                                        	<div class="answer">\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\n                                            </div>\n                                      	</li>\n                                    </ul>\n                           		</li>\n                                <li class="has-children">\n                                    <input type="checkbox" name ="group-9" id="group-9">\n                                    <label for="group-9"><i class="icon Order"></i>How can I return or exchange an item? </label>\n                                    <ul>\n                                    	<li>\n                                        	<div class="answer">\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\n                                            </div>\n                                      	</li>\n                                    </ul>\n                           		</li>\n                        	</ul>\n                        </div>	\n                    </div>\n                 </div>\n                <div class="clearfix"></div>\n            </div>\n        </div>\n    </div>        \n    ', '24 x 7 Customer care', '', 'inherit', 'closed', 'closed', '', '83-autosave-v1', '', '', '2016-06-02 10:11:51', '2016-06-02 10:11:51', '', 83, 'http://eshopper.nisbeta.org/83-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2016-06-02 10:12:13', '2016-06-02 10:12:13', '<div class="customer_wrapper">\r\n    	<div class="container">\r\n        	<div class="customer_wrap">\r\n            	 <div class="col-lg-8 col-sm-8">\r\n                 	<div class="customer_left">\r\n                    	<h6>Help Centre</h6>\r\n                        <p>Assistance at your finger tips</p>\r\n                        <div class="search">\r\n                        	<form class="form-inline">\r\n                              <div class="form-group">\r\n                                <label for="search" class="sr-only">search</label>\r\n                                <input type="text" placeholder="What can we help with?" id="" class="form-control">\r\n                              </div>\r\n                              <button class="btn btn-default" type="submit">Search</button>\r\n                            </form>\r\n                            <p>ex : Returns, Exchange, Damaged product</p>\r\n                        </div>\r\n                        <div class="issue_wrap">\r\n                        	<h6>Look up by issue type:</h6>\r\n                    		<ul class="cd-accordion-menu animated">\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-1" id="group-1">\r\n                                    <label for="group-1"><i class="icon Order"></i>Order</label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-1" id="sub-group-1">\r\n                                            <label for="sub-group-1">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-2" id="sub-group-2">\r\n                                            <label for="sub-group-2">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-2" id="group-2">\r\n                                    <label for="group-2"><i class="icon returns"></i>Cancellations and Returns </label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-3" id="sub-group-3">\r\n                                            <label for="sub-group-3">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-4" id="sub-group-4">\r\n                                            <label for="sub-group-4">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-3" id="group-3">\r\n                                    <label for="group-3"><i class="icon  payment "></i> Payment </label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-5" id="sub-group-5">\r\n                                            <label for="sub-group-5">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-6" id="sub-group-6">\r\n                                            <label for="sub-group-6">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-4" id="group-4">\r\n                                    <label for="group-4"><i class="icon shopping"></i>  Shopping  </label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-7" id="sub-group-7">\r\n                                            <label for="sub-group-7">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-8" id="sub-group-8">\r\n                                            <label for="sub-group-8">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-5" id="group-5">\r\n                                    <label for="group-5"><i class="icon wallet"></i>   Wallet   </label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-9" id="sub-group-9">\r\n                                            <label for="sub-group-9">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-10" id="sub-group-10">\r\n                                            <label for="sub-group-10">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-6" id="group-6">\r\n                                    <label for="group-6"><i class="icon others"></i> Others </label>\r\n                                    <ul>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-11" id="sub-group-11">\r\n                                            <label for="sub-group-11">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                        <li class="has-children">\r\n                                            <input type="checkbox" name ="sub-group-12" id="sub-group-12">\r\n                                            <label for="sub-group-12">How do I place an order?</label>\r\n                                            <ul>\r\n                                                <li>\r\n                                                	<div class="answer">\r\n                                                    	<p>Shopping from us is easy!</p>\r\n                                                        <p>Select the product you’d like to buy and ‘Check Availability at’ your desired pincode</p>\r\n                                                        <p>Add products to your cart or just hit Buy Now</p>\r\n                                                        <p>Choose or Add delivery address</p>\r\n                                                        <p>Use a preferred payment mode and confirm the order</p>\r\n                                                        <p>Happy shopping.</p>\r\n                                                  	</div>\r\n                                             	</li>\r\n                                            </ul>\r\n                                        </li>\r\n                                    </ul>\r\n                                </li>\r\n                        	</ul>\r\n                        </div>\r\n                        <div class="clearfix"></div>\r\n                    </div>\r\n                 </div>\r\n                 \r\n                 <div class="col-lg-4 col-sm-4">\r\n                 	<div class="customer_right">\r\n                   		<h6>Frequently Asked Questions</h6> \r\n                        <div class="issue_right">\r\n                    		<ul class="cd-accordion-menu animated">\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-7" id="group-7">\r\n                                    <label for="group-7"><i class="icon Order"></i>How can I return or exchange an item? </label>\r\n                                    <ul>\r\n                                    	<li>\r\n                                        	<div class="answer">\r\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\r\n                                            </div>\r\n                                      	</li>\r\n                                    </ul>\r\n                           		</li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-8" id="group-8">\r\n                                    <label for="group-8"><i class="icon Order"></i>How can I return or exchange an item? </label>\r\n                                    <ul>\r\n                                    	<li>\r\n                                        	<div class="answer">\r\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\r\n                                            </div>\r\n                                      	</li>\r\n                                    </ul>\r\n                           		</li>\r\n                                <li class="has-children">\r\n                                    <input type="checkbox" name ="group-9" id="group-9">\r\n                                    <label for="group-9"><i class="icon Order"></i>How can I return or exchange an item? </label>\r\n                                    <ul>\r\n                                    	<li>\r\n                                        	<div class="answer">\r\n                                            	<p>You can now track the status of your return the easy way right from your Flipkart account or mobile app. Just visit the order details page to see its status along with the date of pick-up and status of your refund if applicable. You will also receive an email & SMS with the details of your return.  </p>\r\n                                            </div>\r\n                                      	</li>\r\n                                    </ul>\r\n                           		</li>\r\n                        	</ul>\r\n                        </div>	\r\n                    </div>\r\n                 </div>\r\n                <div class="clearfix"></div>\r\n            </div>\r\n        </div>\r\n    </div>        \r\n    ', '24 x 7 Customer care', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-06-02 10:12:13', '2016-06-02 10:12:13', '', 83, 'http://eshopper.nisbeta.org/83-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2016-06-02 10:21:43', '2016-06-02 10:21:43', '', '24 x 7 Customer care', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2016-06-02 10:21:43', '2016-06-02 10:21:43', '', 83, 'http://eshopper.nisbeta.org/83-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-06-06 05:49:32', '2016-06-06 05:49:32', '', 'Order &ndash; June 6, 2016 @ 05:49 AM', '', 'wc-on-hold', 'open', 'closed', 'order_57550eec65565', 'order-jun-06-2016-0549-am', '', '', '2016-06-06 05:49:32', '2016-06-06 05:49:32', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=88', 0, 'shop_order', '', 1),
(89, 1, '2016-06-08 06:08:57', '2016-06-08 06:08:57', '', 'Order &ndash; June 8, 2016 @ 06:08 AM', '', 'wc-processing', 'open', 'closed', 'order_5757b679231f2', 'order-jun-08-2016-0608-am', '', '', '2016-06-08 06:08:57', '2016-06-08 06:08:57', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=89', 0, 'shop_order', '', 1),
(91, 1, '2016-06-15 13:03:08', '2016-06-15 13:03:08', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 'Fashion now', '', 'publish', 'open', 'open', '', 'fashion-now', '', '', '2016-06-15 13:03:08', '2016-06-15 13:03:08', '', 0, 'http://eshopper.nisbeta.org/?p=91', 0, 'post', '', 1),
(92, 1, '2016-06-15 13:02:45', '2016-06-15 13:02:45', '', 'b1', '', 'inherit', 'open', 'closed', '', 'b1', '', '', '2016-06-15 13:02:45', '2016-06-15 13:02:45', '', 91, 'http://eshopper.nisbeta.org/wp-content/uploads/b1-1.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2016-06-15 13:02:48', '2016-06-15 13:02:48', '', 'b2', '', 'inherit', 'open', 'closed', '', 'b2', '', '', '2016-06-15 13:02:48', '2016-06-15 13:02:48', '', 91, 'http://eshopper.nisbeta.org/wp-content/uploads/b2-1.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2016-06-15 13:02:49', '2016-06-15 13:02:49', '', 'blog', '', 'inherit', 'open', 'closed', '', 'blog', '', '', '2016-06-15 13:02:49', '2016-06-15 13:02:49', '', 91, 'http://eshopper.nisbeta.org/wp-content/uploads/blog.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2016-06-15 13:02:52', '2016-06-15 13:02:52', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2016-06-15 13:02:52', '2016-06-15 13:02:52', '', 91, 'http://eshopper.nisbeta.org/wp-content/uploads/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2016-06-15 13:02:54', '2016-06-15 13:02:54', '', 'c1', '', 'inherit', 'open', 'closed', '', 'c1', '', '', '2016-06-15 13:02:54', '2016-06-15 13:02:54', '', 91, 'http://eshopper.nisbeta.org/wp-content/uploads/c1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2016-06-15 13:03:08', '2016-06-15 13:03:08', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 'Fashion now', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2016-06-15 13:03:08', '2016-06-15 13:03:08', '', 91, 'http://eshopper.nisbeta.org/91-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-06-15 13:04:15', '2016-06-15 13:04:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 'Fashion now', '', 'publish', 'open', 'open', '', 'fashion-now-2', '', '', '2016-06-16 07:23:15', '2016-06-16 07:23:15', '', 0, 'http://eshopper.nisbeta.org/?p=98', 0, 'post', '', 1),
(99, 1, '2016-06-15 13:04:15', '2016-06-15 13:04:15', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 'Fashion now', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2016-06-15 13:04:15', '2016-06-15 13:04:15', '', 98, 'http://eshopper.nisbeta.org/98-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-06-15 13:05:48', '2016-06-15 13:05:48', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-06-15 13:05:48', '2016-06-15 13:05:48', '', 0, 'http://eshopper.nisbeta.org/?page_id=101', 0, 'page', '', 0),
(102, 1, '2016-06-15 13:05:48', '2016-06-15 13:05:48', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2016-06-15 13:05:48', '2016-06-15 13:05:48', '', 101, 'http://eshopper.nisbeta.org/101-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2016-06-29 05:36:54', '2016-06-29 05:36:54', '', 'compare', '', 'publish', 'closed', 'closed', '', 'compare', '', '', '2016-06-29 05:36:54', '2016-06-29 05:36:54', '', 0, 'http://eshopper.nisbeta.org/?page_id=105', 0, 'page', '', 0),
(106, 1, '2016-06-29 05:36:54', '2016-06-29 05:36:54', '', 'compare', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2016-06-29 05:36:54', '2016-06-29 05:36:54', '', 105, 'http://eshopper.nisbeta.org/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2016-06-29 13:03:18', '2016-06-29 13:03:18', '', 'Order &ndash; June 29, 2016 @ 01:03 PM', '', 'wc-cancelled', 'open', 'closed', 'order_5773b7fe21940', 'order-jun-29-2016-1158-am', '', '', '2016-06-29 13:03:18', '2016-06-29 13:03:18', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=107', 0, 'shop_order', '', 1),
(108, 1, '2016-06-29 13:38:09', '2016-06-29 13:38:09', '', 'Order &ndash; June 29, 2016 @ 01:38 PM', '', 'wc-processing', 'open', 'closed', 'order_5773cf417fcc7', 'order-jun-29-2016-0138-pm', '', '', '2016-06-29 13:38:09', '2016-06-29 13:38:09', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=108', 0, 'shop_order', '', 1),
(110, 1, '2017-01-10 06:14:01', '2017-01-10 06:14:01', '', 'designer', '', 'publish', 'closed', 'closed', '', 'designer', '', '', '2017-01-10 07:17:03', '2017-01-10 07:17:03', '', 0, 'http://eshopper.nisbeta.org/?page_id=110', 0, 'page', '', 0),
(111, 1, '2017-01-10 06:14:01', '2017-01-10 06:14:01', '', 'Customize your product', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-10 06:14:01', '2017-01-10 06:14:01', '', 110, 'http://eshopper.nisbeta.org/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2017-01-10 07:07:11', '2017-01-10 07:07:11', '', 'designer', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-10 07:07:11', '2017-01-10 07:07:11', '', 110, 'http://eshopper.nisbeta.org/110-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-01-10 07:12:34', '2017-01-10 07:12:34', '<??>', 'designer', '', 'inherit', 'closed', 'closed', '', '110-autosave-v1', '', '', '2017-01-10 07:12:34', '2017-01-10 07:12:34', '', 110, 'http://eshopper.nisbeta.org/110-autosave-v1/', 0, 'revision', '', 0),
(114, 1, '2017-01-10 07:12:50', '2017-01-10 07:12:50', '[wpc-editor]', 'designer', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-10 07:12:50', '2017-01-10 07:12:50', '', 110, 'http://eshopper.nisbeta.org/110-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-01-10 07:17:03', '2017-01-10 07:17:03', '', 'designer', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2017-01-10 07:17:03', '2017-01-10 07:17:03', '', 110, 'http://eshopper.nisbeta.org/110-revision-v1/', 0, 'revision', '', 0),
(117, 1, '2017-02-19 08:59:39', '2017-02-19 08:59:39', '', 'Order &ndash; February 19, 2017 @ 08:59 AM', '', 'wc-processing', 'open', 'closed', 'order_58a95e7b4b51b', 'order-feb-19-2017-0859-am', '', '', '2017-02-19 08:59:39', '2017-02-19 08:59:39', '', 0, 'http://eshopper.nisbeta.org/?post_type=shop_order&#038;p=117', 0, 'shop_order', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sml`
--

CREATE TABLE IF NOT EXISTS `wp_sml` (
  `id` int(9) NOT NULL,
  `sml_name` varchar(200) NOT NULL,
  `sml_email` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_sml`
--

INSERT INTO `wp_sml` (`id`, `sml_name`, `sml_email`) VALUES
(1, 'dgdfgdf', 'supriya.nisbusiness@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'Mobile', 'mobile', 0),
(7, 'T-Shirt', 'tshirt', 0),
(8, 'Elecronics', 'elecronics', 0),
(9, 'Lenovo', 'lenovo', 0),
(10, 'Samsung', 'samsung', 0),
(11, 'Xiomi', 'xiomi', 0),
(12, 'Nokia', 'nokia', 0),
(13, 'Men', 'men', 0),
(14, 'All clothing', 'all-clothing', 0),
(15, 'shirt', 'shirt', 0),
(16, 'Jeans', 'jeans', 0),
(17, 'Lap', 'lap', 0),
(18, 'Laptop', 'laptop', 0),
(19, 'Apple', 'apple', 0),
(20, 'Len', 'len', 0),
(21, 'Lenovo', 'lenovo-laptop', 0),
(22, 'Toshiba', 'toshiba', 0),
(23, 'All Footwear', 'all-footwear', 0),
(24, 'Casual Shoes', 'casual-shoes', 0),
(25, 'Party Shoes', 'party-shoes', 0),
(26, 'Baby &amp; Kids', 'baby-kids', 0),
(27, 'Baby Care', 'baby-care', 0),
(28, 'Kids Sports', 'kids-sports', 0),
(29, 'Kids Wear', 'kids-wear', 0),
(30, 'Diapers', 'diapers', 0),
(31, 'wipes', 'wipes', 0),
(32, 'Baby toys', 'baby-toys', 0),
(33, 'Baby skin care', 'baby-skin-care', 0),
(34, 'Team Sports', 'team-sports', 0),
(35, 'Racquets Sports', 'racquets-sports', 0),
(36, 'Indoor games', 'indoor-games', 0),
(37, 'Other games', 'other-games', 0),
(38, 'Boys clothing', 'boys-clothing', 0),
(39, 'Girls clothing', 'girls-clothing', 0),
(40, 'Baby boys clothing', 'baby-boys-clothing', 0),
(41, 'Baby girls clothing', 'baby-girls-clothing', 0),
(42, 'Tablets', 'tablets', 0),
(43, 'Mi tablets', 'mi-tablets', 0),
(44, 'lenovo tablets', 'lenovo-tablets', 0),
(45, 'Apple tablets', 'apple-tablets', 0),
(46, 'Samsung Tablets', 'samsung-tablets', 0),
(47, 'Sandales', 'sandales', 0),
(48, 'Boots', 'boots', 0),
(49, 'All watches', 'all-watches', 0),
(50, 'Firstrack', 'firstrack', 0),
(51, 'Casio', 'casio', 0),
(52, 'Titan', 'titan', 0),
(53, 'Sonata', 'sonata', 0),
(54, 'Women', 'women', 0),
(55, 'All clothing', 'all-clothing-women', 0),
(56, 'All footwear', 'all-footwear-women', 0),
(57, 'All watches', 'all-watches-women', 0),
(58, 'Jeans', 'jeans-all-clothing-women', 0),
(59, 'Shirts', 'shirts', 0),
(60, 'T-shirts', 't-shirts', 0),
(61, 'Salwar Kurta', 'salwar-kurta', 0),
(62, 'Casual shoes', 'casual-shoes-all-footwear-women', 0),
(63, 'Party Shoes', 'party-shoes-all-footwear-women', 0),
(64, 'Sport shoes', 'sport-shoes', 0),
(65, 'Heels', 'heels', 0),
(66, 'Casi', 'casi', 0),
(67, 'Casio', 'casio-all-watches-women', 0),
(68, 'Titan', 'titan-all-watches-women', 0),
(69, 'Fastrack', 'fastrack', 0),
(70, 'Timex', 'timex', 0),
(71, 'Fashion', 'fashion', 0),
(72, 'Travels', 'travels', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(11, 2, 0),
(11, 7, 0),
(13, 2, 0),
(13, 7, 0),
(21, 2, 0),
(21, 7, 0),
(23, 2, 0),
(23, 7, 0),
(38, 2, 0),
(38, 7, 0),
(39, 2, 0),
(39, 7, 0),
(40, 2, 0),
(40, 7, 0),
(41, 2, 0),
(41, 7, 0),
(48, 2, 0),
(48, 7, 0),
(49, 2, 0),
(49, 7, 0),
(52, 2, 0),
(52, 7, 0),
(53, 2, 0),
(53, 7, 0),
(53, 13, 0),
(53, 14, 0),
(91, 71, 0),
(98, 71, 0),
(98, 72, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 12),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_cat', '', 8, 0),
(7, 7, 'product_cat', '', 14, 12),
(8, 8, 'product_cat', '', 0, 0),
(9, 9, 'product_cat', '', 6, 0),
(10, 10, 'product_cat', '', 6, 0),
(11, 11, 'product_cat', '', 6, 0),
(12, 12, 'product_cat', '', 6, 0),
(13, 13, 'product_cat', '', 0, 1),
(14, 14, 'product_cat', '', 13, 1),
(15, 15, 'product_cat', '', 14, 0),
(16, 16, 'product_cat', '', 14, 0),
(17, 17, 'product_cat', '', 14, 0),
(18, 18, 'product_cat', '', 8, 0),
(19, 19, 'product_cat', '', 18, 0),
(20, 20, 'product_cat', '', 18, 0),
(21, 21, 'product_cat', '', 18, 0),
(22, 22, 'product_cat', '', 18, 0),
(23, 23, 'product_cat', '', 13, 0),
(24, 24, 'product_cat', '', 23, 0),
(25, 25, 'product_cat', '', 23, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', '', 26, 0),
(28, 28, 'product_cat', '', 26, 0),
(29, 29, 'product_cat', '', 26, 0),
(30, 30, 'product_cat', '', 27, 0),
(31, 31, 'product_cat', '', 27, 0),
(32, 32, 'product_cat', '', 27, 0),
(33, 33, 'product_cat', '', 27, 0),
(34, 34, 'product_cat', '', 28, 0),
(35, 35, 'product_cat', '', 28, 0),
(36, 36, 'product_cat', '', 28, 0),
(37, 37, 'product_cat', '', 28, 0),
(38, 38, 'product_cat', '', 29, 0),
(39, 39, 'product_cat', '', 29, 0),
(40, 40, 'product_cat', '', 29, 0),
(41, 41, 'product_cat', '', 29, 0),
(42, 42, 'product_cat', '', 8, 0),
(43, 43, 'product_cat', '', 42, 0),
(44, 44, 'product_cat', '', 42, 0),
(45, 45, 'product_cat', '', 42, 0),
(46, 46, 'product_cat', '', 42, 0),
(47, 47, 'product_cat', '', 23, 0),
(48, 48, 'product_cat', '', 23, 0),
(49, 49, 'product_cat', '', 13, 0),
(50, 50, 'product_cat', '', 49, 0),
(51, 51, 'product_cat', '', 49, 0),
(52, 52, 'product_cat', '', 49, 0),
(53, 53, 'product_cat', '', 49, 0),
(54, 54, 'product_cat', '', 0, 0),
(55, 55, 'product_cat', '', 54, 0),
(56, 56, 'product_cat', '', 54, 0),
(57, 57, 'product_cat', '', 54, 0),
(58, 58, 'product_cat', '', 55, 0),
(59, 59, 'product_cat', '', 55, 0),
(60, 60, 'product_cat', '', 55, 0),
(61, 61, 'product_cat', '', 55, 0),
(62, 62, 'product_cat', '', 56, 0),
(63, 63, 'product_cat', '', 56, 0),
(64, 64, 'product_cat', '', 56, 0),
(65, 65, 'product_cat', '', 56, 0),
(66, 66, 'product_cat', '', 57, 0),
(67, 67, 'product_cat', '', 57, 0),
(68, 68, 'product_cat', '', 57, 0),
(69, 69, 'product_cat', '', 57, 0),
(70, 70, 'product_cat', '', 57, 0),
(71, 71, 'category', '', 0, 2),
(72, 72, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'sumit'),
(3, 1, 'last_name', 'mondal'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '109'),
(16, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o'),
(18, 1, 'wp_user-settings-time', '1463567056'),
(20, 1, 'billing_first_name', 'tester'),
(21, 1, 'billing_last_name', 'test'),
(22, 1, 'billing_company', 'tester'),
(23, 1, 'billing_email', 'teser.nisbusiness@gmail.com'),
(24, 1, 'billing_phone', '9038109794'),
(25, 1, 'billing_country', 'IN'),
(26, 1, 'billing_address_1', '55/4 sukanta sarani , p.o-haltu'),
(27, 1, 'billing_address_2', ''),
(28, 1, 'billing_city', 'kolkata'),
(29, 1, 'billing_state', 'WB'),
(30, 1, 'billing_postcode', '700078'),
(36, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images";s:6:"normal";s:67:"postexcerpt,woocommerce-product-data,postcustom,slugdiv,commentsdiv";s:8:"advanced";s:0:"";}'),
(37, 1, 'screen_layout_product', '2'),
(42, 2, 'nickname', 'sumitmandal'),
(43, 2, 'first_name', 'Sumit'),
(44, 2, 'last_name', 'Mandal'),
(45, 2, 'description', ''),
(46, 2, 'rich_editing', 'true'),
(47, 2, 'comment_shortcuts', 'false'),
(48, 2, 'admin_color', 'fresh'),
(49, 2, 'use_ssl', '0'),
(50, 2, 'show_admin_bar_front', 'true'),
(51, 2, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(52, 2, 'wp_user_level', '0'),
(55, 2, 'billing_first_name', 'Sumit'),
(56, 2, 'billing_last_name', 'Mandal'),
(57, 2, 'billing_company', 'NIS'),
(58, 2, 'billing_email', 'sumitmandal@nisbusiness.com'),
(59, 2, 'billing_phone', '7894561230'),
(60, 2, 'billing_country', 'IN'),
(61, 2, 'billing_address_1', 'Halisahar'),
(62, 2, 'billing_address_2', ''),
(63, 2, 'billing_city', 'kolkata'),
(64, 2, 'billing_state', 'WB'),
(65, 2, 'billing_postcode', '700078'),
(70, 2, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(73, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:104:"dashboard_right_now,dashboard_activity,woocommerce_dashboard_recent_reviews,woocommerce_dashboard_status";s:4:"side";s:39:"dashboard_quick_press,dashboard_primary";s:7:"column3";s:0:"";s:7:"column4";s:0:"";}'),
(81, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(82, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:30:"woocommerce_endpoints_nav_link";i:1;s:21:"add-post-type-product";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:15:"add-product_cat";i:5;s:15:"add-product_tag";}'),
(86, 3, 'nickname', 'supriya.nisbusiness'),
(87, 3, 'first_name', 'supriya'),
(88, 3, 'last_name', 'panja'),
(89, 3, 'description', ''),
(90, 3, 'rich_editing', 'true'),
(91, 3, 'comment_shortcuts', 'false'),
(92, 3, 'admin_color', 'fresh'),
(93, 3, 'use_ssl', '0'),
(94, 3, 'show_admin_bar_front', 'true'),
(95, 3, 'wp_capabilities', 'a:1:{s:8:"customer";b:1;}'),
(96, 3, 'wp_user_level', '0'),
(99, 3, 'billing_first_name', 'supriya'),
(100, 3, 'billing_last_name', 'panja'),
(101, 3, 'billing_company', 'asfsda pby.ltf'),
(102, 3, 'billing_email', 'supriya.nisbusiness@gmail.com'),
(103, 3, 'billing_phone', '9038109749'),
(104, 3, 'billing_country', 'IN'),
(105, 3, 'billing_address_1', 'kolkaya'),
(106, 3, 'billing_address_2', ''),
(107, 3, 'billing_city', 'kolkata'),
(108, 3, 'billing_state', 'KL'),
(109, 3, 'billing_postcode', 'ADMIN'),
(110, 3, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(111, 1, 'shipping_first_name', 'tester'),
(112, 1, 'shipping_last_name', 'test'),
(113, 1, 'shipping_company', 'tester'),
(114, 1, 'shipping_country', 'IN'),
(115, 1, 'shipping_address_1', '55/4 sukanta sarani , p.o-haltu'),
(116, 1, 'shipping_address_2', ''),
(117, 1, 'shipping_city', 'kolkata'),
(118, 1, 'shipping_state', 'WB'),
(119, 1, 'shipping_postcode', '700078'),
(120, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:1:{s:32:"37693cfc748049e45d87b8c7d8b9aacd";a:9:{s:10:"product_id";i:23;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:10:"line_total";d:800;s:8:"line_tax";i:0;s:13:"line_subtotal";i:800;s:17:"line_subtotal_tax";i:0;s:13:"line_tax_data";a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}}}}'),
(121, 1, 'session_tokens', 'a:1:{s:64:"c21322c616f18044cbbd593f9edfa555d5a43db63b5724534571948d099c4052";a:4:{s:10:"expiration";i:1484204649;s:2:"ip";s:13:"103.51.57.127";s:2:"ua";s:74:"Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:44.0) Gecko/20100101 Firefox/44.0";s:5:"login";i:1484031849;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6cNNsUFK.x6/6YRXYeF4hMJ9HtU61/', 'admin', 'sumit.nisbusiness@gmail.com', '', '2016-05-02 05:32:03', '', 0, 'admin'),
(2, 'sumitmandal', '$P$B1hWSRSr2aXuQwJzcTbMOCnH.h5rTM1', 'sumitmandal', 'sumitmandal@nisbusiness.com', '', '2016-05-17 04:56:08', '', 0, 'Sumit'),
(3, 'supriya.nisbusiness', '$P$BMUKLS4aTe2MH9gnY4y5Brt6Q/0f1G0', 'supriya-nisbusiness', 'supriya.nisbusiness@gmail.com', '', '2016-06-08 06:08:54', '', 0, 'supriya');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_qty', '3'),
(2, 1, '_tax_class', ''),
(3, 1, '_product_id', '11'),
(4, 1, '_variation_id', '0'),
(5, 1, '_line_subtotal', '6000'),
(6, 1, '_line_total', '6000'),
(7, 1, '_line_subtotal_tax', '0'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(10, 2, '_qty', '1'),
(11, 2, '_tax_class', ''),
(12, 2, '_product_id', '13'),
(13, 2, '_variation_id', '0'),
(14, 2, '_line_subtotal', '8000'),
(15, 2, '_line_total', '8000'),
(16, 2, '_line_subtotal_tax', '0'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(19, 3, '_qty', '1'),
(20, 3, '_tax_class', ''),
(21, 3, '_product_id', '11'),
(22, 3, '_variation_id', '0'),
(23, 3, '_line_subtotal', '2000'),
(24, 3, '_line_total', '0'),
(25, 3, '_line_subtotal_tax', '0'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(28, 4, 'discount_amount', '2000'),
(29, 4, 'discount_amount_tax', '0'),
(30, 5, '_qty', '1'),
(31, 5, '_tax_class', ''),
(32, 5, '_product_id', '21'),
(33, 5, '_variation_id', '0'),
(34, 5, '_line_subtotal', '3500'),
(35, 5, '_line_total', '3500'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_tax', '0'),
(38, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(39, 6, '_qty', '1'),
(40, 6, '_tax_class', ''),
(41, 6, '_product_id', '52'),
(42, 6, '_variation_id', '0'),
(43, 6, '_line_subtotal', '888'),
(44, 6, '_line_total', '888'),
(45, 6, '_line_subtotal_tax', '0'),
(46, 6, '_line_tax', '0'),
(47, 6, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(48, 7, '_qty', '1'),
(49, 7, '_tax_class', ''),
(50, 7, '_product_id', '23'),
(51, 7, '_variation_id', '0'),
(52, 7, '_line_subtotal', '800'),
(53, 7, '_line_total', '800'),
(54, 7, '_line_subtotal_tax', '0'),
(55, 7, '_line_tax', '0'),
(56, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(57, 8, '_qty', '1'),
(58, 8, '_tax_class', ''),
(59, 8, '_product_id', '23'),
(60, 8, '_variation_id', '0'),
(61, 8, '_line_subtotal', '800'),
(62, 8, '_line_total', '800'),
(63, 8, '_line_subtotal_tax', '0'),
(64, 8, '_line_tax', '0'),
(65, 8, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(66, 9, '_qty', '1'),
(67, 9, '_tax_class', ''),
(68, 9, '_product_id', '21'),
(69, 9, '_variation_id', '0'),
(70, 9, '_line_subtotal', '3500'),
(71, 9, '_line_total', '3500'),
(72, 9, '_line_subtotal_tax', '0'),
(73, 9, '_line_tax', '0'),
(74, 9, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(75, 10, '_qty', '1'),
(76, 10, '_tax_class', ''),
(77, 10, '_product_id', '38'),
(78, 10, '_variation_id', '0'),
(79, 10, '_line_subtotal', '200'),
(80, 10, '_line_total', '200'),
(81, 10, '_line_subtotal_tax', '0'),
(82, 10, '_line_tax', '0'),
(83, 10, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(84, 11, '_qty', '2'),
(85, 11, '_tax_class', ''),
(86, 11, '_product_id', '23'),
(87, 11, '_variation_id', '0'),
(88, 11, '_line_subtotal', '1600'),
(89, 11, '_line_total', '1600'),
(90, 11, '_line_subtotal_tax', '0'),
(91, 11, '_line_tax', '0'),
(92, 11, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(93, 12, '_qty', '1'),
(94, 12, '_tax_class', ''),
(95, 12, '_product_id', '23'),
(96, 12, '_variation_id', '0'),
(97, 12, '_line_subtotal', '800'),
(98, 12, '_line_total', '800'),
(99, 12, '_line_subtotal_tax', '0'),
(100, 12, '_line_tax', '0'),
(101, 12, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(102, 13, '_qty', '4'),
(103, 13, '_tax_class', ''),
(104, 13, '_product_id', '49'),
(105, 13, '_variation_id', '0'),
(106, 13, '_line_subtotal', '3552'),
(107, 13, '_line_total', '3552'),
(108, 13, '_line_subtotal_tax', '0'),
(109, 13, '_line_tax', '0'),
(110, 13, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(111, 14, '_qty', '1'),
(112, 14, '_tax_class', ''),
(113, 14, '_product_id', '40'),
(114, 14, '_variation_id', '0'),
(115, 14, '_line_subtotal', '1000'),
(116, 14, '_line_total', '1000'),
(117, 14, '_line_subtotal_tax', '0'),
(118, 14, '_line_tax', '0'),
(119, 14, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(120, 15, '_qty', '1'),
(121, 15, '_tax_class', ''),
(122, 15, '_product_id', '49'),
(123, 15, '_variation_id', '0'),
(124, 15, '_line_subtotal', '888'),
(125, 15, '_line_total', '888'),
(126, 15, '_line_subtotal_tax', '0'),
(127, 15, '_line_tax', '0'),
(128, 15, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(129, 16, '_qty', '1'),
(130, 16, '_tax_class', ''),
(131, 16, '_product_id', '23'),
(132, 16, '_variation_id', '0'),
(133, 16, '_line_subtotal', '800'),
(134, 16, '_line_total', '800'),
(135, 16, '_line_subtotal_tax', '0'),
(136, 16, '_line_tax', '0'),
(137, 16, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(138, 17, '_qty', '1'),
(139, 17, '_tax_class', ''),
(140, 17, '_product_id', '49'),
(141, 17, '_variation_id', '0'),
(142, 17, '_line_subtotal', '888'),
(143, 17, '_line_total', '240.4157'),
(144, 17, '_line_subtotal_tax', '0'),
(145, 17, '_line_tax', '0'),
(146, 17, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(147, 18, '_qty', '1'),
(148, 18, '_tax_class', ''),
(149, 18, '_product_id', '21'),
(150, 18, '_variation_id', '0'),
(151, 18, '_line_subtotal', '3500'),
(152, 18, '_line_total', '947.5843'),
(153, 18, '_line_subtotal_tax', '0'),
(154, 18, '_line_tax', '0'),
(155, 18, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(156, 19, 'discount_amount', '200'),
(157, 19, 'discount_amount_tax', '0'),
(158, 20, 'discount_amount', '3000'),
(159, 20, 'discount_amount_tax', '0'),
(160, 21, '_qty', '1'),
(161, 21, '_tax_class', ''),
(162, 21, '_product_id', '49'),
(163, 21, '_variation_id', '0'),
(164, 21, '_line_subtotal', '888'),
(165, 21, '_line_total', '888'),
(166, 21, '_line_subtotal_tax', '0'),
(167, 21, '_line_tax', '0'),
(168, 21, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(169, 22, '_qty', '1'),
(170, 22, '_tax_class', ''),
(171, 22, '_product_id', '13'),
(172, 22, '_variation_id', '0'),
(173, 22, '_line_subtotal', '1000'),
(174, 22, '_line_total', '1000'),
(175, 22, '_line_subtotal_tax', '0'),
(176, 22, '_line_tax', '0'),
(177, 22, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(178, 23, '_qty', '1'),
(179, 23, '_tax_class', ''),
(180, 23, '_product_id', '21'),
(181, 23, '_variation_id', '0'),
(182, 23, '_line_subtotal', '3500'),
(183, 23, '_line_total', '3500'),
(184, 23, '_line_subtotal_tax', '0'),
(185, 23, '_line_tax', '0'),
(186, 23, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(187, 24, '_qty', '2'),
(188, 24, '_tax_class', ''),
(189, 24, '_product_id', '38'),
(190, 24, '_variation_id', '0'),
(191, 24, '_line_subtotal', '400'),
(192, 24, '_line_total', '400'),
(193, 24, '_line_subtotal_tax', '0'),
(194, 24, '_line_tax', '0'),
(195, 24, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(196, 25, '_qty', '3'),
(197, 25, '_tax_class', ''),
(198, 25, '_product_id', '23'),
(199, 25, '_variation_id', '0'),
(200, 25, '_line_subtotal', '2400'),
(201, 25, '_line_total', '2400'),
(202, 25, '_line_subtotal_tax', '0'),
(203, 25, '_line_tax', '0'),
(204, 25, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(205, 26, '_qty', '2'),
(206, 26, '_tax_class', ''),
(207, 26, '_product_id', '49'),
(208, 26, '_variation_id', '0'),
(209, 26, '_line_subtotal', '1776'),
(210, 26, '_line_total', '1776'),
(211, 26, '_line_subtotal_tax', '0'),
(212, 26, '_line_tax', '0'),
(213, 26, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(214, 27, '_qty', '1'),
(215, 27, '_tax_class', ''),
(216, 27, '_product_id', '49'),
(217, 27, '_variation_id', '0'),
(218, 27, '_line_subtotal', '888'),
(219, 27, '_line_total', '888'),
(220, 27, '_line_subtotal_tax', '0'),
(221, 27, '_line_tax', '0'),
(222, 27, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(223, 28, '_qty', '1'),
(224, 28, '_tax_class', ''),
(225, 28, '_product_id', '23'),
(226, 28, '_variation_id', '0'),
(227, 28, '_line_subtotal', '800'),
(228, 28, '_line_total', '800'),
(229, 28, '_line_subtotal_tax', '0'),
(230, 28, '_line_tax', '0'),
(231, 28, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(232, 29, '_qty', '1'),
(233, 29, '_tax_class', ''),
(234, 29, '_product_id', '23'),
(235, 29, '_variation_id', '0'),
(236, 29, '_line_subtotal', '800'),
(237, 29, '_line_total', '800'),
(238, 29, '_line_subtotal_tax', '0'),
(239, 29, '_line_tax', '0'),
(240, 29, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(241, 30, '_qty', '1'),
(242, 30, '_tax_class', ''),
(243, 30, '_product_id', '23'),
(244, 30, '_variation_id', '0'),
(245, 30, '_line_subtotal', '800'),
(246, 30, '_line_total', '800'),
(247, 30, '_line_subtotal_tax', '0'),
(248, 30, '_line_tax', '0'),
(249, 30, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(250, 31, '_qty', '2'),
(251, 31, '_tax_class', ''),
(252, 31, '_product_id', '23'),
(253, 31, '_variation_id', '0'),
(254, 31, '_line_subtotal', '1600'),
(255, 31, '_line_total', '1600'),
(256, 31, '_line_subtotal_tax', '0'),
(257, 31, '_line_tax', '0'),
(258, 31, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(259, 32, '_qty', '1'),
(260, 32, '_tax_class', ''),
(261, 32, '_product_id', '23'),
(262, 32, '_variation_id', '0'),
(263, 32, '_line_subtotal', '800'),
(264, 32, '_line_total', '800'),
(265, 32, '_line_subtotal_tax', '0'),
(266, 32, '_line_tax', '0'),
(267, 32, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(268, 33, '_qty', '2'),
(269, 33, '_tax_class', ''),
(270, 33, '_product_id', '39'),
(271, 33, '_variation_id', '0'),
(272, 33, '_line_subtotal', '2000'),
(273, 33, '_line_total', '2000'),
(274, 33, '_line_subtotal_tax', '0'),
(275, 33, '_line_tax', '0'),
(276, 33, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(277, 34, '_qty', '1'),
(278, 34, '_tax_class', ''),
(279, 34, '_product_id', '53'),
(280, 34, '_variation_id', '0'),
(281, 34, '_line_subtotal', '888'),
(282, 34, '_line_total', '888'),
(283, 34, '_line_subtotal_tax', '0'),
(284, 34, '_line_tax', '0'),
(285, 34, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(286, 35, '_qty', '1'),
(287, 35, '_tax_class', ''),
(288, 35, '_product_id', '52'),
(289, 35, '_variation_id', '0'),
(290, 35, '_line_subtotal', '888'),
(291, 35, '_line_total', '888'),
(292, 35, '_line_subtotal_tax', '0'),
(293, 35, '_line_tax', '0'),
(294, 35, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(295, 36, '_qty', '1'),
(296, 36, '_tax_class', ''),
(297, 36, '_product_id', '41'),
(298, 36, '_variation_id', '0'),
(299, 36, '_line_subtotal', '2000'),
(300, 36, '_line_total', '2000'),
(301, 36, '_line_subtotal_tax', '0'),
(302, 36, '_line_tax', '0'),
(303, 36, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(304, 37, '_qty', '1'),
(305, 37, '_tax_class', ''),
(306, 37, '_product_id', '48'),
(307, 37, '_variation_id', '0'),
(308, 37, '_line_subtotal', '3000'),
(309, 37, '_line_total', '3000'),
(310, 37, '_line_subtotal_tax', '0'),
(311, 37, '_line_tax', '0'),
(312, 37, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(313, 38, '_qty', '1'),
(314, 38, '_tax_class', ''),
(315, 38, '_product_id', '23'),
(316, 38, '_variation_id', '0'),
(317, 38, '_line_subtotal', '800'),
(318, 38, '_line_total', '800'),
(319, 38, '_line_subtotal_tax', '0'),
(320, 38, '_line_tax', '0'),
(321, 38, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(322, 39, '_qty', '2'),
(323, 39, '_tax_class', ''),
(324, 39, '_product_id', '52'),
(325, 39, '_variation_id', '0'),
(326, 39, '_line_subtotal', '1776'),
(327, 39, '_line_total', '1776'),
(328, 39, '_line_subtotal_tax', '0'),
(329, 39, '_line_tax', '0'),
(330, 39, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(331, 40, '_qty', '7'),
(332, 40, '_tax_class', ''),
(333, 40, '_product_id', '49'),
(334, 40, '_variation_id', '0'),
(335, 40, '_line_subtotal', '6216'),
(336, 40, '_line_total', '6216'),
(337, 40, '_line_subtotal_tax', '0'),
(338, 40, '_line_tax', '0'),
(339, 40, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(340, 41, '_qty', '2'),
(341, 41, '_tax_class', ''),
(342, 41, '_product_id', '41'),
(343, 41, '_variation_id', '0'),
(344, 41, '_line_subtotal', '4000'),
(345, 41, '_line_total', '4000'),
(346, 41, '_line_subtotal_tax', '0'),
(347, 41, '_line_tax', '0'),
(348, 41, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(349, 42, '_qty', '1'),
(350, 42, '_tax_class', ''),
(351, 42, '_product_id', '49'),
(352, 42, '_variation_id', '0'),
(353, 42, '_line_subtotal', '888'),
(354, 42, '_line_total', '888'),
(355, 42, '_line_subtotal_tax', '0'),
(356, 42, '_line_tax', '0'),
(357, 42, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(379, 46, '_qty', '2'),
(380, 46, '_tax_class', ''),
(381, 46, '_product_id', '23'),
(382, 46, '_variation_id', '0'),
(383, 46, '_line_subtotal', '1600'),
(384, 46, '_line_total', '1600'),
(385, 46, '_line_subtotal_tax', '0'),
(386, 46, '_line_tax', '0'),
(387, 46, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(388, 47, '_qty', '1'),
(389, 47, '_tax_class', ''),
(390, 47, '_product_id', '38'),
(391, 47, '_variation_id', '0'),
(392, 47, '_line_subtotal', '200'),
(393, 47, '_line_total', '200'),
(394, 47, '_line_subtotal_tax', '0'),
(395, 47, '_line_tax', '0'),
(396, 47, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(397, 48, 'method_id', 'free_shipping'),
(398, 48, 'cost', '0.00'),
(399, 48, 'taxes', 'a:0:{}'),
(400, 49, '_qty', '4'),
(401, 49, '_tax_class', ''),
(402, 49, '_product_id', '23'),
(403, 49, '_variation_id', '0'),
(404, 49, '_line_subtotal', '3200'),
(405, 49, '_line_total', '3200'),
(406, 49, '_line_subtotal_tax', '0'),
(407, 49, '_line_tax', '0'),
(408, 49, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(409, 50, 'method_id', 'free_shipping'),
(410, 50, 'cost', '0.00'),
(411, 50, 'taxes', 'a:0:{}'),
(412, 51, '_qty', '2'),
(413, 51, '_tax_class', ''),
(414, 51, '_product_id', '23'),
(415, 51, '_variation_id', '0'),
(416, 51, '_line_subtotal', '1600'),
(417, 51, '_line_total', '1600'),
(418, 51, '_line_subtotal_tax', '0'),
(419, 51, '_line_tax', '0'),
(420, 51, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(421, 52, '_qty', '1'),
(422, 52, '_tax_class', ''),
(423, 52, '_product_id', '21'),
(424, 52, '_variation_id', '0'),
(425, 52, '_line_subtotal', '3500'),
(426, 52, '_line_total', '3500'),
(427, 52, '_line_subtotal_tax', '0'),
(428, 52, '_line_tax', '0'),
(429, 52, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(430, 53, 'method_id', 'legacy_free_shipping'),
(431, 53, 'cost', '0.00'),
(432, 53, 'taxes', 'a:0:{}'),
(433, 53, 'Items', 'T1 &times; 2, T2 &times; 1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Nokia-ami', 'line_item', 15),
(2, 'Nokia-tui', 'line_item', 16),
(3, 'Nokia-ami', 'line_item', 18),
(4, 'cr12', 'coupon', 18),
(5, 'T2', 'line_item', 56),
(6, 'T11', 'line_item', 57),
(7, 'T1', 'line_item', 58),
(8, 'T1', 'line_item', 59),
(9, 'T2', 'line_item', 60),
(10, 'T5', 'line_item', 60),
(11, 'T1', 'line_item', 61),
(12, 'T1', 'line_item', 62),
(13, 'T10', 'line_item', 63),
(14, 'T7', 'line_item', 63),
(15, 'T10', 'line_item', 64),
(16, 'T1', 'line_item', 64),
(17, 'T10', 'line_item', 65),
(18, 'T2', 'line_item', 65),
(19, 'cu1234', 'coupon', 65),
(20, 'cr12', 'coupon', 65),
(21, 'T10', 'line_item', 66),
(22, 'T3', 'line_item', 67),
(23, 'T2', 'line_item', 67),
(24, 'T5', 'line_item', 69),
(25, 'T1', 'line_item', 70),
(26, 'T10', 'line_item', 71),
(27, 'T10', 'line_item', 72),
(28, 'T1', 'line_item', 73),
(29, 'T1', 'line_item', 74),
(30, 'T1', 'line_item', 75),
(31, 'T1', 'line_item', 76),
(32, 'T1', 'line_item', 78),
(33, 'T6', 'line_item', 79),
(34, 'T13', 'line_item', 79),
(35, 'T11', 'line_item', 79),
(36, 'T8', 'line_item', 81),
(37, 'T9', 'line_item', 82),
(38, 'T1', 'line_item', 82),
(39, 'T11', 'line_item', 88),
(40, 'T10', 'line_item', 88),
(41, 'T8', 'line_item', 88),
(42, 'T10', 'line_item', 89),
(46, 'T1', 'line_item', 107),
(47, 'T5', 'line_item', 107),
(48, 'Free Shipping', 'shipping', 107),
(49, 'T1', 'line_item', 108),
(50, 'Free Shipping', 'shipping', 108),
(51, 'T1', 'line_item', 117),
(52, 'T2', 'line_item', 117),
(53, 'Free Shipping', 'shipping', 117);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_woocommerce_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `woocommerce_term_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_termmeta`
--

INSERT INTO `wp_woocommerce_termmeta` (`meta_id`, `woocommerce_term_id`, `meta_key`, `meta_value`) VALUES
(1, 6, 'order', '0'),
(2, 6, 'product_count_product_cat', '0'),
(3, 7, 'order', '0'),
(4, 7, 'display_type', ''),
(5, 7, 'thumbnail_id', '33'),
(6, 7, 'product_count_product_cat', '12'),
(7, 8, 'order', '0'),
(8, 8, 'display_type', ''),
(9, 8, 'thumbnail_id', '0'),
(10, 6, 'display_type', ''),
(11, 6, 'thumbnail_id', '0'),
(12, 9, 'order', '0'),
(13, 9, 'display_type', ''),
(14, 9, 'thumbnail_id', '0'),
(15, 10, 'order', '0'),
(16, 10, 'display_type', ''),
(17, 10, 'thumbnail_id', '0'),
(18, 11, 'order', '0'),
(19, 11, 'display_type', ''),
(20, 11, 'thumbnail_id', '0'),
(21, 12, 'order', '0'),
(22, 12, 'display_type', ''),
(23, 12, 'thumbnail_id', '0'),
(24, 13, 'order', '0'),
(25, 13, 'display_type', ''),
(26, 13, 'thumbnail_id', '0'),
(27, 14, 'order', '0'),
(28, 14, 'display_type', ''),
(29, 14, 'thumbnail_id', '0'),
(30, 15, 'order', '0'),
(31, 15, 'display_type', ''),
(32, 15, 'thumbnail_id', '0'),
(33, 16, 'order', '0'),
(34, 16, 'display_type', ''),
(35, 16, 'thumbnail_id', '0'),
(36, 17, 'order', '0'),
(37, 17, 'display_type', ''),
(38, 17, 'thumbnail_id', '0'),
(39, 18, 'order', '0'),
(40, 18, 'display_type', ''),
(41, 18, 'thumbnail_id', '0'),
(42, 19, 'order', '0'),
(43, 19, 'display_type', ''),
(44, 19, 'thumbnail_id', '0'),
(45, 20, 'order', '0'),
(46, 20, 'display_type', ''),
(47, 20, 'thumbnail_id', '0'),
(48, 21, 'order', '0'),
(49, 21, 'display_type', ''),
(50, 21, 'thumbnail_id', '0'),
(51, 22, 'order', '0'),
(52, 22, 'display_type', ''),
(53, 22, 'thumbnail_id', '0'),
(54, 23, 'order', '0'),
(55, 23, 'display_type', ''),
(56, 23, 'thumbnail_id', '0'),
(57, 24, 'order', '0'),
(58, 24, 'display_type', ''),
(59, 24, 'thumbnail_id', '0'),
(60, 25, 'order', '0'),
(61, 25, 'display_type', ''),
(62, 25, 'thumbnail_id', '0'),
(63, 26, 'order', '0'),
(64, 26, 'display_type', ''),
(65, 26, 'thumbnail_id', '0'),
(66, 27, 'order', '0'),
(67, 27, 'display_type', ''),
(68, 27, 'thumbnail_id', '0'),
(69, 28, 'order', '0'),
(70, 28, 'display_type', ''),
(71, 28, 'thumbnail_id', '0'),
(72, 29, 'order', '0'),
(73, 29, 'display_type', ''),
(74, 29, 'thumbnail_id', '0'),
(75, 30, 'order', '0'),
(76, 30, 'display_type', ''),
(77, 30, 'thumbnail_id', '0'),
(78, 31, 'order', '0'),
(79, 31, 'display_type', ''),
(80, 31, 'thumbnail_id', '0'),
(81, 32, 'order', '0'),
(82, 32, 'display_type', ''),
(83, 32, 'thumbnail_id', '0'),
(84, 33, 'order', '0'),
(85, 33, 'display_type', ''),
(86, 33, 'thumbnail_id', '0'),
(87, 34, 'order', '0'),
(88, 34, 'display_type', ''),
(89, 34, 'thumbnail_id', '0'),
(90, 35, 'order', '0'),
(91, 35, 'display_type', ''),
(92, 35, 'thumbnail_id', '0'),
(93, 36, 'order', '0'),
(94, 36, 'display_type', ''),
(95, 36, 'thumbnail_id', '0'),
(96, 37, 'order', '0'),
(97, 37, 'display_type', ''),
(98, 37, 'thumbnail_id', '0'),
(99, 38, 'order', '0'),
(100, 38, 'display_type', ''),
(101, 38, 'thumbnail_id', '0'),
(102, 39, 'order', '0'),
(103, 39, 'display_type', ''),
(104, 39, 'thumbnail_id', '0'),
(105, 40, 'order', '0'),
(106, 40, 'display_type', ''),
(107, 40, 'thumbnail_id', '0'),
(108, 41, 'order', '0'),
(109, 41, 'display_type', ''),
(110, 41, 'thumbnail_id', '0'),
(111, 14, 'product_count_product_cat', '12'),
(112, 13, 'product_count_product_cat', '12'),
(113, 42, 'order', '0'),
(114, 42, 'display_type', ''),
(115, 42, 'thumbnail_id', '0'),
(116, 43, 'order', '0'),
(117, 43, 'display_type', ''),
(118, 43, 'thumbnail_id', '0'),
(119, 44, 'order', '0'),
(120, 44, 'display_type', ''),
(121, 44, 'thumbnail_id', '0'),
(122, 45, 'order', '0'),
(123, 45, 'display_type', ''),
(124, 45, 'thumbnail_id', '0'),
(125, 46, 'order', '0'),
(126, 46, 'display_type', ''),
(127, 46, 'thumbnail_id', '0'),
(128, 47, 'order', '0'),
(129, 47, 'display_type', ''),
(130, 47, 'thumbnail_id', '0'),
(131, 48, 'order', '0'),
(132, 48, 'display_type', ''),
(133, 48, 'thumbnail_id', '0'),
(134, 49, 'order', '0'),
(135, 49, 'display_type', ''),
(136, 49, 'thumbnail_id', '0'),
(137, 50, 'order', '0'),
(138, 50, 'display_type', ''),
(139, 50, 'thumbnail_id', '0'),
(140, 51, 'order', '0'),
(141, 51, 'display_type', ''),
(142, 51, 'thumbnail_id', '0'),
(143, 52, 'order', '0'),
(144, 52, 'display_type', ''),
(145, 52, 'thumbnail_id', '0'),
(146, 53, 'order', '0'),
(147, 53, 'display_type', ''),
(148, 53, 'thumbnail_id', '0'),
(149, 54, 'order', '0'),
(150, 54, 'display_type', ''),
(151, 54, 'thumbnail_id', '0'),
(152, 55, 'order', '0'),
(153, 55, 'display_type', ''),
(154, 55, 'thumbnail_id', '0'),
(155, 56, 'order', '0'),
(156, 56, 'display_type', ''),
(157, 56, 'thumbnail_id', '0'),
(158, 57, 'order', '0'),
(159, 57, 'display_type', ''),
(160, 57, 'thumbnail_id', '0'),
(161, 58, 'order', '0'),
(162, 58, 'display_type', ''),
(163, 58, 'thumbnail_id', '0'),
(164, 59, 'order', '0'),
(165, 59, 'display_type', ''),
(166, 59, 'thumbnail_id', '0'),
(167, 60, 'order', '0'),
(168, 60, 'display_type', ''),
(169, 60, 'thumbnail_id', '0'),
(170, 61, 'order', '0'),
(171, 61, 'display_type', ''),
(172, 61, 'thumbnail_id', '0'),
(173, 62, 'order', '0'),
(174, 62, 'display_type', ''),
(175, 62, 'thumbnail_id', '0'),
(176, 63, 'order', '0'),
(177, 63, 'display_type', ''),
(178, 63, 'thumbnail_id', '0'),
(179, 64, 'order', '0'),
(180, 64, 'display_type', ''),
(181, 64, 'thumbnail_id', '0'),
(182, 65, 'order', '0'),
(183, 65, 'display_type', ''),
(184, 65, 'thumbnail_id', '0'),
(185, 66, 'order', '0'),
(186, 66, 'display_type', ''),
(187, 66, 'thumbnail_id', '0'),
(188, 67, 'order', '0'),
(189, 67, 'display_type', ''),
(190, 67, 'thumbnail_id', '0'),
(191, 68, 'order', '0'),
(192, 68, 'display_type', ''),
(193, 68, 'thumbnail_id', '0'),
(194, 69, 'order', '0'),
(195, 69, 'display_type', ''),
(196, 69, 'thumbnail_id', '0'),
(197, 70, 'order', '0'),
(198, 70, 'display_type', ''),
(199, 70, 'thumbnail_id', '0'),
(200, 17, 'product_count_product_cat', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(3, 49, 1, 3, 2, '2016-06-10 15:02:00'),
(4, 23, 1, 1, 1, '2017-01-10 13:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE IF NOT EXISTS `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'TBHFQRLCL4EV', 0, 1),
(2, 3, '', '', 'FWIXV7TI4R16', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_advertise`
--
ALTER TABLE `wp_advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_banner`
--
ALTER TABLE `wp_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_brands`
--
ALTER TABLE `wp_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_feature`
--
ALTER TABLE `wp_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_footer`
--
ALTER TABLE `wp_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_offer`
--
ALTER TABLE `wp_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_sml`
--
ALTER TABLE `wp_sml`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`), ADD KEY `consumer_key` (`consumer_key`), ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`), ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`), ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`), ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `order_item_id` (`order_item_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`), ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `payment_token_id` (`payment_token_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`), ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`), ADD KEY `location_id` (`location_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`), ADD KEY `tax_rate_country` (`tax_rate_country`(191)), ADD KEY `tax_rate_state` (`tax_rate_state`(191)), ADD KEY `tax_rate_class` (`tax_rate_class`(191)), ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`), ADD KEY `tax_rate_id` (`tax_rate_id`), ADD KEY `location_type` (`location_type`), ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `woocommerce_term_id` (`woocommerce_term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`), ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `wishlist_token` (`wishlist_token`), ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_advertise`
--
ALTER TABLE `wp_advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_banner`
--
ALTER TABLE `wp_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_brands`
--
ALTER TABLE `wp_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `wp_feature`
--
ALTER TABLE `wp_feature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_footer`
--
ALTER TABLE `wp_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_offer`
--
ALTER TABLE `wp_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3202;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1847;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `wp_sml`
--
ALTER TABLE `wp_sml`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=434;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_termmeta`
--
ALTER TABLE `wp_woocommerce_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
