-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 28 2020 г., 09:49
-- Версия сервера: 5.6.43
-- Версия PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flowers`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-25 08:12:06', '2020-06-25 05:12:06', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://flowers.local', 'yes'),
(2, 'home', 'http://flowers.local', 'yes'),
(3, 'blogname', 'Flowers', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'malayamarisha@yandex.ru', 'yes'),
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
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:22:\"cyr2lat/cyr-to-lat.php\";i:3;s:33:\"duplicate-post/duplicate-post.php\";i:4;s:47:\"show-current-template/show-current-template.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'flowers', 'yes'),
(41, 'stylesheet', 'flowers', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608613922', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1593169927;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1593191527;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1593234727;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593234737;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593234738;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1593753127;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593064978;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(128, '_site_transient_timeout_browser_dd6b7b4ad4631f4c0d7e12a5abb0ce97', '1593666738', 'no'),
(129, '_site_transient_browser_dd6b7b4ad4631f4c0d7e12a5abb0ce97', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"77.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_b3655adab148a1a6c8391bd3893ea554', '1593666738', 'no'),
(131, '_site_transient_php_check_b3655adab148a1a6c8391bd3893ea554', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'flowers', 'yes'),
(149, 'theme_mods_flowers', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:14;s:16:\"background_image\";s:0:\"\";}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(156, 'acf_version', '5.8.12', 'yes'),
(163, 'duplicate_post_copytitle', '1', 'yes'),
(164, 'duplicate_post_copydate', '0', 'yes'),
(165, 'duplicate_post_copystatus', '0', 'yes'),
(166, 'duplicate_post_copyslug', '0', 'yes'),
(167, 'duplicate_post_copyexcerpt', '1', 'yes'),
(168, 'duplicate_post_copycontent', '1', 'yes'),
(169, 'duplicate_post_copythumbnail', '1', 'yes'),
(170, 'duplicate_post_copytemplate', '1', 'yes'),
(171, 'duplicate_post_copyformat', '1', 'yes'),
(172, 'duplicate_post_copyauthor', '0', 'yes'),
(173, 'duplicate_post_copypassword', '0', 'yes'),
(174, 'duplicate_post_copyattachments', '0', 'yes'),
(175, 'duplicate_post_copychildren', '0', 'yes'),
(176, 'duplicate_post_copycomments', '0', 'yes'),
(177, 'duplicate_post_copymenuorder', '1', 'yes'),
(178, 'duplicate_post_taxonomies_blacklist', 'a:0:{}', 'yes'),
(179, 'duplicate_post_blacklist', '', 'yes'),
(180, 'duplicate_post_types_enabled', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'yes'),
(181, 'duplicate_post_show_row', '1', 'yes'),
(182, 'duplicate_post_show_adminbar', '1', 'yes'),
(183, 'duplicate_post_show_submitbox', '1', 'yes'),
(184, 'duplicate_post_show_bulkactions', '1', 'yes'),
(185, 'duplicate_post_show_original_column', '0', 'yes'),
(186, 'duplicate_post_show_original_in_post_states', '0', 'yes'),
(187, 'duplicate_post_show_original_meta_box', '0', 'yes'),
(188, 'duplicate_post_version', '3.2.4', 'yes'),
(189, 'duplicate_post_show_notice', '0', 'no'),
(198, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(213, '_transient_health-check-site-status-result', '{\"good\":8,\"recommended\":8,\"critical\":1}', 'yes'),
(217, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1593164282;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(218, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1593164285;s:7:\"checked\";a:4:{s:7:\"flowers\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(238, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1593175042', 'no'),
(239, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4706;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4181;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2674;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2559;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1964;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1811;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1794;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1486;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1478;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1477;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1453;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1432;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1426;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1304;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1203;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1194;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1129;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1126;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1098;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:999;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:884;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:876;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:876;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:872;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:791;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:779;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:776;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:773;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:766;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:750;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:729;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:717;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:691;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:661;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:658;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:654;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:645;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:630;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:628;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:593;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:585;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:578;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:578;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:576;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:572;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:557;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:550;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:549;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:548;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:539;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:530;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:517;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:511;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:510;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:506;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:504;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:494;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:477;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:468;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:445;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:441;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:433;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:428;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:427;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:408;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:399;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:396;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:392;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:388;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:377;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:376;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:367;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:363;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:360;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:360;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:359;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:354;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:350;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:344;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:342;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:337;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:337;}}', 'no'),
(241, '_site_transient_timeout_theme_roots', '1593166084', 'no'),
(242, '_site_transient_theme_roots', 'a:4:{s:7:\"flowers\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(243, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1593164288;s:7:\"checked\";a:7:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.12\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.9\";s:22:\"cyr2lat/cyr-to-lat.php\";s:5:\"4.5.0\";s:33:\"duplicate-post/duplicate-post.php\";s:5:\"3.2.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.3.4\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.1.9\";s:7:\"updated\";s:19:\"2020-03-08 18:19:01\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.1.9/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"cyr2lat\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.5.0\";s:7:\"updated\";s:19:\"2020-05-19 10:26:38\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/cyr2lat/4.5.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.2.4\";s:7:\"updated\";s:19:\"2019-09-23 09:13:34\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/3.2.4/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2018-06-04 21:57:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.9\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=2279696\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"4.5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.4.5.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2022835\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2022835\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2022835\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2022835\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:5:\"3.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/duplicate-post.3.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=1612753\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=1612753\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=1612986\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.3.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.3.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(244, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.9\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1593164289;s:7:\"version\";s:5:\"5.1.9\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(251, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1593080159:1'),
(4, 7, '_edit_lock', '1593080165:1'),
(5, 9, '_wp_attached_file', '2020/06/logo_1-e1593072551604.png'),
(6, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:33:\"2020/06/logo_1-e1593072551604.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo_1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo_1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 10, '_wp_attached_file', '2020/06/cropped-logo_1.png'),
(8, 10, '_wp_attachment_context', 'custom-logo'),
(9, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:920;s:4:\"file\";s:26:\"2020/06/cropped-logo_1.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo_1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo_1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"cropped-logo_1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 11, '_wp_trash_meta_status', 'publish'),
(11, 11, '_wp_trash_meta_time', '1593072299'),
(12, 9, '_edit_lock', '1593072989:1'),
(13, 9, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:920;s:6:\"height\";i:920;s:4:\"file\";s:10:\"logo_1.png\";}}'),
(14, 9, '_edit_last', '1'),
(15, 12, '_wp_trash_meta_status', 'publish'),
(16, 12, '_wp_trash_meta_time', '1593072685'),
(17, 13, '_wp_trash_meta_status', 'publish'),
(18, 13, '_wp_trash_meta_time', '1593072700'),
(19, 14, '_wp_attached_file', '2020/06/cropped-logo_1-e1593072551604.png'),
(20, 14, '_wp_attachment_context', 'custom-logo'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"file\";s:41:\"2020/06/cropped-logo_1-e1593072551604.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 15, '_wp_trash_meta_status', 'publish'),
(23, 15, '_wp_trash_meta_time', '1593072752'),
(27, 17, '_wp_trash_meta_status', 'publish'),
(28, 17, '_wp_trash_meta_time', '1593072831'),
(29, 18, '_edit_last', '1'),
(30, 18, '_edit_lock', '1593078242:1'),
(31, 5, '_edit_last', '1'),
(32, 5, 'header_bg', '30'),
(33, 5, '_header_bg', 'field_5ef45e2b47ce5'),
(34, 5, 'header1', 'Любитель цветов'),
(35, 5, '_header1', 'field_5ef45e4547ce6'),
(36, 5, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(37, 5, '_header_text', 'field_5ef45e7547ce7'),
(38, 5, 'header_btn1', 'a:3:{s:5:\"title\";s:16:\"Контакты\";s:3:\"url\";s:27:\"http://flowers.local/about/\";s:6:\"target\";s:0:\"\";}'),
(39, 5, '_header_btn1', 'field_5ef45e8e47ce8'),
(40, 23, 'header_bg', '16'),
(41, 23, '_header_bg', 'field_5ef45e2b47ce5'),
(42, 23, 'header1', 'Любитель цветов'),
(43, 23, '_header1', 'field_5ef45e4547ce6'),
(44, 23, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(45, 23, '_header_text', 'field_5ef45e7547ce7'),
(46, 23, 'header_btn1', ''),
(47, 23, '_header_btn1', 'field_5ef45e8e47ce8'),
(48, 24, 'header_bg', '16'),
(49, 24, '_header_bg', 'field_5ef45e2b47ce5'),
(50, 24, 'header1', 'Любитель цветов'),
(51, 24, '_header1', 'field_5ef45e4547ce6'),
(52, 24, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(53, 24, '_header_text', 'field_5ef45e7547ce7'),
(54, 24, 'header_btn1', ''),
(55, 24, '_header_btn1', 'field_5ef45e8e47ce8'),
(56, 25, '_edit_lock', '1593078370:1'),
(57, 27, 'header_bg', '16'),
(58, 27, '_header_bg', 'field_5ef45e2b47ce5'),
(59, 27, 'header1', 'Любитель цветов'),
(60, 27, '_header1', 'field_5ef45e4547ce6'),
(61, 27, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(62, 27, '_header_text', 'field_5ef45e7547ce7'),
(63, 27, 'header_btn1', ''),
(64, 27, '_header_btn1', 'field_5ef45e8e47ce8'),
(65, 28, '_wp_trash_meta_status', 'publish'),
(66, 28, '_wp_trash_meta_time', '1593077017'),
(67, 29, 'header_bg', '16'),
(68, 29, '_header_bg', 'field_5ef45e2b47ce5'),
(69, 29, 'header1', 'Любитель цветов'),
(70, 29, '_header1', 'field_5ef45e4547ce6'),
(71, 29, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(72, 29, '_header_text', 'field_5ef45e7547ce7'),
(73, 29, 'header_btn1', ''),
(74, 29, '_header_btn1', 'field_5ef45e8e47ce8'),
(75, 30, '_wp_attached_file', '2020/06/bgf.jpg'),
(76, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1880;s:6:\"height\";i:1253;s:4:\"file\";s:15:\"2020/06/bgf.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bgf-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"bgf-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"bgf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"bgf-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bgf-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 31, 'header_bg', '30'),
(78, 31, '_header_bg', 'field_5ef45e2b47ce5'),
(79, 31, 'header1', 'Любитель цветов'),
(80, 31, '_header1', 'field_5ef45e4547ce6'),
(81, 31, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(82, 31, '_header_text', 'field_5ef45e7547ce7'),
(83, 31, 'header_btn1', ''),
(84, 31, '_header_btn1', 'field_5ef45e8e47ce8'),
(85, 32, 'header_bg', '30'),
(86, 32, '_header_bg', 'field_5ef45e2b47ce5'),
(87, 32, 'header1', 'Любитель цветов'),
(88, 32, '_header1', 'field_5ef45e4547ce6'),
(89, 32, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(90, 32, '_header_text', 'field_5ef45e7547ce7'),
(91, 32, 'header_btn1', 'a:3:{s:5:\"title\";s:8:\"About As\";s:3:\"url\";s:30:\"http://flowers.local/about-as/\";s:6:\"target\";s:0:\"\";}'),
(92, 32, '_header_btn1', 'field_5ef45e8e47ce8'),
(93, 34, 'header_bg', '30'),
(94, 34, '_header_bg', 'field_5ef45e2b47ce5'),
(95, 34, 'header1', 'Любитель цветов'),
(96, 34, '_header1', 'field_5ef45e4547ce6'),
(97, 34, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(98, 34, '_header_text', 'field_5ef45e7547ce7'),
(99, 34, 'header_btn1', 'a:3:{s:5:\"title\";s:16:\"Контакты\";s:3:\"url\";s:27:\"http://flowers.local/about/\";s:6:\"target\";s:0:\"\";}'),
(100, 34, '_header_btn1', 'field_5ef45e8e47ce8'),
(101, 35, '_menu_item_type', 'post_type'),
(102, 35, '_menu_item_menu_item_parent', '0'),
(103, 35, '_menu_item_object_id', '5'),
(104, 35, '_menu_item_object', 'page'),
(105, 35, '_menu_item_target', ''),
(106, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(107, 35, '_menu_item_xfn', ''),
(108, 35, '_menu_item_url', ''),
(110, 36, '_menu_item_type', 'post_type'),
(111, 36, '_menu_item_menu_item_parent', '0'),
(112, 36, '_menu_item_object_id', '7'),
(113, 36, '_menu_item_object', 'page'),
(114, 36, '_menu_item_target', ''),
(115, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(116, 36, '_menu_item_xfn', ''),
(117, 36, '_menu_item_url', ''),
(119, 37, '_menu_item_type', 'post_type'),
(120, 37, '_menu_item_menu_item_parent', '0'),
(121, 37, '_menu_item_object_id', '25'),
(122, 37, '_menu_item_object', 'page'),
(123, 37, '_menu_item_target', ''),
(124, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(125, 37, '_menu_item_xfn', ''),
(126, 37, '_menu_item_url', ''),
(137, 39, 'header_bg', '30'),
(138, 39, '_header_bg', 'field_5ef45e2b47ce5'),
(139, 39, 'header1', 'Любитель цветов'),
(140, 39, '_header1', 'field_5ef45e4547ce6'),
(141, 39, 'header_text', 'Добро пожаловать на сайт цветоводов.'),
(142, 39, '_header_text', 'field_5ef45e7547ce7'),
(143, 39, 'header_btn1', 'a:3:{s:5:\"title\";s:16:\"Контакты\";s:3:\"url\";s:27:\"http://flowers.local/about/\";s:6:\"target\";s:0:\"\";}'),
(144, 39, '_header_btn1', 'field_5ef45e8e47ce8'),
(145, 2, '_wp_trash_meta_status', 'publish'),
(146, 2, '_wp_trash_meta_time', '1593080195'),
(147, 2, '_wp_desired_post_slug', 'sample-page'),
(148, 7, '_edit_last', '1'),
(149, 42, '_edit_lock', '1593080203:1'),
(150, 43, '_edit_lock', '1593080335:1'),
(151, 45, '_menu_item_type', 'post_type'),
(152, 45, '_menu_item_menu_item_parent', '0'),
(153, 45, '_menu_item_object_id', '43'),
(154, 45, '_menu_item_object', 'page'),
(155, 45, '_menu_item_target', ''),
(156, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 45, '_menu_item_xfn', ''),
(158, 45, '_menu_item_url', ''),
(159, 46, '_edit_lock', '1593155379:1'),
(160, 47, '_edit_last', '1'),
(161, 47, '_edit_lock', '1593159393:1'),
(162, 50, '_edit_lock', '1593167183:1'),
(165, 50, '_edit_last', '1'),
(168, 50, 'section_header', 'Обо мне'),
(169, 50, '_section_header', 'field_5ef59feefab03'),
(170, 50, 'section_img', ''),
(171, 50, '_section_img', 'field_5ef5a006fab04'),
(172, 52, 'section_header', 'Обо мне'),
(173, 52, '_section_header', 'field_5ef59feefab03'),
(174, 52, 'section_img', ''),
(175, 52, '_section_img', 'field_5ef5a006fab04'),
(182, 53, '_edit_lock', '1593158598:1'),
(183, 55, '_menu_item_type', 'post_type'),
(184, 55, '_menu_item_menu_item_parent', '0'),
(185, 55, '_menu_item_object_id', '53'),
(186, 55, '_menu_item_object', 'page'),
(187, 55, '_menu_item_target', ''),
(188, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(189, 55, '_menu_item_xfn', ''),
(190, 55, '_menu_item_url', ''),
(196, 58, '_wp_attached_file', '2020/06/1.png'),
(197, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1157;s:6:\"height\";i:1097;s:4:\"file\";s:13:\"2020/06/1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x284.png\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x971.png\";s:5:\"width\";i:1024;s:6:\"height\";i:971;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x728.png\";s:5:\"width\";i:768;s:6:\"height\";i:728;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(198, 59, '_edit_last', '1'),
(199, 59, '_edit_lock', '1593163817:1'),
(200, 62, '_edit_lock', '1593163982:1'),
(201, 63, '_edit_lock', '1593163995:1'),
(202, 64, '_edit_lock', '1593164002:1'),
(203, 62, '_edit_last', '1'),
(204, 62, 'review_header', ''),
(205, 62, '_review_header', 'field_5ef5bf46eafb8'),
(206, 62, 'review_author', 'Автор 1'),
(207, 62, '_review_author', 'field_5ef5bf5eeafb9'),
(208, 63, '_edit_last', '1'),
(209, 63, 'review_header', ''),
(210, 63, '_review_header', 'field_5ef5bf46eafb8'),
(211, 63, 'review_author', 'Автор 2'),
(212, 63, '_review_author', 'field_5ef5bf5eeafb9'),
(213, 64, '_edit_last', '1'),
(214, 64, 'review_header', ''),
(215, 64, '_review_header', 'field_5ef5bf46eafb8'),
(216, 64, 'review_author', 'Автор 3'),
(217, 64, '_review_author', 'field_5ef5bf5eeafb9'),
(218, 65, '_form', '<div class=\"row\">\n\n<div class=\"col-md-6\">\n[text* your-name class:form-control class:form-group placeholder \"Имя\"]\n</div>\n\n<div class=\"col-md-6\">\n[email* your-email class:form-control class:form-group placeholder \"Email\"]\n</div>\n\n<div class=\"col-md-12\">\n[text  your-message class:form-control class:form-group placeholder \"Текст вопроса\"]\n</div>\n\n<div class=\"col-md-12\">\n[textarea  your-message class:form-control class:form-group placeholder \"Комментарий\"]\n</div>\n\n<div class=\"col-md-2\">\n[submit class:btn \"Отправить\" ]\n</div>\n\n</div>'),
(219, 65, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"Flowers \"[your-subject]\"\";s:6:\"sender\";s:33:\"Flowers <wordpress@flowers.local>\";s:9:\"recipient\";s:23:\"malayamarisha@yandex.ru\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Flowers (http://flowers.local)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(220, 65, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:24:\"Flowers \"[your-subject]\"\";s:6:\"sender\";s:33:\"Flowers <wordpress@flowers.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Flowers (http://flowers.local)\";s:18:\"additional_headers\";s:33:\"Reply-To: malayamarisha@yandex.ru\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(221, 65, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(222, 65, '_additional_settings', ''),
(223, 65, '_locale', 'ru_RU'),
(224, 66, '_edit_lock', '1593165408:1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-25 08:12:06', '2020-06-25 05:12:06', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-06-25 08:12:06', '2020-06-25 05:12:06', '', 0, 'http://flowers.local/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-25 08:12:06', '2020-06-25 05:12:06', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://flowers.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-06-25 13:16:35', '2020-06-25 10:16:35', '', 0, 'http://flowers.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-25 08:12:06', '2020-06-25 05:12:06', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://flowers.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-06-25 08:12:06', '2020-06-25 05:12:06', '', 0, 'http://flowers.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-06-25 08:12:18', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-25 08:12:18', '0000-00-00 00:00:00', '', 0, 'http://flowers.local/?p=4', 0, 'post', '', 0),
(5, 1, '2020-06-25 09:07:37', '2020-06-25 06:07:37', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-06-25 13:15:58', '2020-06-25 10:15:58', '', 0, 'http://flowers.local/?page_id=5', 0, 'page', '', 0),
(6, 1, '2020-06-25 09:07:37', '2020-06-25 06:07:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 09:07:37', '2020-06-25 06:07:37', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-06-25 09:07:56', '2020-06-25 06:07:56', '', 'Пересадка', '', 'publish', 'closed', 'closed', '', 'plant', '', '', '2020-06-25 13:18:27', '2020-06-25 10:18:27', '', 0, 'http://flowers.local/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-06-25 09:07:56', '2020-06-25 06:07:56', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-06-25 09:07:56', '2020-06-25 06:07:56', '', 7, 'http://flowers.local/2020/06/25/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-06-25 11:04:08', '2020-06-25 08:04:08', '', 'logo_1', '', 'inherit', 'open', 'closed', '', 'logo_1', '', '', '2020-06-25 11:09:57', '2020-06-25 08:09:57', '', 0, 'http://flowers.local/wp-content/uploads/2020/06/logo_1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-06-25 11:04:52', '2020-06-25 08:04:52', 'http://flowers.local/wp-content/uploads/2020/06/cropped-logo_1.png', 'cropped-logo_1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_1-png', '', '', '2020-06-25 11:04:52', '2020-06-25 08:04:52', '', 0, 'http://flowers.local/wp-content/uploads/2020/06/cropped-logo_1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-06-25 11:04:59', '2020-06-25 08:04:59', '{\n    \"flowers::custom_logo\": {\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 08:04:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1efc052a-5e81-482d-a05f-19177bb9f771', '', '', '2020-06-25 11:04:59', '2020-06-25 08:04:59', '', 0, 'http://flowers.local/2020/06/25/1efc052a-5e81-482d-a05f-19177bb9f771/', 0, 'customize_changeset', '', 0),
(12, 1, '2020-06-25 11:11:25', '2020-06-25 08:11:25', '{\n    \"flowers::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 08:11:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e541f02-a3d7-4c22-aeb4-d223c0fab30e', '', '', '2020-06-25 11:11:25', '2020-06-25 08:11:25', '', 0, 'http://flowers.local/2020/06/25/0e541f02-a3d7-4c22-aeb4-d223c0fab30e/', 0, 'customize_changeset', '', 0),
(13, 1, '2020-06-25 11:11:39', '2020-06-25 08:11:39', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 08:11:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5faa8a21-8acb-4b35-90da-7016e012887b', '', '', '2020-06-25 11:11:39', '2020-06-25 08:11:39', '', 0, 'http://flowers.local/2020/06/25/5faa8a21-8acb-4b35-90da-7016e012887b/', 0, 'customize_changeset', '', 0),
(14, 1, '2020-06-25 11:12:29', '2020-06-25 08:12:29', 'http://flowers.local/wp-content/uploads/2020/06/cropped-logo_1-e1593072551604.png', 'cropped-logo_1-e1593072551604.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo_1-e1593072551604-png', '', '', '2020-06-25 11:12:29', '2020-06-25 08:12:29', '', 0, 'http://flowers.local/wp-content/uploads/2020/06/cropped-logo_1-e1593072551604.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-06-25 11:12:32', '2020-06-25 08:12:32', '{\n    \"flowers::custom_logo\": {\n        \"value\": 14,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 08:12:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '32405139-3097-4739-8153-109293212bb7', '', '', '2020-06-25 11:12:32', '2020-06-25 08:12:32', '', 0, 'http://flowers.local/2020/06/25/32405139-3097-4739-8153-109293212bb7/', 0, 'customize_changeset', '', 0),
(17, 1, '2020-06-25 11:13:51', '2020-06-25 08:13:51', '{\n    \"flowers::background_image\": {\n        \"value\": \"http://flowers.local/wp-content/uploads/2020/06/bgf.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 08:13:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '76df25b8-5535-47f4-b6fd-59d191aa10ee', '', '', '2020-06-25 11:13:51', '2020-06-25 08:13:51', '', 0, 'http://flowers.local/2020/06/25/76df25b8-5535-47f4-b6fd-59d191aa10ee/', 0, 'customize_changeset', '', 0),
(18, 1, '2020-06-25 11:22:00', '2020-06-25 08:22:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Шапка главной страницы', 'shapka-glavnoj-straniczy', 'publish', 'closed', 'closed', '', 'group_5ef45e057ec31', '', '', '2020-06-25 12:44:04', '2020-06-25 09:44:04', '', 0, 'http://flowers.local/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2020-06-25 11:22:01', '2020-06-25 08:22:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фон шапки', 'header_bg', 'publish', 'closed', 'closed', '', 'field_5ef45e2b47ce5', '', '', '2020-06-25 12:33:50', '2020-06-25 09:33:50', '', 18, 'http://flowers.local/?post_type=acf-field&#038;p=19', 0, 'acf-field', '', 0),
(20, 1, '2020-06-25 11:22:01', '2020-06-25 08:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок 1', 'header1', 'publish', 'closed', 'closed', '', 'field_5ef45e4547ce6', '', '', '2020-06-25 11:22:01', '2020-06-25 08:22:01', '', 18, 'http://flowers.local/?post_type=acf-field&p=20', 1, 'acf-field', '', 0),
(21, 1, '2020-06-25 11:22:01', '2020-06-25 08:22:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:11:\"description\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'header_text', 'publish', 'closed', 'closed', '', 'field_5ef45e7547ce7', '', '', '2020-06-25 12:41:24', '2020-06-25 09:41:24', '', 18, 'http://flowers.local/?post_type=acf-field&#038;p=21', 2, 'acf-field', '', 0),
(22, 1, '2020-06-25 11:22:01', '2020-06-25 08:22:01', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Кнопка 1', 'header_btn1', 'publish', 'closed', 'closed', '', 'field_5ef45e8e47ce8', '', '', '2020-06-25 11:22:01', '2020-06-25 08:22:01', '', 18, 'http://flowers.local/?post_type=acf-field&p=22', 3, 'acf-field', '', 0),
(23, 1, '2020-06-25 11:23:59', '2020-06-25 08:23:59', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 11:23:59', '2020-06-25 08:23:59', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2020-06-25 11:27:19', '2020-06-25 08:27:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 11:27:19', '2020-06-25 08:27:19', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2020-06-25 11:37:28', '2020-06-25 08:37:28', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-06-25 12:48:22', '2020-06-25 09:48:22', '', 0, 'http://flowers.local/?page_id=25', 0, 'page', '', 0),
(26, 1, '2020-06-25 11:37:28', '2020-06-25 08:37:28', '', 'About As', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-06-25 11:37:28', '2020-06-25 08:37:28', '', 25, 'http://flowers.local/2020/06/25/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2020-06-25 12:23:14', '2020-06-25 09:23:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 12:23:14', '2020-06-25 09:23:14', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-06-25 12:23:36', '2020-06-25 09:23:36', '{\n    \"flowers::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-06-25 09:23:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2d3dfe0c-e052-4e7a-aa53-345b99e29452', '', '', '2020-06-25 12:23:36', '2020-06-25 09:23:36', '', 0, 'http://flowers.local/2020/06/25/2d3dfe0c-e052-4e7a-aa53-345b99e29452/', 0, 'customize_changeset', '', 0),
(29, 1, '2020-06-25 12:28:43', '2020-06-25 09:28:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 12:28:43', '2020-06-25 09:28:43', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-06-25 12:30:04', '2020-06-25 09:30:04', '', 'bgf', '', 'inherit', 'open', 'closed', '', 'bgf', '', '', '2020-06-25 12:30:04', '2020-06-25 09:30:04', '', 5, 'http://flowers.local/wp-content/uploads/2020/06/bgf.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2020-06-25 12:30:12', '2020-06-25 09:30:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 12:30:12', '2020-06-25 09:30:12', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-06-25 12:45:21', '2020-06-25 09:45:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 12:45:21', '2020-06-25 09:45:21', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-06-25 12:46:42', '2020-06-25 09:46:42', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2020-06-25 12:46:42', '2020-06-25 09:46:42', '', 25, 'http://flowers.local/2020/06/25/25-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-06-25 12:48:58', '2020-06-25 09:48:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 12:48:58', '2020-06-25 09:48:58', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-06-25 13:08:00', '2020-06-25 10:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-06-26 11:05:56', '2020-06-26 08:05:56', '', 0, 'http://flowers.local/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2020-06-25 13:08:00', '2020-06-25 10:08:00', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-06-26 11:05:56', '2020-06-26 08:05:56', '', 0, 'http://flowers.local/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2020-06-25 13:08:01', '2020-06-25 10:08:01', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-06-26 11:05:56', '2020-06-26 08:05:56', '', 0, 'http://flowers.local/?p=37', 5, 'nav_menu_item', '', 0),
(39, 1, '2020-06-25 13:15:57', '2020-06-25 10:15:57', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-25 13:15:57', '2020-06-25 10:15:57', '', 5, 'http://flowers.local/2020/06/25/5-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-06-25 13:16:35', '2020-06-25 10:16:35', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"http://flowers.local/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-25 13:16:35', '2020-06-25 10:16:35', '', 2, 'http://flowers.local/2020/06/25/2-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-25 13:18:27', '2020-06-25 10:18:27', '', 'Пересадка', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-06-25 13:18:27', '2020-06-25 10:18:27', '', 7, 'http://flowers.local/2020/06/25/7-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-06-25 13:18:32', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-06-25 13:18:32', '0000-00-00 00:00:00', '', 0, 'http://flowers.local/?page_id=42', 0, 'page', '', 0),
(43, 1, '2020-06-25 13:19:31', '2020-06-25 10:19:31', '', 'Комнатные растения', '', 'publish', 'closed', 'closed', '', 'komnatnye-rasteniya', '', '', '2020-06-25 13:19:31', '2020-06-25 10:19:31', '', 0, 'http://flowers.local/?page_id=43', 0, 'page', '', 0),
(44, 1, '2020-06-25 13:19:31', '2020-06-25 10:19:31', '', 'Комнатные растения', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-06-25 13:19:31', '2020-06-25 10:19:31', '', 43, 'http://flowers.local/2020/06/25/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-06-25 13:21:55', '2020-06-25 10:21:55', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2020-06-26 11:05:56', '2020-06-26 08:05:56', '', 0, 'http://flowers.local/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2020-06-26 10:11:58', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-06-26 10:11:58', '0000-00-00 00:00:00', '', 0, 'http://flowers.local/?p=46', 0, 'post', '', 0),
(47, 1, '2020-06-26 10:13:45', '2020-06-26 07:13:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Категории', 'kategorii', 'publish', 'closed', 'closed', '', 'group_5ef59fc92abd3', '', '', '2020-06-26 11:17:12', '2020-06-26 08:17:12', '', 0, 'http://flowers.local/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-06-26 10:13:45', '2020-06-26 07:13:45', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'section_header', 'publish', 'closed', 'closed', '', 'field_5ef59feefab03', '', '', '2020-06-26 10:13:45', '2020-06-26 07:13:45', '', 47, 'http://flowers.local/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2020-06-26 10:13:45', '2020-06-26 07:13:45', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Фоновое изображение', 'section_img', 'publish', 'closed', 'closed', '', 'field_5ef5a006fab04', '', '', '2020-06-26 11:17:12', '2020-06-26 08:17:12', '', 47, 'http://flowers.local/?post_type=acf-field&#038;p=49', 1, 'acf-field', '', 0),
(50, 1, '2020-06-26 10:14:36', '2020-06-26 07:14:36', '<!-- wp:paragraph -->\n<p>Меня зовут Марина, являюсь любителем комнатных цветов с малых лет. Любовь к цветам привила моя любимая бабушка.Ещё в далеком детстве «втыкала» листики всевозможных растений в грунт и наблюдала за развитием будущих растений. Интерес плавно перерос в хобби.</p>\n<!-- /wp:paragraph -->', 'Обо мне', '', 'publish', 'open', 'open', '', 'obo-mne', '', '', '2020-06-26 13:27:57', '2020-06-26 10:27:57', '', 0, 'http://flowers.local/?p=50', 0, 'post', '', 0),
(51, 1, '2020-06-26 10:14:36', '2020-06-26 07:14:36', '<!-- wp:paragraph -->\n<p>Меня зовут Марина, являюсь любителем цветов с малых лет.Любовь к цветам привила моя любимая бабушка.Ещё в детском возрасте «втыкала» листики всевозможных растений в грунт и наблюдала за развитием будущих растений, получалось довольно-таки не плохо.Интерес плавно перерос в хобби.</p>\n<!-- /wp:paragraph -->', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-06-26 10:14:36', '2020-06-26 07:14:36', '', 50, 'http://flowers.local/2020/06/26/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-06-26 10:14:38', '2020-06-26 07:14:38', '<!-- wp:paragraph -->\n<p>Меня зовут Марина, являюсь любителем цветов с малых лет.Любовь к цветам привила моя любимая бабушка.Ещё в детском возрасте «втыкала» листики всевозможных растений в грунт и наблюдала за развитием будущих растений, получалось довольно-таки не плохо.Интерес плавно перерос в хобби.</p>\n<!-- /wp:paragraph -->', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-06-26 10:14:38', '2020-06-26 07:14:38', '', 50, 'http://flowers.local/2020/06/26/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-06-26 11:05:41', '2020-06-26 08:05:41', '', 'Огород на подоконнике', '', 'publish', 'closed', 'closed', '', 'ogorod-na-podokonnike', '', '', '2020-06-26 11:05:41', '2020-06-26 08:05:41', '', 0, 'http://flowers.local/?page_id=53', 0, 'page', '', 0),
(54, 1, '2020-06-26 11:05:41', '2020-06-26 08:05:41', '', 'Огород на подоконнике', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2020-06-26 11:05:41', '2020-06-26 08:05:41', '', 53, 'http://flowers.local/2020/06/26/53-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-06-26 11:05:56', '2020-06-26 08:05:56', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2020-06-26 11:05:56', '2020-06-26 08:05:56', '', 0, 'http://flowers.local/?p=55', 3, 'nav_menu_item', '', 0),
(56, 1, '2020-06-26 11:07:43', '2020-06-26 08:07:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Видео', 'section_video', 'publish', 'closed', 'closed', '', 'field_5ef5ac9b5b908', '', '', '2020-06-26 11:07:43', '2020-06-26 08:07:43', '', 47, 'http://flowers.local/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(58, 1, '2020-06-26 11:22:33', '2020-06-26 08:22:33', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-06-26 11:22:33', '2020-06-26 08:22:33', '', 0, 'http://flowers.local/wp-content/uploads/2020/06/1.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-06-26 12:27:02', '2020-06-26 09:27:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"reviews\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для отзывов', 'polya-dlya-otzyvov', 'publish', 'closed', 'closed', '', 'group_5ef5bf3b88a5b', '', '', '2020-06-26 12:32:37', '2020-06-26 09:32:37', '', 0, 'http://flowers.local/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2020-06-26 12:27:02', '2020-06-26 09:27:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'review_header', 'publish', 'closed', 'closed', '', 'field_5ef5bf46eafb8', '', '', '2020-06-26 12:27:02', '2020-06-26 09:27:02', '', 59, 'http://flowers.local/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2020-06-26 12:27:02', '2020-06-26 09:27:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Автор', 'review_author', 'publish', 'closed', 'closed', '', 'field_5ef5bf5eeafb9', '', '', '2020-06-26 12:27:02', '2020-06-26 09:27:02', '', 59, 'http://flowers.local/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 1, '2020-06-26 12:27:52', '2020-06-26 09:27:52', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integerposuere erat a ante.</p>\n<!-- /wp:paragraph -->', 'Client 1', '', 'publish', 'closed', 'closed', '', 'client-1', '', '', '2020-06-26 12:33:01', '2020-06-26 09:33:01', '', 0, 'http://flowers.local/?post_type=reviews&#038;p=62', 0, 'reviews', '', 0),
(63, 1, '2020-06-26 12:28:09', '2020-06-26 09:28:09', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integerposuere erat a ante.</p>\n<!-- /wp:paragraph -->', 'Client 2', '', 'publish', 'closed', 'closed', '', 'client-2', '', '', '2020-06-26 12:33:14', '2020-06-26 09:33:14', '', 0, 'http://flowers.local/?post_type=reviews&#038;p=63', 0, 'reviews', '', 0),
(64, 1, '2020-06-26 12:28:30', '2020-06-26 09:28:30', '<!-- wp:paragraph -->\n<p>33333333333Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integerposuere erat a ante</p>\n<!-- /wp:paragraph -->', 'Client 3', '', 'publish', 'closed', 'closed', '', 'client-3', '', '', '2020-06-26 12:33:26', '2020-06-26 09:33:26', '', 0, 'http://flowers.local/?post_type=reviews&#038;p=64', 0, 'reviews', '', 0),
(65, 1, '2020-06-26 12:38:09', '2020-06-26 09:38:09', '<div class=\"row\">\r\n\r\n<div class=\"col-md-6\">\r\n[text* your-name class:form-control class:form-group placeholder \"Имя\"]\r\n</div>\r\n\r\n<div class=\"col-md-6\">\r\n[email* your-email class:form-control class:form-group placeholder \"Email\"]\r\n</div>\r\n\r\n<div class=\"col-md-12\">\r\n[text  your-message class:form-control class:form-group placeholder \"Текст вопроса\"]\r\n</div>\r\n\r\n<div class=\"col-md-12\">\r\n[textarea  your-message class:form-control class:form-group placeholder \"Комментарий\"]\r\n</div>\r\n\r\n<div class=\"col-md-2\">\r\n[submit class:btn \"Отправить\" ]\r\n</div>\r\n\r\n</div>\n1\nFlowers \"[your-subject]\"\nFlowers <wordpress@flowers.local>\nmalayamarisha@yandex.ru\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Flowers (http://flowers.local)\nReply-To: [your-email]\n\n\n\n\nFlowers \"[your-subject]\"\nFlowers <wordpress@flowers.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Flowers (http://flowers.local)\nReply-To: malayamarisha@yandex.ru\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Есть вопросы?', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-06-26 13:00:50', '2020-06-26 10:00:50', '', 0, 'http://flowers.local/?post_type=wpcf7_contact_form&#038;p=65', 0, 'wpcf7_contact_form', '', 0),
(66, 1, '2020-06-26 12:40:32', '2020-06-26 09:40:32', '<!-- wp:paragraph {\"className\":\"text-center\"} -->\n<p class=\"text-center\">С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"65\" title=\"Есть вопросы?\"]\n<!-- /wp:shortcode -->', 'Есть вопросы?', '', 'publish', 'closed', 'closed', '', 'est-voprosy', '', '', '2020-06-26 12:56:22', '2020-06-26 09:56:22', '', 0, 'http://flowers.local/?page_id=66', 0, 'page', '', 0),
(67, 1, '2020-06-26 12:40:32', '2020-06-26 09:40:32', '<!-- wp:paragraph -->\n<p>С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>\n<!-- /wp:paragraph -->', 'Есть вопросы?', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-06-26 12:40:32', '2020-06-26 09:40:32', '', 66, 'http://flowers.local/2020/06/26/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-06-26 12:52:22', '2020-06-26 09:52:22', '<!-- wp:paragraph -->\n<p>С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"65\" title=\"Есть вопросы?\"]\n<!-- /wp:shortcode -->', 'Есть вопросы?', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-06-26 12:52:22', '2020-06-26 09:52:22', '', 66, 'http://flowers.local/2020/06/26/66-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-06-26 12:56:22', '2020-06-26 09:56:22', '<!-- wp:paragraph {\"className\":\"text-center\"} -->\n<p class=\"text-center\">С радостью отвечу на все вопросы, связанные с комнатными растениями?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:shortcode -->\n[contact-form-7 id=\"65\" title=\"Есть вопросы?\"]\n<!-- /wp:shortcode -->', 'Есть вопросы?', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2020-06-26 12:56:22', '2020-06-26 09:56:22', '', 66, 'http://flowers.local/2020/06/26/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-06-26 13:27:57', '2020-06-26 10:27:57', '<!-- wp:paragraph -->\n<p>Меня зовут Марина, являюсь любителем комнатных цветов с малых лет. Любовь к цветам привила моя любимая бабушка.Ещё в далеком детстве «втыкала» листики всевозможных растений в грунт и наблюдала за развитием будущих растений. Интерес плавно перерос в хобби.</p>\n<!-- /wp:paragraph -->', 'Обо мне', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2020-06-26 13:27:57', '2020-06-26 10:27:57', '', 50, 'http://flowers.local/2020/06/26/50-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 4, 'section_header', ''),
(2, 4, '_section_header', 'field_5ef59feefab03'),
(3, 4, 'section_img', '58'),
(4, 4, '_section_img', 'field_5ef5a006fab04'),
(5, 4, 'section_video', ''),
(6, 4, '_section_video', 'field_5ef5ac9b5b908'),
(7, 3, 'section_header', ''),
(8, 3, '_section_header', 'field_5ef59feefab03'),
(9, 3, 'section_img', ''),
(10, 3, '_section_img', 'field_5ef5a006fab04'),
(11, 3, 'section_video', ''),
(12, 3, '_section_video', 'field_5ef5ac9b5b908'),
(13, 5, 'section_header', 'Немного о коллекции'),
(14, 5, '_section_header', 'field_5ef59feefab03'),
(15, 5, 'section_img', ''),
(16, 5, '_section_img', 'field_5ef5a006fab04'),
(17, 5, 'section_video', 'https://www.youtube.com/watch?v=wTITvrsfk84'),
(18, 5, '_section_video', 'field_5ef5ac9b5b908');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'Обо мне', 'about', 0),
(4, 'Навыки', 'skills', 0),
(5, 'О коллекции', 'collection', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(45, 2, 0),
(50, 3, 0),
(55, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Меня зовут Марина, являюсь любителем комнатных растений с малых лет. Любовь к цветам привила моя любимая бабушка.Ещё в беззаботном детстве «втыкала» отростки всевозможных растений в горшки и наблюдала за развитием будущих растений. Интерес плавно перерос в хобби.', 0, 1),
(4, 4, 'category', 'Данные навыки были приобретены в течение всей жизни ухода за растениями. С удовольствием поделюсь с Вами опытом, наработками как ухаживать за растениями и не залюбить их.', 0, 0),
(5, 5, 'category', 'В домашней коллекции присутствуют разнообразные виды комнатных растений. За каждым растением необходим особый уход и забота. В конечном итоге растюхи радуют своим необыкновенным цветением и красками', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"a6e82f0217670196f0c8d550daba68ebdcbd5ca02d63f4f2576698f1208323a8\";a:4:{s:10:\"expiration\";i:1593234736;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:77.0) Gecko/20100101 Firefox/77.0\";s:5:\"login\";i:1593061936;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1593072523'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'closedpostboxes_attachment', 'a:0:{}'),
(25, 1, 'metaboxhidden_attachment', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BrXSvKt2IDrSDqR3ExKQbH5BeA31U90', 'admin', 'malayamarisha@yandex.ru', 'http://flowers.local', '2020-06-25 05:12:05', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
