-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2015 at 07:11 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamingmobileapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_adfees`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_adfees` (
  `adterm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adterm_name` varchar(100) NOT NULL DEFAULT '',
  `credits` int(10) NOT NULL DEFAULT '0',
  `amount` float(6,2) unsigned NOT NULL DEFAULT '0.00',
  `recurring` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rec_period` int(5) unsigned NOT NULL DEFAULT '0',
  `rec_increment` varchar(5) NOT NULL DEFAULT '',
  `buys` int(10) unsigned NOT NULL DEFAULT '0',
  `imagesallowed` int(5) unsigned NOT NULL DEFAULT '0',
  `is_featured_ad_pricing` tinyint(1) DEFAULT NULL,
  `categories` text,
  `characters_allowed` int(1) NOT NULL DEFAULT '0',
  `title_characters` int(1) NOT NULL DEFAULT '0',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`adterm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_awpcp_adfees`
--

INSERT INTO `wp_awpcp_adfees` (`adterm_id`, `adterm_name`, `credits`, `amount`, `recurring`, `rec_period`, `rec_increment`, `buys`, `imagesallowed`, `is_featured_ad_pricing`, `categories`, `characters_allowed`, `title_characters`, `private`) VALUES
(1, '30 Day Listing', 0, 9.99, 1, 31, 'D', 0, 6, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_admeta`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_admeta` (
  `meta_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT,
  `awpcp_ad_id` bigint(10) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_adphotos`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_adphotos` (
  `key_id` int(10) NOT NULL AUTO_INCREMENT,
  `ad_id` int(10) unsigned NOT NULL DEFAULT '0',
  `image_name` varchar(100) NOT NULL DEFAULT '',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_ads`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_ads` (
  `ad_id` int(10) NOT NULL AUTO_INCREMENT,
  `adterm_id` int(10) NOT NULL DEFAULT '0',
  `payment_term_type` varchar(64) NOT NULL DEFAULT 'fee',
  `ad_fee_paid` float(7,2) NOT NULL,
  `ad_category_id` int(10) NOT NULL,
  `ad_category_parent_id` int(10) NOT NULL,
  `ad_title` varchar(255) NOT NULL DEFAULT '',
  `ad_details` text NOT NULL,
  `ad_contact_name` varchar(255) NOT NULL DEFAULT '',
  `ad_contact_phone` varchar(255) NOT NULL DEFAULT '',
  `ad_contact_email` varchar(255) NOT NULL DEFAULT '',
  `websiteurl` varchar(375) NOT NULL,
  `ad_city` varchar(255) NOT NULL DEFAULT '',
  `ad_state` varchar(255) NOT NULL DEFAULT '',
  `ad_country` varchar(255) NOT NULL DEFAULT '',
  `ad_county_village` varchar(255) NOT NULL DEFAULT '',
  `ad_item_price` int(25) NOT NULL,
  `ad_views` int(10) NOT NULL DEFAULT '0',
  `ad_postdate` date NOT NULL,
  `ad_last_updated` date NOT NULL,
  `ad_startdate` datetime NOT NULL,
  `ad_enddate` datetime NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `disabled_date` datetime DEFAULT NULL,
  `flagged` tinyint(1) NOT NULL DEFAULT '0',
  `verified` tinyint(1) NOT NULL DEFAULT '1',
  `verified_at` datetime DEFAULT NULL,
  `ad_key` varchar(255) NOT NULL DEFAULT '',
  `ad_transaction_id` varchar(255) NOT NULL DEFAULT '',
  `payment_gateway` varchar(255) NOT NULL DEFAULT '',
  `payment_status` varchar(255) NOT NULL DEFAULT '',
  `payer_email` varchar(255) NOT NULL DEFAULT '',
  `is_featured_ad` tinyint(1) DEFAULT NULL,
  `posterip` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(10) DEFAULT NULL,
  `renew_email_sent` tinyint(1) NOT NULL DEFAULT '0',
  `renewed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ad_id`),
  FULLTEXT KEY `titdes` (`ad_title`,`ad_details`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_ad_regions`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_ad_regions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ad_id` int(10) NOT NULL,
  `country` varchar(64) DEFAULT '',
  `county` varchar(64) DEFAULT '',
  `state` varchar(64) DEFAULT '',
  `city` varchar(64) DEFAULT '',
  `region_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `country_index` (`country`),
  KEY `county_index` (`county`),
  KEY `state_index` (`state`),
  KEY `city_index` (`city`),
  KEY `region_id_index` (`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_categories`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_categories` (
  `category_id` int(10) NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(10) NOT NULL,
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_order` int(10) DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_awpcp_categories`
--

INSERT INTO `wp_awpcp_categories` (`category_id`, `category_parent_id`, `category_name`, `category_order`) VALUES
(1, 0, 'General', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_credit_plans`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_credit_plans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `credits` int(10) NOT NULL,
  `price` float DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_media`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_media` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ad_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(100) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'Approved',
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_pagename`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_pagename` (
  `key_id` int(10) NOT NULL AUTO_INCREMENT,
  `userpagename` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_pages`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_pages` (
  `page` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  PRIMARY KEY (`page`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_awpcp_pages`
--

INSERT INTO `wp_awpcp_pages` (`page`, `id`) VALUES
('main-page-name', 4),
('show-ads-page-name', 5),
('reply-to-ad-page-name', 6),
('edit-ad-page-name', 7),
('place-ad-page-name', 8),
('renew-ad-page-name', 9),
('browse-ads-page-name', 10),
('browse-categories-page-name', 11),
('search-ads-page-name', 12),
('payment-thankyou-page-name', 13),
('payment-cancel-page-name', 14);

-- --------------------------------------------------------

--
-- Table structure for table `wp_awpcp_payments`
--

CREATE TABLE IF NOT EXISTS `wp_awpcp_payments` (
  `id` varchar(64) NOT NULL,
  `items` text,
  `data` text,
  `errors` text,
  `user_id` int(10) NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'open',
  `payment_status` varchar(32) DEFAULT NULL,
  `payment_gateway` varchar(255) NOT NULL DEFAULT '',
  `payer_email` varchar(255) NOT NULL DEFAULT '',
  `version` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `completed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity`
--

CREATE TABLE IF NOT EXISTS `wp_bp_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) NOT NULL,
  `type` varchar(75) NOT NULL,
  `action` text NOT NULL,
  `content` longtext NOT NULL,
  `primary_link` text NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_recorded` (`date_recorded`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `component` (`component`),
  KEY `type` (`type`),
  KEY `mptt_left` (`mptt_left`),
  KEY `mptt_right` (`mptt_right`),
  KEY `hide_sitewide` (`hide_sitewide`),
  KEY `is_spam` (`is_spam`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2015-04-27 17:03:13', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity_meta`
--

CREATE TABLE IF NOT EXISTS `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications`
--

CREATE TABLE IF NOT EXISTS `wp_bp_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) NOT NULL,
  `component_action` varchar(75) NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `user_id` (`user_id`),
  KEY `is_new` (`is_new`),
  KEY `component_name` (`component_name`),
  KEY `component_action` (`component_action`),
  KEY `useritem` (`user_id`,`is_new`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_data`
--

CREATE TABLE IF NOT EXISTS `wp_bp_xprofile_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `value` longtext NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 1, 'admin', '2015-04-27 16:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_fields`
--

CREATE TABLE IF NOT EXISTS `wp_bp_xprofile_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `type` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `parent_id` (`parent_id`),
  KEY `field_order` (`field_order`),
  KEY `can_delete` (`can_delete`),
  KEY `is_required` (`is_required`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_groups`
--

CREATE TABLE IF NOT EXISTS `wp_bp_xprofile_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` mediumtext NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `can_delete` (`can_delete`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_meta`
--

CREATE TABLE IF NOT EXISTS `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-27 15:54:38', '2015-04-27 15:54:38', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=190 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/gamingmobileapp', 'yes'),
(2, 'home', 'http://localhost/gamingmobileapp', 'yes'),
(3, 'blogname', 'gamingmobileapp', 'yes'),
(4, 'blogdescription', 'Gaming Mobile App', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'muhammadsufiangee@gmail.com', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:46:"another-wordpress-classifieds-plugin/awpcp.php";i:2;s:24:"buddypress/bp-loader.php";i:3;s:9:"hello.php";i:4;s:39:"tamed-admin-theme/tamed-admin-theme.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:2:{i:0;s:86:"E:\\xampp\\htdocs\\gamingmobileapp/wp-content/plugins/bootstrap-admin/bootstrap-admin.php";i:1;s:0:"";}', 'no'),
(41, 'template', 'twentyfifteen', 'yes'),
(42, 'stylesheet', 'twentyfifteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31532', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '17', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31532', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:7:{i:1430157771;a:2:{s:20:"doadexpirations_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}s:27:"awpcp_ad_renewal_email_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1430162220;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430193280;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430236500;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430236971;a:3:{s:16:"doadcleanup_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:35:"awpcp-clean-up-payment-transactions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"awpcp-clean-up-non-verified-ads";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430240632;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(101, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.2.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.2-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.2";s:7:"version";s:3:"4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1430153712;s:15:"version_checked";s:3:"4.2";s:12:"translations";a:0:{}}', 'yes'),
(102, 'auto_updater.lock', '1430150092', 'no'),
(103, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1430154137;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"3.1.1";s:46:"another-wordpress-classifieds-plugin/awpcp.php";s:5:"3.3.4";s:24:"buddypress/bp-loader.php";s:7:"2.2.3.1";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:46:"another-wordpress-classifieds-plugin/awpcp.php";O:8:"stdClass":6:{s:2:"id";s:4:"7207";s:4:"slug";s:36:"another-wordpress-classifieds-plugin";s:6:"plugin";s:46:"another-wordpress-classifieds-plugin/awpcp.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:67:"https://wordpress.org/plugins/another-wordpress-classifieds-plugin/";s:7:"package";s:78:"http://downloads.wordpress.org/plugin/another-wordpress-classifieds-plugin.zip";}s:24:"buddypress/bp-loader.php";O:8:"stdClass":7:{s:2:"id";s:4:"7756";s:4:"slug";s:10:"buddypress";s:6:"plugin";s:24:"buddypress/bp-loader.php";s:11:"new_version";s:7:"2.2.3.1";s:3:"url";s:41:"https://wordpress.org/plugins/buddypress/";s:7:"package";s:60:"http://downloads.wordpress.org/plugin/buddypress.2.2.3.1.zip";s:14:"upgrade_notice";s:59:"See: https://codex.buddypress.org/releases/version-2-2-3-1/";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(104, '_transient_random_seed', 'adb41c31c4c22c639645a6ef32cecf2c', 'yes'),
(107, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430154292;s:7:"checked";a:3:{s:13:"twentyfifteen";s:3:"1.1";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(109, '_transient_timeout_plugin_slugs', '1430240542', 'no'),
(110, '_transient_plugin_slugs', 'a:6:{i:0;s:19:"akismet/akismet.php";i:1;s:46:"another-wordpress-classifieds-plugin/awpcp.php";i:2;s:35:"bootstrap-admin/bootstrap-admin.php";i:3;s:24:"buddypress/bp-loader.php";i:4;s:9:"hello.php";i:5;s:39:"tamed-admin-theme/tamed-admin-theme.php";}', 'no'),
(111, 'recently_activated', 'a:3:{s:35:"bootstrap-admin/bootstrap-admin.php";i:1430154118;s:32:"cream6-admin-theme/functions.php";i:1430153377;s:31:"wp-app-studio/wp-app-studio.php";i:1430151919;}', 'yes'),
(112, 'awpcp-options', 'a:175:{s:17:"enable-user-panel";i:0;s:17:"activatelanguages";i:0;s:17:"main_page_display";i:0;s:23:"view-categories-columns";i:2;s:27:"collapse-categories-columns";i:0;s:9:"uiwelcome";s:160:"Looking for a job? Trying to find a date? Looking for an apartment? Browse our classifieds. Have a job to advertise? An apartment to rent? Post a Classified Ad.";s:21:"awpcpadminaccesslevel";s:5:"admin";s:21:"awpcppagefilterswitch";i:1;s:18:"x-date-time-format";s:8:"american";s:11:"date-format";s:5:"m/d/Y";s:11:"time-format";s:5:"h:i:s";s:16:"date-time-format";s:16:"<date> at <time>";s:19:"thousands-separator";s:1:",";s:17:"decimal-separator";s:1:".";s:13:"show-decimals";i:1;s:11:"requiredtos";i:1;s:3:"tos";s:27:"Terms of service go here...";s:10:"useakismet";i:1;s:15:"captcha-enabled";s:1:"1";s:16:"captcha-provider";s:4:"math";s:23:"math-captcha-max-number";s:2:"10";s:20:"recaptcha-public-key";s:0:"";s:21:"recaptcha-private-key";s:0:"";s:19:"awpcptitleseparator";s:1:"-";s:19:"showcityinpagetitle";i:1;s:20:"showstateinpagetitle";i:1;s:22:"showcountryinpagetitle";i:1;s:28:"showcountyvillageinpagetitle";i:1;s:23:"showcategoryinpagetitle";i:1;s:15:"seofriendlyurls";i:0;s:14:"main-page-name";s:5:"AWPCP";s:18:"show-ads-page-name";s:7:"Show Ad";s:18:"place-ad-page-name";s:8:"Place Ad";s:17:"edit-ad-page-name";s:7:"Edit Ad";s:18:"renew-ad-page-name";s:8:"Renew Ad";s:21:"reply-to-ad-page-name";s:11:"Reply To Ad";s:20:"browse-ads-page-name";s:10:"Browse Ads";s:20:"search-ads-page-name";s:10:"Search Ads";s:27:"browse-categories-page-name";s:17:"Browse Categories";s:25:"view-categories-page-name";s:15:"View Categories";s:26:"payment-thankyou-page-name";s:17:"Payment Thank You";s:24:"payment-cancel-page-name";s:14:"Cancel Payment";s:32:"send-user-ad-posted-notification";i:1;s:21:"send-ad-enabled-email";i:1;s:19:"sent-ad-renew-email";i:1;s:24:"ad-renew-email-threshold";i:5;s:18:"notifyofadexpiring";i:1;s:16:"notifyofadposted";i:1;s:17:"notifyofadexpired";i:1;s:26:"allow-regions-modification";i:1;s:40:"allow-user-to-search-in-multiple-regions";i:0;s:30:"show-ad-preview-before-payment";i:0;s:17:"allowhtmlinadtext";i:0;s:14:"htmlstatustext";s:15:"No HTML Allowed";s:27:"characters-allowed-in-title";i:100;s:20:"maxcharactersallowed";i:750;s:24:"words-in-listing-excerpt";i:20;s:22:"hidelistingcontactname";i:0;s:19:"displayadlayoutcode";s:643:"\n							<div class="$awpcpdisplayaditems $isfeaturedclass">\n								<div style="width:$imgblockwidth; padding:5px; float:left; margin-right:20px;">\n									$awpcp_image_name_srccode\n								</div>\n								<div style="width:50%; padding:5px; float:left;">\n									<h4>$title_link</h4>\n									$excerpt\n								</div>\n								<div style="padding:5px; float:left;">\n									$awpcpadpostdate\n									$awpcp_city_display\n									$awpcp_state_display\n									$awpcp_display_adviews\n									$awpcp_display_price\n									$awpcpextrafields\n								</div>\n								<span class="fixfloat"></span>\n							</div>\n							<div class="fixfloat"></div>";s:20:"awpcpshowtheadlayout";s:960:"\n							<div id="showawpcpadpage">\n								<div class="awpcp-title">$ad_title</div><br/>\n								<div class="showawpcpadpage">\n									$featureimg\n									<div class="awpcp-subtitle">Contact Information</div>\n									<a href="$codecontact">Contact $adcontact_name</a>\n									$adcontactphone\n									$location\n									$awpcpvisitwebsite\n								</div>\n								$aditemprice\n								$awpcpextrafields\n								<div class="fixfloat"></div>\n								$showadsense1\n								<div class="showawpcpadpage">\n									<div class="awpcp-subtitle">More Information</div>\n									$addetails\n								</div>\n								$showadsense2\n								<div class="fixfloat"></div>\n								<div id="displayimagethumbswrapper">\n									<div id="displayimagethumbs">\n										<ul>\n											$awpcpshowadotherimages\n										</ul>\n									</div>\n								</div>\n								<span class="fixfloat">$tweetbtn $sharebtn $flagad</span>\n								$awpcpadviews\n								$showadsense3\n							</div>";s:16:"groupbrowseadsby";i:1;s:20:"search-results-order";i:1;s:16:"adresultsperpage";i:10;s:18:"pagination-options";a:12:{i:0;i:5;i:1;i:10;i:2;i:20;i:3;i:30;i:4;i:40;i:5;i:50;i:6;i:60;i:7;i:70;i:8;i:80;i:9;i:90;i:10;i:100;i:11;i:500;}s:24:"buildsearchdropdownlists";i:0;s:11:"showadcount";i:1;s:21:"hide-empty-categories";i:0;s:14:"displayadviews";i:1;s:21:"hyperlinkurlsinadtext";i:0;s:24:"visitwebsitelinknofollow";i:1;s:23:"show-menu-item-place-ad";i:1;s:22:"show-menu-item-edit-ad";i:1;s:25:"show-menu-item-browse-ads";i:1;s:25:"show-menu-item-search-ads";i:1;s:14:"activatepaypal";i:1;s:11:"paypalemail";s:14:"xxx@xxxxxx.xxx";s:18:"paypalcurrencycode";s:3:"USD";s:17:"activate2checkout";i:1;s:9:"2checkout";s:7:"xxxxxxx";s:21:"2checkoutcurrencycode";s:3:"USD";s:19:"imagesallowdisallow";i:1;s:13:"imagesapprove";i:0;s:23:"awpcp_thickbox_disabled";i:0;s:26:"show-click-to-enlarge-link";i:1;s:17:"imagesallowedfree";i:4;s:16:"uploadfoldername";s:7:"uploads";s:28:"upload-directory-permissions";s:4:"0755";s:12:"maximagesize";s:7:"1048576";s:12:"minimagesize";s:3:"300";s:11:"imgminwidth";s:3:"640";s:12:"imgminheight";s:3:"480";s:11:"imgmaxwidth";s:3:"640";s:12:"imgmaxheight";s:3:"480";s:19:"displayadthumbwidth";s:2:"80";s:29:"primary-image-thumbnail-width";s:3:"200";s:30:"primary-image-thumbnail-height";s:3:"200";s:29:"crop-primary-image-thumbnails";i:1;s:29:"display-thumbnails-in-columns";i:0;s:13:"imgthumbwidth";s:3:"125";s:14:"imgthumbheight";s:3:"125";s:15:"crop-thumbnails";i:1;s:10:"useadsense";i:1;s:7:"adsense";s:12:"AdSense code";s:15:"adsenseposition";i:2;s:17:"user-field-widget";s:8:"dropdown";s:20:"displaypostedbyfield";i:1;s:17:"displayphonefield";i:1;s:22:"displayphonefieldreqop";i:0;s:21:"displayphonefieldpriv";i:0;s:19:"displaywebsitefield";i:1;s:24:"displaywebsitefieldreqop";i:0;s:26:"displaywebsitefieldreqpriv";i:0;s:17:"displaypricefield";i:1;s:22:"displaypricefieldreqop";i:0;s:25:"price-field-is-restricted";i:0;s:25:"hide-price-field-if-empty";i:0;s:19:"displaycountryfield";i:1;s:24:"displaycountryfieldreqop";i:0;s:17:"displaystatefield";i:1;s:22:"displaystatefieldreqop";i:0;s:25:"displaycountyvillagefield";i:0;s:30:"displaycountyvillagefieldreqop";i:0;s:16:"displaycityfield";i:1;s:35:"show-city-field-before-county-field";i:1;s:21:"displaycityfieldreqop";i:0;s:21:"admin-recipient-email";s:0:"";s:15:"awpcpadminemail";s:0:"";s:28:"usesenderemailinsteadofadmin";i:0;s:21:"include-ad-access-key";i:1;s:19:"listingaddedsubject";s:45:"Your Classified Ad listing has been submitted";s:16:"listingaddedbody";s:84:"Thank you for submitting your Classified Ad. The details of your ad are shown below.";s:22:"contactformsubjectline";s:30:"Response to your AWPCP Demo Ad";s:22:"contactformbodymessage";s:43:"Someone has responded to your AWPCP Demo Ad";s:34:"notify-admin-about-contact-message";i:1;s:25:"resendakeyformsubjectline";s:47:"The Classified Ad''s ad access key you requested";s:25:"resendakeyformbodymessage";s:152:"You asked to have your Classified Ad''s access key resent. Below are all the Ad access keys in the system that are tied to the email address you provided";s:25:"paymentabortedsubjectline";s:43:"There was a problem processing your payment";s:25:"paymentabortedbodymessage";s:233:"There was a problem encountered during your attempt to submit payment. If funds were removed from the account you tried to use to make a payment please contact the website admin or the payment website customer service for assistance.";s:22:"renew-ad-email-subject";s:51:"Your classifieds listing Ad will expire in %d days.";s:19:"renew-ad-email-body";s:81:"This is an automated notification that your Classified Ad will expire in %d days.";s:24:"ad-renewed-email-subject";s:60:"Your classifieds listing "%s" has been successfully renewed.";s:21:"ad-renewed-email-body";s:82:"Your classifieds listing Ad has been successfully renewed. More information below:";s:20:"adexpiredsubjectline";s:42:"Your classifieds listing at %s has expired";s:20:"adexpiredbodymessage";s:70:"This is an automated notification that your Classified Ad has expired.";s:7:"usesmtp";i:0;s:8:"smtphost";s:16:"mail.example.com";s:8:"smtpport";s:2:"25";s:12:"smtpusername";s:13:"smtp_username";s:12:"smtppassword";s:0:"";s:40:"sends-listings-to-facebook-automatically";i:1;s:29:"show-quick-start-guide-notice";b:0;s:20:"enable-credit-system";i:0;s:21:"accepted-payment-type";s:4:"both";s:23:"requireuserregistration";i:0;s:33:"reply-to-ad-requires-registration";i:0;s:15:"registrationurl";s:0:"";s:20:"onlyadmincanplaceads";i:0;s:9:"adapprove";i:0;s:26:"enable-ads-pending-payment";s:1:"1";s:25:"enable-email-verification";i:0;s:34:"email-verification-first-threshold";i:5;s:35:"email-verification-second-threshold";i:30;s:27:"notice_awaiting_approval_ad";s:200:"All ads must first be approved by the administrator before they are activated in the system. As soon as an admin has approved your ad it will become visible in the system. Thank you for your business.";s:33:"ad-poster-email-address-whitelist";s:0:"";s:16:"noadsinparentcat";i:0;s:31:"use-multiple-category-dropdowns";i:0;s:18:"addurationfreemode";i:0;s:23:"autoexpiredisabledelete";i:0;s:7:"freepay";i:0;s:9:"fee-order";i:1;s:19:"fee-order-direction";s:3:"ASC";s:19:"pay-before-place-ad";i:1;s:19:"displaycurrencycode";s:3:"USD";s:15:"paylivetestmode";i:0;s:17:"force-secure-urls";i:0;}', 'yes'),
(113, 'awpcp_db_version', '3.3.4', 'yes'),
(116, 'awpcp_installationcomplete', '1', 'yes'),
(118, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(119, 'bb-config-location', 'E:\\xampp\\htdocs\\gamingmobileapp/bb-config.php', 'yes'),
(120, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(121, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(122, 'bp-blogs-first-install', '', 'yes'),
(123, 'bp-disable-profile-sync', '', 'yes'),
(124, 'hide-loggedout-adminbar', '', 'yes'),
(125, 'bp-disable-avatar-uploads', '', 'yes'),
(126, 'bp-disable-account-deletion', '', 'yes'),
(127, 'bp-disable-blogforum-comments', '1', 'yes'),
(128, '_bp_theme_package_id', 'legacy', 'yes'),
(129, 'bp_restrict_group_creation', '', 'yes'),
(130, '_bp_enable_akismet', '1', 'yes'),
(131, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(132, '_bp_force_buddybar', '', 'yes'),
(133, '_bp_retain_bp_default', '', 'yes'),
(134, 'widget_bp_core_login_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(135, 'widget_bp_core_members_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(136, 'widget_bp_core_whos_online_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(137, 'widget_bp_core_recently_active_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(138, 'widget_bp_groups_widget', '', 'yes'),
(139, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(144, 'registration', '0', 'yes'),
(145, 'bp-active-components', 'a:5:{s:8:"activity";i:1;s:7:"members";i:1;s:8:"settings";i:1;s:8:"xprofile";i:1;s:13:"notifications";i:1;}', 'yes'),
(146, 'bp-pages', 'a:2:{s:8:"activity";i:15;s:7:"members";i:16;}', 'yes'),
(147, '_bp_db_version', '9181', 'yes'),
(150, '_site_transient_timeout_available_translations', '1430161589', 'yes'),
(151, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 23:59:50";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-25 18:55:51";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-27 03:15:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-25 20:10:03";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 19:28:15";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-25 17:19:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-24 12:47:01";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-24 13:18:45";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.3/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-26 14:13:46";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 21:33:36";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 23:18:50";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 22:23:52";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 18:50:10";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-27 00:23:32";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-27 09:25:14";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-26 11:34:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 16:55:54";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:09";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-26 20:25:26";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(152, 'WPLANG', '', 'yes'),
(155, 'wpas_apps_submit', 'a:0:{}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(156, 'wpas_app_54f498cf51e2c3.64234105', 'YTo5OntzOjg6ImFwcF9uYW1lIjtzOjE2OiJGcmVlRGV2IERlbW8gQXBwIjtzOjY6ImFwcF9pZCI7czoyMzoiNTRmNDk4Y2Y1MWUyYzMuNjQyMzQxMDUiO3M6MzoidmVyIjtzOjE6IjQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMyAxODo0NDo1MiI7czo2OiJlbnRpdHkiO2E6Mzp7aTowO2E6Njp7czo4OiJlbnQtbmFtZSI7czo0OiJwb3N0IjtzOjk6ImVudC1sYWJlbCI7czo1OiJQb3N0cyI7czoxODoiZW50LXNpbmd1bGFyLWxhYmVsIjtzOjQ6IlBvc3QiO3M6MTY6ImVudC1oaWVyYXJjaGljYWwiO2k6MDtzOjEzOiJtb2RpZmllZF9kYXRlIjtzOjE5OiIyMDE1LTAzLTAyIDE3OjA3OjQ0IjtzOjQ6ImRhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO31pOjE7YTo2OntzOjg6ImVudC1uYW1lIjtzOjQ6InBhZ2UiO3M6OToiZW50LWxhYmVsIjtzOjU6IlBhZ2VzIjtzOjE4OiJlbnQtc2luZ3VsYXItbGFiZWwiO3M6NDoiUGFnZSI7czoxNjoiZW50LWhpZXJhcmNoaWNhbCI7aToxO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7fWk6MjthOjM4OntzOjg6ImVudC1uYW1lIjtzOjc6ImNvbnRhY3QiO3M6OToiZW50LWxhYmVsIjtzOjg6IkNvbnRhY3RzIjtzOjE4OiJlbnQtc2luZ3VsYXItbGFiZWwiO3M6NzoiQ29udGFjdCI7czoxOToiZW50LWFkdmFuY2VkLW9wdGlvbiI7czoxOiIxIjtzOjE2OiJlbnQtaGllcmFyY2hpY2FsIjtzOjE6IjAiO3M6MjE6ImVudC1wdWJsaWNseV92aWV3YWJsZSI7czoxOiIxIjtzOjE1OiJlbnQtaGFzX2FyY2hpdmUiO3M6MToiMSI7czoyMzoiZW50LWV4Y2x1ZGVfZnJvbV9zZWFyY2giO3M6MToiMCI7czoyMjoiZW50LXB1YmxpY2x5X3F1ZXJ5YWJsZSI7czoxOiIxIjtzOjE5OiJlbnQtY2FwYWJpbGl0eV90eXBlIjtzOjQ6InBvc3QiO3M6MTE6ImVudC1yZXdyaXRlIjtzOjE6IjEiO3M6MTM6ImVudC1xdWVyeS12YXIiO3M6MToiMSI7czoxNDoiZW50LWNhbl9leHBvcnQiO3M6MToiMSI7czoxMToiZW50LXNob3dfdWkiO3M6MToiMSI7czoxNjoiZW50LXNob3dfaW5fbWVudSI7czoxOiIxIjtzOjE4OiJlbnQtbWVudV9pY29uX3R5cGUiO3M6NDoiZGFzaCI7czoxODoiZW50LW1lbnVfaWNvbl9kYXNoIjtzOjY6Imdyb3VwcyI7czoxNzoiZW50LW1lbnVfcG9zaXRpb24iO3M6MToiNSI7czoxMjoiZW50LWNvbV90eXBlIjtzOjI6IndwIjtzOjE0OiJlbnQtaW5saW5lLWVudCI7czoxOiIwIjtzOjE4OiJlbnQtc3VwcG9ydHNfdGl0bGUiO3M6MToiMCI7czoxOToiZW50LXN1cHBvcnRzX2VkaXRvciI7czoxOiIwIjtzOjE5OiJlbnQtc3VwcG9ydHNfYXV0aG9yIjtzOjE6IjAiO3M6MjI6ImVudC1zdXBwb3J0c190aHVtYm5haWwiO3M6MToiMCI7czoyMDoiZW50LXN1cHBvcnRzX2V4Y2VycHQiO3M6MToiMCI7czoyMzoiZW50LXN1cHBvcnRzX3RyYWNrYmFja3MiO3M6MToiMCI7czoyNjoiZW50LXN1cHBvcnRzX2N1c3RvbV9maWVsZHMiO3M6MToiMCI7czoyMjoiZW50LXN1cHBvcnRzX3JldmlzaW9ucyI7czoxOiIwIjtzOjI4OiJlbnQtc3VwcG9ydHNfcGFnZV9hdHRyaWJ1dGVzIjtzOjE6IjAiO3M6MjU6ImVudC1zdXBwb3J0c19wb3N0X2Zvcm1hdHMiO3M6MToiMCI7czoyMToiZW50LXRheG9ub215X2NhdGVnb3J5IjtzOjE6IjAiO3M6MjE6ImVudC10YXhvbm9teV9wb3N0X3RhZyI7czoxOiIwIjtzOjIxOiJlbnQtc3VwcG9ydHNfY29tbWVudHMiO3M6MToiMCI7czoyMDoiZW50LWNvbV9lbmFibGVfdHJhc2giO3M6MToiMCI7czoxOToiZW50LWNvbV9lbmFibGVfc3BhbSI7czoxOiIwIjtzOjQ6ImRhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MTM6NTUiO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6Mzc6NTkiO3M6NToiZmllbGQiO2E6ODp7aTowO2E6Njp7czo4OiJmbGRfbmFtZSI7czoxODoiY29udGFjdF9maXJzdF9uYW1lIjtzOjk6ImZsZF9sYWJlbCI7czoxMDoiRmlyc3QgTmFtZSI7czo4OiJmbGRfZGVzYyI7czoyMjoiQ29udGFjdCdzIGZpcnN0IG5hbWUNCiI7czo4OiJmbGRfdHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJmbGRfcmVxdWlyZWQiO3M6MToiMSI7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMyAxODozMDoxNSI7fWk6MTthOjY6e3M6ODoiZmxkX25hbWUiO3M6MTc6ImNvbnRhY3RfbGFzdF9uYW1lIjtzOjk6ImZsZF9sYWJlbCI7czo5OiJMYXN0IE5hbWUiO3M6ODoiZmxkX2Rlc2MiO3M6MjE6IkNvbnRhY3QncyBsYXN0IG5hbWUNCiI7czo4OiJmbGRfdHlwZSI7czo0OiJ0ZXh0IjtzOjEyOiJmbGRfcmVxdWlyZWQiO3M6MToiMSI7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMyAxODozMDowNCI7fWk6MjthOjc6e3M6ODoiZmxkX25hbWUiO3M6MTM6ImNvbnRhY3RfZW1haWwiO3M6OToiZmxkX2xhYmVsIjtzOjU6IkVtYWlsIjtzOjg6ImZsZF9kZXNjIjtzOjI1OiJDb250YWN0J3MgZW1haWwgYWRkcmVzcw0KIjtzOjg6ImZsZF90eXBlIjtzOjU6ImVtYWlsIjtzOjExOiJmbGRfdW5pcV9pZCI7czoxOiIxIjtzOjEyOiJmbGRfcmVxdWlyZWQiO3M6MToiMSI7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMyAxODoyOTo1NCI7fWk6MzthOjU6e3M6ODoiZmxkX25hbWUiO3M6MTM6ImNvbnRhY3RfcGhvbmUiO3M6OToiZmxkX2xhYmVsIjtzOjU6IlBob25lIjtzOjg6ImZsZF9kZXNjIjtzOjI3OiJDb250YWN0J3MgcGhvbmUgb3IgbW9iaWxlDQoiO3M6ODoiZmxkX3R5cGUiO3M6NDoidGV4dCI7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMyAxODoyOTozOCI7fWk6NDthOjU6e3M6ODoiZmxkX25hbWUiO3M6MTU6ImNvbnRhY3RfYWRkcmVzcyI7czo5OiJmbGRfbGFiZWwiO3M6NzoiQWRkcmVzcyI7czo4OiJmbGRfZGVzYyI7czoyODoiQ29udGFjdCdzIG1haWxpbmcgYWRkcmVzcy4NCiI7czo4OiJmbGRfdHlwZSI7czo0OiJ0ZXh0IjtzOjEzOiJtb2RpZmllZF9kYXRlIjtzOjE5OiIyMDE1LTAzLTAzIDE4OjI5OjI3Ijt9aTo1O2E6Nzp7czo4OiJmbGRfbmFtZSI7czoxMjoiY29udGFjdF90aW1lIjtzOjk6ImZsZF9sYWJlbCI7czoxODoiQ29udGFjdCBQcmVmZXJlbmNlIjtzOjg6ImZsZF9kZXNjIjtzOjM2OiJXaGVuIHdvdWxkIHlvdSBsaWtlIHRvIGJlIGNvbnRhY3RlZD8iO3M6ODoiZmxkX3R5cGUiO3M6Njoic2VsZWN0IjtzOjEwOiJmbGRfdmFsdWVzIjtzOjMxOiJtb3JuaW5nO2FmdGVybm9vbjtldmVuaW5nO25pZ2h0IjtzOjE0OiJmbGRfZGZsdF92YWx1ZSI7czo5OiJhZnRlcm5vb24iO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6MzU6MTkiO31pOjY7YTo1OntzOjExOiJmbGRfYnVpbHRpbiI7czoxOiIwIjtzOjg6ImZsZF9uYW1lIjtzOjE0OiJjb250YWN0X2F0dGFjaCI7czo5OiJmbGRfbGFiZWwiO3M6MTM6IkNvbnRhY3QgRmlsZXMiO3M6ODoiZmxkX3R5cGUiO3M6NDoiZmlsZSI7czo0OiJkYXRlIjtzOjE5OiIyMDE1LTAzLTAzIDE4OjM0OjM3Ijt9aTo3O2E6Njp7czoxMToiZmxkX2J1aWx0aW4iO3M6MToiMCI7czo4OiJmbGRfbmFtZSI7czoxNjoiY29udGFjdF9sb2NhdGlvbiI7czo5OiJmbGRfbGFiZWwiO3M6OToiUmVzaWRlbmNlIjtzOjg6ImZsZF9kZXNjIjtzOjMxOiJJcyB0aGlzIGFkZHJlc3MgeW91ciByZXNpZGVuY2U/IjtzOjg6ImZsZF90eXBlIjtzOjg6ImNoZWNrYm94IjtzOjQ6ImRhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6Mzc6NTkiO319fX1zOjQ6InJvbGUiO2E6NTp7aTowO2E6NjQ6e3M6MTc6InJvbGUtbWFuYWdlX3RheF8xIjtpOjE7czoxNToicm9sZS1lZGl0X3RheF8xIjtpOjE7czoxNzoicm9sZS1kZWxldGVfdGF4XzEiO2k6MTtzOjE3OiJyb2xlLWFzc2lnbl90YXhfMSI7aToxO3M6MTc6InJvbGUtbWFuYWdlX3RheF8wIjtpOjE7czoxNToicm9sZS1lZGl0X3RheF8wIjtpOjE7czoxNzoicm9sZS1kZWxldGVfdGF4XzAiO2k6MTtzOjE3OiJyb2xlLWFzc2lnbl90YXhfMCI7aToxO3M6OToicm9sZS1uYW1lIjtzOjEzOiJhZG1pbmlzdHJhdG9yIjtzOjEwOiJyb2xlLWxhYmVsIjtzOjEzOiJBZG1pbmlzdHJhdG9yIjtzOjIyOiJyb2xlLWVkaXRfb3RoZXJzX3Bvc3RzIjtpOjE7czoyMzoicm9sZS1lZGl0X3ByaXZhdGVfcG9zdHMiO2k6MTtzOjIzOiJyb2xlLXJlYWRfcHJpdmF0ZV9wb3N0cyI7aToxO3M6MjQ6InJvbGUtZGVsZXRlX290aGVyc19wb3N0cyI7aToxO3M6MjU6InJvbGUtZGVsZXRlX3ByaXZhdGVfcG9zdHMiO2k6MTtzOjI1OiJyb2xlLWVkaXRfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxODoicm9sZS1wdWJsaXNoX3Bvc3RzIjtpOjE7czoyNzoicm9sZS1kZWxldGVfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxNToicm9sZS1lZGl0X3Bvc3RzIjtpOjE7czoxNzoicm9sZS1kZWxldGVfcG9zdHMiO2k6MTtzOjI4OiJyb2xlLW1hbmFnZV9vcGVyYXRpb25zX3Bvc3RzIjtpOjE7czoxNToicm9sZS1lZGl0X3BhZ2VzIjtpOjE7czoyMjoicm9sZS1lZGl0X290aGVyc19wYWdlcyI7aToxO3M6MjU6InJvbGUtZWRpdF9wdWJsaXNoZWRfcGFnZXMiO2k6MTtzOjE4OiJyb2xlLXB1Ymxpc2hfcGFnZXMiO2k6MTtzOjE3OiJyb2xlLWRlbGV0ZV9wYWdlcyI7aToxO3M6MjQ6InJvbGUtZGVsZXRlX290aGVyc19wYWdlcyI7aToxO3M6Mjc6InJvbGUtZGVsZXRlX3B1Ymxpc2hlZF9wYWdlcyI7aToxO3M6MjU6InJvbGUtZGVsZXRlX3ByaXZhdGVfcGFnZXMiO2k6MTtzOjIzOiJyb2xlLWVkaXRfcHJpdmF0ZV9wYWdlcyI7aToxO3M6MjM6InJvbGUtcmVhZF9wcml2YXRlX3BhZ2VzIjtpOjE7czoyODoicm9sZS1tYW5hZ2Vfb3BlcmF0aW9uc19wYWdlcyI7aToxO3M6MjE6InJvbGUtYWN0aXZhdGVfcGx1Z2lucyI7aToxO3M6MTQ6InJvbGUtYWRkX3VzZXJzIjtpOjE7czoxNzoicm9sZS1jcmVhdGVfdXNlcnMiO2k6MTtzOjE5OiJyb2xlLWRlbGV0ZV9wbHVnaW5zIjtpOjE7czoxNzoicm9sZS1kZWxldGVfdXNlcnMiO2k6MTtzOjE5OiJyb2xlLWVkaXRfZGFzaGJvYXJkIjtpOjE7czoxNToicm9sZS1lZGl0X2ZpbGVzIjtpOjE7czoxNzoicm9sZS1lZGl0X3BsdWdpbnMiO2k6MTtzOjIzOiJyb2xlLWVkaXRfdGhlbWVfb3B0aW9ucyI7aToxO3M6MTY6InJvbGUtZWRpdF90aGVtZXMiO2k6MTtzOjE1OiJyb2xlLWVkaXRfdXNlcnMiO2k6MTtzOjExOiJyb2xlLWltcG9ydCI7aToxO3M6MjA6InJvbGUtaW5zdGFsbF9wbHVnaW5zIjtpOjE7czoxOToicm9sZS1pbnN0YWxsX3RoZW1lcyI7aToxO3M6MTU6InJvbGUtbGlzdF91c2VycyI7aToxO3M6MjI6InJvbGUtbWFuYWdlX2NhdGVnb3JpZXMiO2k6MTtzOjE3OiJyb2xlLW1hbmFnZV9saW5rcyI7aToxO3M6MTk6InJvbGUtbWFuYWdlX29wdGlvbnMiO2k6MTtzOjIyOiJyb2xlLW1vZGVyYXRlX2NvbW1lbnRzIjtpOjE7czoxODoicm9sZS1wcm9tb3RlX3VzZXJzIjtpOjE7czo5OiJyb2xlLXJlYWQiO2k6MTtzOjE3OiJyb2xlLXJlbW92ZV91c2VycyI7aToxO3M6MTg6InJvbGUtc3dpdGNoX3RoZW1lcyI7aToxO3M6MjA6InJvbGUtdW5maWx0ZXJlZF9odG1sIjtpOjE7czoyMjoicm9sZS11bmZpbHRlcmVkX3VwbG9hZCI7aToxO3M6MTY6InJvbGUtdXBkYXRlX2NvcmUiO2k6MTtzOjE5OiJyb2xlLXVwZGF0ZV9wbHVnaW5zIjtpOjE7czoxODoicm9sZS11cGRhdGVfdGhlbWVzIjtpOjE7czoxNzoicm9sZS11cGxvYWRfZmlsZXMiO2k6MTtzOjIzOiJyb2xlLXZpZXdfYXBwX2Rhc2hib2FyZCI7aToxO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7fWk6MTthOjI5OntzOjk6InJvbGUtbmFtZSI7czo2OiJlZGl0b3IiO3M6MTA6InJvbGUtbGFiZWwiO3M6NjoiRWRpdG9yIjtzOjIyOiJyb2xlLWVkaXRfb3RoZXJzX3Bvc3RzIjtpOjE7czoyMzoicm9sZS1lZGl0X3ByaXZhdGVfcG9zdHMiO2k6MTtzOjIzOiJyb2xlLXJlYWRfcHJpdmF0ZV9wb3N0cyI7aToxO3M6MjQ6InJvbGUtZGVsZXRlX290aGVyc19wb3N0cyI7aToxO3M6MjU6InJvbGUtZGVsZXRlX3ByaXZhdGVfcG9zdHMiO2k6MTtzOjI1OiJyb2xlLWVkaXRfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxODoicm9sZS1wdWJsaXNoX3Bvc3RzIjtpOjE7czoyNzoicm9sZS1kZWxldGVfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxNToicm9sZS1lZGl0X3Bvc3RzIjtpOjE7czoxNzoicm9sZS1kZWxldGVfcG9zdHMiO2k6MTtzOjE1OiJyb2xlLWVkaXRfcGFnZXMiO2k6MTtzOjIyOiJyb2xlLWVkaXRfb3RoZXJzX3BhZ2VzIjtpOjE7czoyNToicm9sZS1lZGl0X3B1Ymxpc2hlZF9wYWdlcyI7aToxO3M6MTg6InJvbGUtcHVibGlzaF9wYWdlcyI7aToxO3M6MTc6InJvbGUtZGVsZXRlX3BhZ2VzIjtpOjE7czoyNDoicm9sZS1kZWxldGVfb3RoZXJzX3BhZ2VzIjtpOjE7czoyNzoicm9sZS1kZWxldGVfcHVibGlzaGVkX3BhZ2VzIjtpOjE7czoyNToicm9sZS1kZWxldGVfcHJpdmF0ZV9wYWdlcyI7aToxO3M6MjM6InJvbGUtZWRpdF9wcml2YXRlX3BhZ2VzIjtpOjE7czoyMzoicm9sZS1yZWFkX3ByaXZhdGVfcGFnZXMiO2k6MTtzOjIyOiJyb2xlLW1vZGVyYXRlX2NvbW1lbnRzIjtpOjE7czoyMjoicm9sZS1tYW5hZ2VfY2F0ZWdvcmllcyI7aToxO3M6MTc6InJvbGUtbWFuYWdlX2xpbmtzIjtpOjE7czoxNzoicm9sZS11cGxvYWRfZmlsZXMiO2k6MTtzOjk6InJvbGUtcmVhZCI7aToxO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7fWk6MjthOjExOntzOjk6InJvbGUtbmFtZSI7czo2OiJhdXRob3IiO3M6MTA6InJvbGUtbGFiZWwiO3M6NjoiQXV0aG9yIjtzOjI1OiJyb2xlLWVkaXRfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxODoicm9sZS1wdWJsaXNoX3Bvc3RzIjtpOjE7czoyNzoicm9sZS1kZWxldGVfcHVibGlzaGVkX3Bvc3RzIjtpOjE7czoxNToicm9sZS1lZGl0X3Bvc3RzIjtpOjE7czoxNzoicm9sZS1kZWxldGVfcG9zdHMiO2k6MTtzOjE3OiJyb2xlLXVwbG9hZF9maWxlcyI7aToxO3M6OToicm9sZS1yZWFkIjtpOjE7czoxMzoibW9kaWZpZWRfZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7czo0OiJkYXRlIjtzOjE5OiIyMDE1LTAzLTAyIDE3OjA3OjQ0Ijt9aTozO2E6Nzp7czo5OiJyb2xlLW5hbWUiO3M6MTE6ImNvbnRyaWJ1dG9yIjtzOjEwOiJyb2xlLWxhYmVsIjtzOjExOiJDb250cmlidXRvciI7czoxNToicm9sZS1lZGl0X3Bvc3RzIjtpOjE7czoxNzoicm9sZS1kZWxldGVfcG9zdHMiO2k6MTtzOjk6InJvbGUtcmVhZCI7aToxO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7fWk6NDthOjU6e3M6OToicm9sZS1uYW1lIjtzOjEwOiJzdWJzY3JpYmVyIjtzOjEwOiJyb2xlLWxhYmVsIjtzOjEwOiJTdWJzY3JpYmVyIjtzOjk6InJvbGUtcmVhZCI7aToxO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDIgMTc6MDc6NDQiO3M6NDoiZGF0ZSI7czoxOToiMjAxNS0wMy0wMiAxNzowNzo0NCI7fX1zOjY6Im9wdGlvbiI7YToxNTp7czoxNDoiYW9fcGx1Z2luX25hbWUiO3M6MTM6ImZyZWUtZGVtby1hcHAiO3M6OToiYW9fZG9tYWluIjtzOjI1OiJodHRwczovL2VtYXJrZXRkZXNpZ24uY29tIjtzOjEyOiJhb19ibG9nX25hbWUiO3M6MTc6ImVtYXJrZXRkZXNpZ24uY29tIjtzOjE3OiJhb19zZXRfbWVudV9sYWJlbCI7czoxMjoiRnJlZURldiBEZW1vIjtzOjEyOiJhb19hcHBfc2Rlc2MiO3M6MTEyOiJUaGlzIGlzIGEgV1AgQXBwIFN0dWRpbyBnZW5lcmF0ZWQgd2l0aCBGcmVlRGV2IGFjY291bnQuIFlvdSBjYW4gY3JlYXRlIGEgc2ltaWxhciBhcHAgdXNpbmcgeW91ciBGcmVlRGV2IGFjY291bnQuIjtzOjExOiJhb19hcHBfZGVzYyI7czoyMTI6IlRoaXMgaXMgYSBXUCBBcHAgU3R1ZGlvIGdlbmVyYXRlZCB3aXRoIEZyZWVEZXYgYWNjb3VudC4gWW91IGNhbiBjcmVhdGUgYSBzaW1pbGFyIGFwcCB1c2luZyB5b3VyIEZyZWVEZXYgYWNjb3VudC4gRnJlZURldiBwbHVnaW4gZ2VuZXJhdGlvbiBpcyBvZmZlcmVkIGZyZWUgb2YgY2hhcmdlLiBGb3IgbW9yZSBpbmZvcm1hdGlvbiBnb3RvIHdwYXMuZW1kcGx1Z2lucy5jb20uIjtzOjE0OiJhb19hcHBfdmVyc2lvbiI7czo1OiIxLjAuMCI7czo5OiJhb19hdXRob3IiO3M6MTQ6ImVNYXJrZXQgRGVzaWduIjtzOjEzOiJhb19hdXRob3JfdXJsIjtzOjI1OiJodHRwczovL2VtYXJrZXRkZXNpZ24uY29tIjtzOjEzOiJhb19jaGFuZ2VfbG9nIjtzOjI3OiI9IDEuMC4wID0KKiBJbml0aWFsIHJlbGVhc2UiO3M6MTk6ImFvX3JlbW92ZV9jb2xmaWx0ZXIiO3M6MToiMSI7czoyMDoiYW9fcmVtb3ZlX29wZXJhdGlvbnMiO3M6MToiMSI7czoxOToiYW9fcmVtb3ZlX2FuYWx5dGljcyI7czoxOiIxIjtzOjQ6ImRhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6NDI6MTIiO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6NDI6MTIiO31zOjg6InRheG9ub215IjthOjI6e2k6MDthOjE5OntzOjg6InR4bi1uYW1lIjtzOjE2OiJjb250YWN0X2NhdGVnb3J5IjtzOjk6InR4bi1sYWJlbCI7czoxNjoiQ29udGFjdCBDYXRlZ29yeSI7czoxODoidHhuLXNpbmd1bGFyLWxhYmVsIjtzOjE2OiJDb250YWN0IENhdGVnb3J5IjtzOjEwOiJ0eG4tYXR0YWNoIjthOjE6e2k6MDtzOjE6IjIiO31zOjE2OiJ0eG4taGllcmFyY2hpY2FsIjtzOjE6IjAiO3M6MTY6InR4bi1kaXNwbGF5X3R5cGUiO3M6Njoic2luZ2xlIjtzOjEwOiJ0eG4tdmFsdWVzIjtzOjE3OiJpbnRlcm5hbDtleHRlcm5hbCI7czoxMDoidHhuLXB1YmxpYyI7czoxOiIxIjtzOjExOiJ0eG4tc2hvd191aSI7czoxOiIxIjtzOjIxOiJ0eG4tc2hvd19pbl9uYXZfbWVudXMiO3M6MToiMSI7czoxNzoidHhuLXNob3dfdGFnY2xvdWQiO3M6MToiMSI7czoxMzoidHhuLXF1ZXJ5X3ZhciI7czoxOiIxIjtzOjExOiJ0eG4tcmV3cml0ZSI7czoxOiIxIjtzOjEwOiJ0eG4taW5saW5lIjtzOjE6IjAiO3M6MTI6InR4bi1yZXF1aXJlZCI7czoxOiIwIjtzOjEzOiJ0eG4tc3JlcXVpcmVkIjtzOjE6IjAiO3M6MTk6InR4bi1hZHZhbmNlZC1vcHRpb24iO3M6MToiMCI7czo0OiJkYXRlIjtzOjE5OiIyMDE1LTAzLTAzIDE4OjQzOjQxIjtzOjEzOiJtb2RpZmllZF9kYXRlIjtzOjE5OiIyMDE1LTAzLTAzIDE4OjQzOjQxIjt9aToxO2E6MTk6e3M6ODoidHhuLW5hbWUiO3M6MTE6ImNvbnRhY3RfdGFnIjtzOjk6InR4bi1sYWJlbCI7czoxMjoiQ29udGFjdCBUYWdzIjtzOjE4OiJ0eG4tc2luZ3VsYXItbGFiZWwiO3M6MTE6IkNvbnRhY3QgVGFnIjtzOjEwOiJ0eG4tYXR0YWNoIjthOjE6e2k6MDtzOjE6IjIiO31zOjE2OiJ0eG4taGllcmFyY2hpY2FsIjtzOjE6IjAiO3M6MTY6InR4bi1kaXNwbGF5X3R5cGUiO3M6NToibXVsdGkiO3M6MTA6InR4bi12YWx1ZXMiO3M6MzU6ImZyaWVuZDtidXNpbmVzcztmYW1pbHk7c3BvdXNlO2NoaWxkIjtzOjEwOiJ0eG4tcHVibGljIjtzOjE6IjEiO3M6MTE6InR4bi1zaG93X3VpIjtzOjE6IjEiO3M6MjE6InR4bi1zaG93X2luX25hdl9tZW51cyI7czoxOiIxIjtzOjE3OiJ0eG4tc2hvd190YWdjbG91ZCI7czoxOiIxIjtzOjEzOiJ0eG4tcXVlcnlfdmFyIjtzOjE6IjEiO3M6MTE6InR4bi1yZXdyaXRlIjtzOjE6IjEiO3M6MTA6InR4bi1pbmxpbmUiO3M6MToiMCI7czoxMjoidHhuLXJlcXVpcmVkIjtzOjE6IjAiO3M6MTM6InR4bi1zcmVxdWlyZWQiO3M6MToiMCI7czoxOToidHhuLWFkdmFuY2VkLW9wdGlvbiI7czoxOiIwIjtzOjQ6ImRhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6NDQ6NTIiO3M6MTM6Im1vZGlmaWVkX2RhdGUiO3M6MTk6IjIwMTUtMDMtMDMgMTg6NDQ6NTIiO319fQ==', 'yes'),
(157, 'wpas_app_key_list', 'a:1:{i:0;s:23:"54f498cf51e2c3.64234105";}', 'yes'),
(158, 'wpas_version', '4.3.2', 'yes'),
(159, 'wpas_data_version', '4', 'yes'),
(160, 'wpas_default_entities', 'a:2:{i:0;a:4:{s:8:"ent-name";s:4:"post";s:9:"ent-label";s:5:"Posts";s:18:"ent-singular-label";s:4:"Post";s:16:"ent-hierarchical";i:0;}i:1;a:4:{s:8:"ent-name";s:4:"page";s:9:"ent-label";s:5:"Pages";s:18:"ent-singular-label";s:4:"Page";s:16:"ent-hierarchical";i:1;}}', 'yes'),
(161, 'wpas_default_roles', 'a:5:{i:0;a:54:{s:9:"role-name";s:13:"administrator";s:10:"role-label";s:13:"Administrator";s:22:"role-edit_others_posts";i:1;s:23:"role-edit_private_posts";i:1;s:23:"role-read_private_posts";i:1;s:24:"role-delete_others_posts";i:1;s:25:"role-delete_private_posts";i:1;s:25:"role-edit_published_posts";i:1;s:18:"role-publish_posts";i:1;s:27:"role-delete_published_posts";i:1;s:15:"role-edit_posts";i:1;s:17:"role-delete_posts";i:1;s:28:"role-manage_operations_posts";i:1;s:15:"role-edit_pages";i:1;s:22:"role-edit_others_pages";i:1;s:25:"role-edit_published_pages";i:1;s:18:"role-publish_pages";i:1;s:17:"role-delete_pages";i:1;s:24:"role-delete_others_pages";i:1;s:27:"role-delete_published_pages";i:1;s:25:"role-delete_private_pages";i:1;s:23:"role-edit_private_pages";i:1;s:23:"role-read_private_pages";i:1;s:28:"role-manage_operations_pages";i:1;s:21:"role-activate_plugins";i:1;s:14:"role-add_users";i:1;s:17:"role-create_users";i:1;s:19:"role-delete_plugins";i:1;s:17:"role-delete_users";i:1;s:19:"role-edit_dashboard";i:1;s:15:"role-edit_files";i:1;s:17:"role-edit_plugins";i:1;s:23:"role-edit_theme_options";i:1;s:16:"role-edit_themes";i:1;s:15:"role-edit_users";i:1;s:11:"role-import";i:1;s:20:"role-install_plugins";i:1;s:19:"role-install_themes";i:1;s:15:"role-list_users";i:1;s:22:"role-manage_categories";i:1;s:17:"role-manage_links";i:1;s:19:"role-manage_options";i:1;s:22:"role-moderate_comments";i:1;s:18:"role-promote_users";i:1;s:9:"role-read";i:1;s:17:"role-remove_users";i:1;s:18:"role-switch_themes";i:1;s:20:"role-unfiltered_html";i:1;s:22:"role-unfiltered_upload";i:1;s:16:"role-update_core";i:1;s:19:"role-update_plugins";i:1;s:18:"role-update_themes";i:1;s:17:"role-upload_files";i:1;s:23:"role-view_app_dashboard";i:1;}i:1;a:27:{s:9:"role-name";s:6:"editor";s:10:"role-label";s:6:"Editor";s:22:"role-edit_others_posts";i:1;s:23:"role-edit_private_posts";i:1;s:23:"role-read_private_posts";i:1;s:24:"role-delete_others_posts";i:1;s:25:"role-delete_private_posts";i:1;s:25:"role-edit_published_posts";i:1;s:18:"role-publish_posts";i:1;s:27:"role-delete_published_posts";i:1;s:15:"role-edit_posts";i:1;s:17:"role-delete_posts";i:1;s:15:"role-edit_pages";i:1;s:22:"role-edit_others_pages";i:1;s:25:"role-edit_published_pages";i:1;s:18:"role-publish_pages";i:1;s:17:"role-delete_pages";i:1;s:24:"role-delete_others_pages";i:1;s:27:"role-delete_published_pages";i:1;s:25:"role-delete_private_pages";i:1;s:23:"role-edit_private_pages";i:1;s:23:"role-read_private_pages";i:1;s:22:"role-moderate_comments";i:1;s:22:"role-manage_categories";i:1;s:17:"role-manage_links";i:1;s:17:"role-upload_files";i:1;s:9:"role-read";i:1;}i:2;a:9:{s:9:"role-name";s:6:"author";s:10:"role-label";s:6:"Author";s:25:"role-edit_published_posts";i:1;s:18:"role-publish_posts";i:1;s:27:"role-delete_published_posts";i:1;s:15:"role-edit_posts";i:1;s:17:"role-delete_posts";i:1;s:17:"role-upload_files";i:1;s:9:"role-read";i:1;}i:3;a:5:{s:9:"role-name";s:11:"contributor";s:10:"role-label";s:11:"Contributor";s:15:"role-edit_posts";i:1;s:17:"role-delete_posts";i:1;s:9:"role-read";i:1;}i:4;a:3:{s:9:"role-name";s:10:"subscriber";s:10:"role-label";s:10:"Subscriber";s:9:"role-read";i:1;}}', 'yes'),
(163, '_site_transient_timeout_theme_roots', '1430155990', 'yes'),
(164, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(169, 'widget_akismet_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(170, 'widget_awpcp-categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(171, 'widget_awpcp-latest-ads', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(172, 'widget_awpcp-random-ads', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(173, 'widget_awpcp_search_widget', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(174, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(175, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(176, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(178, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(185, 'rewrite_rules', 'a:85:{s:37:"awpcpx/payments/return/([a-zA-Z0-9]+)";s:82:"index.php?awpcpx=1&awpcp-module=payments&awpcp-action=return&awpcp-txn=$matches[1]";s:37:"awpcpx/payments/notify/([a-zA-Z0-9]+)";s:82:"index.php?awpcpx=1&awpcp-module=payments&awpcp-action=notify&awpcp-txn=$matches[1]";s:37:"awpcpx/payments/cancel/([a-zA-Z0-9]+)";s:82:"index.php?awpcpx=1&awpcp-module=payments&awpcp-action=cancel&awpcp-txn=$matches[1]";s:46:"awpcpx/listings/verify/([0-9]+)/([a-zA-Z0-9]+)";s:104:"index.php?awpcpx=1&awpcp-module=listings&awpcp-action=verify&awpcp-ad=$matches[1]&awpcp-hash=$matches[2]";s:27:"(awpcp/show-ad)/(.+?)/(.+?)";s:45:"index.php?pagename=$matches[1]&id=$matches[2]";s:31:"(awpcp/reply-to-ad)/(.+?)/(.+?)";s:45:"index.php?pagename=$matches[1]&id=$matches[2]";s:37:"(awpcp/browse-categories)/(.+?)/(.+?)";s:58:"index.php?pagename=$matches[1]&cid=$matches[2]&a=browsecat";s:40:"(awpcp/payment-thank-you)/([a-zA-Z0-9]+)";s:52:"index.php?pagename=$matches[1]&awpcp-txn=$matches[2]";s:37:"(awpcp/cancel-payment)/([a-zA-Z0-9]+)";s:52:"index.php?pagename=$matches[1]&awpcp-txn=$matches[2]";s:33:"(awpcp)/(view-categories)($|[/?])";s:59:"index.php?pagename=$matches[1]&layout=2&cid=view-categories";s:31:"(awpcp)/(setregion)/(.+?)/(.+?)";s:63:"index.php?pagename=$matches[1]&regionid=$matches[3]&a=setregion";s:30:"(awpcp)/(classifiedsrss)/(\\d+)";s:63:"index.php?pagename=$matches[1]&awpcp-action=rss&cid=$matches[3]";s:24:"(awpcp)/(classifiedsrss)";s:47:"index.php?pagename=$matches[1]&awpcp-action=rss";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"bp_member_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?bp_member_type=$matches[1]&feed=$matches[2]";s:50:"bp_member_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:53:"index.php?bp_member_type=$matches[1]&feed=$matches[2]";s:43:"bp_member_type/([^/]+)/page/?([0-9]{1,})/?$";s:54:"index.php?bp_member_type=$matches[1]&paged=$matches[2]";s:25:"bp_member_type/([^/]+)/?$";s:36:"index.php?bp_member_type=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=17&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(188, 'theme_mods_twentyfifteen', 'a:1:{s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(189, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 17, '_edit_last', '1'),
(3, 17, '_edit_lock', '1430154148:1'),
(4, 19, '_menu_item_type', 'post_type'),
(5, 19, '_menu_item_menu_item_parent', '0'),
(6, 19, '_menu_item_object_id', '17'),
(7, 19, '_menu_item_object', 'page'),
(8, 19, '_menu_item_target', ''),
(9, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(10, 19, '_menu_item_xfn', ''),
(11, 19, '_menu_item_url', ''),
(13, 20, '_menu_item_type', 'post_type'),
(14, 20, '_menu_item_menu_item_parent', '0'),
(15, 20, '_menu_item_object_id', '4'),
(16, 20, '_menu_item_object', 'page'),
(17, 20, '_menu_item_target', ''),
(18, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 20, '_menu_item_xfn', ''),
(20, 20, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-27 15:54:38', '2015-04-27 15:54:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-27 15:54:38', '2015-04-27 15:54:38', '', 0, 'http://localhost/gamingmobileapp/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-27 15:54:38', '2015-04-27 15:54:38', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/gamingmobileapp/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-04-27 15:54:38', '2015-04-27 15:54:38', '', 0, 'http://localhost/gamingmobileapp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-04-27 15:55:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-27 15:55:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/gamingmobileapp/?p=3', 0, 'post', '', 0),
(4, 1, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPCLASSIFIEDSUI]', 'AWPCP', '', 'publish', 'open', 'open', '', 'awpcp', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPCLASSIFIEDSUI]', 0, 'http://localhost/gamingmobileapp/awpcp/', 0, 'page', '', 0),
(5, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPSHOWAD]', 'Show Ad', '', 'publish', 'closed', 'open', '', 'show-ad', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPSHOWAD]', 4, 'http://localhost/gamingmobileapp/awpcp/show-ad/', 0, 'page', '', 0),
(6, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPREPLYTOAD]', 'Reply To Ad', '', 'publish', 'closed', 'open', '', 'reply-to-ad', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPREPLYTOAD]', 4, 'http://localhost/gamingmobileapp/awpcp/reply-to-ad/', 0, 'page', '', 0),
(7, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPEDITAD]', 'Edit Ad', '', 'publish', 'closed', 'open', '', 'edit-ad', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPEDITAD]', 4, 'http://localhost/gamingmobileapp/awpcp/edit-ad/', 0, 'page', '', 0),
(8, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPPLACEAD]', 'Place Ad', '', 'publish', 'closed', 'open', '', 'place-ad', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPPLACEAD]', 4, 'http://localhost/gamingmobileapp/awpcp/place-ad/', 0, 'page', '', 0),
(9, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCP-RENEW-AD]', 'Renew Ad', '', 'publish', 'closed', 'open', '', 'renew-ad', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCP-RENEW-AD]', 4, 'http://localhost/gamingmobileapp/awpcp/renew-ad/', 0, 'page', '', 0),
(10, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPBROWSEADS]', 'Browse Ads', '', 'publish', 'closed', 'open', '', 'browse-ads', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPBROWSEADS]', 4, 'http://localhost/gamingmobileapp/awpcp/browse-ads/', 0, 'page', '', 0),
(11, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPBROWSECATS]', 'Browse Categories', '', 'publish', 'closed', 'open', '', 'browse-categories', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPBROWSECATS]', 4, 'http://localhost/gamingmobileapp/awpcp/browse-categories/', 0, 'page', '', 0),
(12, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPSEARCHADS]', 'Search Ads', '', 'publish', 'closed', 'open', '', 'search-ads', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPSEARCHADS]', 4, 'http://localhost/gamingmobileapp/awpcp/search-ads/', 0, 'page', '', 0),
(13, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPPAYMENTTHANKYOU]', 'Payment Thank You', '', 'publish', 'closed', 'open', '', 'payment-thank-you', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPPAYMENTTHANKYOU]', 4, 'http://localhost/gamingmobileapp/awpcp/payment-thank-you/', 0, 'page', '', 0),
(14, 0, '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPCANCELPAYMENT]', 'Cancel Payment', '', 'publish', 'closed', 'open', '', 'cancel-payment', '', '', '2015-04-27 00:00:00', '2015-04-27 00:00:00', '[AWPCPCANCELPAYMENT]', 4, 'http://localhost/gamingmobileapp/awpcp/cancel-payment/', 0, 'page', '', 0),
(15, 1, '2015-04-27 16:05:32', '2015-04-27 16:05:32', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2015-04-27 16:05:32', '2015-04-27 16:05:32', '', 0, 'http://localhost/gamingmobileapp/activity/', 0, 'page', '', 0),
(16, 1, '2015-04-27 16:05:32', '2015-04-27 16:05:32', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2015-04-27 16:05:32', '2015-04-27 16:05:32', '', 0, 'http://localhost/gamingmobileapp/members/', 0, 'page', '', 0),
(17, 1, '2015-04-27 17:04:08', '2015-04-27 17:04:08', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-27 17:04:08', '2015-04-27 17:04:08', '', 0, 'http://localhost/gamingmobileapp/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-04-27 17:04:08', '2015-04-27 17:04:08', '', 'Home', '', 'inherit', 'open', 'open', '', '17-revision-v1', '', '', '2015-04-27 17:04:08', '2015-04-27 17:04:08', '', 17, 'http://localhost/gamingmobileapp/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-04-27 17:11:49', '2015-04-27 17:11:49', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2015-04-27 17:11:49', '2015-04-27 17:11:49', '', 0, 'http://localhost/gamingmobileapp/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2015-04-27 17:11:49', '2015-04-27 17:11:49', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2015-04-27 17:11:49', '2015-04-27 17:11:49', '', 0, 'http://localhost/gamingmobileapp/?p=20', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE IF NOT EXISTS `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'main', 'main', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"12c24c1c5bd70d684db862cc32596d853bbd21427af25457cd6c09b8e7692c22";a:4:{s:10:"expiration";i:1431359699;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1430150099;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'last_activity', '2015-04-27 17:03:13'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:23:"add-buddypress-nav-menu";i:1;s:8:"add-post";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNIcYoBp4nbPGJz8/Vaz3tSuKO0LS41', 'admin', 'muhammadsufiangee@gmail.com', '', '2015-04-27 15:54:37', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
