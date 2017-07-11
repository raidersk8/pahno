-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 11 2017 г., 19:56
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `pahno`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-07-10 10:03:22', '2017-07-10 07:03:22', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=346 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://pahno', 'yes'),
(2, 'home', 'http://pahno', 'yes'),
(3, 'blogname', 'pahno', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'romangalchenkov@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"products/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"products/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"products/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"products/([^/]+)/embed/?$";s:41:"index.php?products=$matches[1]&embed=true";s:29:"products/([^/]+)/trackback/?$";s:35:"index.php?products=$matches[1]&tb=1";s:37:"products/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&paged=$matches[2]";s:44:"products/([^/]+)/comment-page-([0-9]{1,})/?$";s:48:"index.php?products=$matches[1]&cpage=$matches[2]";s:33:"products/([^/]+)(?:/([0-9]+))?/?$";s:47:"index.php?products=$matches[1]&page=$matches[2]";s:25:"products/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"products/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"products/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=2&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'malton', 'yes'),
(41, 'stylesheet', 'malton', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(66, 'image_default_link_type', 'none', 'yes'),
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
(83, 'page_for_posts', '36', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:12:"Клиент";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:33:"Менеджер магазина";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1499799804;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499799805;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1499848924;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1499851203;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1499676188;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(119, '_site_transient_timeout_browser_ba081c70c62b1a73f7586809b37ba98f', '1500275038', 'no'),
(120, '_site_transient_browser_ba081c70c62b1a73f7586809b37ba98f', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(123, 'can_compress_scripts', '1', 'no'),
(135, 'current_theme', 'malton', 'yes'),
(136, 'theme_mods_malton', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:15;}}', 'yes'),
(137, 'theme_switched', '', 'yes'),
(138, '_transient_timeout_plugin_slugs', '1499859803', 'no'),
(139, '_transient_plugin_slugs', 'a:4:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:3;s:9:"hello.php";}', 'no'),
(140, 'recently_activated', 'a:1:{s:27:"woocommerce/woocommerce.php";i:1499771705;}', 'yes'),
(147, 'woocommerce_default_country', 'GB', 'yes'),
(148, 'woocommerce_allowed_countries', 'all', 'yes'),
(149, 'woocommerce_all_except_countries', '', 'yes'),
(150, 'woocommerce_specific_allowed_countries', '', 'yes'),
(151, 'woocommerce_ship_to_countries', '', 'yes'),
(152, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(153, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(154, 'woocommerce_calc_taxes', 'no', 'yes'),
(155, 'woocommerce_demo_store', 'no', 'yes'),
(156, 'woocommerce_demo_store_notice', 'Это демо-магазин для тестирования &mdash; заказы не исполняются.', 'no'),
(157, 'woocommerce_currency', 'GBP', 'yes'),
(158, 'woocommerce_currency_pos', 'left', 'yes'),
(159, 'woocommerce_price_thousand_sep', ',', 'yes'),
(160, 'woocommerce_price_decimal_sep', '.', 'yes'),
(161, 'woocommerce_price_num_decimals', '2', 'yes'),
(162, 'woocommerce_weight_unit', 'kg', 'yes'),
(163, 'woocommerce_dimension_unit', 'cm', 'yes'),
(164, 'woocommerce_enable_reviews', 'yes', 'yes'),
(165, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(166, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(167, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(168, 'woocommerce_review_rating_required', 'yes', 'no'),
(169, 'woocommerce_shop_page_id', '4', 'yes'),
(170, 'woocommerce_shop_page_display', '', 'yes'),
(171, 'woocommerce_category_archive_display', '', 'yes'),
(172, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(173, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(174, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(175, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(176, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(177, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(178, 'woocommerce_manage_stock', 'yes', 'yes'),
(179, 'woocommerce_hold_stock_minutes', '60', 'no'),
(180, 'woocommerce_notify_low_stock', 'yes', 'no'),
(181, 'woocommerce_notify_no_stock', 'yes', 'no'),
(182, 'woocommerce_stock_email_recipient', 'romangalchenkov@gmail.com', 'no'),
(183, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(184, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(185, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(186, 'woocommerce_stock_format', '', 'yes'),
(187, 'woocommerce_file_download_method', 'force', 'no'),
(188, 'woocommerce_downloads_require_login', 'no', 'no'),
(189, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(190, 'woocommerce_prices_include_tax', 'no', 'yes'),
(191, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(192, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(193, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(194, 'woocommerce_tax_classes', 'Пониженная ставка\r\nНулевая ставка', 'yes'),
(195, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(196, 'woocommerce_tax_display_cart', 'excl', 'no'),
(197, 'woocommerce_price_display_suffix', '', 'yes'),
(198, 'woocommerce_tax_total_display', 'itemized', 'no'),
(199, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(200, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(201, 'woocommerce_ship_to_destination', 'billing', 'no'),
(202, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(203, 'woocommerce_enable_coupons', 'yes', 'yes'),
(204, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(205, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(206, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(207, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(208, 'woocommerce_cart_page_id', '5', 'yes'),
(209, 'woocommerce_checkout_page_id', '6', 'yes'),
(210, 'woocommerce_terms_page_id', '', 'no'),
(211, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(212, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(213, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(214, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(215, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(216, 'woocommerce_myaccount_page_id', '7', 'yes'),
(217, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(218, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(219, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(220, 'woocommerce_registration_generate_username', 'yes', 'no'),
(221, 'woocommerce_registration_generate_password', 'no', 'no'),
(222, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(223, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(224, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(225, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(226, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(227, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(228, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(229, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(230, 'woocommerce_email_from_name', 'pahno', 'no'),
(231, 'woocommerce_email_from_address', 'romangalchenkov@gmail.com', 'no'),
(232, 'woocommerce_email_header_image', '', 'no'),
(233, 'woocommerce_email_footer_text', 'pahno - Работает на WooCommerce', 'no'),
(234, 'woocommerce_email_base_color', '#96588a', 'no'),
(235, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(236, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(237, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(238, 'woocommerce_api_enabled', 'yes', 'yes'),
(244, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(245, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(246, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(247, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(248, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(249, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(251, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(252, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(255, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(256, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(261, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(266, '_transient_timeout_wc_low_stock_count', '1502269008', 'no'),
(267, '_transient_wc_low_stock_count', '0', 'no'),
(268, '_transient_timeout_wc_outofstock_count', '1502269008', 'no'),
(269, '_transient_wc_outofstock_count', '0', 'no'),
(270, '_transient_timeout_external_ip_address_127.0.0.1', '1500281880', 'no'),
(271, '_transient_external_ip_address_127.0.0.1', '77.244.76.169', 'no'),
(272, '_transient_timeout_geoip_127.0.0.1', '1500282656', 'no'),
(273, '_transient_geoip_127.0.0.1', '', 'no'),
(274, '_transient_timeout_geoip_77.244.76.169', '1500282657', 'no'),
(275, '_transient_geoip_77.244.76.169', 'RU', 'no'),
(279, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.8.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.8";s:7:"version";s:3:"4.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1499773418;s:15:"version_checked";s:3:"4.8";s:12:"translations";a:0:{}}', 'no'),
(281, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1499773420;s:7:"checked";a:4:{s:6:"malton";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(282, 'woocommerce_db_version', '3.1.0', 'yes'),
(283, 'woocommerce_version', '3.1.0', 'yes'),
(284, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(286, '_transient_product_query-transient-version', '1499678403', 'yes'),
(289, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(301, '_transient_timeout_wc_report_sales_by_date', '1499858080', 'no'),
(302, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"f9dde49bd4cde31b0b40431630118fcc";a:0:{}s:32:"7b8a68b49ba9ef21d50be703782179d9";a:0:{}s:32:"12309ac0af58933a84a5075d668d96b8";a:0:{}s:32:"c44964906943425b214923306c1c75c6";N;s:32:"aed10860156f68baed6a900c20e552d3";a:0:{}s:32:"e6a67307cfa3188e965de34af2d5a85a";a:0:{}s:32:"82f46374f57b5622b7378c390ba7bb73";a:0:{}s:32:"256019a80f4619b98a5e8ebfcdf941f8";a:0:{}}', 'no'),
(303, '_transient_timeout_wc_admin_report', '1499858080', 'no'),
(304, '_transient_wc_admin_report', 'a:1:{s:32:"98aa17c1be8959b412c712b82077fc4a";a:0:{}}', 'no'),
(305, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1499814884', 'no'),
(306, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:1:{i:0;a:7:{s:4:"type";s:8:"wordcamp";s:5:"title";s:15:"WordCamp Moscow";s:3:"url";s:32:"https://2017.moscow.wordcamp.org";s:6:"meetup";N;s:10:"meetup_url";N;s:4:"date";s:19:"2017-08-12 00:00:00";s:8:"location";a:4:{s:8:"location";s:14:"Moscow, Russia";s:7:"country";s:2:"RU";s:8:"latitude";d:55.740815699999999;s:9:"longitude";d:37.608924999999999;}}}}', 'no'),
(307, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499814886', 'no'),
(308, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499814886', 'no'),
(309, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1499771686', 'no'),
(310, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1499814888', 'no'),
(311, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1499814889', 'no'),
(312, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1499771689', 'no'),
(313, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1499814889', 'no'),
(314, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/''>The Month in WordPress: June 2017</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://odd.blog/2017/07/11/thank-you-translators/''>Donncha: Thank you Translators!</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/interview-with-wordcamp-us-2017-organizers-dustin-meza-and-laura-byrne-cristiano''>WPTavern: Interview with WordCamp US 2017 Organizers Dustin Meza and Laura Byrne-Cristiano</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wpcampus-2017-will-be-streamed-live-for-free''>WPTavern: WPCampus 2017 Will Be Streamed Live for Free</a></li></ul></div>', 'no'),
(315, '_transient_timeout__woocommerce_helper_subscriptions', '1499772595', 'no'),
(316, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(317, '_site_transient_timeout_theme_roots', '1499773495', 'no'),
(318, '_site_transient_theme_roots', 'a:4:{s:6:"malton";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(319, '_transient_timeout__woocommerce_helper_updates', '1499814896', 'no'),
(320, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1499771695;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(321, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1499782640', 'no'),
(322, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4348;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2487;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2356;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2185;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1822;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1590;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1567;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1431;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1346;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1333;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1326;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1269;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1264;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1111;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1050;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1039;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:990;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:937;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:816;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:798;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:796;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:769;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:762;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:667;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:660;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:658;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:651;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:644;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:636;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:634;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:615;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:598;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:591;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:585;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:582;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:573;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:571;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:561;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:552;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:538;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:537;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:533;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:519;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:507;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:498;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:493;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:490;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:478;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:469;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:468;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:468;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:464;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:444;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:438;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:435;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:435;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:434;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:422;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:420;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:410;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:407;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:402;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:399;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:399;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:398;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:394;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:379;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:378;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:371;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:368;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:350;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:342;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:333;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:330;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:328;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:327;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:322;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:321;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:320;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:316;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:310;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:298;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:292;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:290;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:289;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:287;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:279;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:278;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:276;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:273;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:273;}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";i:265;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:264;}s:5:"cache";a:3:{s:4:"name";s:5:"cache";s:4:"slug";s:5:"cache";s:5:"count";i:264;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:263;}}', 'no'),
(327, 'cptui_new_install', 'false', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(328, 'cptui_post_types', 'a:1:{s:8:"products";a:28:{s:4:"name";s:8:"products";s:5:"label";s:12:"Товары";s:14:"singular_label";s:12:"Товары";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:5:"false";s:9:"rest_base";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:4:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:7:"excerpt";}s:10:"taxonomies";a:0:{}s:6:"labels";a:23:{s:9:"menu_name";s:12:"Товары";s:9:"all_items";s:6:"Все";s:7:"add_new";s:16:"Добавить";s:12:"add_new_item";s:16:"Добавить";s:9:"edit_item";s:26:"Редактировать";s:8:"new_item";s:10:"Новый";s:9:"view_item";s:16:"Просмотр";s:10:"view_items";s:16:"Просмотр";s:12:"search_items";s:10:"Поиск";s:9:"not_found";s:10:"Пусто";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(336, '_transient_timeout_acf_pro_get_remote_info', '1499816554', 'no'),
(337, '_transient_acf_pro_get_remote_info', 'a:15:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.14";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.8.0";s:4:"tags";a:62:{i:0;s:11:"5.6.0-beta2";i:1;s:11:"5.6.0-beta1";i:2;s:5:"5.5.9";i:3;s:5:"5.5.7";i:4;s:5:"5.5.5";i:5;s:5:"5.5.3";i:6;s:5:"5.5.2";i:7;s:6:"5.5.13";i:8;s:6:"5.5.12";i:9;s:6:"5.5.11";i:10;s:6:"5.5.10";i:11;s:5:"5.5.1";i:12;s:5:"5.5.0";i:13;s:5:"5.4.8";i:14;s:5:"5.4.7";i:15;s:5:"5.4.6";i:16;s:5:"5.4.5";i:17;s:5:"5.4.4";i:18;s:5:"5.4.3";i:19;s:5:"5.4.2";i:20;s:5:"5.4.1";i:21;s:5:"5.4.0";i:22;s:5:"5.3.8";i:23;s:5:"5.3.7";i:24;s:5:"5.3.6";i:25;s:5:"5.3.5";i:26;s:5:"5.3.4";i:27;s:5:"5.3.3";i:28;s:5:"5.3.2";i:29;s:6:"5.3.10";i:30;s:5:"5.3.1";i:31;s:5:"5.3.0";i:32;s:5:"5.2.9";i:33;s:5:"5.2.8";i:34;s:5:"5.2.7";i:35;s:5:"5.2.6";i:36;s:5:"5.2.5";i:37;s:5:"5.2.4";i:38;s:5:"5.2.3";i:39;s:5:"5.2.2";i:40;s:5:"5.2.1";i:41;s:5:"5.2.0";i:42;s:5:"5.1.9";i:43;s:5:"5.1.8";i:44;s:5:"5.1.7";i:45;s:5:"5.1.6";i:46;s:5:"5.1.5";i:47;s:5:"5.1.4";i:48;s:5:"5.1.3";i:49;s:5:"5.1.2";i:50;s:5:"5.1.1";i:51;s:5:"5.1.0";i:52;s:5:"5.0.9";i:53;s:5:"5.0.8";i:54;s:5:"5.0.7";i:55;s:5:"5.0.6";i:56;s:5:"5.0.5";i:57;s:5:"5.0.4";i:58;s:5:"5.0.3";i:59;s:5:"5.0.2";i:60;s:5:"5.0.1";i:61;s:5:"5.0.0";}s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:11:"description";s:4337:"<p>Advanced Custom Fields is the perfect solution for any WordPress website which needs more flexible data like other Content Management Systems. </p>\n<ul><li>Visually create your Fields</li><li>Select from multiple input types (text, textarea, wysiwyg, image, file, page link, post object, relationship, select, checkbox, radio buttons, date picker, true / false, repeater, flexible content, gallery and more to come!)</li><li>Assign your fields to multiple edit pages (via custom location rules)</li><li>Easily load data through a simple and friendly API</li><li>Uses the native WordPress custom post type for ease of use and fast processing</li><li>Uses the native WordPress metadata for ease of use and fast processing</li></ul>\n<h4> Field Types </h4>\n<ul><li>Text (type text, api returns text)</li><li>Text Area (type text, api returns text)</li><li>Number (type number, api returns integer)</li><li>Email (type email, api returns text)</li><li>Password (type password, api returns text)</li><li>WYSIWYG (a WordPress wysiwyg editor, api returns html)</li><li>Image (upload an image, api returns the url)</li><li>File (upload a file, api returns the url)</li><li>Select (drop down list of choices, api returns chosen item)</li><li>Checkbox (tickbox list of choices, api returns array of choices)</li><li>Radio Buttons ( radio button list of choices, api returns chosen item)</li><li>True / False (tick box with message, api returns true or false)</li><li>Page Link (select 1 or more page, post or custom post types, api returns the selected url)</li><li>Post Object (select 1 or more page, post or custom post types, api returns the selected post objects)</li><li>Relationship (search, select and order post objects with a tidy interface, api returns the selected post objects)</li><li>Taxonomy (select taxonomy terms with options to load, display and save, api returns the selected term objects)</li><li>User (select 1 or more WP users, api returns the selected user objects)</li><li>Google Maps (interactive map, api returns lat,lng,address data)</li><li>Date Picker (jquery date picker, options for format, api returns string)</li><li>Color Picker (WP color swatch picker)</li><li>Tab (Group fields into tabs)</li><li>Message (Render custom messages into the fields)</li><li>Repeater (ability to create repeatable blocks of fields!)</li><li>Flexible Content (ability to create flexible blocks of fields!)</li><li>Gallery (Add, edit and order multiple images in 1 simple field)</li><li>[Custom](<a href="https://www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)">www.advancedcustomfields.com/resources/tutorials/creating-a-new-field-type/)</a> (Create your own field type!)</li></ul>\n<h4> Tested on </h4>\n<ul><li>Mac Firefox 	:)</li><li>Mac Safari 	:)</li><li>Mac Chrome	:)</li><li>PC Safari 	:)</li><li>PC Chrome		:)</li><li>PC Firefox	:)</li><li>iPhone Safari :)</li><li>iPad Safari 	:)</li><li>PC ie7		:S</li></ul>\n<h4> Website </h4>\n<p><a href="https://www.advancedcustomfields.com/">www.advancedcustomfields.com/</a></p>\n<h4> Documentation </h4>\n<ul><li>[Getting Started](<a href="https://www.advancedcustomfields.com/resources/#getting-started)">www.advancedcustomfields.com/resources/#getting-started)</a></li><li>[Field Types](<a href="https://www.advancedcustomfields.com/resources/#field-types)">www.advancedcustomfields.com/resources/#field-types)</a></li><li>[Functions](<a href="https://www.advancedcustomfields.com/resources/#functions)">www.advancedcustomfields.com/resources/#functions)</a></li><li>[Actions](<a href="https://www.advancedcustomfields.com/resources/#actions)">www.advancedcustomfields.com/resources/#actions)</a></li><li>[Filters](<a href="https://www.advancedcustomfields.com/resources/#filters)">www.advancedcustomfields.com/resources/#filters)</a></li><li>[How to guides](<a href="https://www.advancedcustomfields.com/resources/#how-to)">www.advancedcustomfields.com/resources/#how-to)</a></li><li>[Tutorials](<a href="https://www.advancedcustomfields.com/resources/#tutorials)">www.advancedcustomfields.com/resources/#tutorials)</a></li></ul>\n<h4> Bug Submission and Forum Support </h4>\n<p><a href="http://support.advancedcustomfields.com/">support.advancedcustomfields.com/</a></p>\n<h4> Please Vote and Enjoy </h4>\n<p>Your votes really make a difference! Thanks.</p>\n";s:12:"installation";s:467:"<ol><li>Upload <code>advanced-custom-fields</code> to the <code>/wp-content/plugins/</code> directory</li><li>Activate the plugin through the <code>Plugins</code> menu in WordPress</li><li>Click on the new menu item "Custom Fields" and create your first Custom Field Group!</li><li>Your custom field group will now appear on the page / post / template you specified in the field group''s location rules!</li><li>Read the documentation to display your data: </li></ol>\n";s:9:"changelog";s:4168:"<h4> 5.5.14 </h4>\n<ul><li>Core: Minor bug fixes</li></ul>\n<h4> 5.5.13 </h4>\n<ul><li>Clone field: Improved <code>Fields</code> setting to show all fields within a matching field group search</li><li>Flexible Content field: Fixed bug causing <code>layout_title</code> filter to fail when field is cloned</li><li>Flexible Content field: Added missing <code>translate_field</code> function</li><li>WYSIWYG field: Fixed JS error when using CKEditor plugin</li><li>Date Picker field: Improved <code>Display Format</code> and <code>Return Format</code> settings UI</li><li>Time Picker field: Same as above</li><li>Datetime Picker field: Same as above</li><li>Core: Added new <code>remove_wp_meta_box</code> setting</li><li>Core: Added constants ACF, ACF_PRO, ACF_VERSION and ACF_PATH</li><li>Core: Improved compatibility with Select2 v4 including sortable functionality</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li></ul>\n<h4> 5.5.12 </h4>\n<ul><li>Tab field: Allowed HTML within field label to show in tab</li><li>Core: Improved plugin update class</li><li>Language: Updated Portuguese translation - thanks to Pedro Mendonça</li><li>Language: Updated Brazilian Portuguese translation - thanks to Rafael Ribeiro</li></ul>\n<h4> 5.5.11 </h4>\n<ul><li>Google Map field: Added new <code>google_map_init</code> JS action</li><li>Core: Minor fixes and improvements</li><li>Language: Updated Swiss German translation - thanks to Raphael Hüni</li><li>Language: Updated French translation - thanks to Maxime Bernard-Jacquet</li></ul>\n<h4> 5.5.10 </h4>\n<ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.9 </h4>\n<ul><li>Core: Fixed bug causing ACF4 PHP field groups to be ignored if missing ‘key’ setting</li></ul>\n<h4> 5.5.8 </h4>\n<ul><li>Flexible Content: Added logic to better <code>clean up</code> data when re-ordering layouts</li><li>oEmbed field: Fixed bug causing incorrect width and height settings in embed HTML</li><li>Core: Fixed bug causing incorrect Select2 CSS version loading for WooCommerce 2.7</li><li>Core: Fixed bug preventing <code>min-height</code> style being applied to floating width fields</li><li>Core: Added new JS <code>init</code> actions for wysiwyg, date, datetime, time and select2 fields</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.7 </h4>\n<ul><li>Core: Fixed bug causing `get_field()` to return incorrect data for sub fields registered via PHP code.</li></ul>\n<h4> 5.5.6 </h4>\n<ul><li>Core: Fixed bug causing license key to be ignored after changing url from http to https</li><li>Core: Fixed Select2 (v4) bug where <code>allow null</code> setting would not correctly save empty value</li><li>Core: Added new <code>acf/validate_field</code> filter</li><li>Core: Added new <code>acf/validate_field_group</code> filter</li><li>Core: Added new <code>acf/validate_post_id</code> filter</li><li>Core: Added new <code>row_index_offset</code> setting</li><li>Core: Fixed bug causing value loading issues for a taxonomy term in WP < 4.4</li><li>Core: Minor fixes and improvements</li></ul>\n<h4> 5.5.5 </h4>\n<ul><li>File field: Fixed bug creating draft post when saving an empty value</li><li>Image field: Fixed bug mentioned above</li></ul>\n";s:14:"upgrade_notice";s:551:"<h4> 5.2.7 </h4>\n<ul><li>Field class names have changed slightly in v5.2.7 from `field_type-{$type}` to `acf-field-{$type}`. This change was introduced to better optimise JS performance. The previous class names can be added back in with the following filter: <a href="https://www.advancedcustomfields.com/resources/acfcompatibility/">www.advancedcustomfields.com/resources/acfcompatibility/</a></li></ul>\n<h4> 3.0.0 </h4>\n<ul><li>Editor is broken in WordPress 3.3</li></ul>\n<h4> 2.1.4 </h4>\n<ul><li>Adds post_id column back into acf_values</li></ul>\n";}', 'no'),
(338, 'acf_version', '5.5.14', 'yes'),
(340, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TlRRME5qSjhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMUxUQTBMVEl3SURFd09qUTBPakF5IjtzOjM6InVybCI7czoxMjoiaHR0cDovL3BhaG5vIjt9', 'yes'),
(341, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1499773418;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.2.zip";}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":6:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.5.4";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.5.4.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'no'),
(344, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=204 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 8, '_wc_review_count', '0'),
(3, 8, '_wc_rating_count', 'a:0:{}'),
(4, 8, '_wc_average_rating', '0'),
(5, 9, '_menu_item_type', 'custom'),
(6, 9, '_menu_item_menu_item_parent', '0'),
(7, 9, '_menu_item_object_id', '9'),
(8, 9, '_menu_item_object', 'custom'),
(9, 9, '_menu_item_target', ''),
(10, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(11, 9, '_menu_item_xfn', ''),
(12, 9, '_menu_item_url', 'http://pahno/'),
(13, 9, '_menu_item_orphaned', '1499684935'),
(50, 14, '_menu_item_type', 'post_type'),
(51, 14, '_menu_item_menu_item_parent', '0'),
(52, 14, '_menu_item_object_id', '2'),
(53, 14, '_menu_item_object', 'page'),
(54, 14, '_menu_item_target', ''),
(55, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 14, '_menu_item_xfn', ''),
(57, 14, '_menu_item_url', ''),
(58, 14, '_menu_item_orphaned', '1499684940'),
(59, 15, '_menu_item_type', 'custom'),
(60, 15, '_menu_item_menu_item_parent', '0'),
(61, 15, '_menu_item_object_id', '15'),
(62, 15, '_menu_item_object', 'custom'),
(63, 15, '_menu_item_target', ''),
(64, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 15, '_menu_item_xfn', ''),
(66, 15, '_menu_item_url', '#'),
(68, 16, '_menu_item_type', 'custom'),
(69, 16, '_menu_item_menu_item_parent', '0'),
(70, 16, '_menu_item_object_id', '16'),
(71, 16, '_menu_item_object', 'custom'),
(72, 16, '_menu_item_target', ''),
(73, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 16, '_menu_item_xfn', ''),
(75, 16, '_menu_item_url', '#'),
(77, 17, '_menu_item_type', 'custom'),
(78, 17, '_menu_item_menu_item_parent', '0'),
(79, 17, '_menu_item_object_id', '17'),
(80, 17, '_menu_item_object', 'custom'),
(81, 17, '_menu_item_target', ''),
(82, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 17, '_menu_item_xfn', ''),
(84, 17, '_menu_item_url', '#'),
(86, 18, '_menu_item_type', 'custom'),
(87, 18, '_menu_item_menu_item_parent', '0'),
(88, 18, '_menu_item_object_id', '18'),
(89, 18, '_menu_item_object', 'custom'),
(90, 18, '_menu_item_target', ''),
(91, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 18, '_menu_item_xfn', ''),
(93, 18, '_menu_item_url', '#'),
(95, 19, '_menu_item_type', 'custom'),
(96, 19, '_menu_item_menu_item_parent', '0'),
(97, 19, '_menu_item_object_id', '19'),
(98, 19, '_menu_item_object', 'custom'),
(99, 19, '_menu_item_target', ''),
(100, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 19, '_menu_item_xfn', ''),
(102, 19, '_menu_item_url', '#'),
(103, 21, '_wp_attached_file', '2017/07/prod-1.png'),
(104, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:200;s:4:"file";s:18:"2017/07/prod-1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"prod-1-70x150.png";s:5:"width";i:70;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"image-auto-200";a:4:{s:4:"file";s:17:"prod-1-70x200.png";s:5:"width";i:70;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(105, 22, '_wp_attached_file', '2017/07/prod-2.png'),
(106, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:219;s:6:"height";i:200;s:4:"file";s:18:"2017/07/prod-2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"prod-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"image-auto-200";a:4:{s:4:"file";s:18:"prod-2-219x200.png";s:5:"width";i:219;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(107, 23, '_wp_attached_file', '2017/07/prod-3.png'),
(108, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:70;s:6:"height";i:200;s:4:"file";s:18:"2017/07/prod-3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"prod-3-70x150.png";s:5:"width";i:70;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"image-auto-200";a:4:{s:4:"file";s:17:"prod-3-70x200.png";s:5:"width";i:70;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(109, 24, '_wp_attached_file', '2017/07/prod-4.png'),
(110, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:128;s:6:"height";i:200;s:4:"file";s:18:"2017/07/prod-4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"prod-4-128x150.png";s:5:"width";i:128;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"image-auto-200";a:4:{s:4:"file";s:18:"prod-4-128x200.png";s:5:"width";i:128;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 20, '_edit_last', '1'),
(112, 20, '_edit_lock', '1499788034:1'),
(113, 20, '_thumbnail_id', '23'),
(114, 25, '_edit_last', '1'),
(115, 25, '_edit_lock', '1499788034:1'),
(116, 25, '_thumbnail_id', '22'),
(117, 26, '_edit_last', '1'),
(118, 26, '_edit_lock', '1499788033:1'),
(119, 26, '_thumbnail_id', '23'),
(120, 27, '_edit_last', '1'),
(121, 27, '_edit_lock', '1499788033:1'),
(139, 2, '_edit_lock', '1499787522:1'),
(140, 2, '_edit_last', '1'),
(141, 36, '_edit_last', '1'),
(142, 36, '_edit_lock', '1499773517:1'),
(143, 38, '_edit_last', '1'),
(144, 38, '_edit_lock', '1499775190:1'),
(145, 2, 'popular-goods', ''),
(146, 2, '_popular-goods', 'field_5964bb23455c9'),
(147, 40, 'popular-goods', 'a:4:{i:0;s:2:"26";i:1;s:2:"27";i:2;s:2:"25";i:3;s:2:"20";}'),
(148, 40, '_popular-goods', 'field_5964bb23455c9'),
(149, 41, 'popular-goods', ''),
(150, 41, '_popular-goods', 'field_5964bb23455c9'),
(151, 2, 'popular_goods', 'a:4:{i:0;s:2:"27";i:1;s:2:"26";i:2;s:2:"25";i:3;s:2:"20";}'),
(152, 2, '_popular_goods', 'field_5964bb23455c9'),
(153, 42, 'popular-goods', ''),
(154, 42, '_popular-goods', 'field_5964bb23455c9'),
(155, 42, 'popular_goods', 'a:4:{i:0;s:2:"20";i:1;s:2:"25";i:2;s:2:"27";i:3;s:2:"26";}'),
(156, 42, '_popular_goods', 'field_5964bb23455c9'),
(157, 27, '_thumbnail_id', '24'),
(158, 43, 'popular-goods', ''),
(159, 43, '_popular-goods', 'field_5964bb23455c9'),
(160, 43, 'popular_goods', 'a:3:{i:0;s:2:"20";i:1;s:2:"25";i:2;s:2:"27";}'),
(161, 43, '_popular_goods', 'field_5964bb23455c9'),
(162, 44, 'popular-goods', ''),
(163, 44, '_popular-goods', 'field_5964bb23455c9'),
(164, 44, 'popular_goods', 'a:4:{i:0;s:2:"20";i:1;s:2:"25";i:2;s:2:"27";i:3;s:2:"26";}'),
(165, 44, '_popular_goods', 'field_5964bb23455c9'),
(166, 45, 'popular-goods', ''),
(167, 45, '_popular-goods', 'field_5964bb23455c9'),
(168, 45, 'popular_goods', 'a:4:{i:0;s:2:"20";i:1;s:2:"27";i:2;s:2:"25";i:3;s:2:"26";}'),
(169, 45, '_popular_goods', 'field_5964bb23455c9'),
(170, 46, 'popular-goods', ''),
(171, 46, '_popular-goods', 'field_5964bb23455c9'),
(172, 46, 'popular_goods', 'a:4:{i:0;s:2:"27";i:1;s:2:"20";i:2;s:2:"25";i:3;s:2:"26";}'),
(173, 46, '_popular_goods', 'field_5964bb23455c9'),
(174, 47, 'popular-goods', ''),
(175, 47, '_popular-goods', 'field_5964bb23455c9'),
(176, 47, 'popular_goods', 'a:4:{i:0;s:2:"27";i:1;s:2:"26";i:2;s:2:"25";i:3;s:2:"20";}'),
(177, 47, '_popular_goods', 'field_5964bb23455c9'),
(178, 48, '_edit_last', '1'),
(179, 48, '_edit_lock', '1499788404:1'),
(180, 27, 'price', '14 740'),
(181, 27, '_price', 'field_5964f1a897d92'),
(182, 27, 'old_price', '18 740'),
(183, 27, '_old_price', 'field_5964f1c097d93'),
(184, 27, 'dose', '150 мл.'),
(185, 27, '_dose', 'field_5964f1da97d94'),
(186, 25, 'price', '2880'),
(187, 25, '_price', 'field_5964f1a897d92'),
(188, 25, 'old_price', ''),
(189, 25, '_old_price', 'field_5964f1c097d93'),
(190, 25, 'dose', '500 мл.'),
(191, 25, '_dose', 'field_5964f1da97d94'),
(192, 20, 'price', '1800'),
(193, 20, '_price', 'field_5964f1a897d92'),
(194, 20, 'old_price', ''),
(195, 20, '_old_price', 'field_5964f1c097d93'),
(196, 20, 'dose', '30 мл.'),
(197, 20, '_dose', 'field_5964f1da97d94'),
(198, 26, 'price', '4100'),
(199, 26, '_price', 'field_5964f1a897d92'),
(200, 26, 'old_price', ''),
(201, 26, '_old_price', 'field_5964f1c097d93'),
(202, 26, 'dose', '50 мл.'),
(203, 26, '_dose', 'field_5964f1da97d94');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=52 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-07-10 10:03:22', '2017-07-10 07:03:22', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2017-07-10 10:03:22', '2017-07-10 07:03:22', '', 0, 'http://pahno/?p=1', 0, 'post', '', 1),
(2, 1, '2017-07-10 10:03:22', '2017-07-10 07:03:22', '', 'Главная', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-07-11 17:29:23', '2017-07-11 14:29:23', '', 0, 'http://pahno/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-07-10 10:03:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-07-10 10:03:58', '0000-00-00 00:00:00', '', 0, 'http://pahno/?p=3', 0, 'post', '', 0),
(8, 1, '2017-07-10 12:20:03', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-07-10 12:20:03', '0000-00-00 00:00:00', '', 0, 'http://pahno/?post_type=product&p=8', 0, 'product', '', 0),
(9, 1, '2017-07-10 14:08:54', '0000-00-00 00:00:00', '', 'Главная', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-10 14:08:54', '0000-00-00 00:00:00', '', 0, 'http://pahno/?p=9', 1, 'nav_menu_item', '', 0),
(14, 1, '2017-07-10 14:08:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-07-10 14:08:59', '0000-00-00 00:00:00', '', 0, 'http://pahno/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 0, 'http://pahno/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 'Услуги', '', 'publish', 'closed', 'closed', '', '%d1%83%d1%81%d0%bb%d1%83%d0%b3%d0%b8', '', '', '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 0, 'http://pahno/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 'Космецевтика', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d1%81%d0%bc%d0%b5%d1%86%d0%b5%d0%b2%d1%82%d0%b8%d0%ba%d0%b0', '', '', '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 0, 'http://pahno/?p=17', 3, 'nav_menu_item', '', 0),
(18, 1, '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 'Публикации', '', 'publish', 'closed', 'closed', '', '%d0%bf%d1%83%d0%b1%d0%bb%d0%b8%d0%ba%d0%b0%d1%86%d0%b8%d0%b8', '', '', '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 0, 'http://pahno/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2017-07-10 14:11:10', '2017-07-10 11:11:10', '', 0, 'http://pahno/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2017-07-11 14:37:26', '2017-07-11 11:37:26', 'Для ухода за кожей, подвергшейся ветру, холоду и солнцу.', 'TEOSYAL Бальзам «Глубокое восстановление»', 'Для ухода за кожей, подвергшейся ветру, холоду и солнцу.', 'publish', 'closed', 'closed', '', 'teosyal-%d0%b1%d0%b0%d0%bb%d1%8c%d0%b7%d0%b0%d0%bc-%d0%b3%d0%bb%d1%83%d0%b1%d0%be%d0%ba%d0%be%d0%b5-%d0%b2%d0%be%d1%81%d1%81%d1%82%d0%b0%d0%bd%d0%be%d0%b2%d0%bb%d0%b5%d0%bd%d0%b8%d0%b5', '', '', '2017-07-11 18:49:33', '2017-07-11 15:49:33', '', 0, 'http://pahno/?post_type=products&#038;p=20', 0, 'products', '', 0),
(21, 1, '2017-07-11 14:36:40', '2017-07-11 11:36:40', '', 'prod-1', '', 'inherit', 'open', 'closed', '', 'prod-1', '', '', '2017-07-11 14:36:40', '2017-07-11 11:36:40', '', 20, 'http://pahno/wp-content/uploads/2017/07/prod-1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2017-07-11 14:36:41', '2017-07-11 11:36:41', '', 'prod-2', '', 'inherit', 'open', 'closed', '', 'prod-2', '', '', '2017-07-11 14:36:41', '2017-07-11 11:36:41', '', 20, 'http://pahno/wp-content/uploads/2017/07/prod-2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2017-07-11 14:36:42', '2017-07-11 11:36:42', '', 'prod-3', '', 'inherit', 'open', 'closed', '', 'prod-3', '', '', '2017-07-11 14:36:42', '2017-07-11 11:36:42', '', 20, 'http://pahno/wp-content/uploads/2017/07/prod-3.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2017-07-11 14:36:43', '2017-07-11 11:36:43', '', 'prod-4', '', 'inherit', 'open', 'closed', '', 'prod-4', '', '', '2017-07-11 14:36:43', '2017-07-11 11:36:43', '', 20, 'http://pahno/wp-content/uploads/2017/07/prod-4.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2017-07-11 14:38:35', '2017-07-11 11:38:35', 'Diamond Premium Black Pearl Гидрогелевые патчи для кожи вокруг глаз', 'Hydrogel Eye Patch Diamond Premium Black Pearl', 'Diamond Premium Black Pearl Гидрогелевые патчи для кожи вокруг глаз', 'publish', 'closed', 'closed', '', 'hydrogel-eye-patch-diamond-premium-black-pearl', '', '', '2017-07-11 18:49:31', '2017-07-11 15:49:31', '', 0, 'http://pahno/?post_type=products&#038;p=25', 0, 'products', '', 0),
(26, 1, '2017-07-11 14:39:17', '2017-07-11 11:39:17', 'Крем увлажняющий с SPF15, для сухой кожи. Если название короткое, то краткое описание нужно придумать подлиннее, чтобы блок с товаром смотрелся ровно с остальными.', 'DM Bio-Lift', 'Крем увлажняющий с SPF15, для сухой кожи. Если название короткое, то краткое описание нужно придумать подлиннее, чтобы блок с товаром смотрелся ровно с остальными.', 'publish', 'closed', 'closed', '', 'dm-bio-lift', '', '', '2017-07-11 18:49:29', '2017-07-11 15:49:29', '', 0, 'http://pahno/?post_type=products&#038;p=26', 0, 'products', '', 0),
(27, 1, '2017-07-11 14:40:02', '2017-07-11 11:40:02', 'Крем для улучшения кровообращения и коррекции целлюлита. Если название короткое, то краткое описание нужно придумать подлиннее.', 'GERnetic Vasco Artera', 'Крем для улучшения кровообращения и коррекции целлюлита. Если название короткое, то краткое описание нужно придумать подлиннее.', 'publish', 'closed', 'closed', '', 'gernetic-vasco-artera', '', '', '2017-07-11 18:49:25', '2017-07-11 15:49:25', '', 0, 'http://pahno/?post_type=products&#038;p=27', 0, 'products', '', 0),
(30, 1, '2017-07-11 14:44:38', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-07-11 14:44:38', '0000-00-00 00:00:00', '', 0, 'http://pahno/?post_type=acf-field-group&p=30', 0, 'acf-field-group', '', 0),
(35, 1, '2017-07-11 14:47:07', '2017-07-11 11:47:07', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 14:47:07', '2017-07-11 11:47:07', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-07-11 14:47:22', '2017-07-11 11:47:22', '', 'Блог', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-07-11 14:47:34', '2017-07-11 11:47:34', '', 0, 'http://pahno/?page_id=36', 0, 'page', '', 0),
(37, 1, '2017-07-11 14:47:22', '2017-07-11 11:47:22', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2017-07-11 14:47:22', '2017-07-11 11:47:22', '', 36, 'http://pahno/2017/07/11/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-07-11 14:50:08', '2017-07-11 11:50:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"page_type";s:8:"operator";s:2:"==";s:5:"value";s:10:"front_page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Дополнительные поля для главной страницы', '%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%bf%d0%be%d0%bb%d1%8f-%d0%b4%d0%bb%d1%8f-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0', 'publish', 'closed', 'closed', '', 'group_5964bb0f85a02', '', '', '2017-07-11 14:58:17', '2017-07-11 11:58:17', '', 0, 'http://pahno/?post_type=acf-field-group&#038;p=38', 0, 'acf-field-group', '', 0),
(39, 1, '2017-07-11 14:50:08', '2017-07-11 11:50:08', 'a:12:{s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:1:{i:0;s:8:"products";}s:8:"taxonomy";a:0:{}s:7:"filters";a:3:{i:0;s:6:"search";i:1;s:9:"post_type";i:2;s:8:"taxonomy";}s:8:"elements";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:13:"return_format";s:6:"object";s:17:"conditional_logic";i:0;}', 'Популярные товары', 'popular_goods', 'publish', 'closed', 'closed', '', 'field_5964bb23455c9', '', '', '2017-07-11 14:58:17', '2017-07-11 11:58:17', '', 38, 'http://pahno/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
(40, 1, '2017-07-11 14:50:55', '2017-07-11 11:50:55', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 14:50:55', '2017-07-11 11:50:55', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-07-11 14:58:05', '2017-07-11 11:58:05', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 14:58:05', '2017-07-11 11:58:05', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-07-11 14:58:49', '2017-07-11 11:58:49', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 14:58:49', '2017-07-11 11:58:49', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2017-07-11 16:45:55', '2017-07-11 13:45:55', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 16:45:55', '2017-07-11 13:45:55', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-07-11 16:51:26', '2017-07-11 13:51:26', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 16:51:26', '2017-07-11 13:51:26', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-07-11 17:11:54', '2017-07-11 14:11:54', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 17:11:54', '2017-07-11 14:11:54', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-07-11 17:12:12', '2017-07-11 14:12:12', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 17:12:12', '2017-07-11 14:12:12', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-07-11 17:29:23', '2017-07-11 14:29:23', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-07-11 17:29:23', '2017-07-11 14:29:23', '', 2, 'http://pahno/2017/07/11/2-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-07-11 18:42:41', '2017-07-11 15:42:41', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:8:"products";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Дополнительные поля для товаров', '%d0%b4%d0%be%d0%bf%d0%be%d0%bb%d0%bd%d0%b8%d1%82%d0%b5%d0%bb%d1%8c%d0%bd%d1%8b%d0%b5-%d0%bf%d0%be%d0%bb%d1%8f-%d0%b4%d0%bb%d1%8f-%d1%82%d0%be%d0%b2%d0%b0%d1%80%d0%be%d0%b2', 'publish', 'closed', 'closed', '', 'group_5964f197c370d', '', '', '2017-07-11 18:42:43', '2017-07-11 15:42:43', '', 0, 'http://pahno/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2017-07-11 18:42:42', '2017-07-11 15:42:42', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Цена', 'price', 'publish', 'closed', 'closed', '', 'field_5964f1a897d92', '', '', '2017-07-11 18:42:42', '2017-07-11 15:42:42', '', 48, 'http://pahno/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2017-07-11 18:42:42', '2017-07-11 15:42:42', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Старая цена', 'old_price', 'publish', 'closed', 'closed', '', 'field_5964f1c097d93', '', '', '2017-07-11 18:42:42', '2017-07-11 15:42:42', '', 48, 'http://pahno/?post_type=acf-field&p=50', 1, 'acf-field', '', 0),
(51, 1, '2017-07-11 18:42:43', '2017-07-11 15:42:43', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Доза', 'dose', 'publish', 'closed', 'closed', '', 'field_5964f1da97d94', '', '', '2017-07-11 18:42:43', '2017-07-11 15:42:43', '', 48, 'http://pahno/?post_type=acf-field&p=51', 2, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 15, 0),
(16, 15, 0),
(17, 15, 0),
(18, 15, 0),
(19, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'pahno'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"7f8e9c09cb5a4282347e55ee1b7373904d2e536199ac21509a31485a55e2d810";a:4:{s:10:"expiration";i:1500879836;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36";s:5:"login";i:1499670236;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1499773042');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pahno', '$P$BqLE7r1cN1K7ZCvxKJRgsZufUHj5a30', 'pahno', 'romangalchenkov@gmail.com', '', '2017-07-10 07:03:21', '', 0, 'pahno');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
