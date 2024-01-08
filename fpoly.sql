-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 16, 2023 lúc 11:58 PM
-- Phiên bản máy phục vụ: 10.4.12-MariaDB-log
-- Phiên bản PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fpoly`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `majors_id` bigint(20) UNSIGNED NOT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `status`, `user_id`, `title`, `content`, `thumbnail`, `majors_id`, `hashtag`, `views`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tiêu đề blog', 'nội dung', 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1699196233/blog/johrtdduqcqvr5g221je.jpg', 1, '#hihi', 0, '2023-11-14 22:25:56', '2023-11-14 22:25:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `content`, `parent_id`, `reply_to`, `post_id`, `blog_id`, `qa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'hahaha', NULL, NULL, NULL, 1, NULL, '2023-11-14 22:27:51', '2023-11-14 22:27:51'),
(2, 1, 'haha cccc', NULL, NULL, NULL, 1, NULL, '2023-11-14 22:28:29', '2023-11-14 22:28:29'),
(3, 5, 'hehe', NULL, NULL, NULL, 1, NULL, '2023-11-15 15:45:25', '2023-11-15 15:45:25'),
(4, 3, '123', NULL, NULL, NULL, NULL, 1, '2023-11-15 19:49:52', '2023-11-15 19:49:52'),
(5, 3, '123', NULL, NULL, NULL, 1, NULL, '2023-11-15 19:57:00', '2023-11-15 19:57:00'),
(6, 5, 'Ngon', 5, 'dammebatdiet0505g', NULL, 1, NULL, '2023-11-16 14:24:43', '2023-11-16 14:24:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_creator` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id_1` bigint(20) UNSIGNED NOT NULL,
  `user_id_2` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `friendship_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `friends`
--

INSERT INTO `friends` (`id`, `user_id_1`, `user_id_2`, `status`, `friendship_type`, `created_at`, `updated_at`) VALUES
(5, 8, 3, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(7, 8, 1, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(8, 8, 2, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(9, 8, 4, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(10, 8, 5, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(11, 8, 6, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(12, 8, 9, 1, '0', '2023-11-16 18:30:26', '2023-11-16 18:30:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_chats`
--

CREATE TABLE `group_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `major_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_chat_members`
--

CREATE TABLE `group_chat_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `emotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qa_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `emotion`, `post_id`, `blog_id`, `qa_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'dislike', NULL, 1, NULL, '2023-11-14 22:28:03', '2023-11-14 22:28:03'),
(2, 5, 'like', NULL, 1, NULL, '2023-11-15 15:46:12', '2023-11-15 15:51:53'),
(3, 3, 'like', NULL, NULL, 1, '2023-11-15 19:49:45', '2023-11-15 19:49:45'),
(4, 3, 'like', NULL, 1, NULL, '2023-11-15 19:56:52', '2023-11-15 19:56:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `majors`
--

CREATE TABLE `majors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `majors_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `majors_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `majors`
--

INSERT INTO `majors` (`id`, `majors_name`, `majors_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Kế Website', 'TKW', 'Ngành thiết kế web', '2023-11-14 22:00:22', '2023-11-14 22:00:22'),
(2, 'Thiết kế đồ hoạ', 'TKDH', 'Ngành thiết kế đồ hoạ', '2023-11-14 22:00:22', '2023-11-14 22:00:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_09_28_184605_create_posts_table', 1),
(11, '2023_09_28_192348_create_comments_table', 1),
(12, '2023_09_28_193951_create_friends_table', 1),
(13, '2023_09_28_194323_create_notifications_table', 1),
(14, '2023_09_29_044301_create_likes_table', 1),
(15, '2023_09_29_045917_create_majors_table', 1),
(16, '2023_09_29_051308_create_ratings_table', 1),
(17, '2023_09_29_051944_create_events_table', 1),
(18, '2023_10_04_094218_create_private_messages_table', 1),
(19, '2023_10_04_095306_create_group_chats_table', 1),
(20, '2023_10_04_095542_create_group_chat_members_table', 1),
(21, '2023_10_12_174553_create_blogs_table', 1),
(22, '2023_10_12_175838_create_question_and_answers_table', 1),
(23, '2023_10_28_020426_update_comments_table', 1),
(24, '2023_10_29_121154_update_likes_table', 1),
(25, '2023_11_01_145226_update_column_notification_table', 1),
(26, '2023_11_03_065906_update_image_in_posts_table', 1),
(27, '2023_11_03_095634_add_cover_photo_to_users', 1),
(28, '2023_11_10_163210_create_roles_table', 2),
(29, '2023_11_10_163330_create_role_permissions_table', 2),
(30, '2023_11_11_113355_create_user_roles_table', 2),
(31, '2023_11_13_100312_update_activity_status_to_users', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` bigint(20) UNSIGNED NOT NULL,
  `recipient` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unread',
  `objet_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `sender`, `recipient`, `content`, `notification_type`, `status`, `objet_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'dammebatdiet0505g và 2 người khác đã bình luận về blog của bạn.', 'comment_blog', '1', 1, '2023-11-14 22:27:52', '2023-11-15 19:57:00'),
(2, 1, 1, 'dammebatdiet0505g và 2 người khác đã bày tỏ cảm xúc về blog của bạn.', 'like_blog', '1', 1, '2023-11-14 22:28:03', '2023-11-15 19:56:52'),
(3, 3, 3, 'dammebatdiet0505g đã bày tỏ cảm xúc về qa của bạn.', 'like_qa', '0', 1, '2023-11-15 19:49:46', '2023-11-15 19:49:46'),
(4, 3, 3, 'dammebatdiet0505g đã bình luận về qa của bạn.', 'comment_qa', '0', 1, '2023-11-15 19:49:53', '2023-11-15 19:49:53'),
(5, 5, 3, 'dunghaph19791s đã phản hồi về bình luận blog của bạn.', 'reply_blog', '0', 1, '2023-11-16 14:24:44', '2023-11-16 14:24:44'),
(6, 8, 1, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:28:02', '2023-11-16 18:28:02'),
(7, 8, 5, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:28:04', '2023-11-16 18:28:04'),
(8, 8, 5, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:28:32', '2023-11-16 18:28:32'),
(9, 8, 3, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:30:15', '2023-11-16 18:30:15'),
(10, 8, 3, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:30:26', '2023-11-16 18:30:26'),
(11, 8, 1, 'luanpvph19819s đã gửi cho bạn lời mời kết bạn.', 'friend', '0', 8, '2023-11-16 18:31:00', '2023-11-16 18:31:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0105335cad71fc31263397e7e243efa394fc4821b935b6f930048f080089c3464f8942439b6a07cc', 3, 10, NULL, '[]', 1, '2023-11-15 19:48:29', '2023-11-15 19:49:42', '2023-11-15 19:49:29'),
('020e719e12ab05821c4b2f3a9e8c4c9f7f74949671860119ac6261b19d1479766bbbe638d9683388', 3, 10, NULL, '[]', 0, '2023-11-15 16:05:49', '2023-11-15 16:05:49', '2023-11-15 16:06:49'),
('048488ad387b134d0a47532cd015523b5d04841318cb96c85a255299b72abb4a174abb89edfb1954', 1, 10, NULL, '[]', 1, '2023-11-16 01:56:52', '2023-11-16 01:59:46', '2023-11-16 01:57:52'),
('060a50d7cd44c4c0094f3219bf020e78026fd7908f20a82e3f2b09a3b8a3375fc9b6a5eccea47bb8', 3, 10, NULL, '[]', 0, '2023-11-15 20:56:06', '2023-11-15 20:56:06', '2023-11-15 20:57:06'),
('079a3b16b50108d558731749cbd2ad463594efb7a73220e6ece94853b1a3a84c1d2a8a739ee9a2d0', 3, 6, NULL, '[]', 0, '2023-11-15 14:29:03', '2023-11-15 14:29:03', '2023-11-15 14:30:03'),
('085779e8e3265abeebb5b63b7c861ceadf9b84d072c12c5015e89c6ece7b0bced4e76aec96216a37', 3, 10, NULL, '[]', 1, '2023-11-15 23:17:24', '2023-11-15 23:29:27', '2023-11-15 23:18:24'),
('08c5aa7c73a005314054f106a510c85f8051c015f263b4fbcc07b9fea73f9a5820fbc5cded2ba582', 1, 10, NULL, '[]', 1, '2023-11-16 00:42:19', '2023-11-16 01:16:59', '2023-11-16 00:43:19'),
('092bf545e9e660b569c72fb638e88a31f61357e59a887fc41b9d733d3edc3804d643891c86e76e07', 3, 10, NULL, '[]', 1, '2023-11-16 00:11:57', '2023-11-16 00:57:21', '2023-11-16 00:12:57'),
('0b2ddbb2611d9788f1a7e35b5e84c81ea5492a2f58ef51184aecf456ee182d33d134ecb24e41cedc', 3, 10, NULL, '[]', 0, '2023-11-16 10:01:58', '2023-11-16 10:01:58', '2023-11-16 10:02:58'),
('0d4cb99f4548113f9ed14cc67ad5e1cf5e4d28a62526fd5ac95d87d6fce821fbc7ed1b865ceb7edb', 3, 10, NULL, '[]', 0, '2023-11-16 08:58:37', '2023-11-16 08:58:37', '2023-11-16 08:59:37'),
('0ef90d8ba839dedf3764b1444c85624c570890c15b0c06994705fb204ea8e0ee32a426045f0c3786', 1, 10, NULL, '[]', 1, '2023-11-16 00:13:23', '2023-11-16 00:15:18', '2023-11-16 00:14:23'),
('0f766c16d513e3b15d530d700f59757170988a0d94375c3ce53a51d1847007a809ba059c480ba640', 3, 10, NULL, '[]', 0, '2023-11-16 01:18:34', '2023-11-16 01:18:34', '2023-11-16 01:19:34'),
('0fa1d2e2b00375809eaf2e7c75c751ef27ebdcb4ea8c18d43e872637f094a18328ff172528fe08dd', 3, 10, NULL, '[]', 1, '2023-11-16 11:48:26', '2023-11-16 11:51:11', '2023-11-16 11:49:26'),
('0fa5265936167e80a2e7858e9cb8f75ea31c71a03e046107bcbaf80bfffe6cc728441a8735db0f01', 1, 10, NULL, '[]', 1, '2023-11-16 00:37:33', '2023-11-16 00:39:57', '2023-11-16 00:38:33'),
('105f203481bcfb5915609837e3faae2efbba210cbffb0cdc4c8ead10954fbe4f2c75a168e3526645', 3, 10, NULL, '[]', 1, '2023-11-16 09:31:44', '2023-11-16 09:37:19', '2023-11-16 09:32:44'),
('10f29019081c9b3431ce323aa8d43d599e3b16523dae5ed68391362f60d62cd96765f7f0331d1827', 1, 10, NULL, '[]', 1, '2023-11-16 00:36:25', '2023-11-16 00:37:33', '2023-11-16 00:37:25'),
('13393680a802a616bc7b7ac0f16dbcb7612cc214ca38cacf4127726436f7e0a6ecba2968dd0ae28a', 1, 10, NULL, '[]', 1, '2023-11-16 01:34:49', '2023-11-16 01:35:56', '2023-11-16 01:35:49'),
('136183af9718510f0dc4cbe74984503cf53d3a5442edbbb066d6fc787a2c5fd6ab35e717f35d2339', 3, 10, NULL, '[]', 1, '2023-11-15 15:11:57', '2023-11-15 15:13:03', '2023-11-15 15:12:57'),
('138c7bba24fb14f079bdfc19f04edc5c56b6e6bed276f53b71a7e4d54b3875f0224868b0907fd2a5', 3, 10, NULL, '[]', 0, '2023-11-15 16:25:02', '2023-11-15 16:25:02', '2023-11-15 16:26:02'),
('13a2aaa257e4596f0019b1085998ca8ae075da67e31b8ff828e6c5f51158a4a4eac03842639eb38c', 3, 6, NULL, '[]', 0, '2023-11-15 14:30:15', '2023-11-15 14:30:15', '2023-11-15 14:31:15'),
('14f03424a001ee365cfec86fe9b14867c3e46edd2b8377c6f79cccb90193b9231d6bbb29b3515b39', 3, 10, NULL, '[]', 0, '2023-11-16 21:23:22', '2023-11-16 21:23:22', '2023-11-16 21:24:22'),
('15f2f3d0d6a480cbe55c28170c4d562e24233c6e1d90e60feaeb3bcfa5319e8c5f9dcda0cae50f90', 1, 10, NULL, '[]', 1, '2023-11-16 01:33:31', '2023-11-16 01:34:49', '2023-11-16 01:34:31'),
('163128b03e1a1162991ddae0712c2f5e3220ad72a89ee63325c09f8a0ef8f767d085bb14b5004398', 3, 10, NULL, '[]', 1, '2023-11-16 08:39:06', '2023-11-16 08:40:48', '2023-11-16 08:40:06'),
('1718b85980a00b84738884e1b3a7f3ef0af8f275ba2d5b8c646e4c5c8fb3d13d0042276f34b98451', 1, 10, NULL, '[]', 1, '2023-11-15 23:31:35', '2023-11-15 23:44:36', '2023-11-15 23:32:35'),
('17a15785ba2559694929f5e2516a39735716372c948599a3434a613205cee43d24f82dcd5a7cd3af', 5, 10, NULL, '[]', 1, '2023-11-16 14:29:07', '2023-11-16 14:29:33', '2023-11-16 14:30:07'),
('19c54e715482a04f4290fe147a50e38ee5a6bb72fb3710ce5780eaf102a705f08fbb03326cfc24e3', 3, 10, NULL, '[]', 1, '2023-11-16 09:44:02', '2023-11-16 09:45:04', '2023-11-16 09:45:02'),
('1e4bc65537eb2fe061e51421b133ede6f9dd3a4e08148c74cd85e61ac4c3dfe7b556a54632454ee6', 3, 10, NULL, '[]', 0, '2023-11-16 01:44:23', '2023-11-16 01:44:23', '2023-11-16 01:45:23'),
('2457cf8a4a8e63dbbf6ee58999a5d270329c67bf645fb053c256965491094585a445198d3e80341c', 3, 10, NULL, '[]', 0, '2023-11-16 09:43:48', '2023-11-16 09:43:48', '2023-11-16 09:44:48'),
('24f302161b2082e2b544fb64e288f12bd4035a5732a0dcf39f754c5279fca613ae9297ddc7855b07', 5, 10, NULL, '[]', 0, '2023-11-15 15:43:27', '2023-11-15 15:43:27', '2023-11-15 15:44:27'),
('26960245b70c81bae279ad21061dd5d059d1475cba70d74834a2c32ed98dae0f9a986c8bb4585dea', 1, 10, NULL, '[]', 1, '2023-11-16 02:30:49', '2023-11-16 02:32:40', '2023-11-16 02:31:49'),
('29395bcefee1db83b1254e24b32ddddc8e9c6cde097d34d659aede8cec55823510c45c0ffdf2831b', 1, 10, NULL, '[]', 1, '2023-11-16 00:15:19', '2023-11-16 00:16:21', '2023-11-16 00:16:19'),
('2b583322955eea244883d1c23935d65a1f4c6f7d8b1a52ba40acf6bda98acd34288d2001bd8ccf32', 1, 10, NULL, '[]', 1, '2023-11-15 21:19:11', '2023-11-15 21:19:13', '2023-11-15 21:20:11'),
('2b7bd435f61f8017210152bdf7734c30ac65290f945901f9b5f1efbc6c94ab507e0362652817781b', 3, 10, NULL, '[]', 1, '2023-11-15 22:55:05', '2023-11-15 23:11:26', '2023-11-15 22:56:05'),
('2c28516f06c978c409426f075a0f6eccb95e4ec4a04279b578688c20c9f6ecb439eb556239366e0c', 1, 4, NULL, '[]', 0, '2023-11-15 17:04:23', '2023-11-15 17:04:23', '2023-11-15 17:05:23'),
('2caa4a9ad422577503fefcae340132934b13935667aac8d5d3d7b386e1308cea7d51d0137e264a5b', 3, 10, NULL, '[]', 1, '2023-11-16 01:19:33', '2023-11-16 01:20:37', '2023-11-16 01:20:33'),
('2d8c9ce635d04ff65a250ea9e8ca952db3a6af34b492400e9baee6fc2a292844ba9436b662b3b84a', 8, 10, NULL, '[]', 0, '2023-11-16 18:27:23', '2023-11-16 18:27:23', '2023-11-16 18:57:23'),
('2dca1a3e4ab5e323c2cb361071a526c914d93011dda723ece304b52e4189ce5694e3ecf79d7321be', 3, 10, NULL, '[]', 1, '2023-11-15 15:54:51', '2023-11-15 15:56:05', '2023-11-15 15:55:51'),
('2de3ca548cdbffa6279ee3be50fde590e5d944286f630a109cd538813266b37be130e0e922714420', 3, 10, NULL, '[]', 0, '2023-11-15 16:38:56', '2023-11-15 16:38:56', '2023-11-15 16:39:56'),
('2e7a6f13ed59cfb23c9709cbd58d2a18e825bd14d2b12e5ca1f478dee6607ba8b2d1be52bdd29f09', 3, 10, NULL, '[]', 1, '2023-11-16 10:02:18', '2023-11-16 10:07:20', '2023-11-16 10:03:18'),
('3329fe543da69322003ffc4af8290d069af189015f4774b0ecdd6ae5de19d98041ca23f4c10a0487', 1, 10, NULL, '[]', 1, '2023-11-16 01:41:16', '2023-11-16 01:42:26', '2023-11-16 01:42:16'),
('33d0cabca76601e5cb60972c933dfeb60ceaafdf6b0116d8d5033e4efdc4980506254336907a760b', 3, 10, NULL, '[]', 1, '2023-11-16 08:47:46', '2023-11-16 08:49:03', '2023-11-16 08:48:46'),
('38d4ca59febf4f3825f527675c6125a2428e1df91509c39dd2b3a3747b044ff1db05ede146ba3e81', 3, 10, NULL, '[]', 1, '2023-11-16 01:30:56', '2023-11-16 01:31:59', '2023-11-16 01:31:56'),
('38fe39420c8dc3bf8bc669786b87e2eb9703cae60fa6701e6446a28121543f6982da5a7dc842d2d1', 1, 4, NULL, '[]', 1, '2023-11-15 17:29:25', '2023-11-15 17:55:18', '2023-11-15 17:30:25'),
('3b0c9ec866d3369db84f3804c7d694372ab2e6dd15a9a681241f6299b796c656a87f21231a72bd65', 2, 8, NULL, '[]', 0, '2023-11-15 11:36:59', '2023-11-15 11:36:59', '2023-11-15 11:37:59'),
('3b5e4deae793b40bbcbf20a15e383132f3cdbd560140af50b7df01940eda1137014e933ec12233d7', 3, 10, NULL, '[]', 1, '2023-11-16 01:27:29', '2023-11-16 01:30:29', '2023-11-16 01:28:29'),
('3d3e61751796a0720f2d1d2f731cea815da3543cafdfe02cd232ebd0407800aa16de78c936989e74', 1, 4, NULL, '[]', 1, '2023-11-15 17:25:15', '2023-11-15 17:28:13', '2023-11-15 17:26:15'),
('4046f04d8605e3548e2d5fe897f18cef35218ed2421a6eb0e1cf7b95b9a7a226f21aee0a9a327d6e', 3, 10, NULL, '[]', 1, '2023-11-16 08:41:21', '2023-11-16 08:43:06', '2023-11-16 08:42:21'),
('4121718d2dc3000349d6d1dab61009e2bb2b1bd4fee8ba26c6a298b5a43df37ddde49cf3149eba86', 3, 10, NULL, '[]', 0, '2023-11-15 16:33:11', '2023-11-15 16:33:11', '2023-11-15 16:34:11'),
('4377b7ba013744501e6d0b9c129c3b6f169682f48084538863edfcf94ecded9a1a7f10d54b662c72', 3, 10, NULL, '[]', 0, '2023-11-16 08:40:48', '2023-11-16 08:40:48', '2023-11-16 08:41:48'),
('45949bf42a183756529552f90f2c7a82438c74420e2ddc2fb9eb6b9bf2251cab1dd471b34556b542', 3, 10, NULL, '[]', 1, '2023-11-16 10:00:33', '2023-11-16 10:01:57', '2023-11-16 10:01:33'),
('48bd9e206f3f8459e64fdfa4b2024e4edb3259d150e91ea2412804ea89080201430962c6da9362d2', 3, 10, NULL, '[]', 0, '2023-11-16 09:30:59', '2023-11-16 09:30:59', '2023-11-16 09:31:59'),
('493743ba8f6037f886f35796865e321808c90aa46b01df84512a48992aa51d8256f502b888a536a8', 1, 10, NULL, '[]', 0, '2023-11-16 22:44:37', '2023-11-16 22:44:37', '2023-11-16 23:14:37'),
('4a7acd9bdda92c106f3b26c526b7f56f4a6ce7c014fa189c4efbd670447b2e5cbe7ffdf24220841f', 3, 10, NULL, '[]', 0, '2023-11-15 21:25:05', '2023-11-15 21:25:05', '2023-11-15 21:26:05'),
('4b5c1be2c3a72f91c1da3ec6c094d1456bacef5e2c10d03fa6349d2c79d489d58da0b774e4f17a9c', 3, 10, NULL, '[]', 0, '2023-11-16 08:49:03', '2023-11-16 08:49:03', '2023-11-16 08:50:03'),
('4c352865916257f4b831b52175395b0fbd139c0bec92db5868fd5616162a41e1209ec73fa87f48ec', 3, 10, NULL, '[]', 0, '2023-11-16 09:02:45', '2023-11-16 09:02:45', '2023-11-16 09:03:45'),
('4d1a949466222ebcfe8703a7f09a883dc0fe2db88cea14de11962de950f8de87dd44b6d47da446e8', 5, 10, NULL, '[]', 0, '2023-11-16 14:23:57', '2023-11-16 14:23:57', '2023-11-16 14:24:57'),
('4e17442dba29e611891268f619c67d28625cc540b85cb56f9968678c206083362b1c3f1da471cba8', 3, 10, NULL, '[]', 1, '2023-11-15 21:07:37', '2023-11-15 21:23:22', '2023-11-15 21:08:37'),
('4e9a21c3c9fe963b32099ccb48ad03ec6cbdb5aa7d94193cfc4019207bbb1a0e7a2a86e55be2fdb3', 1, 10, NULL, '[]', 1, '2023-11-16 01:39:00', '2023-11-16 01:41:16', '2023-11-16 01:40:00'),
('4f6e2657410264a6fb9290e990222ceb08ce40605bb9a925d6f5373fc49d67c22210400d236b1439', 3, 10, NULL, '[]', 1, '2023-11-16 01:44:35', '2023-11-16 01:45:40', '2023-11-16 01:45:35'),
('4fd04666b0a78a7b13185b9e1e82a4363d3da8fd1ce2f07382b4f81e736115a03baffcfb7fba7037', 3, 10, NULL, '[]', 0, '2023-11-15 14:52:39', '2023-11-15 14:52:39', '2023-11-15 14:53:39'),
('5077006132ca16f6ee2eb16efe9580451144620023ad384fdf0d1ff8b3f596b5f2e39c73c33eda1e', 1, 4, NULL, '[]', 1, '2023-11-15 17:55:19', '2023-11-15 17:56:55', '2023-11-15 17:56:19'),
('51a6c4962140017a51abda2c18bb76873cb7209e822b51f0058a0c83f009d967cf77840b5edb54af', 5, 10, NULL, '[]', 1, '2023-11-15 15:44:50', '2023-11-15 15:46:09', '2023-11-15 15:45:50'),
('522382779f3c4e21f429fa74f26aab504866aaef93fe2a41c7abdc80b1f2447dc1883a4545df49ba', 3, 10, NULL, '[]', 0, '2023-11-16 09:59:55', '2023-11-16 09:59:55', '2023-11-16 10:00:55'),
('52f62167aa2613d45a6a13b057e5e2d53e3c58c1c269bb1e162aa4550703144d7fbd00b1ab49055c', 3, 10, NULL, '[]', 0, '2023-11-15 23:31:23', '2023-11-15 23:31:23', '2023-11-15 23:32:23'),
('555ac68d779b0c4764d84eab4347f838ad66fadb7a569393594fea0f19e5fbca49fa2e76b299144a', 3, 10, NULL, '[]', 1, '2023-11-15 23:45:20', '2023-11-16 00:11:56', '2023-11-15 23:46:20'),
('56edb9a48cc16a0e5055742747be81924b3a7437edc057a7047a626d44bb35eed050d5d010d68f5d', 3, 10, NULL, '[]', 1, '2023-11-15 19:46:29', '2023-11-15 19:48:29', '2023-11-15 19:47:29'),
('576d571b574f96ca1bee9d96cbe12e4fa2adc3f23277c78f2fe45d6a142b1002b3ba232d8025c923', 3, 10, NULL, '[]', 0, '2023-11-16 08:38:43', '2023-11-16 08:38:43', '2023-11-16 08:39:43'),
('5904bf81acb04b2f1baf61d6b2a92c34138dce57c94ff23f13f053d52c51c1ec6eae983d7967ceda', 3, 6, NULL, '[]', 0, '2023-11-15 14:32:09', '2023-11-15 14:32:09', '2023-11-15 14:33:09'),
('593ba830c04e4d9b5f453bfa6343051072b2c88d4550784cac9c150f9a2e270d61eb271c6f6e549c', 1, 10, NULL, '[]', 1, '2023-11-15 21:49:17', '2023-11-15 21:52:03', '2023-11-15 21:50:17'),
('5da9aa6397bd9598189c22c1fe119e0f87f77466a814f212fefe3a4d4c3c073ab1fe411b24f9205b', 1, 10, NULL, '[]', 1, '2023-11-15 23:44:36', '2023-11-15 23:47:11', '2023-11-15 23:45:36'),
('5f8b0524e3bbae22abc8198999165f07e6819fcfdf8a592affe1628b34fac2ecd07f3f55158dfc2f', 3, 6, NULL, '[]', 1, '2023-11-15 12:49:32', '2023-11-15 12:50:36', '2023-11-15 12:50:32'),
('5fdeaa0e029af7259ecd64e1ad274a4c725091646fa8ad0f736c0d227586bdf343785ccb492465e3', 3, 10, NULL, '[]', 0, '2023-11-15 16:26:36', '2023-11-15 16:26:36', '2023-11-15 16:27:36'),
('61172dd537cba44c08331569f14b3d414752b8679131dd4a1e50c16366de8acd27002969543d2c34', 3, 10, NULL, '[]', 0, '2023-11-16 21:23:34', '2023-11-16 21:23:34', '2023-11-16 21:24:34'),
('61c7d4f4cd8df01158cda5b2be4a1807850a8ad7b20068eb50c0746f203dc27c807dc202191fc251', 3, 10, NULL, '[]', 0, '2023-11-16 09:29:27', '2023-11-16 09:29:27', '2023-11-16 09:30:27'),
('62e6f7d1260e9737e67cc6c99db2fbdb4c018d96c067485844c46c8aae71568d67acbb1216072edd', 3, 10, NULL, '[]', 1, '2023-11-15 23:29:39', '2023-11-15 23:31:23', '2023-11-15 23:30:39'),
('653e4e8f880418154e8ce2d6f9db8aa45ad65ba85374e8b1d6d9f9f96ea0d0a8c1c46e66bc9a674c', 3, 10, NULL, '[]', 1, '2023-11-15 21:23:35', '2023-11-15 21:25:05', '2023-11-15 21:24:35'),
('65b31682ffed7bc0a07fdc506fb94c24b132058c601c94c2c5679a321d3a5229073ee20d120cfecf', 5, 10, NULL, '[]', 1, '2023-11-15 15:48:21', '2023-11-15 15:49:25', '2023-11-15 15:49:21'),
('65e5f0e7901458cbfa759e857923abc81f77676c25ad0a8b082dd485e396b70b26a45be3f22fdd4a', 3, 10, NULL, '[]', 0, '2023-11-15 20:12:23', '2023-11-15 20:12:23', '2023-11-15 20:13:23'),
('6609661c954a5ad3ab88af8cd20c00274f9fa7b07cb6db0cefb33d583b036002ef10eec0ee0b511c', 3, 10, NULL, '[]', 1, '2023-11-16 01:04:18', '2023-11-16 01:08:28', '2023-11-16 01:05:18'),
('6695669c3136afc907ea20cc2962c5971cf57b550012cd3076bbd53960b461844ff7542001d756fe', 3, 10, NULL, '[]', 1, '2023-11-16 09:18:45', '2023-11-16 09:21:24', '2023-11-16 09:19:45'),
('67648e00dec99a689d965f7e8311e8d8fc549a08c0dfe915cc1b0c4518283020faa950b1676cf387', 1, 10, NULL, '[]', 1, '2023-11-16 01:55:50', '2023-11-16 01:56:52', '2023-11-16 01:56:50'),
('6837369a727ceeb56a9f9a54a5f0fa1eaed2553c5e36851f1cfa17e8ceed38fcae597d72cf5b1222', 3, 10, NULL, '[]', 1, '2023-11-15 22:52:02', '2023-11-15 22:53:53', '2023-11-15 22:53:02'),
('69002abd090d3bc16c9f25f57f128708ccfb5c652f2eb0d12ce20f854585da2be103194fa7cbb53d', 5, 10, NULL, '[]', 0, '2023-11-15 15:51:03', '2023-11-15 15:51:03', '2023-11-15 16:21:03'),
('69afafa5580f5f428224ed05ef038561a7691dfaec5ae72c6b57bb9857e18c7fe7d51091749fa049', 3, 10, NULL, '[]', 0, '2023-11-16 01:38:35', '2023-11-16 01:38:35', '2023-11-16 01:39:35'),
('6a2d9a6f96bb9312020ffa02198696fbdf9e65df2e60d7d3a0e00a8a10b36e18732a2a095afc5118', 3, 10, NULL, '[]', 1, '2023-11-15 16:09:20', '2023-11-15 16:17:34', '2023-11-15 16:10:20'),
('6af9dc280125947690d86b76ccfec43a498d1aa368586f139cdffaaf0514fc0c0b36d3a6bc67128b', 5, 10, NULL, '[]', 1, '2023-11-16 14:29:33', '2023-11-16 14:31:56', '2023-11-16 14:30:33'),
('6afba70949ee26fdb8633d882adc35551fc90e1270da9d1b4ad2efd9ca3730dc1ab9c5fad03c3649', 3, 10, NULL, '[]', 1, '2023-11-15 16:25:32', '2023-11-15 16:26:36', '2023-11-15 16:26:32'),
('6cbbf54eb198b19687e494406924dd2f02d15a62ec2d9e69c9abfe3cd4d2ce3c9258de4b079187fb', 3, 10, NULL, '[]', 1, '2023-11-16 20:20:18', '2023-11-16 20:21:25', '2023-11-16 20:21:18'),
('6d726fa7336bbc39d1861e8fb15e028e2577040dfeeea953714c1d9da1b9054f32d99c85c6bdd1c0', 1, 10, NULL, '[]', 1, '2023-11-16 01:16:59', '2023-11-16 01:18:41', '2023-11-16 01:17:59'),
('6ea3f4a3e0cbff10c5ab8c5ff92d5960e5345203f1564925e5007a06b1f494eb265105955ed32454', 3, 10, NULL, '[]', 1, '2023-11-16 09:41:09', '2023-11-16 09:43:48', '2023-11-16 09:42:09'),
('6f2ca7bafd54dbda257898d1c9335d7467cbfdbe7494711687d7420739f3cc66e862b97736970bc1', 1, 10, NULL, '[]', 1, '2023-11-16 02:34:45', '2023-11-16 22:43:08', '2023-11-16 02:35:45'),
('6f3b959d59993fe45e18e35e6d023717f37d1cfc8239e925f05f37475183b9a6e6da80ae4179065e', 1, 10, NULL, '[]', 1, '2023-11-15 21:26:12', '2023-11-15 21:28:55', '2023-11-15 21:27:12'),
('70433eddca77d184da5bae71bf48b1b42b95b491914a52bf57ed068d36fa77a16093822b38f5895b', 3, 6, NULL, '[]', 0, '2023-11-15 12:50:36', '2023-11-15 12:50:36', '2023-11-15 12:51:36'),
('7169867e8574da6343823785ca3494a69f95cc76635eabb4befcf629039674b33870bd296c390194', 3, 10, NULL, '[]', 1, '2023-11-16 09:25:51', '2023-11-16 09:29:27', '2023-11-16 09:26:51'),
('71e508d2320f047d56577908b72c57211b0d3999808304e955bcd5259cec6c2231905ffb5d50172c', 1, 10, NULL, '[]', 0, '2023-11-16 22:43:08', '2023-11-16 22:43:08', '2023-11-16 23:13:08'),
('73c8a8099dda1da1e3eab11fc63e05e9706b4836f89b4dad328e16f9250f7f621610ed38820b9e6a', 3, 10, NULL, '[]', 1, '2023-11-15 19:56:39', '2023-11-15 20:12:23', '2023-11-15 19:57:39'),
('766bdab24b3b9b346e1ded7db57ff0b2af2174f77ee3231a797a19818cc744ded6ec29b215863689', 1, 10, NULL, '[]', 1, '2023-11-16 01:43:38', '2023-11-16 01:55:50', '2023-11-16 01:44:38'),
('774be01fdd97ba13a85a837a33f6adf6d2b5a075f9bca9ba1b0a3687ab14d60c1f480bf907158d34', 5, 10, NULL, '[]', 1, '2023-11-16 14:18:56', '2023-11-16 14:23:57', '2023-11-16 14:19:56'),
('7c8e13d82c281d4d1cda616869edb6778e5e05748b2f815b2043ab8fecea166ba918f12f44903976', 1, 10, NULL, '[]', 1, '2023-11-16 01:43:35', '2023-11-16 01:43:38', '2023-11-16 01:44:35'),
('7df8d627ecd6d5990451be99a5b4211640a49312c77aef9bf16bebb73eb27f9ec0ba3c3a2c235476', 1, 4, NULL, '[]', 0, '2023-11-15 17:56:55', '2023-11-15 17:56:55', '2023-11-15 17:57:55'),
('7fb1612f0081bdc5f34b6b7cd0675347efd06bb97c709203596e8893e36c458ce83084908fafcfbb', 5, 10, NULL, '[]', 1, '2023-11-15 15:42:13', '2023-11-15 15:43:27', '2023-11-15 15:43:13'),
('8341641bf4c1aaa8cce18b09593c2f2d076d33638288cd586ca9344eb9801f4c940edbbca9956076', 3, 10, NULL, '[]', 1, '2023-11-16 21:20:17', '2023-11-16 21:23:22', '2023-11-16 21:21:17'),
('84142902975503b7df24d77057cbf6bdfba598a5384fc783dc807d909f8f3b6efc459ce6ae6deedb', 5, 10, NULL, '[]', 1, '2023-11-16 14:33:17', '2023-11-16 14:35:50', '2023-11-16 14:34:17'),
('8790742da10767cb4cbf19afeb6575d66f2b98afab829b5a4f27f4ce0eb61e1806dcce861d1b86ef', 1, 10, NULL, '[]', 1, '2023-11-16 01:29:56', '2023-11-16 01:31:25', '2023-11-16 01:30:56'),
('87fd6a465358a92a39c4d420fc0bef5c1b431bcb86f770c5d89d853b6082c56bd2a5ed2f1033da27', 1, 10, NULL, '[]', 1, '2023-11-15 21:40:19', '2023-11-15 21:41:25', '2023-11-15 21:41:19'),
('8881db927238934f65b38e49e07281134cf4c8d57a2a79f0d7379d0f69ff8af44405b7da545a614a', 2, 8, NULL, '[]', 1, '2023-11-15 11:35:53', '2023-11-15 11:36:59', '2023-11-15 11:36:53'),
('898d827af7345ad56b531d879d34b6ea49eeb85096abc6a835804523ba792d024ba7b61fcecbe6fc', 3, 10, NULL, '[]', 0, '2023-11-16 20:21:25', '2023-11-16 20:21:25', '2023-11-16 20:22:25'),
('89c4f880785bac7ce737ec5dc43a8691cdafefaaeb73fbf29a4e11fd6af20755290b51186a1d34a3', 3, 10, NULL, '[]', 0, '2023-11-16 08:43:06', '2023-11-16 08:43:06', '2023-11-16 08:44:06'),
('8c8d00126ba0641a343152a26e4ad6e37cf8da32abfa03829fb06e06acb7c5217b9583c3d66d8c2e', 6, 10, NULL, '[]', 0, '2023-11-16 02:36:52', '2023-11-16 02:36:52', '2023-11-16 02:37:52'),
('8c8ff8364a7e30079ba4588120931547846f74b725ebed96f67aaaadc7c4d4fa398b7ea23962c94d', 3, 10, NULL, '[]', 0, '2023-11-16 09:52:52', '2023-11-16 09:52:52', '2023-11-16 09:53:52'),
('8c9c69023529e8e08991f85c1223636cf45b43882bcf8b414400b95be10b85359f5dbb49141dbb45', 3, 10, NULL, '[]', 1, '2023-11-16 09:50:02', '2023-11-16 09:52:52', '2023-11-16 09:51:02'),
('8d83d1ea2e512d69c84f6217c99d891914c4c3a66d86a812bf2381bc3ed2ca316c015b4ab5823635', 3, 10, NULL, '[]', 1, '2023-11-16 01:02:41', '2023-11-16 01:04:18', '2023-11-16 01:03:41'),
('8dedc7c22ace02e91c6a86be549b56e72e3430c7aec307c09ca91c33873b996ce7f8fde2ab27e3b1', 1, 10, NULL, '[]', 1, '2023-11-16 00:17:48', '2023-11-16 00:28:49', '2023-11-16 00:18:48'),
('91433ca2a01b33fe60c5d753a9c988b31eadbe2562569880110554796b801fe71e51cf13dbd51f92', 3, 10, NULL, '[]', 1, '2023-11-16 01:08:28', '2023-11-16 01:09:32', '2023-11-16 01:09:28'),
('91530c5ed9f91c7b8926abd11cd3ed831d78da4eef4b419ad5470efbc4960b8e85602123a0750a08', 5, 10, NULL, '[]', 0, '2023-11-15 15:49:25', '2023-11-15 15:49:25', '2023-11-15 15:50:25'),
('926639b0cb78e6d9483f3b6f8bc866b24571c5134515cfff78be43363ac7c8737273eac4e3b7da6b', 1, 10, NULL, '[]', 1, '2023-11-16 01:35:56', '2023-11-16 01:36:58', '2023-11-16 01:36:56'),
('94193134e1717614afcf5a7d125b8fe65579efbd7489849587fd0b7eb7e5e970cda8913c8cb18be5', 3, 10, NULL, '[]', 0, '2023-11-16 01:15:45', '2023-11-16 01:15:45', '2023-11-16 01:16:45'),
('9435c5ea48771be36f1cadb3b5252af72413a7b400431143af2338be6e21b84f744c072bd82c45d3', 3, 10, NULL, '[]', 0, '2023-11-15 23:11:26', '2023-11-15 23:11:26', '2023-11-15 23:12:26'),
('94c6845699bf644199ee9efc6d805046639f0831529968ad137142be41a9568214dbb6590d7764d4', 3, 10, NULL, '[]', 0, '2023-11-16 10:07:20', '2023-11-16 10:07:20', '2023-11-16 10:08:20'),
('94e3ee28088c27b640448ed56c1a192414ba1727db675b307640d5c69026ae66e9dbf06fb80f4e8a', 3, 10, NULL, '[]', 0, '2023-11-15 15:56:05', '2023-11-15 15:56:05', '2023-11-15 15:57:05'),
('952398fa0da2446ca7e0d9d220960b9d0e991f09c9ad67207ccbbbde3a0587135a3857a37ec454da', 1, 10, NULL, '[]', 1, '2023-11-15 21:19:13', '2023-11-15 21:21:20', '2023-11-15 21:20:13'),
('95453428d407fc3f8eb34bc408d00701a23ad461d6b1e6c521bd9264b20591b106a09b07d395fd3a', 5, 10, NULL, '[]', 1, '2023-11-16 14:33:11', '2023-11-16 14:33:16', '2023-11-16 14:34:11'),
('969aa1574a7d3853bfaee7ab51f2da6a88a671562a5ef8b1b71f70b58abbc70bf09f375358128cc4', 1, 10, NULL, '[]', 1, '2023-11-15 21:17:30', '2023-11-15 21:19:10', '2023-11-15 21:18:30'),
('97c9cd831c409e194a818ea2afaf204fe280aeca1df7fe27af94d0dcb41c59b5266c242999fe3ae9', 3, 10, NULL, '[]', 1, '2023-11-16 08:37:26', '2023-11-16 08:38:43', '2023-11-16 08:38:26'),
('97e98b438b8b984892a84e197007ea2a125be464b39eef300b795f60bf9a5358cbafa2b5b3537a9b', 1, 10, NULL, '[]', 1, '2023-11-16 00:11:49', '2023-11-16 00:13:23', '2023-11-16 00:12:49'),
('9ac4435393c0d786dc4c1ec85078c1d833ce026ba938fde186ec7bd8f9768fd3a39914788bb31abd', 3, 10, NULL, '[]', 1, '2023-11-15 20:51:23', '2023-11-15 20:56:05', '2023-11-15 20:52:23'),
('9c04630fa68ff93f3c68e86e1038d0563171354d7b66eca7820cbb1b0526dce8dfa9c61402345a0d', 2, 10, NULL, '[]', 0, '2023-11-16 22:05:15', '2023-11-16 22:05:15', '2023-11-16 22:35:15'),
('9cfd65c0f6232d360e3bb2030ed0b1ae8423d302b99be0253aa3553d1808e62e427b313987dfc6ba', 1, 10, NULL, '[]', 1, '2023-11-15 21:41:25', '2023-11-16 00:35:06', '2023-11-15 21:42:25'),
('9e0c36989d1bb7955507965c98dd90acff5588b397c3362a78483b5fe98ba67762a9a3ba00e3d2fc', 1, 10, NULL, '[]', 1, '2023-11-16 01:36:58', '2023-11-16 01:39:00', '2023-11-16 01:37:58'),
('9e940976a176b2bf985c1d40f560282d643879827311600cd8ec1def2c22774fb50e58f979ab7f56', 3, 10, NULL, '[]', 0, '2023-11-15 16:17:34', '2023-11-15 16:17:34', '2023-11-15 16:18:34'),
('9f115f3b2f7094ca96ff68758913e4ad35c03e2c21a9ee53b6a4f1fed5053795aeaa155c2ae4abae', 3, 10, NULL, '[]', 1, '2023-11-16 09:58:07', '2023-11-16 09:59:55', '2023-11-16 09:59:07'),
('9f61ba2a94c7b1b39827fa3f69fadfbb9a04051cec3d6278ddd5ef5904c782e0d6023dea022ee029', 4, 6, NULL, '[]', 0, '2023-11-15 14:35:31', '2023-11-15 14:35:31', '2023-11-15 14:36:31'),
('9fa6d7f689ad02ae582107a193212cb467dfee71c0838a77fe54a42794ceb230434b12816adc2327', 1, 10, NULL, '[]', 1, '2023-11-16 01:42:27', '2023-11-16 01:43:35', '2023-11-16 01:43:27'),
('a00dcc687c4552ed4706d840b0f03c20287d9e34b394155a94b6873d765c1c67b0e2a537843fbde1', 3, 10, NULL, '[]', 1, '2023-11-16 09:54:11', '2023-11-16 09:54:21', '2023-11-16 09:55:11'),
('a1d7df4f4a89d8184f146bf02abae417d2aa74980ab8eefbc0b8f652aa055f0bad3a98858da29aa0', 3, 10, NULL, '[]', 1, '2023-11-15 16:27:45', '2023-11-15 16:33:11', '2023-11-15 16:28:45'),
('a22a4e0824e84caa3243ef91fb04602e1f821cef9b4671bfaa40e141426b2eee3841c37387a56ef2', 3, 10, NULL, '[]', 1, '2023-11-16 00:57:21', '2023-11-16 01:02:41', '2023-11-16 00:58:21'),
('a290f2cc5f3cc45e2ea23612f28a58debb147b94607a0473d8fe98c49e1fd5c94cf0deeb1bb28952', 5, 10, NULL, '[]', 0, '2023-11-16 14:35:50', '2023-11-16 14:35:50', '2023-11-16 14:36:50'),
('a5613b71ffcc66d64f92c0e923da99f986a10eb1fe2b4fe3779d1310eec633233cd840e128c79e7a', 3, 10, NULL, '[]', 1, '2023-11-15 23:11:45', '2023-11-15 23:17:08', '2023-11-15 23:12:45'),
('a60045e74fe756265ac709cbdb30f4851dd71afa193439732db071c978bfcc5eec644892f7d3938b', 1, 10, NULL, '[]', 0, '2023-11-16 00:28:50', '2023-11-16 00:28:50', '2023-11-16 00:29:50'),
('a6434fd1bcb3a670cc1d8041c7879c03a8bd9c37721e8d2566ce272f8005c67594a5f4b747492551', 3, 10, NULL, '[]', 0, '2023-11-15 21:36:04', '2023-11-15 21:36:04', '2023-11-15 21:37:04'),
('a6440ff736ce7bcf7a4b8d2db87dcb448ca800ca534c49cbf9b5b7cae71ae53c644f2c3e30e6aafd', 1, 10, NULL, '[]', 1, '2023-11-16 02:32:41', '2023-11-16 02:34:45', '2023-11-16 02:33:41'),
('a7595b984d3117810e764054a23ac1220bb19bae2b03c7cc7f8822fe3538ee2c68ad37d0afa316c9', 5, 10, NULL, '[]', 0, '2023-11-15 15:44:18', '2023-11-15 15:44:18', '2023-11-15 15:45:18'),
('a9f7ceb6be03d133cf710cd30d62ec58652dc11c44ce856e773632fc33ba88ca1aa346dd6a4ad7eb', 5, 10, NULL, '[]', 0, '2023-11-15 15:47:14', '2023-11-15 15:47:14', '2023-11-15 15:48:14'),
('aa11449c4aeed62e806b3c5904f240a88df8179561a8fd82a0f4dcfba3e02b54e71dd28b304d7cff', 3, 6, NULL, '[]', 0, '2023-11-15 14:29:25', '2023-11-15 14:29:25', '2023-11-15 14:30:25'),
('abb6c7c2819c18609b7395808da9fe25de03e8ac2c7ab0909deaf3f57900644cff86e773242e44bf', 2, 8, NULL, '[]', 0, '2023-11-15 11:41:36', '2023-11-15 11:41:36', '2023-11-15 11:51:36'),
('ae489e9075bc427edc8a32a867b146496db9c58c9edf32095dfb39e94cdeaca653609924e4f963d4', 3, 10, NULL, '[]', 0, '2023-11-15 22:51:22', '2023-11-15 22:51:22', '2023-11-15 22:52:22'),
('aec8c891383163072878af3d1fd08c898b408a5b8296eee4ff44aa7b5e1dbf41dd3d93ecf60f6bf1', 3, 10, NULL, '[]', 0, '2023-11-15 21:23:22', '2023-11-15 21:23:22', '2023-11-15 21:24:22'),
('af70dd0e05504a48fb946f7531278b4f4c8476fc34a74214ce86496dfc11dbda938b3587af8383c5', 1, 10, NULL, '[]', 1, '2023-11-15 23:27:11', '2023-11-15 23:28:46', '2023-11-15 23:28:11'),
('b2bd94806d76ac60865e6ef55a9b5558473b6fe5a771abdd736f2bc845f18926ff0421ac6a2ace42', 1, 10, NULL, '[]', 1, '2023-11-16 01:31:25', '2023-11-16 01:33:31', '2023-11-16 01:32:25'),
('b40d6fbbc778c8cf0cf2fface7bfddf3df63a0dc48e4dccfdf16a1a4eae67a9dbf01c6f88d754250', 3, 10, NULL, '[]', 0, '2023-11-16 09:45:04', '2023-11-16 09:45:04', '2023-11-16 09:46:04'),
('b5284f63c083c0c92f8d4411850a9cfb4b541ab3567352365816b39790d7c49ee930b0c9a6422218', 1, 10, NULL, '[]', 1, '2023-11-15 21:52:03', '2023-11-15 23:27:10', '2023-11-15 21:53:03'),
('b55fdcbf1ce7340da7c424f1e1d5386733af5bf2df8471ae98daed15eb99d0bc908fb75f64cdd8ce', 3, 10, NULL, '[]', 1, '2023-11-15 19:55:12', '2023-11-15 19:56:39', '2023-11-15 19:56:12'),
('b598bfb3078a460455d8ace03f5decbd4b18ff251e4c068c498025543cc0b89413302af1b7edd0da', 3, 10, NULL, '[]', 1, '2023-11-16 09:29:56', '2023-11-16 09:30:59', '2023-11-16 09:30:56'),
('b62cf2e9d49cea0b76f611c126efbb25e5bde7159984b9a286af5cb957751def9e1713e62ea2c1bc', 3, 10, NULL, '[]', 0, '2023-11-15 15:06:47', '2023-11-15 15:06:47', '2023-11-15 15:07:47'),
('b6c53fdd008309613591d0b389d0ea98abf4f39c74181b874eb8a2da8171903404700289a2b95892', 3, 10, NULL, '[]', 0, '2023-11-16 01:45:54', '2023-11-16 01:45:54', '2023-11-16 01:46:54'),
('b7c3f5c93fbfde77e8d25f3bc41ab88f3eaadc23749e50e418a32a052a2ea9db097db8e67bd6fba3', 3, 10, NULL, '[]', 0, '2023-11-16 01:20:37', '2023-11-16 01:20:37', '2023-11-16 01:21:37'),
('b8317567a75f2a3ea3017a792ac5a776d84799f0c85cfa63ef145f82a1b8be2cda6e53caa13cf920', 3, 10, NULL, '[]', 0, '2023-11-16 09:21:24', '2023-11-16 09:21:24', '2023-11-16 09:22:24'),
('ba361063dea8a098096dfb04a613ba4b2f8980efd9faccd3d8249681b7173359b00ab0947934eb2c', 1, 10, NULL, '[]', 1, '2023-11-16 00:35:06', '2023-11-16 00:36:25', '2023-11-16 00:36:06'),
('bb6d860a5e26b3bc8dfca9c6d871793e105f205d0925864ac99f8a4935442a1bc279dbc86a575c6a', 3, 10, NULL, '[]', 1, '2023-11-16 08:26:00', '2023-11-16 08:27:04', '2023-11-16 08:27:00'),
('bba64be6b1e5c1d83ba480ebe1c52706381b1ed7d5bf32d85d428c5b2032d3a0715d946a3bece133', 3, 10, NULL, '[]', 1, '2023-11-15 14:58:54', '2023-11-15 15:06:46', '2023-11-15 14:59:54'),
('bd98d5bc11636b3f09a6e717f40383869a685043c9f0203c2bfd811d5272e8240040887ee2fba52e', 1, 10, NULL, '[]', 0, '2023-11-15 21:28:55', '2023-11-15 21:28:55', '2023-11-15 21:29:55'),
('bea9212bcf21311484474251b42d76cf52b256dbed9901e551cc789508b7f2f24ac23ebba504909c', 2, 8, NULL, '[]', 0, '2023-11-15 11:40:19', '2023-11-15 11:40:19', '2023-11-15 11:50:19'),
('bf73a6b3d9f58fe39a1edb69a3d4935a341a6e34e7639f7c4f421214dcdecd4753159022ee853ae0', 3, 10, NULL, '[]', 1, '2023-11-15 16:04:45', '2023-11-15 16:05:49', '2023-11-15 16:05:45'),
('c29e85ca3e498cb33c9ac75229bf852c025311d0efca6f622a68312e8a3d6c32270304344bd5b850', 3, 10, NULL, '[]', 0, '2023-11-16 11:51:11', '2023-11-16 11:51:11', '2023-11-16 11:52:11'),
('c41dc1e230cacfff582db7029025417a827c888336d8147cf5974e9acdd7a7bb5b87f94fb1f58167', 1, 10, NULL, '[]', 1, '2023-11-16 00:39:57', '2023-11-16 00:42:19', '2023-11-16 00:40:57'),
('c6cb66906d485f48e89fde6f632bdf92539704b86953b33ebe5eca3523641bae358f27e2ef7d0d74', 3, 10, NULL, '[]', 0, '2023-11-15 20:12:34', '2023-11-15 20:12:34', '2023-11-15 20:13:34'),
('c767bd52713203ee523605f1cee346e4581e3bd5e6f04f6262a40030776345d8627230d7dda085fc', 1, 10, NULL, '[]', 1, '2023-11-16 02:00:51', '2023-11-16 02:28:04', '2023-11-16 02:01:51'),
('c9354d99e197d141f8f7b4fac7ea2e99945f8ca6972bc33e951daf4484f94793de30fa04121b68bc', 5, 10, NULL, '[]', 1, '2023-11-16 14:24:11', '2023-11-16 14:29:07', '2023-11-16 14:25:11'),
('c9e89e19c3c35cbae87bb41ddac7fdb76e3f3ce60867692efc8100848bf9411fbd134e304f488c38', 1, 10, NULL, '[]', 1, '2023-11-16 02:28:04', '2023-11-16 02:30:49', '2023-11-16 02:29:04'),
('cbcee4bad493236bcc4d828ff42da73647f843fbb67d0b261a9bc60933ebd689010e49e92fbf73c1', 3, 10, NULL, '[]', 0, '2023-11-15 14:44:59', '2023-11-15 14:44:59', '2023-11-15 14:45:59'),
('cbdd1b41ea58cd7d165b8667aaccf7dc0d07e241f7f6c44f8a907800e06e8f30ba72898cb48902d3', 3, 10, NULL, '[]', 0, '2023-11-15 21:35:46', '2023-11-15 21:35:46', '2023-11-15 21:36:46'),
('ccb42932f6eb47d57858d11326944f2d6855c7bcb9cfcfbeae10ec63da73f8a6b7029ba54b8d96ce', 1, 10, NULL, '[]', 1, '2023-11-16 01:18:41', '2023-11-16 01:29:56', '2023-11-16 01:19:41'),
('cee1301fc321ce8c6910f6c195577c03e2675a2658dd49046c0389e8b2ecfc342d792dc1f303a0d1', 3, 10, NULL, '[]', 0, '2023-11-16 01:31:59', '2023-11-16 01:31:59', '2023-11-16 01:32:59'),
('cfc9d7b9bb3d17ffcca9e50f7310235342af1b9531018d1cd9a082d3e132b76d2c67c15858043e80', 3, 10, NULL, '[]', 0, '2023-11-16 09:54:21', '2023-11-16 09:54:21', '2023-11-16 09:55:21'),
('d07bdc548fe4a313f4f1041405a9d88795ce2ebc6759fa0e16fb0855b0c04c38118181c6f113ac7a', 3, 10, NULL, '[]', 0, '2023-11-15 15:30:10', '2023-11-15 15:30:10', '2023-11-15 15:31:10'),
('d20932beae3c2564b6d64a2f0c4e45020284289cf9efc316c2b1a0a74c455cf671bfafae896a30ef', 3, 6, NULL, '[]', 0, '2023-11-15 14:34:22', '2023-11-15 14:34:22', '2023-11-15 14:35:22'),
('d22f84d14f949758008b3214267ad93a2dcdc5a71189c8f78ec53ce5dacce5d367737c59ca4f74df', 3, 10, NULL, '[]', 1, '2023-11-15 19:49:42', '2023-11-15 19:55:12', '2023-11-15 19:50:42'),
('d26a23ebcc4cdf3fa3660ebbd4e08201817e2dad9fe9cd74ee5958e2be2b63909ee0b7c8da18b08c', 2, 10, NULL, '[]', 0, '2023-11-16 22:07:22', '2023-11-16 22:07:22', '2023-11-16 22:37:22'),
('d3331b5cab5c20d8dce2dafee1d4edbf5b63d957f0339892973ddc7c929762da8c4f806217187e8a', 1, 10, NULL, '[]', 1, '2023-11-16 00:16:21', '2023-11-16 00:17:47', '2023-11-16 00:17:21'),
('d43438a4ec73c0e800319dc05f2c3a0f7814e5d0e834a1e5bbbf8cb7662d0226044f512620fdc0c2', 3, 10, NULL, '[]', 1, '2023-11-16 01:17:29', '2023-11-16 01:18:33', '2023-11-16 01:18:29'),
('d56adb9af28aec5f2d09803393a862d44072ee4916f6594cf9328402f26c66b3ba0020a77b20ac1f', 1, 10, NULL, '[]', 0, '2023-11-15 23:52:34', '2023-11-15 23:52:34', '2023-11-15 23:53:34'),
('d5701da428e0a7dc94de95c290eb96ecea55c9d8306c829eeb9309dce74efb2f32abae4630c13cad', 5, 10, NULL, '[]', 1, '2023-11-16 14:31:57', '2023-11-16 14:33:11', '2023-11-16 14:32:57'),
('d65ad4af0ff0fa9a239acd71b6de76286a9e4dd80fcdedfa7c1cf441b4fb62b4943813df7e2f949f', 3, 10, NULL, '[]', 0, '2023-11-16 01:45:41', '2023-11-16 01:45:41', '2023-11-16 01:46:41'),
('d9d8881eff6a97b6a104e07bab6b3463e50cc16a9941b38b062a55f1b609369aff0c229a98523a06', 1, 10, NULL, '[]', 0, '2023-11-15 21:17:14', '2023-11-15 21:17:14', '2023-11-15 21:18:14'),
('da80ba13b7d798da7f013296bfb4fde3913b367f0253cec7302077a8246192e53205071ef2e35377', 1, 4, NULL, '[]', 1, '2023-11-15 17:20:04', '2023-11-15 17:25:14', '2023-11-15 17:21:04'),
('db09f07e85bde7efa06294e65a76f8080d6266fd52973ddcfcf69caaafb9a8ee6919f85067e348ec', 3, 10, NULL, '[]', 1, '2023-11-15 21:25:31', '2023-11-15 21:35:46', '2023-11-15 21:26:31'),
('dc81ee790a85707e9df4e0702798b25c1ed7908ebfc5c5befd3773ce0448fe2e4ef2e6f69a03d091', 3, 10, NULL, '[]', 0, '2023-11-15 23:29:27', '2023-11-15 23:29:27', '2023-11-15 23:30:27'),
('dcebadb1361f0a1b859d3bf0ff3d4849b3cdf5271b98e360530f9b172d55736de4c685377e359a7d', 3, 10, NULL, '[]', 0, '2023-11-15 23:17:08', '2023-11-15 23:17:08', '2023-11-15 23:18:08'),
('dfb1335fd3e8084bac52d89343c584deb5d4156c55d2ac718a9b887d41dd6d809ca7a731d28ad0fe', 1, 10, NULL, '[]', 1, '2023-11-15 23:47:11', '2023-11-15 23:52:34', '2023-11-15 23:48:11'),
('e203eb305982e5719eb4dfa444ed45e0acee6aac6349d6104f2577d1ac203f0ba430db6f84cae018', 3, 10, NULL, '[]', 1, '2023-11-15 15:56:33', '2023-11-15 15:57:37', '2023-11-15 15:57:33'),
('e23393169f5478bdf462979efc3a056c649826da13d83f29272b6dfe2254d4558522ffba3a7207b7', 5, 10, NULL, '[]', 0, '2023-11-15 15:46:10', '2023-11-15 15:46:10', '2023-11-15 15:47:10'),
('e345ca9094119792fa3927b9164824ad61184cebaf8738b933149bb9b3e4ee2911e64689bb820bce', 3, 10, NULL, '[]', 1, '2023-11-16 08:50:13', '2023-11-16 08:58:37', '2023-11-16 08:51:13'),
('e38f7147cb5b158fd72ad5470be9d803b01a13447e3042b79d427fea1339b776aadd542ce6945347', 3, 10, NULL, '[]', 1, '2023-11-15 20:31:22', '2023-11-15 20:32:39', '2023-11-15 20:32:22'),
('e3b24ad45a57edaadaee60c6812d534ad29d18f8cd3da022cfc7a542d675bcdda155503d13d1720c', 3, 10, NULL, '[]', 1, '2023-11-15 20:32:39', '2023-11-15 20:48:05', '2023-11-15 20:33:39'),
('e3bc2774ed43da14ad9ca70fbe327ef7ed16c5c992db35f06271106e84938a7e301aebcd782d5954', 3, 10, NULL, '[]', 1, '2023-11-15 15:29:05', '2023-11-15 15:30:10', '2023-11-15 15:30:05'),
('e4a7ee9a6641efc48838652e532a2894ee20d95b83063a6c3445f1e3bc74f29893a662e5763b0ba9', 3, 10, NULL, '[]', 0, '2023-11-15 20:48:05', '2023-11-15 20:48:05', '2023-11-15 20:49:05'),
('e4e06f5bf2915798644dbf5102bfbf5ff5525f160841180d3583f13f7e65556b44d0e633b16d4051', 3, 10, NULL, '[]', 1, '2023-11-16 01:42:54', '2023-11-16 01:44:23', '2023-11-16 01:43:54'),
('e6c50e24625ec153b07976bdeb390f6bde8cb5714afd25e1d4161c3c97cd0c0ea8e107656a67092d', 1, 10, NULL, '[]', 1, '2023-11-15 21:21:20', '2023-11-15 21:23:21', '2023-11-15 21:22:20'),
('e72082e0c304b727818ac4116ba57a36992bba97e7fcf8339f033432c61cece4176a2957cd506808', 3, 10, NULL, '[]', 1, '2023-11-15 16:20:48', '2023-11-15 16:25:01', '2023-11-15 16:21:48'),
('e7551060505197a3df8a401ba6d521e85851d4fb2418d03403d4151aeca4432df1b796af42453427', 3, 10, NULL, '[]', 0, '2023-11-15 22:53:53', '2023-11-15 22:53:53', '2023-11-15 22:54:53'),
('e883aa1241c11b9f2f5d89eb49bd5c8154467e6c73a281b0881b83414d0404fb1a31b9133732e115', 3, 10, NULL, '[]', 1, '2023-11-15 16:36:02', '2023-11-15 16:38:56', '2023-11-15 16:37:02'),
('e8a41480b1033481082221fa9bd38bd85fa693d7f63c01d1ae2d56cc506dd2142990da455f9b9147', 1, 10, NULL, '[]', 1, '2023-11-15 23:30:16', '2023-11-15 23:31:34', '2023-11-15 23:31:16'),
('eb88da458f90a3d1bf23a866742260fa7e89377415ab94d619a949162fb75a39463d87bad0be93ff', 3, 10, NULL, '[]', 0, '2023-11-16 08:27:05', '2023-11-16 08:27:05', '2023-11-16 08:28:05'),
('ecc029261da1f3281cc8895c6bad8ca7c944f7fe7c7101efea4cd37f0246e2a5f4d76ab6158d8d8b', 2, 8, NULL, '[]', 0, '2023-11-15 11:38:40', '2023-11-15 11:38:40', '2023-11-15 11:48:40'),
('ed58ba55a7a2b1ae930414ac9ce657135eb9f8b03a36c634891b7d67f0f198a3e38963765516b5a3', 3, 10, NULL, '[]', 1, '2023-11-16 09:00:00', '2023-11-16 09:02:45', '2023-11-16 09:01:00'),
('ee20869018f1e97cea143ccc2828ab78780c44d0cf2c612e63e11b4c0be8854b6d1f6dba07ff0628', 1, 4, NULL, '[]', 1, '2023-11-15 17:28:13', '2023-11-15 17:29:25', '2023-11-15 17:29:13'),
('ef40725d17bf1d7331cff5f21211c28eb49c3f5baa001dbb81b1765f9394f359a8413cb6451bf379', 1, 10, NULL, '[]', 1, '2023-11-15 23:28:46', '2023-11-15 23:30:15', '2023-11-15 23:29:46'),
('f1d71ae24eda9dc7b3d5d4094a2ed143261ce5743527aa76cf0990cd95e1ff1d6c89445e5e397627', 6, 10, NULL, '[]', 0, '2023-11-16 02:37:24', '2023-11-16 02:37:24', '2023-11-16 02:38:24'),
('f215aa6448dbbfd6b7c65f6590bfe00c59f6a10e7d399851b41d5fe6777cbeed04de3f5967b0e1ed', 1, 10, NULL, '[]', 1, '2023-11-16 01:59:46', '2023-11-16 02:00:51', '2023-11-16 02:00:46'),
('f2aa547870be1be5db9a4e42a0cc438163e3f012f39f5646a8f38e01f530b7dc496108ed70939d3c', 3, 10, NULL, '[]', 0, '2023-11-16 01:30:30', '2023-11-16 01:30:30', '2023-11-16 01:31:30'),
('f3c0d09c4c8dd63266cac299bc47cdf7b2b9577b07d67f247f266b0f05739587abafacb385d63ce8', 3, 10, NULL, '[]', 0, '2023-11-15 15:57:37', '2023-11-15 15:57:37', '2023-11-15 15:58:37'),
('f421fddc30ff43f1ef85ed5765b99b0c23a2ade5d86f401566119b7c298b2b2b906830e6a75d4145', 3, 10, NULL, '[]', 0, '2023-11-16 09:17:06', '2023-11-16 09:17:06', '2023-11-16 09:18:06'),
('f57a11e7c3a8c4e2c3258287bc260c09e869aa56339c1b397b22d1c3cc8561f99a7f0975c0a58f89', 3, 10, NULL, '[]', 1, '2023-11-16 09:53:07', '2023-11-16 09:54:11', '2023-11-16 09:54:07'),
('f57ce88af9e7bce3a47e33970af753bf9260fd01bc10780ceed7384c3f4da5e09c835da990f3f8e6', 1, 10, NULL, '[]', 0, '2023-11-15 21:23:21', '2023-11-15 21:23:21', '2023-11-15 21:24:21'),
('f78fd0225affe1bf65b480f200a6598af7f7f9632bee4e54ec88feb94662f0ec6a637862ae807d9e', 1, 10, NULL, '[]', 1, '2023-11-15 21:38:41', '2023-11-15 21:40:19', '2023-11-15 21:39:41'),
('f7c004ca33fdaa2ed839c546a6ca5fea2fd74eabc6fabad5f0d2f6a78ef5337fa981aeea9c51c1ae', 3, 10, NULL, '[]', 0, '2023-11-16 09:37:19', '2023-11-16 09:37:19', '2023-11-16 09:38:19'),
('fa28d7c7728f19b141e2a5d51ba4cbf44d98a9d9517f79d40bae5c77244001f997874d83b5effc49', 1, 10, NULL, '[]', 0, '2023-11-15 21:47:48', '2023-11-15 21:47:48', '2023-11-15 21:48:48'),
('fce7da336cdea7d1ee781b254ce20e3f526a1032bd567771ab4b209885c66049b4fd8419ee5f6ee4', 1, 10, NULL, '[]', 1, '2023-11-15 21:42:43', '2023-11-15 21:49:17', '2023-11-15 21:43:43'),
('fd31959f992eceb69e1eb493536519f270fe1f214c42aeb0b5667138434b1f47f198dc4064a2e6d7', 3, 10, NULL, '[]', 1, '2023-11-16 01:09:32', '2023-11-16 01:15:45', '2023-11-16 01:10:32'),
('ff6dd31454d144b77d8251ddc22c902deaee33d84835bb5e66b605cfef83d56e8db81431c40b083e', 3, 10, NULL, '[]', 1, '2023-11-16 01:37:30', '2023-11-16 01:38:35', '2023-11-16 01:38:30'),
('ffd8612b3081fe344e9068e363921cf5fe8b53c0e79bd0a25c33fbaadc743e0af6e315eb0fdcd572', 3, 10, NULL, '[]', 0, '2023-11-15 15:13:03', '2023-11-15 15:13:03', '2023-11-15 15:14:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(10, NULL, 'FPolyZone Password Grant Client', '5RsDh9GdGAYvp55nOIMyUl6uLICqq5OE5Lae8Rp5', 'users', 'http://localhost', 0, 1, 0, '2023-11-15 14:43:26', '2023-11-15 14:43:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-11-14 22:13:21', '2023-11-14 22:13:21'),
(2, 3, '2023-11-15 09:59:05', '2023-11-15 09:59:05'),
(3, 5, '2023-11-15 10:05:47', '2023-11-15 10:05:47'),
(4, 7, '2023-11-15 11:31:57', '2023-11-15 11:31:57'),
(5, 9, '2023-11-15 14:43:26', '2023-11-15 14:43:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0060eac33c179bcabc0db8703ac43e1b8657e5dcd05e1cf0d2437ef55b46ff748c45f5aee4b20525', '6cbbf54eb198b19687e494406924dd2f02d15a62ec2d9e69c9abfe3cd4d2ce3c9258de4b079187fb', 1, '2023-11-23 20:20:18'),
('00681b05580e2b857084016470135bc978b4685fe7c728a7f2e7fc535f56c45b97c20f2163e26c1a', '2b583322955eea244883d1c23935d65a1f4c6f7d8b1a52ba40acf6bda98acd34288d2001bd8ccf32', 1, '2023-11-22 21:19:11'),
('009b1b480963e25431db2f9d60303c52b572ca5b336385ba252bc8f0042f6957f7f7985cf9c4fe4e', '5f8b0524e3bbae22abc8198999165f07e6819fcfdf8a592affe1628b34fac2ecd07f3f55158dfc2f', 1, '2023-11-22 12:49:32'),
('02a00705e004ca0ed146b0ee847b146e33b9b0e71ac0682bee2be93a4348c34d51cae2c54b8e5b98', '3b0c9ec866d3369db84f3804c7d694372ab2e6dd15a9a681241f6299b796c656a87f21231a72bd65', 0, '2023-11-22 11:36:59'),
('02e022fbabb23c08c0aed8098b3caa19df171a11c2134f74d82945f3709c73eda59a9475e88353b8', '24f302161b2082e2b544fb64e288f12bd4035a5732a0dcf39f754c5279fca613ae9297ddc7855b07', 0, '2023-11-22 15:43:27'),
('03246d551761f9ffdc21caff7b3f6e8968e097cfcf8f4d81772befa9565c2b9c4a2045e5ee92ced6', '6d22382cc065ab6e9cc3e0bf7fc1b409333d202a7300d528a02f542447ccb21802565b7b7c4dec7e', 0, '2023-11-22 10:19:50'),
('04c941a2673ded7829aa0089a9b412377e73b02695b26fb1799b3472de67d345224935430a0d9ea0', '7fb1612f0081bdc5f34b6b7cd0675347efd06bb97c709203596e8893e36c458ce83084908fafcfbb', 1, '2023-11-22 15:42:14'),
('056fbcbde16b67679f42d792dd3dd70199582869b480b234c857fce507f5971cb539f1806ee7d9d6', 'a5613b71ffcc66d64f92c0e923da99f986a10eb1fe2b4fe3779d1310eec633233cd840e128c79e7a', 1, '2023-11-22 23:11:45'),
('07f78cfb8d3db838b75868b5547977d6d15d267d0cd64cfc3f736d8123127b95c6c717d5d9f1ad67', 'fd31959f992eceb69e1eb493536519f270fe1f214c42aeb0b5667138434b1f47f198dc4064a2e6d7', 1, '2023-11-23 01:09:32'),
('0837e3de21d3ae4de658f4e5353ad6812c7cce9e164240fcdc03b1aabf486565a53edbf198c41a86', 'd20932beae3c2564b6d64a2f0c4e45020284289cf9efc316c2b1a0a74c455cf671bfafae896a30ef', 0, '2023-11-22 14:34:22'),
('08ee80a5a9b276b0e1f9754c4ca9d32e2889d99868edc12be2e8cd84bee61cb99dd74e47e3775d08', '383c7eb05b90957e1df1a9eecfb15f520a219b314005466ecde05f5050caf2fffbae295e78a45bdc', 0, '2023-11-22 11:00:50'),
('0a74bd19bf3ef7b5f5b40266f577c18278223e65ae5dfc40e91f558eec26fd3ad629ef25999ff744', '2de751759987e9243fcbff1b4e8c5ef5e55fdd10af8f15450c62c3ebe32eb16ff69f9fd862fe4170', 0, '2023-11-21 22:17:48'),
('0b5fd3a722fa94d7e43c4b3ccf433037a2e7dd3a6f48bcff8bd438c69fcf0fd8cd03bdff9e50e90e', '5904bf81acb04b2f1baf61d6b2a92c34138dce57c94ff23f13f053d52c51c1ec6eae983d7967ceda', 0, '2023-11-22 14:32:09'),
('0be5a546b14865f05962049db9a1dc675b603d97c161d05ce4aa3609098701cb8b7367ad840800d9', '6ea3f4a3e0cbff10c5ab8c5ff92d5960e5345203f1564925e5007a06b1f494eb265105955ed32454', 1, '2023-11-23 09:41:09'),
('0d770b77e943ffcf2f5eabfea561dc90f08f6447f3ba335b56634106ca22090f9224652f81a8557b', 'db09f07e85bde7efa06294e65a76f8080d6266fd52973ddcfcf69caaafb9a8ee6919f85067e348ec', 1, '2023-11-22 21:25:31'),
('0e0ce510e6cf366215805a704ae02beba78974b95b7c234cf60f7c958c050fc9eb32a41c819267ad', '3c79a8285bcf5424058e304c0c3dc8d12efffa82b8596c9d931575b823b5be475a3fae97e995876f', 0, '2023-11-21 22:23:42'),
('0fd0d3194d2d6924fb5210dc9a61726b413bed181d9f845c674446a77ed10a3833d0cae5b412c678', '7169867e8574da6343823785ca3494a69f95cc76635eabb4befcf629039674b33870bd296c390194', 1, '2023-11-23 09:25:51'),
('110f90e5a7e2b662b911456d34301fe95d056a936fe2ed9ff5dba1b6b1983bc96965edf0d717075a', '079a3b16b50108d558731749cbd2ad463594efb7a73220e6ece94853b1a3a84c1d2a8a739ee9a2d0', 0, '2023-11-22 14:29:04'),
('13f2bc6cae042a9b305b9d016fbac24a0d4df0598fd3e42f8691a016d1eb43b5a821c4c7e3543cb6', '9ac4435393c0d786dc4c1ec85078c1d833ce026ba938fde186ec7bd8f9768fd3a39914788bb31abd', 1, '2023-11-22 20:51:23'),
('15b02473b99ff819330b373d4383d76a5853793da7cb832b422983c74bd075cc2e1d7023658179b1', 'ee20869018f1e97cea143ccc2828ab78780c44d0cf2c612e63e11b4c0be8854b6d1f6dba07ff0628', 1, '2023-11-22 17:28:13'),
('16dcb41b1933ddc49708b00b8c92747f2ac24e2bfaf7d0c38edcdc80255336ea59ad691ed3c92ca0', 'b55fdcbf1ce7340da7c424f1e1d5386733af5bf2df8471ae98daed15eb99d0bc908fb75f64cdd8ce', 1, '2023-11-22 19:55:12'),
('17ffa7519949697dc92374ff1001f75aec2bc785ea30726330d4383ff61d9f41d0b5818fb9a1d5c9', 'd3f9754a889e0b55382790f77272d6f30417721100ae9f1797c7e2c52c1308688b35c94cd2423de9', 0, '2023-11-22 01:41:40'),
('188404d4bd66ac10590c1d7631dec977162ab1c4a6ccb5c4ad4bfe74495503454c444ea2448ca1b5', '6cac5e0f513daf22ba6a9f81fec2dc92a3137acca3de25ccf3c792ffc4ccfccd15bc6f3103ce18b1', 1, '2023-11-22 12:39:12'),
('18f6ab5ef2abdf330d8083ce61a7b22fd6ebffdcbe14339c418ff42549d27374418a58d00c2f1548', '9cfd65c0f6232d360e3bb2030ed0b1ae8423d302b99be0253aa3553d1808e62e427b313987dfc6ba', 1, '2023-11-22 21:41:25'),
('190837b2038b969d75ba8f5faf9a53f4796be8bc121078d22b82bde8bfc3b5ecc46cca53d773a705', '9c04630fa68ff93f3c68e86e1038d0563171354d7b66eca7820cbb1b0526dce8dfa9c61402345a0d', 0, '2023-11-23 22:05:15'),
('1924ecb2ba6457e75e570672ad93f6e1ee303e312d1f343bab144c516ca3fb729724c611bdf71eaa', '4688af1ee9e3ebf66eb6e863926df35b9fe98d791a660d960626f21829d5348e40a5c4d5efed4268', 0, '2023-11-22 01:03:18'),
('19359091c27f510c08c1aa3639627f4b874918120833d4f72c902255ddd392b779ac4257661ac8de', '70433eddca77d184da5bae71bf48b1b42b95b491914a52bf57ed068d36fa77a16093822b38f5895b', 0, '2023-11-22 12:50:37'),
('1c1c2f1194b13ab2f4f3ebeed553fc389b8a16d717f7c4bbf34ff7d9fcaf58beea0866cf92b98eac', 'b598bfb3078a460455d8ace03f5decbd4b18ff251e4c068c498025543cc0b89413302af1b7edd0da', 1, '2023-11-23 09:29:56'),
('1d81d1e2fe6c507986529ce4b47cf920ed14a345ecfe82d494b468057890eb928257a88ea39830e0', 'd3331b5cab5c20d8dce2dafee1d4edbf5b63d957f0339892973ddc7c929762da8c4f806217187e8a', 1, '2023-11-23 00:16:21'),
('1dd2159a3547141da2b5faee7114b11772c5836cd3cd5cfc72dc417cc9832c213fc87f8cd9242a64', '136183af9718510f0dc4cbe74984503cf53d3a5442edbbb066d6fc787a2c5fd6ab35e717f35d2339', 1, '2023-11-22 15:11:57'),
('1ddd19d9056b670dd9a29fd6cf206be3755dffbb6868fc2b50453d5a103e77e4c468b90c3e7197c9', '2457cf8a4a8e63dbbf6ee58999a5d270329c67bf645fb053c256965491094585a445198d3e80341c', 0, '2023-11-23 09:43:48'),
('1f15d0eb770aca22aa76b1d13999509173acf2971153892cab4c3258f79e818d0fd8045f4fcca947', 'c6cb66906d485f48e89fde6f632bdf92539704b86953b33ebe5eca3523641bae358f27e2ef7d0d74', 0, '2023-11-22 20:12:35'),
('202caf7f2f730fa6081cb849ef6ade03722e243d6822ee10d551b483cd250e98d7359b9b4e1c81bd', 'fce7da336cdea7d1ee781b254ce20e3f526a1032bd567771ab4b209885c66049b4fd8419ee5f6ee4', 1, '2023-11-22 21:42:43'),
('21ae7ede938ef46529a4234c7c65772f257257c453284907f4c4e2b9c7c09c8e0e6513ab3d73b5d0', '67648e00dec99a689d965f7e8311e8d8fc549a08c0dfe915cc1b0c4518283020faa950b1676cf387', 1, '2023-11-23 01:55:50'),
('22cc3aacd9711bd2a3d9f44e827742638cc4d49c1c12a9201e482f0d02f104b0520cec49da8064ed', 'dfb1335fd3e8084bac52d89343c584deb5d4156c55d2ac718a9b887d41dd6d809ca7a731d28ad0fe', 1, '2023-11-22 23:47:12'),
('22e318486ee8f66c34692a835d7e77fc1c3a3c9c6519b2c5bcb0bc336940d4c7cc1a7ba140053485', 'aa393ceacee310aa01c15192614c0e0ea414759d3719ea998ed4e909b30f99504cb093f5147e0c1c', 1, '2023-11-22 16:45:01'),
('2486ae5aa9a4b171dd333db2ce4eb5c7e5e7fe2766ec7a710e91477fbb2d08f9661131b42ebda866', '4b5c1be2c3a72f91c1da3ec6c094d1456bacef5e2c10d03fa6349d2c79d489d58da0b774e4f17a9c', 0, '2023-11-23 08:49:03'),
('2858a37318eee39f74ffb6acc50b7dc09d859eb8a690917e81ae2091a67a6279a1c071d8e8e1c259', 'a22a4e0824e84caa3243ef91fb04602e1f821cef9b4671bfaa40e141426b2eee3841c37387a56ef2', 1, '2023-11-23 00:57:22'),
('28d1334a1a4c270f402898e7237c528d8e5a82b324e2e93994f9aa3f2d85d03b3dfb4b9d9438845b', 'f2aa547870be1be5db9a4e42a0cc438163e3f012f39f5646a8f38e01f530b7dc496108ed70939d3c', 0, '2023-11-23 01:30:30'),
('2afaae784d00961776a4d528b3cb5825a19257958f973236ca84b6a16956e7c2b621c7d84749efa7', '14f03424a001ee365cfec86fe9b14867c3e46edd2b8377c6f79cccb90193b9231d6bbb29b3515b39', 0, '2023-11-23 21:23:23'),
('2c9f47f97ac9cb18c7a785572cfe2f88c728b07568013c5df2464064cde6ac2e8b97f1f3c08142f0', '0fa5265936167e80a2e7858e9cb8f75ea31c71a03e046107bcbaf80bfffe6cc728441a8735db0f01', 1, '2023-11-23 00:37:33'),
('2ee909043fefdbdd5d10ee8e504e5345a1cb5aa996ba4ed82ca96cc1a47e60957395fcd48a794bea', 'b5284f63c083c0c92f8d4411850a9cfb4b541ab3567352365816b39790d7c49ee930b0c9a6422218', 1, '2023-11-22 21:52:03'),
('3042a84e9ef90ace169eab87cebd25ead65f879c6df77958af77c05666d94d17fe578cc000bb713c', '0105335cad71fc31263397e7e243efa394fc4821b935b6f930048f080089c3464f8942439b6a07cc', 1, '2023-11-22 19:48:29'),
('31007f2b2c4dd6d40bfc826eb181509dfa6cb20e3a854e4e13f121c78f6d57f31082ad433ee359a7', 'aa11449c4aeed62e806b3c5904f240a88df8179561a8fd82a0f4dcfba3e02b54e71dd28b304d7cff', 0, '2023-11-22 14:29:25'),
('34ee054a837d2bbd8e9cc3f405b5ff38e5fb559c8b456f633be2c9560e3c7f71279bb09ca394df32', '8dedc7c22ace02e91c6a86be549b56e72e3430c7aec307c09ca91c33873b996ce7f8fde2ab27e3b1', 1, '2023-11-23 00:17:48'),
('37d13c4da624b498575bfdc9824852dc23eacd9cbe22fe25b162a3a590dd31cd2f1148e48e83efd4', '38fe39420c8dc3bf8bc669786b87e2eb9703cae60fa6701e6446a28121543f6982da5a7dc842d2d1', 1, '2023-11-22 17:29:25'),
('3a7013ed41828de6b4ebe89f096b6f8d12de3c3e749e58167597427dbc24f3993a4bf9d0b492da59', '1718b85980a00b84738884e1b3a7f3ef0af8f275ba2d5b8c646e4c5c8fb3d13d0042276f34b98451', 1, '2023-11-22 23:31:35'),
('3aef7d176b1a4793dbd74e2b3fd775c42066da1c4928e1dbb5ced6e6dec2ec97c7de71e284dc8c59', '17a15785ba2559694929f5e2516a39735716372c948599a3434a613205cee43d24f82dcd5a7cd3af', 1, '2023-11-23 14:29:07'),
('3b9f5187ac145ed31964ccda1aec5d50b1a9af9767fa48d1115b8667f64346ef5b607105e58afcf8', 'a9f7ceb6be03d133cf710cd30d62ec58652dc11c44ce856e773632fc33ba88ca1aa346dd6a4ad7eb', 0, '2023-11-22 15:47:14'),
('3c914f0147fd54f6243532b6c2dc5f799171c8fc7e19d69aa2973e8dcd84564cec23b37c70effab7', '9fa6d7f689ad02ae582107a193212cb467dfee71c0838a77fe54a42794ceb230434b12816adc2327', 1, '2023-11-23 01:42:27'),
('3d167d1a77237ef4483f7aafc89b982472af3251c9cc20c50babc6ad5b0cbe8769da40fb3ef4086a', '020e719e12ab05821c4b2f3a9e8c4c9f7f74949671860119ac6261b19d1479766bbbe638d9683388', 0, '2023-11-22 16:05:49'),
('3d96a8f2eaef765207c36560bc8efe461d0d2c3f55f8f2948da999ec80456d36057d31a93843d1f8', '9f61ba2a94c7b1b39827fa3f69fadfbb9a04051cec3d6278ddd5ef5904c782e0d6023dea022ee029', 0, '2023-11-22 14:35:32'),
('3dc14c3dbdc6d316d501ae1b6096bc507feba12be5faf22f511fbda68d7330f96a17f322c6e05071', 'af70dd0e05504a48fb946f7531278b4f4c8476fc34a74214ce86496dfc11dbda938b3587af8383c5', 1, '2023-11-22 23:27:11'),
('3e7823d064f8cff38971a5d508bada9acbc73e4817f7ce9b3aadd41688e8fe2847d6336da95aa384', 'dcebadb1361f0a1b859d3bf0ff3d4849b3cdf5271b98e360530f9b172d55736de4c685377e359a7d', 0, '2023-11-22 23:17:08'),
('400fea4bf547882ca842c6149033179b42e6fdea8a6429b5f3dddc002f9715cc4c33642001e8a265', 'd5701da428e0a7dc94de95c290eb96ecea55c9d8306c829eeb9309dce74efb2f32abae4630c13cad', 1, '2023-11-23 14:31:57'),
('42817b9c9c0db7d10fff3d52cda7afe85f99c986fd0918a52f861e43d78cbc301e825cb0b77bf707', 'd56adb9af28aec5f2d09803393a862d44072ee4916f6594cf9328402f26c66b3ba0020a77b20ac1f', 0, '2023-11-22 23:52:34'),
('4315678f5581171fe4b1075809b919eea1f8021671ec44ace53423c211cb6bb132e4df42fe1046e5', '19c54e715482a04f4290fe147a50e38ee5a6bb72fb3710ce5780eaf102a705f08fbb03326cfc24e3', 1, '2023-11-23 09:44:02'),
('4373441c8b6e41087e644dfd52b0ff56d30740289a2e2d9f3e8b0e61a5b966f5d7a49c1128c16572', 'bba64be6b1e5c1d83ba480ebe1c52706381b1ed7d5bf32d85d428c5b2032d3a0715d946a3bece133', 1, '2023-11-22 14:58:55'),
('45461ef7bbfcb877fe5ec5185b7cb60063a8138e06a286e809143706cdac2de74bc4d33228357eb6', '39d286a95a392b37f711cbfe3fd2152384dd65040daec0e393cdb9153b9cb648bd91aa20a11a818d', 0, '2023-11-22 01:15:38'),
('4589970d768fa285a6e375479c824eb4f76b75e7a4936911c2c73625010ff389f9143ecefcc12351', 'a00dcc687c4552ed4706d840b0f03c20287d9e34b394155a94b6873d765c1c67b0e2a537843fbde1', 1, '2023-11-23 09:54:11'),
('45d5b1ce8161a202c3984e8997455da8aebaccc6de01458359e5557132a5f407d00bc3520ae901ce', '774be01fdd97ba13a85a837a33f6adf6d2b5a075f9bca9ba1b0a3687ab14d60c1f480bf907158d34', 1, '2023-11-23 14:18:57'),
('463761154039a680541bba5579bcee0c5996c84cbe21f0d1f2ae5bf87593be0314cb65f038a8fcf7', '38d2756d1aca10f0b751f22771b652a3e83d2fc52feceb76964f48cabbaaac3c345dcd82ee366ddd', 0, '2023-11-22 01:37:36'),
('46f2d604dbde2cb9d934c0ef252cd41fba0b4dfe924376c6ba4c84b3ac5d4b027d78079a4b7cab1c', '0df1c862dc7aeffe051ffd43f8fc66494282a5cd82e564245fd58bff1503df0dcea3749efd3da957', 0, '2023-11-21 23:55:54'),
('477a280ea930329adc136ef7b879cde3ff312c954d46671fd86ddfc48a4d961a0237345268dd05d9', '2d8c9ce635d04ff65a250ea9e8ca952db3a6af34b492400e9baee6fc2a292844ba9436b662b3b84a', 0, '2023-11-23 18:27:23'),
('4b3eb510b8d2e2e6d2a301fa4cb45ddd993276f64ffe776a7b0944352a2885bdcc92d4b02aae82a2', '4f6e2657410264a6fb9290e990222ceb08ce40605bb9a925d6f5373fc49d67c22210400d236b1439', 1, '2023-11-23 01:44:36'),
('4c52797ae176f50150382beba33125cd88d09e9741941ce770eac6bba536f41b0ee07962d06c9da6', '94193134e1717614afcf5a7d125b8fe65579efbd7489849587fd0b7eb7e5e970cda8913c8cb18be5', 0, '2023-11-23 01:15:45'),
('4cd43f8d578f0ba858dcaf22f92eb39468ff1bd78d5b42c18c691f0d92c3aa5df8702653d1ead560', '952398fa0da2446ca7e0d9d220960b9d0e991f09c9ad67207ccbbbde3a0587135a3857a37ec454da', 1, '2023-11-22 21:19:13'),
('4d1667eb548c278c91eeffaacdd0af9eed57f6b1ae92399be07df19caa34a586f3bb399a9064c2d7', '73c8a8099dda1da1e3eab11fc63e05e9706b4836f89b4dad328e16f9250f7f621610ed38820b9e6a', 1, '2023-11-22 19:56:39'),
('4de2f930f89f1d098908d6e2f9cd112148e640f631fc2c005bf1d9fc5757fc9c574a44e4b1532a66', '5fdeaa0e029af7259ecd64e1ad274a4c725091646fa8ad0f736c0d227586bdf343785ccb492465e3', 0, '2023-11-22 16:26:36'),
('4e51b2f7cccb46d4428cc36747c43e609bfe0b1e45c16cbbf0ff9f4b844b3e1b520905a568c65e7a', 'a60045e74fe756265ac709cbdb30f4851dd71afa193439732db071c978bfcc5eec644892f7d3938b', 0, '2023-11-23 00:28:50'),
('4f3403bf77277bf687fd63e51d444c767a78a0f05a2ca5ad1143dfd5edbe2a3a64b919165be4325c', '5da9aa6397bd9598189c22c1fe119e0f87f77466a814f212fefe3a4d4c3c073ab1fe411b24f9205b', 1, '2023-11-22 23:44:36'),
('5095d1079d70c7beb6cd275736ddd194a17c6a60a2b6f7ca1be953ed1cd1b6929eacf7a6e0c5daaf', '87fd6a465358a92a39c4d420fc0bef5c1b431bcb86f770c5d89d853b6082c56bd2a5ed2f1033da27', 1, '2023-11-22 21:40:19'),
('516652ca464bcfc3976fc76f8ff1046a6a193e542c9c0c3df7dde8e99ef45c1e37051ad8d3dd9a13', 'f215aa6448dbbfd6b7c65f6590bfe00c59f6a10e7d399851b41d5fe6777cbeed04de3f5967b0e1ed', 1, '2023-11-23 01:59:46'),
('519d9e10cf9b3a50965514f564f5b310b0ddd2bdb9fd9ccafbe85c99036cc8a0866dd3eec4eb32f5', 'b8317567a75f2a3ea3017a792ac5a776d84799f0c85cfa63ef145f82a1b8be2cda6e53caa13cf920', 0, '2023-11-23 09:21:24'),
('5236aff9d3d959bde4f0d8ca7a80c27178e68e7cedbf21f61090efd31aa913d594353a47599bf6cf', 'f57ce88af9e7bce3a47e33970af753bf9260fd01bc10780ceed7384c3f4da5e09c835da990f3f8e6', 0, '2023-11-22 21:23:21'),
('524472f807e35bd3b1f6aa7190acce9d650ef431be0863f27961aafed3c5845057dd1b24d0e9aff2', '576d571b574f96ca1bee9d96cbe12e4fa2adc3f23277c78f2fe45d6a142b1002b3ba232d8025c923', 0, '2023-11-23 08:38:43'),
('52b1b2c915a64050e392fa405e7f2dc5136788c39c1ca227b83131006cb8774766bf06dddca5cd03', 'd43438a4ec73c0e800319dc05f2c3a0f7814e5d0e834a1e5bbbf8cb7662d0226044f512620fdc0c2', 1, '2023-11-23 01:17:29'),
('52e42254e06d347c31d9680d3ea78dfb149f56d59bbf4d0b986c5f482ee9c431d9aee1c8f6b56c32', 'b7c3f5c93fbfde77e8d25f3bc41ab88f3eaadc23749e50e418a32a052a2ea9db097db8e67bd6fba3', 0, '2023-11-23 01:20:37'),
('52e91972d042486f6debe71637c8fd82fc7fe40a380aca7920a7d4b5dd85a165f55a78671f749539', '8c8d00126ba0641a343152a26e4ad6e37cf8da32abfa03829fb06e06acb7c5217b9583c3d66d8c2e', 0, '2023-11-23 02:36:52'),
('52fd7d3b26aa949638f4be2c4053abef100b76c9c9c774da6baddac5dd040bb8b6287b971be5c39a', '48bd9e206f3f8459e64fdfa4b2024e4edb3259d150e91ea2412804ea89080201430962c6da9362d2', 0, '2023-11-23 09:30:59'),
('573ad85363f4a72e28a9a3221cfaa5cb3218108cfc70ea4ed37a5ad8f1a1834b017b275b798d9f7c', '8d83d1ea2e512d69c84f6217c99d891914c4c3a66d86a812bf2381bc3ed2ca316c015b4ab5823635', 1, '2023-11-23 01:02:41'),
('5748b3299e7daaa9a5471c874838b9480465c910a884ebabb0861e7361eb0ca208d257d8c8a550f9', '4046f04d8605e3548e2d5fe897f18cef35218ed2421a6eb0e1cf7b95b9a7a226f21aee0a9a327d6e', 1, '2023-11-23 08:41:21'),
('577d7ebb9622f3afd3f35b1a18bcf61d276e1ed474590a3ec6a00d53f9dbcf420b13541746e85baa', 'a7595b984d3117810e764054a23ac1220bb19bae2b03c7cc7f8822fe3538ee2c68ad37d0afa316c9', 0, '2023-11-22 15:44:18'),
('5a5fac74db350e5185882ecaac825e8c4a83380a553a36be2a563d86fca55747bab9b26bf4adc377', 'b6c53fdd008309613591d0b389d0ea98abf4f39c74181b874eb8a2da8171903404700289a2b95892', 0, '2023-11-23 01:45:55'),
('5ceff6382bd18b92107ee3434d68bbe83d85f8b07a386bef15f534eb0f070f64ce9df41cd4a56e20', 'bf73a6b3d9f58fe39a1edb69a3d4935a341a6e34e7639f7c4f421214dcdecd4753159022ee853ae0', 1, '2023-11-22 16:04:45'),
('5f1993df79ff0f186cb167b2362f3515d6884ae722d55ca79db1682e6d82aa6fe9f75d4e094ad78b', 'e3bc2774ed43da14ad9ca70fbe327ef7ed16c5c992db35f06271106e84938a7e301aebcd782d5954', 1, '2023-11-22 15:29:05'),
('5f5bd2e2723536542738be969a8b449b525987f421f24ec2835536a4a07e945272621969d7bd4c02', '025c2aa3b4f747a6c3ce4f78609329cb1e5379a6d7035d39468c2cd690ab7683d4a923bc33758b27', 0, '2023-11-21 22:21:27'),
('5fe8f346d15e086300d6dbf3890ee05105fe407a9ac38aa52164f18ee8484926b45edd67d5b6a06e', '4d48ce44cc3da553223bf3251a3f2b6d52586fce528395ef42ff6d5251ef325542e790084ceafcb9', 0, '2023-11-21 22:19:27'),
('60896408a7bbcaa3cc1de4c1f7c7ab868bdbc1216b942ed4f72fda91f55645e729a459ebf90bdf08', '3b5e4deae793b40bbcbf20a15e383132f3cdbd560140af50b7df01940eda1137014e933ec12233d7', 1, '2023-11-23 01:27:29'),
('645013ae37f14c26fd1d6b31845743248503b1c7b94b6adc8bcb97c7fe0f556f62fd106aba3df6ea', '61172dd537cba44c08331569f14b3d414752b8679131dd4a1e50c16366de8acd27002969543d2c34', 0, '2023-11-23 21:23:34'),
('648112f9326cbb599bc802a603959e7ac9cdb918a2812d407db45588ff5bd94066f1964b090d0395', '45949bf42a183756529552f90f2c7a82438c74420e2ddc2fb9eb6b9bf2251cab1dd471b34556b542', 1, '2023-11-23 10:00:33'),
('64f429542d824fccdc327c7a0c197440564d3ca1829c01d8e4179eb44e6953c4a932b78ba4ab9157', 'e883aa1241c11b9f2f5d89eb49bd5c8154467e6c73a281b0881b83414d0404fb1a31b9133732e115', 1, '2023-11-22 16:36:02'),
('651c4e1cb5250eaec8d4126d94a50becbc9c7ff1de25d83ed86554ffeb75faeb0b312591017f54b7', '105f203481bcfb5915609837e3faae2efbba210cbffb0cdc4c8ead10954fbe4f2c75a168e3526645', 1, '2023-11-23 09:31:44'),
('65750b8937b1d7bfd1ee4c3ef9fab64f275e02a46d718b94f68c62d2802023bd1a5118e391a9aac2', '653e4e8f880418154e8ce2d6f9db8aa45ad65ba85374e8b1d6d9f9f96ea0d0a8c1c46e66bc9a674c', 1, '2023-11-22 21:23:35'),
('65c58626ddfb7269b4e2a3f5b4e4848020fe2d76d596aaf84543a383c8430d98e5cef661b2d72bad', '8c9c69023529e8e08991f85c1223636cf45b43882bcf8b414400b95be10b85359f5dbb49141dbb45', 1, '2023-11-23 09:50:02'),
('669195e0894147373da69fcf449f5b14f4389d436c2f4ef6b515777d9f9b691c90b1b0298c761230', '42e3c938724b2b3090d5a46064e65939299a63b722b5cb4c844c96b749d451460cb1a0a9dbb76026', 1, '2023-11-22 17:04:06'),
('6898c5c271c9d72eca72594d00be712aba4b2f3a0fb75aa8a3407da4140b79498b9a98053e533604', '926639b0cb78e6d9483f3b6f8bc866b24571c5134515cfff78be43363ac7c8737273eac4e3b7da6b', 1, '2023-11-23 01:35:56'),
('69caf49f51bcc55bd39ab8034e31b63d810c8aa1c84fb9f1f3008e5e5bffb649dab3788ea5ac0a4c', '8790742da10767cb4cbf19afeb6575d66f2b98afab829b5a4f27f4ce0eb61e1806dcce861d1b86ef', 1, '2023-11-23 01:29:57'),
('6bab318e839ae4db7cf5704baf3dafdd3ad8d3ed8726cf9a857687bf1fdeb43523a4e20ae261ee22', 'c41dc1e230cacfff582db7029025417a827c888336d8147cf5974e9acdd7a7bb5b87f94fb1f58167', 1, '2023-11-23 00:39:57'),
('6c49ab961428a6aa8436db358f2bf9dbd37736323b661eff9eba2a55997f7db05ffee972b1902dc4', '9435c5ea48771be36f1cadb3b5252af72413a7b400431143af2338be6e21b84f744c072bd82c45d3', 0, '2023-11-22 23:11:26'),
('6c91cc6677f776002b1be0270595359487131806424b4c4a18e035601369a8f773685d775338abd1', 'c29e85ca3e498cb33c9ac75229bf852c025311d0efca6f622a68312e8a3d6c32270304344bd5b850', 0, '2023-11-23 11:51:12'),
('6df231c344bc6203426a4a02f7a3b2e0c4233e81958f73124bc4e3a93d6b76ce32185d4c1e3b0e60', 'ba361063dea8a098096dfb04a613ba4b2f8980efd9faccd3d8249681b7173359b00ab0947934eb2c', 1, '2023-11-23 00:35:06'),
('6e02fe61c8556578c79ddf73b74a800e9e596f5b67ffc390d14f60ae5bd9ceee18a2a5d1b359d217', 'b40d6fbbc778c8cf0cf2fface7bfddf3df63a0dc48e4dccfdf16a1a4eae67a9dbf01c6f88d754250', 0, '2023-11-23 09:45:04'),
('6ebe23382f5aeafbb9e1582ee9a3914c021f73400f15f9d40e57176bc204717bd73d55b4a2b076b5', '69afafa5580f5f428224ed05ef038561a7691dfaec5ae72c6b57bb9857e18c7fe7d51091749fa049', 0, '2023-11-23 01:38:36'),
('710fae631addfc2d440e47e2108d2b49e802489e9c71d9fa768343a2bf316bbbaabbe1406f286f58', '1e4bc65537eb2fe061e51421b133ede6f9dd3a4e08148c74cd85e61ac4c3dfe7b556a54632454ee6', 0, '2023-11-23 01:44:23'),
('722c5ec00e7b4d2ff5ed3cc013c7729c24245cca44197d6e0394a6b660afcce1ed4817e4402f7311', 'e7551060505197a3df8a401ba6d521e85851d4fb2418d03403d4151aeca4432df1b796af42453427', 0, '2023-11-22 22:53:53'),
('72b13c1731b1805c225af9e62f7a195f06f158859f51e9297f4b62c06e708f3eef3143fd25695d20', 'ce9260dd2ebf25f3b4ea832a67b2c14ed58801d9aa393fb55a5240aefd82a97bd5be60a1fb9f6edc', 0, '2023-11-22 10:03:30'),
('744691eebc083bdbcedde0a7e8d946f786e60294a22aab981c958213f73058fb3e4f498e7c5f5e35', 'b3d306108125080d935d981ae01ea80b6af6d3377f3dd6c43215f41b9a4c0a0def0ee782c024ee41', 1, '2023-11-22 01:35:16'),
('75fb79a03aafbc59f1eccdffb30d811a7f2fcb1a0675e4516f2fcf852d5d737c40c0dcf5301cbd70', '26960245b70c81bae279ad21061dd5d059d1475cba70d74834a2c32ed98dae0f9a986c8bb4585dea', 1, '2023-11-23 02:30:49'),
('774cbbe46e828f473274c709b6f8bbb7c45f55ee3b78e99d33a5f438bd35d003d53ceb74944dbf87', '092bf545e9e660b569c72fb638e88a31f61357e59a887fc41b9d733d3edc3804d643891c86e76e07', 1, '2023-11-23 00:11:57'),
('77f231721372e061ca5b88375ce8a873f78faadebef352fcaf6de2e97465cdd5e5876644a9e70e96', 'd9d8881eff6a97b6a104e07bab6b3463e50cc16a9941b38b062a55f1b609369aff0c229a98523a06', 0, '2023-11-22 21:17:14'),
('78962ef9f6008f52435a5c0057bc29c2ab24bde8170aae655c0002aacab4ae40ba6f0e31a1d93c03', 'fa28d7c7728f19b141e2a5d51ba4cbf44d98a9d9517f79d40bae5c77244001f997874d83b5effc49', 0, '2023-11-22 21:47:48'),
('7965e79c6b9eda2ddd96332a8489003841b0a9ed5d515df8b5760070ae5c49722c5e2ebd8cf28fa4', '6f2ca7bafd54dbda257898d1c9335d7467cbfdbe7494711687d7420739f3cc66e862b97736970bc1', 1, '2023-11-23 02:34:45'),
('7e4f95918150844757c6440a30d1b608ca110f663516b51a9add3f2fb84a3b6400625f1f2d7dd52a', '4377b7ba013744501e6d0b9c129c3b6f169682f48084538863edfcf94ecded9a1a7f10d54b662c72', 0, '2023-11-23 08:40:48'),
('7ec3e73b82d69fad51351e52dc807f0b4d5c5f8099143852c933356c8344870c77b60d5584a02047', 'e203eb305982e5719eb4dfa444ed45e0acee6aac6349d6104f2577d1ac203f0ba430db6f84cae018', 1, '2023-11-22 15:56:33'),
('805c021263a23955f1367e96a1c0baf05bd22420c5932880b5d0f04604d65a7afe80bde1eeb1f9b3', '2dca1a3e4ab5e323c2cb361071a526c914d93011dda723ece304b52e4189ce5694e3ecf79d7321be', 1, '2023-11-22 15:54:51'),
('80c63b20247c642b67360acd949f38e0cbd7fe8fbb00a0bcaa3c0b5e33ad2f5b7dd82cf2f8396fad', '84142902975503b7df24d77057cbf6bdfba598a5384fc783dc807d909f8f3b6efc459ce6ae6deedb', 1, '2023-11-23 14:33:17'),
('83b6c51125169199e19a4a0961bf4ebc3c89f0b00a8f50445d3558d9356f3d9135b91eb3b1a76e60', 'ccb42932f6eb47d57858d11326944f2d6855c7bcb9cfcfbeae10ec63da73f8a6b7029ba54b8d96ce', 1, '2023-11-23 01:18:42'),
('850eb564d5b1be1bec0bad8c73e6d85f5060293d203b928a24411c41aa45b30207c7d0130b6d992a', 'f59b4a8c9c661771d6cc5837f474ed10679229f0357a33ac4ae74bf649ba40d8ba28e79b060eb64b', 0, '2023-11-22 11:02:39'),
('8597d3b6f6dbf881aa66896f5fccf26bfad14e4938e38bb73d750621d5e5dac0e94d83b6de1253a7', '8341641bf4c1aaa8cce18b09593c2f2d076d33638288cd586ca9344eb9801f4c940edbbca9956076', 1, '2023-11-23 21:20:17'),
('864dcf540073203a3f630ea1a15a18a24d12caebfeac2de7d8505a743b831ce136275b11e577b52c', '4c352865916257f4b831b52175395b0fbd139c0bec92db5868fd5616162a41e1209ec73fa87f48ec', 0, '2023-11-23 09:02:45'),
('874afd205018630833273ca1d35a2b8f3695fc3c29231b1f80d4c7aff3b508dff0478c51f1f2117f', '969aa1574a7d3853bfaee7ab51f2da6a88a671562a5ef8b1b71f70b58abbc70bf09f375358128cc4', 1, '2023-11-22 21:17:30'),
('877d167a504d0fa8c3b282cafc353b21bcc57ffe1f1d1143c66d51b36d088dfa7d0a95a846abd275', '766bdab24b3b9b346e1ded7db57ff0b2af2174f77ee3231a797a19818cc744ded6ec29b215863689', 1, '2023-11-23 01:43:38'),
('8873eced0760af8eb8ca89a3ce8922a85fd42ea359cc8bbc833acc029f2be89d3585b7ddc097b652', 'ef40725d17bf1d7331cff5f21211c28eb49c3f5baa001dbb81b1765f9394f359a8413cb6451bf379', 1, '2023-11-22 23:28:46'),
('8a871822a038d8344c7913394d627c6c4a16554e88b806a4cc80c6453628f51175596baee42747e1', '329bb377c94c3bc0870dcfe76d64efc12b95968b2534cb627d31400526075148db6d9722a7f3e459', 0, '2023-11-22 10:01:31'),
('8c735021a825cabb7033413304731f8e9ed6cc7d7a45280629cb0afbe21f64fd57fa318952cfaad1', '2b7bd435f61f8017210152bdf7734c30ac65290f945901f9b5f1efbc6c94ab507e0362652817781b', 1, '2023-11-22 22:55:05'),
('8c968419acc2c88fb3dafca3b7ad17a471f74369d6ac8647cffbef397ec174053d2eb17d6603de75', 'e7d4026836e29be1eb64cc1977ec1c1d352f7d2cf437b6b0d2ee06ff1cb71482bb0f0080f11973d8', 1, '2023-11-22 01:40:30'),
('8fb0bd8ff8099d6fb46f4290ddd5b3e1500bb971388b40f4993734436eb51357a534d80e76c1f03d', 'f57a11e7c3a8c4e2c3258287bc260c09e869aa56339c1b397b22d1c3cc8561f99a7f0975c0a58f89', 1, '2023-11-23 09:53:07'),
('9196749da3d23d90a3837b7678bbb7d4552ca0ba9002c1c5bfdd270b4f1976799a3d7dc5a1cba315', '9f115f3b2f7094ca96ff68758913e4ad35c03e2c21a9ee53b6a4f1fed5053795aeaa155c2ae4abae', 1, '2023-11-23 09:58:07'),
('922613b5baadb87367a9b7d0d7cccf3afdba9490fd2438f38bfe4fa242faa159103feecc1758147e', '94c6845699bf644199ee9efc6d805046639f0831529968ad137142be41a9568214dbb6590d7764d4', 0, '2023-11-23 10:07:20'),
('93e0f4ffffddb726e9213e6d2b6e53a935c58040696a356d5fc03214bb61ebd6ee8da7ae0157a87d', '0b2ddbb2611d9788f1a7e35b5e84c81ea5492a2f58ef51184aecf456ee182d33d134ecb24e41cedc', 0, '2023-11-23 10:01:58'),
('94e8bc58a9a35a25fe9588da86ef3ee67c6a80f810f13fdf00621c1bfb91ab3c115885a5641bd55e', '2de3ca548cdbffa6279ee3be50fde590e5d944286f630a109cd538813266b37be130e0e922714420', 0, '2023-11-22 16:38:57'),
('96fafa14f0234b15b6f5cab9729d4b3195b8f4322c173fca43a66b66c9bc1e9b2c683ae8a9b6b185', 'abb6c7c2819c18609b7395808da9fe25de03e8ac2c7ab0909deaf3f57900644cff86e773242e44bf', 0, '2023-11-22 11:41:36'),
('96ff5b0044e897b441af53d10b76112c553c35430ae871521edd6d52d9657f630b12cb560c26c56e', 'ae489e9075bc427edc8a32a867b146496db9c58c9edf32095dfb39e94cdeaca653609924e4f963d4', 0, '2023-11-22 22:51:22'),
('971944b490e40b4fe15ef9ad9f934ce4452311aee4522621ad2f3e4ec4d09a4377d7a44794ab4bd8', '9e940976a176b2bf985c1d40f560282d643879827311600cd8ec1def2c22774fb50e58f979ab7f56', 0, '2023-11-22 16:17:34'),
('979c2b2c48c8068b297dcbe095ad75702fb9fb4427670a040aaf9087586dc8fd9e7eb1db0d0cbc5e', 'f4c0c4e766ff8d51d5183660b06ef0fcd7a9106774342fb3783afe8cada7673e92644c8aea00c14f', 0, '2023-11-22 01:03:34'),
('990901b8177475051fb17f6cb575b63ebf1a4238c821b55b2f4d8e839c607bfccf36685a277eb41b', '83043788ecbc1534e921a93d1ca86f0e0a0414125aff06a1218ab13e135ceef79071cceee495feff', 0, '2023-11-22 00:03:05'),
('9918608b3d9722b9b15271a23a39bd9ef04f2eaad3407b09fdf71d48472c0e1b9f87217546ebe862', 'e72082e0c304b727818ac4116ba57a36992bba97e7fcf8339f033432c61cece4176a2957cd506808', 1, '2023-11-22 16:20:48'),
('9d2615617ce5756c746cb0623aca2c8aafedc426e65a277bdf2505484a58b18daaea27e41fa49ffe', 'bb6d860a5e26b3bc8dfca9c6d871793e105f205d0925864ac99f8a4935442a1bc279dbc86a575c6a', 1, '2023-11-23 08:26:00'),
('9dab3e91d07dc880e6c0be963ee91f8653a527c6e2319ac1adc2ea9c8e47b9cc4a0a50b55f027ea8', '6609661c954a5ad3ab88af8cd20c00274f9fa7b07cb6db0cefb33d583b036002ef10eec0ee0b511c', 1, '2023-11-23 01:04:18'),
('9ee7a1c82301f27147f1ea8d6d14b695d2b481bf868806b02042de9a18408809a0799a6667ae676d', '4e17442dba29e611891268f619c67d28625cc540b85cb56f9968678c206083362b1c3f1da471cba8', 1, '2023-11-22 21:07:37'),
('a06aa3ac082c3d13849dc85debc35949e897bca2a1aad833b5a9a7bd2ba1ca6d769d7c3431b77090', '52f62167aa2613d45a6a13b057e5e2d53e3c58c1c269bb1e162aa4550703144d7fbd00b1ab49055c', 0, '2023-11-22 23:31:24'),
('a182e5ab34d669b131e1191a05109da392bd570610333f78312ec1ffd56f589b246729aa6775cb2e', 'd22f84d14f949758008b3214267ad93a2dcdc5a71189c8f78ec53ce5dacce5d367737c59ca4f74df', 1, '2023-11-22 19:49:43'),
('a24f6cc2c1662ab60cf4d90a4719649cd9c4667d4ef7e8e11de4b79486e813093e4cc235307fcb8b', '7c8e13d82c281d4d1cda616869edb6778e5e05748b2f815b2043ab8fecea166ba918f12f44903976', 1, '2023-11-23 01:43:35'),
('a2dc4431ba625f9d611f7c1348026342fee7955b21313a391d091d6431e0857e63fe5040703c1adb', 'a6440ff736ce7bcf7a4b8d2db87dcb448ca800ca534c49cbf9b5b7cae71ae53c644f2c3e30e6aafd', 1, '2023-11-23 02:32:41'),
('a5a4ccc6b8acd80f10ca8f18d0ddd27efbf5b2e270f39f5537879b2411b9a864c3a54a6d62a4d586', '3c7fa25cb6bd475da38ccc007ac25d2c02a8225ec62c8123828ed33275506a9391d7a887392226e6', 0, '2023-11-21 22:25:02'),
('a60b19970b49c3e7a9bc00d9bd22d6fafe41ed0c91b17f28babe9f8987eded3b4a2b48fcdc860973', '0f766c16d513e3b15d530d700f59757170988a0d94375c3ce53a51d1847007a809ba059c480ba640', 0, '2023-11-23 01:18:34'),
('a6c65b94178513a05fa0d2030f81c02ef377839365b251c6f30a19c6fe19a229b91264e8c3dc359d', '593ba830c04e4d9b5f453bfa6343051072b2c88d4550784cac9c150f9a2e270d61eb271c6f6e549c', 1, '2023-11-22 21:49:17'),
('a7312078dc86805caf1ce5beb805b2d09dc3af27d94aa41473e1466b838968de54c3552d32222d0c', '761a3da5008320baf0161214ded7d32806a8bf058b949a1df06617b5305ebc25a4bcd0e017586e2e', 0, '2023-11-21 22:19:52'),
('a8b12de3e79781a947187dfbdfb7b982732b51343c382902f66c8b54a8c851e0cd0c461d1e2a38ed', '33d0cabca76601e5cb60972c933dfeb60ceaafdf6b0116d8d5033e4efdc4980506254336907a760b', 1, '2023-11-23 08:47:46'),
('a971c0416a2adaf51cdab7d2bf8761f127d9fc957c26f0d2ea39e60a9c9997a2498c1c419eeedf61', '8881db927238934f65b38e49e07281134cf4c8d57a2a79f0d7379d0f69ff8af44405b7da545a614a', 1, '2023-11-22 11:35:54'),
('aadbcf439ea9131ae59427781ddee19cfcdcaa84ecad76c3ce0df98a8ba47959229aa1f4d530b66b', '71e508d2320f047d56577908b72c57211b0d3999808304e955bcd5259cec6c2231905ffb5d50172c', 0, '2023-11-23 22:43:08'),
('ab63df17dbb368d13537a5825df20e687938c925f968c1bac1a02720b2c009587313b9df581d1259', 'f7c004ca33fdaa2ed839c546a6ca5fea2fd74eabc6fabad5f0d2f6a78ef5337fa981aeea9c51c1ae', 0, '2023-11-23 09:37:19'),
('abd1a81ffe9cb991aab4d61a212f3ab5277d7f3d24589ecf46751b1790d220ee79c3b8eef3488be7', '522382779f3c4e21f429fa74f26aab504866aaef93fe2a41c7abdc80b1f2447dc1883a4545df49ba', 0, '2023-11-23 09:59:55'),
('ace76ba481d2609c5270d419f5e906de93491ea15b7502bc402a7a9d912572d22fef003b961a8ef6', '9e0c36989d1bb7955507965c98dd90acff5588b397c3362a78483b5fe98ba67762a9a3ba00e3d2fc', 1, '2023-11-23 01:36:58'),
('ae85625e7b50da99e114ef7100fecf4f043e1a1576da5c7754a30853882c4e0303cc75d668808970', '493743ba8f6037f886f35796865e321808c90aa46b01df84512a48992aa51d8256f502b888a536a8', 0, '2023-11-23 22:44:37'),
('ae8f78f73f7551c828b0c33aae1cbc0c656378cb920c75f63da6c43a10fee70719d13f6e28a778ad', '2e7a6f13ed59cfb23c9709cbd58d2a18e825bd14d2b12e5ca1f478dee6607ba8b2d1be52bdd29f09', 1, '2023-11-23 10:02:18'),
('ae98fe31f0069ba1c2162df08832bcda0077cd6f318941911979454c279780b580cb5fe96527d3ad', 'bea9212bcf21311484474251b42d76cf52b256dbed9901e551cc789508b7f2f24ac23ebba504909c', 0, '2023-11-22 11:40:19'),
('aebcc4b293cf77837ee746465588caf3d08ccf95a9cabc455943d0546ecdaa819775382fc026741c', 'a6434fd1bcb3a670cc1d8041c7879c03a8bd9c37721e8d2566ce272f8005c67594a5f4b747492551', 0, '2023-11-22 21:36:04'),
('b0bb9355ba03b52906a6be3f48d369eea6b540fe238f99f58e2a12b9fb136c27f8abb399d32355b9', '4121718d2dc3000349d6d1dab61009e2bb2b1bd4fee8ba26c6a298b5a43df37ddde49cf3149eba86', 0, '2023-11-22 16:33:11'),
('b16fc591d02ea780ee22f651ed6e18463ec0d422b18687669112fad0ceaf11c3ee0cbf987e145ad2', 'f3c0d09c4c8dd63266cac299bc47cdf7b2b9577b07d67f247f266b0f05739587abafacb385d63ce8', 0, '2023-11-22 15:57:38'),
('b2966f403cb18bf97373af30a631f1bf6fa8e6d04f06e6ada5d71f04962204a38ee78851fa62bd39', 'b2bd94806d76ac60865e6ef55a9b5558473b6fe5a771abdd736f2bc845f18926ff0421ac6a2ace42', 1, '2023-11-23 01:31:25'),
('b2996209b883dbd33bd9390081049f908b3bef7551911f590abf7d3320585ed1e41484dbf2fc4206', '65b31682ffed7bc0a07fdc506fb94c24b132058c601c94c2c5679a321d3a5229073ee20d120cfecf', 1, '2023-11-22 15:48:21'),
('b45d5e1c7dd7ab12d9203904903030bd18e54199c5a21cb4f0f50b488ed2e6dea6e44d356bb1a8ac', '1a25276df5943d726a363b80a24cdaec6ed4ce7da223cc7465eecd3975bd990409ad050521b1da28', 0, '2023-11-21 22:18:12'),
('b55a746a6522a729bf3aedcdc545524e046d6e6803b768c8bcf61447d0244b1f90156bd963e18f48', '0d4cb99f4548113f9ed14cc67ad5e1cf5e4d28a62526fd5ac95d87d6fce821fbc7ed1b865ceb7edb', 0, '2023-11-23 08:58:37'),
('b56aea939b459035a2704294588ec2695ac929d5471ee3de9ae6fd4918c508c13abeb4b13088947f', 'aec8c891383163072878af3d1fd08c898b408a5b8296eee4ff44aa7b5e1dbf41dd3d93ecf60f6bf1', 0, '2023-11-22 21:23:22'),
('b58e6309f07c223c49b4ca3485584abdf84bdd52ce693e0686beb1a192f472f01b2df72042c766a9', 'cee1301fc321ce8c6910f6c195577c03e2675a2658dd49046c0389e8b2ecfc342d792dc1f303a0d1', 0, '2023-11-23 01:31:59'),
('b5a22dde8ddb0ebf52d4b886174c0f59ef80d8c824ac24e56029fbed5956814aabeff06a48f2d72f', 'dc81ee790a85707e9df4e0702798b25c1ed7908ebfc5c5befd3773ce0448fe2e4ef2e6f69a03d091', 0, '2023-11-22 23:29:28'),
('b7954d08227c3ecf9622a1bcfc9237942881e6ee571d8cb2b8ddf03b82a2ef3a5cec56d0bf32aa89', 'e23393169f5478bdf462979efc3a056c649826da13d83f29272b6dfe2254d4558522ffba3a7207b7', 0, '2023-11-22 15:46:10'),
('b83e203ebd2ae58306e6de52ec1ccec25b7b4dff3884eb907b607bdac9a72946d1e4982302a0a417', '43b201f6567595063e060f30d685e8faca3821b15a083e7f3461d2dbf2cff8b6b8f9695914378e05', 1, '2023-11-22 16:46:57'),
('b83f2e512198092624e49fe41ae9ba4f6bf83176380d31a1f5072c4f43cc84a54949c7f34b9aeb58', 'c767bd52713203ee523605f1cee346e4581e3bd5e6f04f6262a40030776345d8627230d7dda085fc', 1, '2023-11-23 02:00:51'),
('b9b91f8d24acaccadd51b7d7f396b02dcd89a34c872f2a9507a8e0a22c4a2cf2f247624b90752bd5', '91530c5ed9f91c7b8926abd11cd3ed831d78da4eef4b419ad5470efbc4960b8e85602123a0750a08', 0, '2023-11-22 15:49:25'),
('ba15e75de6f173e62efbcd2f4076554a7b127bc9ecbab8d51ea444f6bec0ec21d11bbbb22a94df2c', '08c5aa7c73a005314054f106a510c85f8051c015f263b4fbcc07b9fea73f9a5820fbc5cded2ba582', 1, '2023-11-23 00:42:19'),
('ba8ca88f40fc83986fffebd565f8097e47fcedeb08e4be29251bed20832ad89bbbddf8c233c63baf', '61c7d4f4cd8df01158cda5b2be4a1807850a8ad7b20068eb50c0746f203dc27c807dc202191fc251', 0, '2023-11-23 09:29:28'),
('baf2e0ea10220ec25841a18adf04e83543b79393beae1f8c3f7be611e4cbed8c4352df32210b4869', '4d1a949466222ebcfe8703a7f09a883dc0fe2db88cea14de11962de950f8de87dd44b6d47da446e8', 0, '2023-11-23 14:23:57'),
('baf9a0ddc5e4a3a4cc9de57b0ecb87efbee11f5cfb6b1fd4b66f8f20cbbf54f6e1b2ef3cbe255383', 'b62cf2e9d49cea0b76f611c126efbb25e5bde7159984b9a286af5cb957751def9e1713e62ea2c1bc', 0, '2023-11-22 15:06:47'),
('bc5a8982e5e96f2e8fd67718eecb05fdbde64bfcbc2efd390195e157574aef67d89099610535a70d', '048488ad387b134d0a47532cd015523b5d04841318cb96c85a255299b72abb4a174abb89edfb1954', 1, '2023-11-23 01:56:53'),
('bc97ea335d37049248641a482981dc19a44f48ed09e746f6da356b38cbc60799347d66ea7b18335b', '898d827af7345ad56b531d879d34b6ea49eeb85096abc6a835804523ba792d024ba7b61fcecbe6fc', 0, '2023-11-23 20:21:25'),
('c068180696a190c2a021f7d798b1f7412c6da00f15a244aafaabbf017172477dee46962edff34252', 'bd98d5bc11636b3f09a6e717f40383869a685043c9f0203c2bfd811d5272e8240040887ee2fba52e', 0, '2023-11-22 21:28:55'),
('c0903a54ccacd891fbfc2e66dcbbf3dd0a17495eac6979b31b18ccab3a55ada04a9f4ccd05703b7d', '060a50d7cd44c4c0094f3219bf020e78026fd7908f20a82e3f2b09a3b8a3375fc9b6a5eccea47bb8', 0, '2023-11-22 20:56:06'),
('c12a1be9486451e17da5c804d97c9520610b37eb52c22bebb03410b00627701632f5f9ecf40097f1', 'a290f2cc5f3cc45e2ea23612f28a58debb147b94607a0473d8fe98c49e1fd5c94cf0deeb1bb28952', 0, '2023-11-23 14:35:50'),
('c1b93f6d88cbb733122224dd7cf18214700321074c6fc8efbb46d6f00b789d7edcf51064fd9ee08f', 'ea89f464bb14c93ab124f804ce7572ee694eb7c1a39d45893c884d4dc16f04a44b59f4d8d988f4f6', 1, '2023-11-22 17:02:22'),
('c1e8629e06ea5deb79b84656ae86200a8d5173c436a00b91a124c32acfc14997c7ba20c039b7cdb9', '063762409fb5c433adf1bf6ee73f95ee2a5082fe5213417a2cf9cb05f75c30e966886ce049180967', 0, '2023-11-21 23:54:43'),
('c2f7c274c4e2d5a5a38641e7ee8244720c6c986bbaf96ea365a75e74afa9c771778ab9ae831b7a82', '6afba70949ee26fdb8633d882adc35551fc90e1270da9d1b4ad2efd9ca3730dc1ab9c5fad03c3649', 1, '2023-11-22 16:25:32'),
('c357e20620dc5509f79789b42e38cc46d8734104c1bea7bf50ee54d3ea1f49ccd41f7667fdad9f44', '6695669c3136afc907ea20cc2962c5971cf57b550012cd3076bbd53960b461844ff7542001d756fe', 1, '2023-11-23 09:18:45'),
('c5669a2bf9cbcaccec33770829acc4d91b0d461c1bdbb5135052753ddcb05cf9b7c1839698058ddb', '6d726fa7336bbc39d1861e8fb15e028e2577040dfeeea953714c1d9da1b9054f32d99c85c6bdd1c0', 1, '2023-11-23 01:16:59'),
('c5fe043b7331881799588c2041ef29bb2270a0b31f73417e21d9c5dbf55801c5acc44eb96ff8d158', '15f2f3d0d6a480cbe55c28170c4d562e24233c6e1d90e60feaeb3bcfa5319e8c5f9dcda0cae50f90', 1, '2023-11-23 01:33:31'),
('c6ce1af5cb3309db6b7d54fbc7dbbfd9201b0729ab5b4b70ac3fe52feddbd0c403d1514ed918ab96', '555ac68d779b0c4764d84eab4347f838ad66fadb7a569393594fea0f19e5fbca49fa2e76b299144a', 1, '2023-11-22 23:45:20'),
('c6f4fab578a9478f8e4c8efb2aff524f41503f2f39ae51b2bc94e5d451c9cf72dc8365848d90cd79', 'd07bdc548fe4a313f4f1041405a9d88795ce2ebc6759fa0e16fb0855b0c04c38118181c6f113ac7a', 0, '2023-11-22 15:30:11'),
('c9878491f8577797bca48545a2844bcca3d93b96cf70deaead94a8013fbf9b857ced09f4ac354fde', '4fd04666b0a78a7b13185b9e1e82a4363d3da8fd1ce2f07382b4f81e736115a03baffcfb7fba7037', 0, '2023-11-22 14:52:39'),
('c9efb3e90fe5711355612a614430642ddc7264655c1cf1057bc2a806b87c0786689d0becca86fa59', 'ed58ba55a7a2b1ae930414ac9ce657135eb9f8b03a36c634891b7d67f0f198a3e38963765516b5a3', 1, '2023-11-23 09:00:00'),
('cb1d5f640173d3aa1b3d98f597f5a092351178d3230a1b1369e4845817885cf886df3c4ce24f56d9', '56edb9a48cc16a0e5055742747be81924b3a7437edc057a7047a626d44bb35eed050d5d010d68f5d', 1, '2023-11-22 19:46:29'),
('cbca8f6d426fa10b2502171319e5001ea7c7f2c0b9a19e0d9a24e48b7fc161f667444b4393725fe4', '2caa4a9ad422577503fefcae340132934b13935667aac8d5d3d7b386e1308cea7d51d0137e264a5b', 1, '2023-11-23 01:19:33'),
('cc9a4a735f882ffd27a32422b06c73768e0332165df50306db85c96c010243ddc3f0c9dac8b29242', 'f192f62c2fbfa21f8a9787db0d9f573b820e71f7ff2ed04c572ebea46747c43dcc0613ef6b452df3', 0, '2023-11-22 12:40:14'),
('ce56f52bce73cbd6002ad3caa8c5473e1ea8384978085f1c1f521d184c2c0377b8e918619f640ede', 'f421fddc30ff43f1ef85ed5765b99b0c23a2ade5d86f401566119b7c298b2b2b906830e6a75d4145', 0, '2023-11-23 09:17:06'),
('cf2760eeb0e3b40667d31214f7215f22af3ba2820aac2295f9dd3d05601c9fec067173d9835cd5d3', '91433ca2a01b33fe60c5d753a9c988b31eadbe2562569880110554796b801fe71e51cf13dbd51f92', 1, '2023-11-23 01:08:28'),
('d09e79e549be7ea82e6671ada1cdd611e184c63ea9c4feede7ceb2a2193409eddbb9d31a223972d2', 'c9354d99e197d141f8f7b4fac7ea2e99945f8ca6972bc33e951daf4484f94793de30fa04121b68bc', 1, '2023-11-23 14:24:11'),
('d0e57774ddb7fa6432d659ee9456cee8c3b4f0d7fa6619c9139e38a3b8260c932fbe77f704433e16', '0f1fa00a1c90049db82871ada1cbc0749568dbfaf41e66ed9ee62259a8dac25d2d9cfa80bd850f93', 0, '2023-11-22 11:01:10'),
('d11814b23848794b35e20161ba4a098dab479ae4d1ef1869a9d7689c64fd2b1bc95f9f2b1ef28709', '6cbf74a42bd2b3ac4bdd60e2d0f7499e9206b1bec6a1bf584a1a3b6434422a20a0412e79a9f358c4', 0, '2023-11-22 16:44:27'),
('d11beb7bceaa97ead9f44738cdfc381fdb2b2490ef3f3542827a3f9d24a1bcf99fd4ebdf2d98bbeb', '95453428d407fc3f8eb34bc408d00701a23ad461d6b1e6c521bd9264b20591b106a09b07d395fd3a', 1, '2023-11-23 14:33:11'),
('d1712a689174a8e2467347181ec71a9a3f3c088d1597aced4a2b2369c17646f40d66600fc2448189', '163128b03e1a1162991ddae0712c2f5e3220ad72a89ee63325c09f8a0ef8f767d085bb14b5004398', 1, '2023-11-23 08:39:06'),
('d200835df66f063cf2687bf0141c3a3205b00803794b8786fd9d84c64bd84df9ac66f98b708cebc8', 'a1d7df4f4a89d8184f146bf02abae417d2aa74980ab8eefbc0b8f652aa055f0bad3a98858da29aa0', 1, '2023-11-22 16:27:46'),
('d45ab20d082c939b99f4333b4c8f696f6db388f7bbc6d893a3053923cd97ac6a45f8264663cbac5d', 'ffd8612b3081fe344e9068e363921cf5fe8b53c0e79bd0a25c33fbaadc743e0af6e315eb0fdcd572', 0, '2023-11-22 15:13:03'),
('d503a76a8dac484b2a590f6828db3efaa9ec54f762ee09f0cbd9a8000d69e00f12a4d80368c9192e', 'e345ca9094119792fa3927b9164824ad61184cebaf8738b933149bb9b3e4ee2911e64689bb820bce', 1, '2023-11-23 08:50:14'),
('d75d036397fd085e575cf85d9829fe19f6efb81121f4168e7189ea29a462c5963c2db93b7c10e75c', '94e3ee28088c27b640448ed56c1a192414ba1727db675b307640d5c69026ae66e9dbf06fb80f4e8a', 0, '2023-11-22 15:56:05'),
('d8d2463b378332ac5a3be42614a53393b1560576c757714e8bf7b6a65bafb3e500739243848b3cf8', 'd26a23ebcc4cdf3fa3660ebbd4e08201817e2dad9fe9cd74ee5958e2be2b63909ee0b7c8da18b08c', 0, '2023-11-23 22:07:22'),
('d9b8c9d33a46f9cdda42095e8b85c87b0f3dd7fd3eb20833604c3e6e5e6cef1d10bd3d9dd8906c40', '0832fcede92f05d20dc3283bdecdd79e322c60bf7bea69a2047f95bdd11801b03c05e0bcdf7dd665', 0, '2023-11-21 22:18:15'),
('d9ed533e83363932e644d68880a57e3df2ee9b1d478dd50f8f94e97d3e0198a3d12eff8a47f57e82', '9abb224e341dfffd34de00561d21749e872d6608f148f7475e5826a09a6e0f6b3780f05eb76011d9', 0, '2023-11-21 22:29:32'),
('dae2abb46bc3ab6d18f4dfc08ded9788c1dc661d9ebe270bec52187d5b96a4dfa6eafaec34e43fb8', '5077006132ca16f6ee2eb16efe9580451144620023ad384fdf0d1ff8b3f596b5f2e39c73c33eda1e', 1, '2023-11-22 17:55:19'),
('de32055b679a5db0d59eb1215ec74905e861e63af0920923c5a57946a424992d6ae92d76a07f2fff', '89c4f880785bac7ce737ec5dc43a8691cdafefaaeb73fbf29a4e11fd6af20755290b51186a1d34a3', 0, '2023-11-23 08:43:06'),
('de5f630f49a2a06d2fddfef3c7284480093150daf790631b3547948b4fc5c00c2a05c24b04b05cd0', 'eb88da458f90a3d1bf23a866742260fa7e89377415ab94d619a949162fb75a39463d87bad0be93ff', 0, '2023-11-23 08:27:05'),
('dff3e897e969b363cfa433851c2641e77f43cdf279592d3f6633f4c0b5e0bf6e136114f4827966ff', 'e38f7147cb5b158fd72ad5470be9d803b01a13447e3042b79d427fea1339b776aadd542ce6945347', 1, '2023-11-22 20:31:22'),
('e039a5b62f054f02c2490779abe63a127abc6287967f898f94df8cd38de9f7f2c9ec2a6ac6485430', 'ab3f790e69e72f5ebdc30f9f8c2e8e269627b9c800a591a16ec6b9b646c0ea98f5caa3f757b380b5', 0, '2023-11-22 16:46:11'),
('e0acb6a4215c976d8e594cb1490df733e07da14c9c390538164759b239483b923eecfa230f9d0ebf', '97c9cd831c409e194a818ea2afaf204fe280aeca1df7fe27af94d0dcb41c59b5266c242999fe3ae9', 1, '2023-11-23 08:37:26'),
('e12e1ce367949f426d8ceac0ec215957a0d48d6f31e4299c328e5df8a2b22cb71b9cabd22bdf88bd', 'e4a7ee9a6641efc48838652e532a2894ee20d95b83063a6c3445f1e3bc74f29893a662e5763b0ba9', 0, '2023-11-22 20:48:05'),
('e16937258dce792c68d4cb23b85c8cf0ae8ab527efab6c8a416ab640128becb11bf995c165be884c', '4e9a21c3c9fe963b32099ccb48ad03ec6cbdb5aa7d94193cfc4019207bbb1a0e7a2a86e55be2fdb3', 1, '2023-11-23 01:39:00'),
('e1d146e0888a140fabb1687d0f4332fc112c004a0562b9a1b33580802ca7a9b0f4213c11045ea51d', '10f29019081c9b3431ce323aa8d43d599e3b16523dae5ed68391362f60d62cd96765f7f0331d1827', 1, '2023-11-23 00:36:26'),
('e20c5dc350282126abe659088f39139d9d346481950db3ac6fb0aa61fc97e5937399bea25fda543e', '2c28516f06c978c409426f075a0f6eccb95e4ec4a04279b578688c20c9f6ecb439eb556239366e0c', 0, '2023-11-22 17:04:24'),
('e539973ec1716181afade80a1901a4917a91abfd27e049d1bcc565addb565dcb9bec35cfcbd062eb', '138c7bba24fb14f079bdfc19f04edc5c56b6e6bed276f53b71a7e4d54b3875f0224868b0907fd2a5', 0, '2023-11-22 16:25:02'),
('e63185e2977ec8be3f7de21ca00ecfc16bfa0651cf80f12312bcfa0043bbf32d5cae88cea4b1f1db', 'cfc9d7b9bb3d17ffcca9e50f7310235342af1b9531018d1cd9a082d3e132b76d2c67c15858043e80', 0, '2023-11-23 09:54:21'),
('e6afe4aec7fe7d266ab6729109f2d7d706c11dd36320f64426aa3de3e749756efa6bb1fc3b6e7322', '13393680a802a616bc7b7ac0f16dbcb7612cc214ca38cacf4127726436f7e0a6ecba2968dd0ae28a', 1, '2023-11-23 01:34:49'),
('e73650d03829d7fe551d5f1411ace34a38d8891faa7b72ba9496d7041875cb5a7984c959ec3f0cde', '085779e8e3265abeebb5b63b7c861ceadf9b84d072c12c5015e89c6ece7b0bced4e76aec96216a37', 1, '2023-11-22 23:17:24'),
('e769244bf0fa4f524830825f5d6ec08707871080057d5905f5cf939f5bdc8860f5be9e9fcc88a750', '4a7acd9bdda92c106f3b26c526b7f56f4a6ce7c014fa189c4efbd670447b2e5cbe7ffdf24220841f', 0, '2023-11-22 21:25:05'),
('e8920b835ce55e2cb326e3d1185e82c212f25bcc4d8a98c68f88bc662a4c8ea9f2ce8512ed95e4d4', 'f78fd0225affe1bf65b480f200a6598af7f7f9632bee4e54ec88feb94662f0ec6a637862ae807d9e', 1, '2023-11-22 21:38:41'),
('e89ebbeb7de06cd839b4f062bdd99aed667742c368bd595300144561efe9e51759ed9de7846b6c5a', 'e3b24ad45a57edaadaee60c6812d534ad29d18f8cd3da022cfc7a542d675bcdda155503d13d1720c', 1, '2023-11-22 20:32:39'),
('e8f8f29eca143b06f0d3862bc90ded5fb79e17293ce65c09dd759965b41658fe50fe031fcc1af10e', '3329fe543da69322003ffc4af8290d069af189015f4774b0ecdd6ae5de19d98041ca23f4c10a0487', 1, '2023-11-23 01:41:16'),
('eac37ad6db4917a47bab87755cb15c7f21c36b7198c68a1c82aea1a7b183e5cb5fa6c81774cd27e1', 'cbcee4bad493236bcc4d828ff42da73647f843fbb67d0b261a9bc60933ebd689010e49e92fbf73c1', 0, '2023-11-22 14:44:59'),
('eac7926104621f4d6adb921d30e5651208f32e194b9e4dcad305c78e338822c34717676857ed5d66', 'c9e89e19c3c35cbae87bb41ddac7fdb76e3f3ce60867692efc8100848bf9411fbd134e304f488c38', 1, '2023-11-23 02:28:05'),
('ed3c7f4afe262f322992ce19b319cf8f3730bb97dd099d7e25e8da1f5361afe1b9ff04551edede48', '8c8ff8364a7e30079ba4588120931547846f74b725ebed96f67aaaadc7c4d4fa398b7ea23962c94d', 0, '2023-11-23 09:52:52'),
('ed9d924e99aa1bc81e8db257b29c35b3cfdae07cf88153e3b40ee11391161e4cab808fcddcc0d8ee', '0fa1d2e2b00375809eaf2e7c75c751ef27ebdcb4ea8c18d43e872637f094a18328ff172528fe08dd', 1, '2023-11-23 11:48:26'),
('edb1826d5609ec7834372e1a2250f0d46c273b368fddc45ecf91ee92272989bd25f5a5827a5985be', '62e6f7d1260e9737e67cc6c99db2fbdb4c018d96c067485844c46c8aae71568d67acbb1216072edd', 1, '2023-11-22 23:29:39'),
('edf134ef30b182dc7c48b91144717665abf86a5581a3a04382541b0f13c1e5b9cf50fead2bcab909', '13a2aaa257e4596f0019b1085998ca8ae075da67e31b8ff828e6c5f51158a4a4eac03842639eb38c', 0, '2023-11-22 14:30:15'),
('eea3212d2998cb3f70214c74da9a3bbb8c8b0a15bf284e51d860e9cd6bff1aa7b1767d9badba71d5', '6a2d9a6f96bb9312020ffa02198696fbdf9e65df2e60d7d3a0e00a8a10b36e18732a2a095afc5118', 1, '2023-11-22 16:09:20'),
('eec0cd5753318d277521b1c3ea0583ade66ca1a576a31be7da9c164c6fd54dadc3e5ceac73967a4a', 'cbdd1b41ea58cd7d165b8667aaccf7dc0d07e241f7f6c44f8a907800e06e8f30ba72898cb48902d3', 0, '2023-11-22 21:35:46'),
('ef8eb06040808ea7906d7d7fe3bc7e0fcfa28f14de8c4b7311868f0c9e54ec7f9314a89207a98e9d', '6f3b959d59993fe45e18e35e6d023717f37d1cfc8239e925f05f37475183b9a6e6da80ae4179065e', 1, '2023-11-22 21:26:12'),
('f04c490f4bbe3312f50bc09aeb5cf73ecc7399d1f4754e86db4f86fcbc65f955452aa7292c8a276a', '0ef90d8ba839dedf3764b1444c85624c570890c15b0c06994705fb204ea8e0ee32a426045f0c3786', 1, '2023-11-23 00:13:23'),
('f0d9ffa2ea22cc11ae04a7a60380eb820ab8e718ee841242f1846a4dfff325282860850fc765a5a4', '97e98b438b8b984892a84e197007ea2a125be464b39eef300b795f60bf9a5358cbafa2b5b3537a9b', 1, '2023-11-23 00:11:49'),
('f1b3737046a49487bbba2fb05d1dd8b42ce707de36989e30e96086e15157ece78c5acca509dc1078', '07755f0a9dc3c951e6423327beaf5e44e4b81744074a4449faa440a3b753e34945c1b8ab0abfb86a', 0, '2023-11-22 10:00:09'),
('f1bfa9818b745d8905baeb835beba284836a0056b92e55c6de64b753fa5924fe2dc96108fa589d16', '166505b3a824bd1174233c9e138dead7751d326228ac1f69c0938c91939c815ce0be2ee1c19b4929', 0, '2023-11-22 12:46:31'),
('f1e8a3821c5e03b4d9ec3fcc9148a895684a650e3ab7338b24fa992d33a60e5293f564f6baeeb191', 'ff6dd31454d144b77d8251ddc22c902deaee33d84835bb5e66b605cfef83d56e8db81431c40b083e', 1, '2023-11-23 01:37:30'),
('f2e5608456c6e8f8ed3017cc31b3b055d8f9633e42d36fdb0d39642e1460d1fcbf24d0490d21d31e', 'f993714203fc74ae3a330599c769992fedc3a09c38939fba5853b9511f8992c1e4f8c34a911dba9a', 0, '2023-11-22 16:53:16'),
('f30de1248fe9b1dd461914b529ba1f2d2762b1eab8d53c885e35306d29eb29ab8d616668286253de', 'e6c50e24625ec153b07976bdeb390f6bde8cb5714afd25e1d4161c3c97cd0c0ea8e107656a67092d', 1, '2023-11-22 21:21:20'),
('f314b608e0b0b2ff69f3a5d62dbfd0dfb5db5f6d68a20da9897660bc97f26fb6602e4b98c99a27dc', '38d4ca59febf4f3825f527675c6125a2428e1df91509c39dd2b3a3747b044ff1db05ede146ba3e81', 1, '2023-11-23 01:30:56'),
('f403d8ff32b68f8c964ef951ee7b16d787454e7b797656a584f538f03b119af6f9c08a74acadec1c', '6837369a727ceeb56a9f9a54a5f0fa1eaed2553c5e36851f1cfa17e8ceed38fcae597d72cf5b1222', 1, '2023-11-22 22:52:02'),
('f4aef0c61f8aa26b55ab31f3dcb1e30ba9913050cfc65e9f1db9de7fca6397f08cccccba10acd95d', 'e8a41480b1033481082221fa9bd38bd85fa693d7f63c01d1ae2d56cc506dd2142990da455f9b9147', 1, '2023-11-22 23:30:16'),
('f512ccc1ef47085ec11893e684f0bd5e316c807735460985af20f38a6089b4cd2ee3cfced8217c1f', '7df8d627ecd6d5990451be99a5b4211640a49312c77aef9bf16bebb73eb27f9ec0ba3c3a2c235476', 0, '2023-11-22 17:56:56'),
('f5b9ab0ce5582f5a5b8d418f995d98db3b84124ea1203a44bb67ea84bb48ef87b142c8141bc2d063', '29395bcefee1db83b1254e24b32ddddc8e9c6cde097d34d659aede8cec55823510c45c0ffdf2831b', 1, '2023-11-23 00:15:19'),
('f5d9a00c538de625f660fc70c6146149d08f2882d8dc4366c82aa7ee42d0f859d698d41cf3c1bddb', '65e5f0e7901458cbfa759e857923abc81f77676c25ad0a8b082dd485e396b70b26a45be3f22fdd4a', 0, '2023-11-22 20:12:24'),
('f671223961a3f3adaf0ac35c0f23877857eb6694fa0871b2ba7815ff3ffb0893ca4697ecb6b7b443', '51a6c4962140017a51abda2c18bb76873cb7209e822b51f0058a0c83f009d967cf77840b5edb54af', 1, '2023-11-22 15:44:50'),
('f77024d1d96555d22883972bdde7f9d602c0b360f0fbd267df69e277837c0388dae552b1cb55ffbb', 'f1d71ae24eda9dc7b3d5d4094a2ed143261ce5743527aa76cf0990cd95e1ff1d6c89445e5e397627', 0, '2023-11-23 02:37:24'),
('f7a971292f0242f498edc8f364b79d03783e600603e265e8bd5e29e1d8812b15ca7ee40938235f58', '3d3e61751796a0720f2d1d2f731cea815da3543cafdfe02cd232ebd0407800aa16de78c936989e74', 1, '2023-11-22 17:25:15'),
('f922f4b5bc26a2fb63dd9e5a781cb86cb1d678aa4b56bce1bf5048a134f08569c154659a4a1d7651', 'ecc029261da1f3281cc8895c6bad8ca7c944f7fe7c7101efea4cd37f0246e2a5f4d76ab6158d8d8b', 0, '2023-11-22 11:38:40'),
('fba4743e1a632922f07a8eb16ce8e103803ea7cb32df31d877dc267144dfa09009c511f0d17810e3', 'da80ba13b7d798da7f013296bfb4fde3913b367f0253cec7302077a8246192e53205071ef2e35377', 1, '2023-11-22 17:20:04'),
('fd1a7d9ab786b46e5e554e47ebf7b49aa1108baa738cd95461f3e3670181b08984f65adda02ad9ee', '69002abd090d3bc16c9f25f57f128708ccfb5c652f2eb0d12ce20f854585da2be103194fa7cbb53d', 0, '2023-11-22 15:51:03'),
('fdcf6a577599853bb0e865256a00d7a19313459b6c8a1b052ed79c4d9cc32035819ebc5ecbd8b313', 'e4e06f5bf2915798644dbf5102bfbf5ff5525f160841180d3583f13f7e65556b44d0e633b16d4051', 1, '2023-11-23 01:42:54'),
('fdd472225a375485919fa128bd58a1b3eb2c9548764841ab1337cc6dc1d1a49d7ab5967279f84bdf', '6af9dc280125947690d86b76ccfec43a498d1aa368586f139cdffaaf0514fc0c0b36d3a6bc67128b', 1, '2023-11-23 14:29:33'),
('ff5c33a1e5a99ac1b478c631bbe19fbd406f8b0f7e9705c41d02b01751804d78edf35aaac82b0060', 'd65ad4af0ff0fa9a239acd71b6de76286a9e4dd80fcdedfa7c1cf441b4fb62b4943813df7e2f949f', 0, '2023-11-23 01:45:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeling` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `feeling`, `image`, `hashtag`, `status`, `views`, `created_at`, `updated_at`) VALUES
(1, 1, 'Test Hihi', NULL, '[\"http:\\/\\/res.cloudinary.com\\/dgl6vfxqw\\/image\\/upload\\/v1700074784\\/post\\/qwd1jylqmtqpwcbcfrry.jpg\"]', '', 0, 0, '2023-11-16 01:59:47', '2023-11-16 01:59:47'),
(2, 1, 'Test lan 2', NULL, '[\"http:\\/\\/res.cloudinary.com\\/dgl6vfxqw\\/image\\/upload\\/v1700074849\\/post\\/xofe4playc4pn2wcofy1.jpg\",\"http:\\/\\/res.cloudinary.com\\/dgl6vfxqw\\/image\\/upload\\/v1700074849\\/post\\/hmqcgzi55g7hkguhxepe.jpg\"]', '', 0, 0, '2023-11-16 02:00:52', '2023-11-16 02:00:52'),
(3, 1, 'Test refactor feed to post', NULL, '[\"http:\\/\\/res.cloudinary.com\\/dgl6vfxqw\\/image\\/upload\\/v1700076516\\/post\\/boaewhvvupeqf3u8speq.jpg\"]', '', 0, 0, '2023-11-16 02:28:37', '2023-11-16 02:28:37'),
(4, 2, 'hỏng rồi', NULL, '[]', '', 0, 0, '2023-11-16 22:06:09', '2023-11-16 22:06:09'),
(5, 2, 'mọe mài', NULL, '[]', '', 0, 0, '2023-11-16 22:07:40', '2023-11-16 22:07:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `private_messages`
--

CREATE TABLE `private_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_and_answers`
--

CREATE TABLE `question_and_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `majors_id` bigint(20) UNSIGNED NOT NULL,
  `hashtag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `question_and_answers`
--

INSERT INTO `question_and_answers` (`id`, `title`, `content`, `user_id`, `majors_id`, `hashtag`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Nhập tiêu đề câu hỏi của bạn', 'Nhập chi tiết nội dụng của câu hỏi, Ví dụ: Giúp tôi sửa lỗi sau, trả lời giúp tôi vấn đề sau ...', 3, 1, '#hashtag', 0, '2023-11-15 19:48:32', '2023-11-15 19:48:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `poster_id` bigint(20) UNSIGNED NOT NULL,
  `rating_scores` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) NOT NULL COMMENT '1-superadmin, 2-admin, 3-student, 4-guest',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `activity_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Offline',
  `major_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permissions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `group_id`, `email`, `birthday`, `avatar`, `cover_photo`, `phone`, `address`, `biography`, `gender`, `status`, `activity_user`, `major_id`, `permissions`, `verification_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nmhieu04091999g', '$2y$10$m90ng.EhvpvSW2EWVvvdHeQmEp/W5eXOVxuQYLdOw6ZtJG4hKDP2i', 'Nguyen', 'Minh Hieu', 4, 'nmhieu04091999@gmail.com', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '43572', NULL, NULL, '2023-11-14 22:02:20'),
(2, 'tungntph19820s', '$2y$10$SzNzRxP9PtXjfZo3MLdK0usR2KCVhBg/05zSKy22EmmQwg2oWDgUq', 'Nguyễn', 'Tùng', 3, 'tungntph19820@fpt.edu.vn', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '77779', NULL, NULL, '2023-11-15 11:35:45'),
(3, 'dammebatdiet0505g', '$2y$10$TW51WbXOEMHGEo4zGhK62OgI7nFiLS8yArF1PDCEmkajL2WsHpxhy', 'Le', 'Hong', 4, 'dammebatdiet0505@gmail.com', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '01210', NULL, NULL, '2023-11-15 12:49:20'),
(4, 'hongltph28123s', '$2y$10$28YRCpA7pDI.VKhrepCl.uCUNcPqQBoV4ZlGDAUJhD438G3fKCzoO', 'Hong', 'Lee', 3, 'hongltph28123@fpt.edu.vn', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '45192', NULL, NULL, '2023-11-15 14:35:21'),
(5, 'dunghaph19791s', '$2y$10$YxODwkUUzDaxGmFAVKkpPerz5K5xkVqa/jtJWCXIXSOChTIoqecbu', 'Hoàng', 'Dũng', 3, 'dunghaph19791@fpt.edu.vn', '2023-04-06', 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, '0355797746', 'Hà Nội', NULL, 'Nữ', 1, 'Offline', 1, NULL, '39166', NULL, NULL, '2023-11-16 14:32:57'),
(6, 'hieunmph17303s', '$2y$10$x3ew6W4cXrGzdC3.BK7tmuY8YYy1p1JLuFzzSupFcZoUxwuNvDC7W', 'Hieu', 'Minh', 3, 'hieunmph17303@fpt.edu.vn', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '41461', NULL, NULL, '2023-11-16 02:36:30'),
(7, 'admin', '$2y$10$EI3u9F9hPEkYBvlv/H1yXed9k8ngZ0Tk5pbR7nrKl5iftWbu6SBIC', NULL, NULL, 1, 'admin@gmail.com', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Offline', NULL, NULL, NULL, NULL, '2023-11-16 18:06:25', '2023-11-16 18:06:25'),
(8, 'luanpvph19819s', '$2y$10$u4gpny4pmFu6I./ocIyXzel8tmABCCnFRjqyIwwpmj4kByIS/RiSm', 'Phan', 'Luân', 3, 'luanpvph19819@fpt.edu.vn', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '90403', NULL, NULL, '2023-11-16 18:27:16'),
(9, 'manhnd10803g', '$2y$10$DYUOsOFLtMdrL2UODoFdve3GiVBu8/PTiLHvGn.FtiRW1sY4eCPJO', 'Mạnh', 'Nguyễn Đức', 4, 'manhnd10803@gmail.com', NULL, 'http://res.cloudinary.com/dgl6vfxqw/image/upload/v1700119974/avatar/fqkqpnczstwktsh4arvf.jpg', NULL, NULL, NULL, NULL, NULL, 1, 'Offline', 1, NULL, '85700', NULL, NULL, '2023-11-16 22:33:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_chats`
--
ALTER TABLE `group_chats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_chats_name_unique` (`name`);

--
-- Chỉ mục cho bảng `group_chat_members`
--
ALTER TABLE `group_chat_members`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_post_id_unique` (`user_id`,`post_id`);

--
-- Chỉ mục cho bảng `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `majors_majors_code_unique` (`majors_code`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `question_and_answers`
--
ALTER TABLE `question_and_answers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `group_chats`
--
ALTER TABLE `group_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `group_chat_members`
--
ALTER TABLE `group_chat_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `majors`
--
ALTER TABLE `majors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `question_and_answers`
--
ALTER TABLE `question_and_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
