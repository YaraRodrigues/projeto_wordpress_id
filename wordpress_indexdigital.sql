-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Fev-2021 às 17:55
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wordpress_indexdigital`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_commentmeta`
--

CREATE TABLE `index_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_comments`
--

CREATE TABLE `index_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_comments`
--

INSERT INTO `index_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-02-13 20:29:38', '2021-02-13 23:29:38', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 22, 'yara.rodrigues', 'yara.rsilva5@gmail.com', 'http://localhost/projeto_wordpress_id/wordpress', '::1', '2021-02-14 12:25:55', '2021-02-14 15:25:55', 'Relógio muito bonito.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'comment', 0, 1),
(3, 22, 'yara.rodrigues', 'yara.rsilva5@gmail.com', 'http://localhost/projeto_wordpress_id/wordpress', '::1', '2021-02-14 14:00:38', '2021-02-14 17:00:38', 'Obrigada.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'comment', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_links`
--

CREATE TABLE `index_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_options`
--

CREATE TABLE `index_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_options`
--

INSERT INTO `index_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projeto_wordpress_id/wordpress', 'yes'),
(2, 'home', 'http://localhost/projeto_wordpress_id/wordpress', 'yes'),
(3, 'blogname', 'Relógios', 'yes'),
(4, 'blogdescription', 'Site de vendas de relógios', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yara.rsilva5@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:97:\"C:\\xampp7\\htdocs\\projeto_wordpress_id\\wordpress/wp-content/themes/indexdigital/css/main-style.css\";i:1;s:88:\"C:\\xampp7\\htdocs\\projeto_wordpress_id\\wordpress/wp-content/themes/indexdigital/style.css\";i:3;s:89:\"C:\\xampp7\\htdocs\\projeto_wordpress_id\\wordpress/wp-content/themes/indexdigital/single.php\";i:4;s:88:\"C:\\xampp7\\htdocs\\projeto_wordpress_id\\wordpress/wp-content/themes/indexdigital/index.php\";i:5;s:89:\"C:\\xampp7\\htdocs\\projeto_wordpress_id\\wordpress/wp-content/themes/indexdigital/header.php\";}', 'no'),
(40, 'template', 'indexdigital', 'yes'),
(41, 'stylesheet', 'indexdigital', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1628810922', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'index_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'pt_BR', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:7:{i:1613361152;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1613388628;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1613431822;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613431857;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613431864;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1613950227;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1613262146;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(131, '_site_transient_timeout_browser_54855be98a049915c6fe552dcf945444', '1613863858', 'no'),
(132, '_site_transient_browser_54855be98a049915c6fe552dcf945444', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"88.0.4324.150\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(133, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1613863859', 'no'),
(134, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(136, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1613378399', 'no'),
(137, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:55:\"Watch Party + Discussion group: Intro to Block Patterns\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/276244371/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-02-18 20:00:00\";s:8:\"end_date\";s:19:\"2021-02-18 21:00:00\";s:20:\"start_unix_timestamp\";i:1613707200;s:18:\"end_unix_timestamp\";i:1613710800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Prague\";s:3:\"url\";s:33:\"https://prague.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-02-27 10:00:00\";s:8:\"end_date\";s:19:\"2021-02-27 10:00:00\";s:20:\"start_unix_timestamp\";i:1614416400;s:18:\"end_unix_timestamp\";i:1614416400;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"CZ\";s:8:\"latitude\";d:50.0755381;s:9:\"longitude\";d:14.4378005;}}}}', 'no'),
(138, 'can_compress_scripts', '1', 'no'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(156, 'current_theme', 'Tema Index Digital', 'yes'),
(157, 'theme_mods_indexdigital', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:30;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1613315936;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(161, 'new_admin_email', 'yara.rsilva5@gmail.com', 'yes'),
(166, 'category_children', 'a:0:{}', 'yes'),
(184, 'core_updater.lock', '1613272887', 'no'),
(213, 'theme_mods_tutsup-basico', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1613316327;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}}}}', 'yes'),
(214, 'tutsup_opcoes_tema', 'a:2:{s:6:\"rodape\";s:15:\"teste de rodape\";s:5:\"fundo\";s:7:\"#c9c7cc\";}', 'yes'),
(232, '_site_transient_timeout_theme_roots', '1613359824', 'no'),
(233, '_site_transient_theme_roots', 'a:1:{s:12:\"indexdigital\";s:7:\"/themes\";}', 'no'),
(234, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":8,\"critical\":0}', 'yes'),
(236, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.6.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1613358061;s:15:\"version_checked\";s:5:\"5.6.1\";s:12:\"translations\";a:0:{}}', 'no'),
(237, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613358062;s:7:\"checked\";a:1:{s:12:\"indexdigital\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(238, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1613358063;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_postmeta`
--

CREATE TABLE `index_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_postmeta`
--

INSERT INTO `index_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1613263795:1'),
(4, 6, '_edit_lock', '1613264663:1'),
(5, 7, '_wp_attached_file', '2021/02/Kit-2-Relogios-Masculinos-259.png'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:562;s:6:\"height\";i:561;s:4:\"file\";s:41:\"2021/02/Kit-2-Relogios-Masculinos-259.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"Kit-2-Relogios-Masculinos-259-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"Kit-2-Relogios-Masculinos-259-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 9, '_edit_lock', '1613265158:1'),
(10, 10, '_wp_attached_file', '2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60.png'),
(11, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:493;s:6:\"height\";i:494;s:4:\"file\";s:66:\"2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:66:\"Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:66:\"Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 12, '_edit_lock', '1613264498:1'),
(15, 13, '_wp_attached_file', '2021/02/Relogio-Eletronico-Smartwatch-206.png'),
(16, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:597;s:6:\"height\";i:597;s:4:\"file\";s:45:\"2021/02/Relogio-Eletronico-Smartwatch-206.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"Relogio-Eletronico-Smartwatch-206-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"Relogio-Eletronico-Smartwatch-206-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 6, '_edit_last', '1'),
(22, 15, '_edit_lock', '1613264633:1'),
(23, 16, '_wp_attached_file', '2021/02/Relogio-Euro-Feminino-Multifuncao-340.png'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:578;s:6:\"height\";i:575;s:4:\"file\";s:49:\"2021/02/Relogio-Euro-Feminino-Multifuncao-340.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"Relogio-Euro-Feminino-Multifuncao-340-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"Relogio-Euro-Feminino-Multifuncao-340-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 18, '_edit_lock', '1613264728:1'),
(28, 19, '_wp_attached_file', '2021/02/Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450.png'),
(29, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:641;s:6:\"height\";i:617;s:4:\"file\";s:61:\"2021/02/Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:61:\"Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450-300x289.png\";s:5:\"width\";i:300;s:6:\"height\";i:289;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:61:\"Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 21, '_edit_lock', '1613265117:1'),
(33, 22, '_edit_lock', '1613265054:1'),
(34, 23, '_wp_attached_file', '2021/02/Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850.png'),
(35, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:659;s:6:\"height\";i:624;s:4:\"file\";s:60:\"2021/02/Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850-300x284.png\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 25, '_wp_attached_file', '2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png'),
(39, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:493;s:6:\"height\";i:494;s:4:\"file\";s:68:\"2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:68:\"Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:68:\"Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 1, '_edit_last', '1'),
(45, 1, '_edit_lock', '1613327620:1'),
(46, 29, '_wp_trash_meta_status', 'publish'),
(47, 29, '_wp_trash_meta_time', '1613272843'),
(48, 32, '_wp_trash_meta_status', 'publish'),
(49, 32, '_wp_trash_meta_time', '1613273370'),
(52, 2, '_edit_last', '1'),
(53, 2, '_edit_lock', '1613335209:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_posts`
--

CREATE TABLE `index_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_posts`
--

INSERT INTO `index_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-02-13 20:29:38', '2021-02-13 23:29:38', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'draft', 'open', 'open', '', 'ola-mundo', '', '', '2021-02-14 15:33:40', '2021-02-14 18:33:40', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-02-13 20:29:38', '2021-02-13 23:29:38', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/projeto_wordpress_id/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'draft', 'closed', 'closed', '', 'pagina-exemplo', '', '', '2021-02-14 17:40:09', '2021-02-14 20:40:09', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-02-13 20:29:38', '2021-02-13 23:29:38', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/projeto_wordpress_id/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2021-02-13 20:29:38', '2021-02-13 23:29:38', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-02-13 20:31:02', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-13 20:31:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-02-13 21:52:08', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-13 21:52:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2021-02-13 21:56:20', '2021-02-14 00:56:20', '<!-- wp:image {\"align\":\"left\",\"id\":7,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Kit-2-Relogios-Masculinos-259.png\" alt=\"\" class=\"wp-image-7\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Kit 2 Relógios Masculinos</strong><br><em>R$ 259,99</em></p>\n<!-- /wp:paragraph -->', 'Kit 2 Relógios Masculinos', '', 'publish', 'open', 'open', '', 'kit-2-relogios-masculinos', '', '', '2021-02-13 22:04:22', '2021-02-14 01:04:22', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2021-02-13 21:54:54', '2021-02-14 00:54:54', '', 'Kit-2-Relogios-Masculinos-259', '', 'inherit', 'open', 'closed', '', 'kit-2-relogios-masculinos-259', '', '', '2021-02-13 21:54:54', '2021-02-14 00:54:54', '', 6, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Kit-2-Relogios-Masculinos-259.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2021-02-13 21:56:20', '2021-02-14 00:56:20', '<!-- wp:image {\"align\":\"left\",\"id\":7,\"width\":335,\"height\":335,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Kit-2-Relogios-Masculinos-259.png\" alt=\"\" class=\"wp-image-7\" width=\"335\" height=\"335\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Kit 2 Relógios Masculinos</strong><br><em>R$ 259,99</em></p>\n<!-- /wp:paragraph -->', 'Kit 2 Relógios Masculinos', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-02-13 21:56:20', '2021-02-14 00:56:20', '', 6, 'http://localhost/projeto_wordpress_id/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2021-02-13 21:57:53', '2021-02-14 00:57:53', '<!-- wp:image {\"align\":\"left\",\"id\":25,\"width\":264,\"height\":264,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png\" alt=\"\" class=\"wp-image-25\" width=\"264\" height=\"264\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Digital Touro boots - Pulseira Silicone - Preta</strong><br><em>R$ 100,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Digital Touro boots', '', 'publish', 'open', 'open', '', 'relogio-digital-touro-boots', '', '', '2021-02-13 22:14:59', '2021-02-14 01:14:59', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=9', 0, 'post', '', 0),
(10, 1, '2021-02-13 21:57:11', '2021-02-14 00:57:11', '', 'Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60', '', 'inherit', 'open', 'closed', '', 'relogio-digital-touro-boots-pulseira-silicone-preta-60', '', '', '2021-02-13 21:57:11', '2021-02-14 00:57:11', '', 9, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-02-13 21:57:53', '2021-02-14 00:57:53', '<!-- wp:image {\"align\":\"left\",\"id\":10,\"width\":-177,\"height\":-178,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60.png\" alt=\"\" class=\"wp-image-10\" width=\"-177\" height=\"-178\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Digital Touro boots - Pulseira Silicone - Preta</strong><br><em>R$ 100,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Digital Touro boots', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-02-13 21:57:53', '2021-02-14 00:57:53', '', 9, 'http://localhost/projeto_wordpress_id/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-02-13 21:59:59', '2021-02-14 00:59:59', '<!-- wp:image {\"align\":\"left\",\"id\":13,\"width\":261,\"height\":261,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Eletronico-Smartwatch-206.png\" alt=\"\" class=\"wp-image-13\" width=\"261\" height=\"261\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Eletrônico Smartwatch </strong><br><em>R$ 249,99</em></p>\n<!-- /wp:paragraph -->', 'Relógio Eletrônico Smartwatch', '', 'publish', 'open', 'open', '', 'relogio-eletronico-smartwatch', '', '', '2021-02-13 21:59:59', '2021-02-14 00:59:59', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2021-02-13 21:59:00', '2021-02-14 00:59:00', '', 'Relogio-Eletronico-Smartwatch-206', '', 'inherit', 'open', 'closed', '', 'relogio-eletronico-smartwatch-206', '', '', '2021-02-13 21:59:00', '2021-02-14 00:59:00', '', 12, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Eletronico-Smartwatch-206.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2021-02-13 21:59:59', '2021-02-14 00:59:59', '<!-- wp:image {\"align\":\"left\",\"id\":13,\"width\":261,\"height\":261,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Eletronico-Smartwatch-206.png\" alt=\"\" class=\"wp-image-13\" width=\"261\" height=\"261\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Eletrônico Smartwatch </strong><br><em>R$ 249,99</em></p>\n<!-- /wp:paragraph -->', 'Relógio Eletrônico Smartwatch', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2021-02-13 21:59:59', '2021-02-14 00:59:59', '', 12, 'http://localhost/projeto_wordpress_id/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-02-13 22:06:06', '2021-02-14 01:06:06', '<!-- wp:image {\"align\":\"left\",\"id\":16,\"width\":258,\"height\":257,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Euro-Feminino-Multifuncao-340.png\" alt=\"\" class=\"wp-image-16\" width=\"258\" height=\"257\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Euro Feminino Multifunção</strong><br><em>R$ 340,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Euro Feminino Multifunção', '', 'publish', 'open', 'open', '', 'relogio-euro-feminino-multifuncao', '', '', '2021-02-13 22:06:06', '2021-02-14 01:06:06', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=15', 0, 'post', '', 0),
(16, 1, '2021-02-13 22:05:10', '2021-02-14 01:05:10', '', 'Relogio-Euro-Feminino-Multifuncao-340', '', 'inherit', 'open', 'closed', '', 'relogio-euro-feminino-multifuncao-340', '', '', '2021-02-13 22:05:10', '2021-02-14 01:05:10', '', 15, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Euro-Feminino-Multifuncao-340.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2021-02-13 22:06:06', '2021-02-14 01:06:06', '<!-- wp:image {\"align\":\"left\",\"id\":16,\"width\":258,\"height\":257,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Euro-Feminino-Multifuncao-340.png\" alt=\"\" class=\"wp-image-16\" width=\"258\" height=\"257\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Euro Feminino Multifunção</strong><br><em>R$ 340,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Euro Feminino Multifunção', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-02-13 22:06:06', '2021-02-14 01:06:06', '', 15, 'http://localhost/projeto_wordpress_id/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-02-13 22:07:35', '2021-02-14 01:07:35', '<!-- wp:image {\"align\":\"left\",\"id\":19,\"width\":259,\"height\":248,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450.png\" alt=\"\" class=\"wp-image-19\" width=\"259\" height=\"248\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Tommy Hilfiger Feminino - Borracha Azul</strong><br><em>R$ 450,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Tommy Hilfiger Feminino', '', 'publish', 'open', 'open', '', 'relogio-tommy-hilfiger-feminino', '', '', '2021-02-13 22:07:35', '2021-02-14 01:07:35', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=18', 0, 'post', '', 0),
(19, 1, '2021-02-13 22:06:51', '2021-02-14 01:06:51', '', 'Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450', '', 'inherit', 'open', 'closed', '', 'relogio-tommy-hilfiger-feminino-borracha-azul-450', '', '', '2021-02-13 22:06:51', '2021-02-14 01:06:51', '', 18, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2021-02-13 22:07:35', '2021-02-14 01:07:35', '<!-- wp:image {\"align\":\"left\",\"id\":19,\"width\":259,\"height\":248,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Feminino-Borracha-Azul-450.png\" alt=\"\" class=\"wp-image-19\" width=\"259\" height=\"248\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Tommy Hilfiger Feminino - Borracha Azul</strong><br><em>R$ 450,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Tommy Hilfiger Feminino', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2021-02-13 22:07:35', '2021-02-14 01:07:35', '', 18, 'http://localhost/projeto_wordpress_id/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-02-13 22:11:57', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-02-13 22:11:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2021-02-13 22:13:12', '2021-02-14 01:13:12', '<!-- wp:image {\"align\":\"left\",\"id\":23,\"width\":259,\"height\":244,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850.png\" alt=\"\" class=\"wp-image-23\" width=\"259\" height=\"244\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Tommy Hilfiger Masculino - Couro Preto</strong><br><em>R$ 850,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Tommy Hilfiger Masculino', '', 'publish', 'open', 'open', '', 'relogio-tommy-hilfiger-masculino', '', '', '2021-02-13 22:13:12', '2021-02-14 01:13:12', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=22', 0, 'post', '', 2),
(23, 1, '2021-02-13 22:12:41', '2021-02-14 01:12:41', '', 'Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850', '', 'inherit', 'open', 'closed', '', 'relogio-tommy-hilfiger-masculino-couro-preto-850', '', '', '2021-02-13 22:12:41', '2021-02-14 01:12:41', '', 22, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2021-02-13 22:13:12', '2021-02-14 01:13:12', '<!-- wp:image {\"align\":\"left\",\"id\":23,\"width\":259,\"height\":244,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Tommy-Hilfiger-Masculino-Couro-Preto-850.png\" alt=\"\" class=\"wp-image-23\" width=\"259\" height=\"244\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Tommy Hilfiger Masculino - Couro Preto</strong><br><em>R$ 850,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Tommy Hilfiger Masculino', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2021-02-13 22:13:12', '2021-02-14 01:13:12', '', 22, 'http://localhost/projeto_wordpress_id/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-02-13 22:14:35', '2021-02-14 01:14:35', '', 'Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1', '', 'inherit', 'open', 'closed', '', 'relogio-digital-touro-boots-pulseira-silicone-preta-60-1', '', '', '2021-02-13 22:14:35', '2021-02-14 01:14:35', '', 9, 'http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-02-13 22:14:48', '2021-02-14 01:14:48', '<!-- wp:image {\"align\":\"left\",\"id\":25,\"width\":264,\"height\":264,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png\" alt=\"\" class=\"wp-image-25\" width=\"264\" height=\"264\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Digital Touro boots - Pulseira Silicone - Preta</strong><br><em>R$ 100,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Digital Touro boots', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2021-02-13 22:14:48', '2021-02-14 01:14:48', '', 9, 'http://localhost/projeto_wordpress_id/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-02-13 22:14:49', '2021-02-14 01:14:49', '<!-- wp:image {\"align\":\"left\",\"id\":25,\"width\":264,\"height\":264,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large is-resized\"><img src=\"http://localhost/projeto_wordpress_id/wordpress/wp-content/uploads/2021/02/Relogio-Digital-Touro-boots-Pulseira-Silicone-Preta-60-1.png\" alt=\"\" class=\"wp-image-25\" width=\"264\" height=\"264\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Relógio Digital Touro boots - Pulseira Silicone - Preta</strong><br><em>R$ 100,00</em></p>\n<!-- /wp:paragraph -->', 'Relógio Digital Touro boots', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-02-13 22:14:49', '2021-02-14 01:14:49', '', 9, 'http://localhost/projeto_wordpress_id/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-02-13 22:15:45', '2021-02-14 01:15:45', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-02-13 22:15:45', '2021-02-14 01:15:45', '', 1, 'http://localhost/projeto_wordpress_id/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-02-14 00:20:42', '2021-02-14 03:20:42', '{\n    \"custom_css[indexdigital]\": {\n        \"value\": \"background:#000;\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-14 03:20:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a6f97cfd-2fed-4b6c-ac5c-34bd0fd7afd6', '', '', '2021-02-14 00:20:42', '2021-02-14 03:20:42', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2021-02-14 00:20:42', '2021-02-14 03:20:42', '', 'indexdigital', '', 'publish', 'closed', 'closed', '', 'indexdigital', '', '', '2021-02-14 00:29:28', '2021-02-14 03:29:28', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=30', 0, 'custom_css', '', 0),
(31, 1, '2021-02-14 00:20:42', '2021-02-14 03:20:42', 'background:#000;', 'indexdigital', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-02-14 00:20:42', '2021-02-14 03:20:42', '', 30, 'http://localhost/projeto_wordpress_id/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-02-14 00:29:27', '2021-02-14 03:29:27', '{\n    \"custom_css[indexdigital]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-02-14 03:29:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4a9304e0-86bd-4e2c-bfa8-02062220ec68', '', '', '2021-02-14 00:29:27', '2021-02-14 03:29:27', '', 0, 'http://localhost/projeto_wordpress_id/wordpress/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2021-02-14 00:29:28', '2021-02-14 03:29:28', '', 'indexdigital', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-02-14 00:29:28', '2021-02-14 03:29:28', '', 30, 'http://localhost/projeto_wordpress_id/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-02-14 17:40:09', '2021-02-14 20:40:09', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/projeto_wordpress_id/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-02-14 17:40:09', '2021-02-14 20:40:09', '', 2, 'http://localhost/projeto_wordpress_id/wordpress/?p=34', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_termmeta`
--

CREATE TABLE `index_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_terms`
--

CREATE TABLE `index_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_terms`
--

INSERT INTO `index_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Relógios Femininos', 'relogios-femininos', 0),
(3, 'Relógios Masculinos', 'relogios-masculinos', 0),
(4, 'Relógios Unissex', 'relogios-unissex', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_term_relationships`
--

CREATE TABLE `index_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_term_relationships`
--

INSERT INTO `index_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 3, 0),
(9, 4, 0),
(12, 2, 0),
(15, 2, 0),
(18, 2, 0),
(22, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_term_taxonomy`
--

CREATE TABLE `index_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_term_taxonomy`
--

INSERT INTO `index_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_usermeta`
--

CREATE TABLE `index_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_usermeta`
--

INSERT INTO `index_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'yara.rodrigues'),
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
(12, 1, 'index_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'index_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'index_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"352aa2dfbe7a1e3f38e1b9504426ea65d7a3b5727974d80ec0734f6573082894\";a:4:{s:10:\"expiration\";i:1613500586;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36\";s:5:\"login\";i:1613327786;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `index_users`
--

CREATE TABLE `index_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `index_users`
--

INSERT INTO `index_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'yara.rodrigues', '$P$BqMIDoSf/OwYu/GdGRQjlJasJHN7eC.', 'yara-rodrigues', 'yara.rsilva5@gmail.com', 'http://localhost/projeto_wordpress_id/wordpress', '2021-02-13 23:29:20', '', 0, 'yara.rodrigues');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `index_commentmeta`
--
ALTER TABLE `index_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `index_comments`
--
ALTER TABLE `index_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `index_links`
--
ALTER TABLE `index_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `index_options`
--
ALTER TABLE `index_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `index_postmeta`
--
ALTER TABLE `index_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `index_posts`
--
ALTER TABLE `index_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `index_termmeta`
--
ALTER TABLE `index_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `index_terms`
--
ALTER TABLE `index_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `index_term_relationships`
--
ALTER TABLE `index_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `index_term_taxonomy`
--
ALTER TABLE `index_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `index_usermeta`
--
ALTER TABLE `index_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `index_users`
--
ALTER TABLE `index_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `index_commentmeta`
--
ALTER TABLE `index_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `index_comments`
--
ALTER TABLE `index_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `index_links`
--
ALTER TABLE `index_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `index_options`
--
ALTER TABLE `index_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT de tabela `index_postmeta`
--
ALTER TABLE `index_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `index_posts`
--
ALTER TABLE `index_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `index_termmeta`
--
ALTER TABLE `index_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `index_terms`
--
ALTER TABLE `index_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `index_term_taxonomy`
--
ALTER TABLE `index_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `index_usermeta`
--
ALTER TABLE `index_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `index_users`
--
ALTER TABLE `index_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
