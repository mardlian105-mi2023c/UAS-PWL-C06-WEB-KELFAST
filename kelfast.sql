-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2025 pada 05.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelfast`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 19, 'App\\Models\\User', 4, '{\"attributes\":{\"post_category_id\":2},\"old\":{\"post_category_id\":5}}', NULL, '2025-06-11 04:21:46', '2025-06-11 04:21:46'),
(2, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 4, 'App\\Models\\User', 4, '{\"attributes\":{\"user_id\":4,\"content\":\"Apakah ada jadwal latihan hari ini\"}}', NULL, '2025-06-11 04:25:57', '2025-06-11 04:25:57'),
(3, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 19, 'App\\Models\\User', 4, '{\"attributes\":{\"product_category_id\":2},\"old\":{\"product_category_id\":1}}', NULL, '2025-06-11 04:47:12', '2025-06-11 04:47:12'),
(4, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 20, 'App\\Models\\User', 4, '{\"attributes\":{\"product_category_id\":2},\"old\":{\"product_category_id\":1}}', NULL, '2025-06-11 04:47:22', '2025-06-11 04:47:22'),
(5, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 21, 'App\\Models\\User', 4, '{\"attributes\":{\"product_category_id\":2},\"old\":{\"product_category_id\":1}}', NULL, '2025-06-11 04:47:33', '2025-06-11 04:47:33'),
(6, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 22, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"post-images\\/1HGvuQ7KHpKMABeZBTuer1bKNtIAziF2adQ9ome4.jpg\"},\"old\":{\"image\":\"images\\/event2.jpg\"}}', NULL, '2025-06-11 04:50:32', '2025-06-11 04:50:32'),
(7, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 23, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"post-images\\/J5SUZkw7GxlS2waQ9iXr992BdMcyFR5OphjO6BeM.jpg\"},\"old\":{\"image\":\"images\\/pengumuman1.jpg\"}}', NULL, '2025-06-11 04:50:47', '2025-06-11 04:50:47'),
(8, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 24, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"post-images\\/aHN6Xg3imJVzZmqTgxUf7SgupoVcIGNukSgrl3Bt.jpg\"},\"old\":{\"image\":\"images\\/pengumuman2.jpg\"}}', NULL, '2025-06-11 04:51:00', '2025-06-11 04:51:00'),
(9, 'player', 'Player telah diupdated', 'App\\Models\\Player', 'updated', 6, 'App\\Models\\User', 4, '{\"attributes\":{\"match\":9000},\"old\":{\"match\":9000000}}', NULL, '2025-06-11 04:58:37', '2025-06-11 04:58:37'),
(10, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"product-images\\/Kh4Lrt3fjGqsoxkXIrBvIOplLjzbHzEzgfvWeCzw.jpg\"},\"old\":{\"image\":\"https:\\/\\/source.unsplash.com\\/400x400\\/?sweater,sport\"}}', NULL, '2025-06-11 05:14:05', '2025-06-11 05:14:05'),
(11, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 23, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"product-images\\/WHM15FjRWiKlO7QgHXIvU9adNjpoEuPoHgwsiIAx.jpg\"},\"old\":{\"image\":\"https:\\/\\/source.unsplash.com\\/400x400\\/?cap,hat\"}}', NULL, '2025-06-11 05:14:17', '2025-06-11 05:14:17'),
(12, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 24, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"product-images\\/Fd3kWzzdIwcFERExeXkGlzJhG7Oury0fNb9KF0v5.jpg\"},\"old\":{\"image\":\"https:\\/\\/source.unsplash.com\\/400x400\\/?scarf,supporter\"}}', NULL, '2025-06-11 05:14:33', '2025-06-11 05:14:33'),
(13, 'post', 'Post telah dicreated', 'App\\Models\\Post', 'created', 34, 'App\\Models\\User', 4, '{\"attributes\":{\"title\":\"JUARA 2 RESPATI CUP 2025\",\"content\":\"JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025\",\"post_category_id\":1,\"image\":\"post-images\\/Cm9VrrfSI68xX2iZjeUIHt9xn8XAwOB2rNVL0ifo.jpg\"}}', NULL, '2025-06-11 21:07:37', '2025-06-11 21:07:37'),
(14, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 34, 'App\\Models\\User', 4, '{\"attributes\":{\"post_category_id\":2},\"old\":{\"post_category_id\":1}}', NULL, '2025-06-11 21:08:26', '2025-06-11 21:08:26'),
(15, 'post', 'Post telah dideleted', 'App\\Models\\Post', 'deleted', 34, 'App\\Models\\User', 4, '{\"old\":{\"title\":\"JUARA 2 RESPATI CUP 2025\",\"content\":\"JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025\",\"post_category_id\":2,\"image\":\"post-images\\/Cm9VrrfSI68xX2iZjeUIHt9xn8XAwOB2rNVL0ifo.jpg\"}}', NULL, '2025-06-11 21:08:35', '2025-06-11 21:08:35'),
(16, 'player', 'Player telah dicreated', 'App\\Models\\Player', 'created', 7, 'App\\Models\\User', 4, '{\"attributes\":{\"name\":\"mardlian ronaldo\",\"number\":99,\"image\":\"player-images\\/PFWNAuT3whlho57eaAAyAk0A7riCIE6jefYovy6E.jpg\",\"goal\":100,\"match\":1000,\"position_id\":3}}', NULL, '2025-06-11 21:09:58', '2025-06-11 21:09:58'),
(17, 'player', 'Player telah diupdated', 'App\\Models\\Player', 'updated', 7, 'App\\Models\\User', 4, '{\"attributes\":{\"position_id\":4},\"old\":{\"position_id\":3}}', NULL, '2025-06-11 21:11:04', '2025-06-11 21:11:04'),
(18, 'player', 'Player telah dideleted', 'App\\Models\\Player', 'deleted', 7, 'App\\Models\\User', 4, '{\"old\":{\"name\":\"mardlian ronaldo\",\"number\":99,\"image\":\"player-images\\/PFWNAuT3whlho57eaAAyAk0A7riCIE6jefYovy6E.jpg\",\"goal\":100,\"match\":1000,\"position_id\":4}}', NULL, '2025-06-11 21:11:18', '2025-06-11 21:11:18'),
(19, 'product', 'Product telah dicreated', 'App\\Models\\Product', 'created', 34, 'App\\Models\\User', 4, '{\"attributes\":{\"name\":\"Jersey Terbaru 2025\",\"image\":\"product-images\\/I7xgbWtzTK1ZrMiVLEWVt5No7avjDUJBdSpPeWt4.jpg\",\"description\":\"Jersey Terbaru 2025 Jersey Terbaru 2025\",\"price\":200000,\"product_category_id\":2}}', NULL, '2025-06-11 21:12:26', '2025-06-11 21:12:26'),
(20, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 34, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"product-images\\/IUVxvfiCoo8sTPV0pnD71LTalYNd7U7B053uPtAc.jpg\"},\"old\":{\"image\":\"product-images\\/I7xgbWtzTK1ZrMiVLEWVt5No7avjDUJBdSpPeWt4.jpg\"}}', NULL, '2025-06-11 21:12:54', '2025-06-11 21:12:54'),
(21, 'product', 'Product telah dideleted', 'App\\Models\\Product', 'deleted', 34, 'App\\Models\\User', 4, '{\"old\":{\"name\":\"Jersey Terbaru 2025\",\"image\":\"product-images\\/IUVxvfiCoo8sTPV0pnD71LTalYNd7U7B053uPtAc.jpg\",\"description\":\"Jersey Terbaru 2025 Jersey Terbaru 2025\",\"price\":200000,\"product_category_id\":2}}', NULL, '2025-06-11 21:13:12', '2025-06-11 21:13:12'),
(22, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 5, 'App\\Models\\User', 4, '{\"attributes\":{\"user_id\":4,\"content\":\"Ada di tunggu ya kak\"}}', NULL, '2025-06-11 21:13:51', '2025-06-11 21:13:51'),
(23, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 6, 'App\\Models\\User', 5, '{\"attributes\":{\"user_id\":5,\"content\":\"Bertanya mengenai merchandise terbaru?\"}}', NULL, '2025-06-11 21:16:31', '2025-06-11 21:16:31'),
(24, 'post', 'Post telah dicreated', 'App\\Models\\Post', 'created', 35, 'App\\Models\\User', 6, '{\"attributes\":{\"title\":\"JUARA 2 RESPATI CUP 2025\",\"content\":\"JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025\",\"post_category_id\":2,\"image\":\"post-images\\/HPJqOYqQ7nu2cJVQCTCoklA6kAceLs7fQ0lkvFJp.jpg\"}}', NULL, '2025-06-11 21:38:20', '2025-06-11 21:38:20'),
(25, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 7, 'App\\Models\\User', 8, '{\"attributes\":{\"user_id\":8,\"content\":\"Apakah ada pendaftaran akademi lagi?\"}}', NULL, '2025-06-11 21:48:02', '2025-06-11 21:48:02'),
(26, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 8, 'App\\Models\\User', 9, '{\"attributes\":{\"user_id\":9,\"content\":\"Pendaftaran akademi kapan dibuka?\"}}', NULL, '2025-06-11 21:54:28', '2025-06-11 21:54:28'),
(27, 'post', 'Post telah dicreated', 'App\\Models\\Post', 'created', 36, 'App\\Models\\User', 4, '{\"attributes\":{\"title\":\"JUARA 2 RESPATI CUP 2025\",\"content\":\"JUARA 2 RESPATI CUP 2025  JUARA  JUARA 2 RESPATI CUP 20252 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025\",\"post_category_id\":2,\"image\":\"post-images\\/B6iLyLYpexlILInljIMChIC7Eh9PcWFZadH1Nr7s.jpg\"}}', NULL, '2025-06-11 21:57:52', '2025-06-11 21:57:52'),
(28, 'post', 'Post telah diupdated', 'App\\Models\\Post', 'updated', 36, 'App\\Models\\User', 4, '{\"attributes\":{\"post_category_id\":1},\"old\":{\"post_category_id\":2}}', NULL, '2025-06-11 21:58:15', '2025-06-11 21:58:15'),
(29, 'post', 'Post telah dideleted', 'App\\Models\\Post', 'deleted', 36, 'App\\Models\\User', 4, '{\"old\":{\"title\":\"JUARA 2 RESPATI CUP 2025\",\"content\":\"JUARA 2 RESPATI CUP 2025  JUARA  JUARA 2 RESPATI CUP 20252 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025 JUARA 2 RESPATI CUP 2025\",\"post_category_id\":1,\"image\":\"post-images\\/B6iLyLYpexlILInljIMChIC7Eh9PcWFZadH1Nr7s.jpg\"}}', NULL, '2025-06-11 21:58:32', '2025-06-11 21:58:32'),
(30, 'product', 'Product telah dicreated', 'App\\Models\\Product', 'created', 35, 'App\\Models\\User', 4, '{\"attributes\":{\"name\":\"Jersey baru 2025\",\"image\":null,\"description\":\"Jersey baru 2025 tersedia ukuran XL L dan S\",\"price\":200000,\"product_category_id\":2}}', NULL, '2025-06-11 21:59:36', '2025-06-11 21:59:36'),
(31, 'product', 'Product telah diupdated', 'App\\Models\\Product', 'updated', 35, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"product-images\\/vSGznKox655miAU5V1gWzfRvpkw6QHbh4ngGQ38I.jpg\"},\"old\":{\"image\":null}}', NULL, '2025-06-11 22:00:02', '2025-06-11 22:00:02'),
(32, 'product', 'Product telah dideleted', 'App\\Models\\Product', 'deleted', 35, 'App\\Models\\User', 4, '{\"old\":{\"name\":\"Jersey baru 2025\",\"image\":\"product-images\\/vSGznKox655miAU5V1gWzfRvpkw6QHbh4ngGQ38I.jpg\",\"description\":\"Jersey baru 2025 tersedia ukuran XL L dan S\",\"price\":200000,\"product_category_id\":2}}', NULL, '2025-06-11 22:00:26', '2025-06-11 22:00:26'),
(33, 'player', 'Player telah dicreated', 'App\\Models\\Player', 'created', 8, 'App\\Models\\User', 4, '{\"attributes\":{\"name\":\"Ronaldo Ketintang\",\"number\":76,\"image\":null,\"goal\":1000,\"match\":1000,\"position_id\":4}}', NULL, '2025-06-11 22:01:22', '2025-06-11 22:01:22'),
(34, 'player', 'Player telah diupdated', 'App\\Models\\Player', 'updated', 8, 'App\\Models\\User', 4, '{\"attributes\":{\"image\":\"player-images\\/IMdwJQ1rEX8n87CgF6CMdtB29cCidj9pscwQ24rc.jpg\"},\"old\":{\"image\":null}}', NULL, '2025-06-11 22:01:58', '2025-06-11 22:01:58'),
(35, 'player', 'Player telah dideleted', 'App\\Models\\Player', 'deleted', 8, 'App\\Models\\User', 4, '{\"old\":{\"name\":\"Ronaldo Ketintang\",\"number\":76,\"image\":\"player-images\\/IMdwJQ1rEX8n87CgF6CMdtB29cCidj9pscwQ24rc.jpg\",\"goal\":1000,\"match\":1000,\"position_id\":4}}', NULL, '2025-06-11 22:02:18', '2025-06-11 22:02:18'),
(36, 'message', 'Message telah dicreated', 'App\\Models\\Message', 'created', 9, 'App\\Models\\User', 4, '{\"attributes\":{\"user_id\":4,\"content\":\"Dbuka pada tanggal 18 juni 2025 ya kak\"}}', NULL, '2025-06-11 22:03:10', '2025-06-11 22:03:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ardli@gmail.com|127.0.0.1', 'i:1;', 1745507415),
('ardli@gmail.com|127.0.0.1:timer', 'i:1745507415;', 1745507415),
('kelfast@gmail.com|127.0.0.1', 'i:4;', 1745543959),
('kelfast@gmail.com|127.0.0.1:timer', 'i:1745543959;', 1745543959);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 4, 'hai apa kabar semuanya', '2025-06-10 01:52:03', '2025-06-10 01:52:03'),
(2, 4, 'Apakah ada merchandise baru', '2025-06-10 02:00:46', '2025-06-10 02:00:46'),
(3, 4, 'Kapan launching jersey 2025', '2025-06-10 02:27:32', '2025-06-10 02:27:32'),
(4, 4, 'Apakah ada jadwal latihan hari ini', '2025-06-11 04:25:57', '2025-06-11 04:25:57'),
(5, 4, 'Ada di tunggu ya kak', '2025-06-11 21:13:51', '2025-06-11 21:13:51'),
(6, 5, 'Bertanya mengenai merchandise terbaru?', '2025-06-11 21:16:31', '2025-06-11 21:16:31'),
(7, 8, 'Apakah ada pendaftaran akademi lagi?', '2025-06-11 21:48:02', '2025-06-11 21:48:02'),
(8, 9, 'Pendaftaran akademi kapan dibuka?', '2025-06-11 21:54:28', '2025-06-11 21:54:28'),
(9, 4, 'Dbuka pada tanggal 18 juni 2025 ya kak', '2025-06-11 22:03:10', '2025-06-11 22:03:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_19_031623_create_videos_table', 1),
(5, '2025_04_23_041615_add_role_to_users_table', 1),
(6, '2025_04_24_020032_create_positions_table', 1),
(7, '2025_04_24_020228_create_players_table', 1),
(8, '2025_04_24_021333_create_post_categories_table', 1),
(9, '2025_04_24_021726_create_posts_table', 1),
(10, '2025_04_24_022110_create_product_categories_table', 1),
(11, '2025_04_24_022407_create_products_table', 1),
(12, '2025_04_24_143916_add_goal_and_match_to_players_table', 2),
(13, '2025_06_10_084756_create_messages_table', 3),
(14, '2025_06_11_060248_create_activity_logs_table', 4),
(15, '2025_06_11_111623_create_activity_log_table', 5),
(16, '2025_06_11_111624_add_event_column_to_activity_log_table', 5),
(17, '2025_06_11_111625_add_batch_uuid_column_to_activity_log_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `goal` int(11) NOT NULL DEFAULT 0,
  `match` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `players`
--

INSERT INTO `players` (`id`, `name`, `number`, `image`, `position_id`, `created_at`, `updated_at`, `goal`, `match`) VALUES
(1, 'Mardlian', 12, 'player-images/OlOc0mJRctmVJjwWq0aLvLBIpzEe16XPl0XXOdHQ.jpg', 8, '2025-04-24 08:00:36', '2025-06-10 01:28:59', 30, 12),
(2, 'Mardlian', 12, 'player-images/tWXJTEGouosNFX5GHMd4b9HKpRjIhuMoORdpnQmO.jpg', 3, '2025-04-24 08:00:55', '2025-04-24 10:20:19', 20, 8),
(3, 'Mardlian', 12, 'player-images/riTTd2N5xW5JwgzX1gUj0q2VjlCLN3cdiVzoNpc2.jpg', 3, '2025-04-24 08:01:13', '2025-04-24 10:20:03', 14, 6),
(4, 'Mardlian', 12, 'player-images/5L5ddjbsdmiITJ64ak6yVMEwKtqZm4LtzR0OWXIH.jpg', 3, '2025-04-24 08:01:27', '2025-04-24 10:19:37', 13, 4),
(5, 'Mardlian', 12, 'player-images/BLhK6I9IZlpN7HpaC2p6Co7UjaZyyksY9fet0v9z.jpg', 3, '2025-04-24 08:01:50', '2025-04-24 10:19:23', 4, 4),
(6, 'David Fila', 7, 'player-images/iFxOFYbZXYtgmZwO6FmZQAMqFJmZ0LnPuF5B5E1z.jpg', 3, '2025-06-10 19:13:05', '2025-06-11 04:58:37', 1000, 9000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'GoalKeeper', '2025-04-23 19:35:10', '2025-04-23 19:35:10'),
(2, 'Anchor', '2025-04-23 19:35:10', '2025-04-23 19:35:10'),
(3, 'Flank', '2025-04-23 19:35:10', '2025-04-23 19:35:10'),
(4, 'Pivot', '2025-04-23 19:35:10', '2025-04-23 19:35:10'),
(5, 'GoalKeeper', '2025-04-23 19:35:32', '2025-04-23 19:35:32'),
(6, 'Anchor', '2025-04-23 19:35:32', '2025-04-23 19:35:32'),
(7, 'Flank', '2025-04-23 19:35:32', '2025-04-23 19:35:32'),
(8, 'Pivot', '2025-04-23 19:35:32', '2025-04-23 19:35:32'),
(9, 'GoalKeeper', '2025-04-23 19:36:22', '2025-04-23 19:36:22'),
(10, 'Anchor', '2025-04-23 19:36:22', '2025-04-23 19:36:22'),
(11, 'Flank', '2025-04-23 19:36:22', '2025-04-23 19:36:22'),
(12, 'Pivot', '2025-04-23 19:36:22', '2025-04-23 19:36:22'),
(13, 'GoalKeeper', '2025-04-23 19:38:42', '2025-04-23 19:38:42'),
(14, 'Anchor', '2025-04-23 19:38:42', '2025-04-23 19:38:42'),
(15, 'Flank', '2025-04-23 19:38:42', '2025-04-23 19:38:42'),
(16, 'Pivot', '2025-04-23 19:38:42', '2025-04-23 19:38:42'),
(17, 'GoalKeeper', '2025-04-23 19:40:18', '2025-04-23 19:40:18'),
(18, 'Anchor', '2025-04-23 19:40:18', '2025-04-23 19:40:18'),
(19, 'Flank', '2025-04-23 19:40:18', '2025-04-23 19:40:18'),
(20, 'Pivot', '2025-04-23 19:40:18', '2025-04-23 19:40:18'),
(21, 'GoalKeeper', '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(22, 'Anchor', '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(23, 'Flank', '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(24, 'Pivot', '2025-06-10 22:43:48', '2025-06-10 22:43:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `post_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `post_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Kelfast Meraih Juara 2 Respati CUP', '🔥 JUARA! 🔥\r\nKelfast FC berhasil menaklukkan lapangan dan keluar sebagai JUARA di Respati Cup!\r\nTerima kasih atas dukungan dan semangat yang tak henti dari semua pihak.\r\nIni bukan hanya kemenangan tim, tapi kemenangan kita bersama! 🏆⚽\r\n#KelfastFC #RespatiCup #Champions #FutsalJuara', 'post-images/8fhqWy1NOhEiBKS15DheweUAn6GWxzU9b9XjH2ld.jpg', 4, '2025-04-23 21:04:50', '2025-04-24 09:50:24'),
(2, 'Kelfast Meraih Juara 3 di Heatless CUP', '🏆 JUARA HEATLESS CUP! 🔥\r\nPerjuangan panjang, keringat yang tak terhitung, dan semangat pantang menyerah akhirnya terbayar tuntas! 💪\r\nKelfast FC resmi menyandang gelar JUARA di ajang Heatless Cup, membuktikan bahwa kerja keras, kekompakan tim, dan rasa percaya satu sama lain adalah kunci utama menuju puncak.\r\n\r\nDari laga pembuka yang menegangkan hingga final yang penuh adrenalin, setiap detik di lapangan kami jalani dengan semangat dan tekad yang sama: untuk menang dan membawa nama Kelfast FC semakin bersinar. ✨⚽\r\n\r\nTerima kasih untuk seluruh pemain, pelatih, suporter, dan semua pihak yang telah mendukung perjalanan ini. Kemenangan ini bukan hanya milik tim yang bermain, tapi milik kita semua yang percaya dan berjuang bersama! 💙\r\n\r\nMari jadikan momen ini sebagai awal dari langkah-langkah besar berikutnya. Kelfast FC tidak akan berhenti di sini — kami akan terus tumbuh, berkembang, dan menaklukkan tantangan selanjutnya! 💯\r\n\r\n#KelfastFC #JuaraHeatlessCup #FutsalChampions #BersatuUntukJuara #KitaKelfast', 'post-images/eHQu8W8YfteJwKOxOVAKo7AHtkyIicOnou89AccU.jpg', 4, '2025-04-23 21:06:12', '2025-04-24 09:51:51'),
(3, 'Kelfast uji tanding di kab. Jombang', '⚽ UJI TANDING KELFAST FC – KAB. JOMBANG 🔥\r\nMengasah kekompakan, menguji strategi, dan mempererat solidaritas tim — hari ini Kelfast FC melangkah ke lapangan untuk uji tanding di Kabupaten Jombang! 💪\r\n\r\nPertandingan ini bukan sekadar soal skor, tapi tentang proses, semangat juang, dan pengalaman berharga untuk menghadapi laga-laga besar ke depan. Setiap detik di lapangan menjadi pelajaran, dan setiap sentuhan bola adalah bukti bahwa Kelfast terus berkembang! 💙⚽\r\n\r\nTerima kasih untuk tim tuan rumah atas sambutan hangat dan pertandingan yang penuh sportivitas. Semoga silaturahmi antar tim terus terjaga dan berkembang bersama memajukan futsal daerah! 🙌\r\n\r\n#KelfastFC #UjiTanding #Jombang #SolidBersama #FutsalUntukKebersamaan #BersatuUntukMenang', 'post-images/oe1wyAFKB5zapGspjMPuzrBGavOc99hedVDY84Ve.jpg', 1, '2025-04-24 10:00:31', '2025-04-24 10:00:31'),
(19, 'Jadwal Latihan Rutin Mingguan pada bulan juni', 'Latihan futsal rutin akan diadakan setiap hari Selasa dan Kamis pukul 17.00 di GOR UNESA.', 'post-images/H1WF6g9pIGhQ6n4hP2XHOK0E1sNWh2HKtkiF0Cna.jpg', 2, '2025-06-10 22:47:17', '2025-06-11 04:21:46'),
(20, 'Latihan Fisik untuk Peningkatan Stamina', 'Tim Kelfast akan fokus pada latihan fisik minggu ini untuk meningkatkan daya tahan.', 'post-images/3lcXBNgBn0WrkO45NLj01dEgqVlHwP1rKsfFH8Pt.jpg', 5, '2025-06-10 22:47:17', '2025-06-11 03:53:23'),
(21, 'Turnamen Antar Fakultas 2025', 'Kelfast akan mengikuti turnamen antar fakultas pada tanggal 25 Juni 2025. Ayo dukung tim kita!', 'post-images/WxwUG8AnlplKeopOKUSVhRKRQ4Mo57rHGwqfin6k.jpg', 6, '2025-06-10 22:47:17', '2025-06-11 03:54:22'),
(22, 'Friendly Match dengan Tim Teknik', 'Akan diadakan pertandingan persahabatan dengan tim Teknik Informatika minggu depan.', 'post-images/1HGvuQ7KHpKMABeZBTuer1bKNtIAziF2adQ9ome4.jpg', 6, '2025-06-10 22:47:17', '2025-06-11 04:50:32'),
(23, 'Pemilihan Kapten Baru', 'Voting pemilihan kapten baru akan dibuka minggu ini. Semua anggota diwajibkan ikut.', 'post-images/J5SUZkw7GxlS2waQ9iXr992BdMcyFR5OphjO6BeM.jpg', 7, '2025-06-10 22:47:17', '2025-06-11 04:50:47'),
(24, 'Perubahan Jadwal Latihan', 'Karena adanya kegiatan kampus, latihan hari Kamis diganti menjadi hari Jumat.', 'post-images/aHN6Xg3imJVzZmqTgxUf7SgupoVcIGNukSgrl3Bt.jpg', 7, '2025-06-10 22:47:17', '2025-06-11 04:51:00'),
(25, 'Juara 1 Turnamen Futsal UNESA 2025', 'Tim Kelfast berhasil meraih juara 1 pada Turnamen Futsal UNESA setelah mengalahkan Tim Ekonomi.', 'images/prestasi1.jpg', 8, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(26, 'Top Skor Turnamen: Aldi Saputra', 'Selamat kepada Aldi Saputra yang meraih gelar top skor dengan total 12 gol.', 'images/prestasi2.jpg', 8, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(27, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(28, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(29, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(30, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(31, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(32, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(33, 'Info Tambahan Kegiatan Futsal', 'Pantau terus informasi kegiatan futsal Kelfast di website resmi kami.', 'images/default.jpg', 7, '2025-06-10 22:47:17', '2025-06-10 22:47:17'),
(35, 'JUARA 2 RESPATI CUP 2025', 'JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025  JUARA 2 RESPATI CUP 2025', 'post-images/HPJqOYqQ7nu2cJVQCTCoklA6kAceLs7fQ0lkvFJp.jpg', 2, '2025-06-11 21:38:20', '2025-06-11 21:38:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Latihan', NULL, NULL),
(2, 'Event', NULL, NULL),
(3, 'Pengumuman', NULL, NULL),
(4, 'Prestasi', NULL, NULL),
(5, 'Latihan', NULL, NULL),
(6, 'Event', NULL, NULL),
(7, 'Pengumuman', NULL, NULL),
(8, 'Prestasi', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `product_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Ortuseight jogosala revolt', 'product-images/n4jyKC1lIaagS6HfWmhfqlqL18QiUGEHWALqMCdx.jpg', 'semua ukuran tersedia', 4000000, 1, '2025-04-24 02:31:46', '2025-04-24 02:31:46'),
(2, 'Ortuseight jogosala', 'product-images/HjVhAj2XOIse5kmmwdF9mLyfTsZm5UxXqBXYC00c.jpg', 'ukuran 43 dan 42 ready stock', 399000, 1, '2025-04-24 10:15:21', '2025-04-24 10:15:21'),
(3, 'specs lightspeed', 'product-images/MNEqCNO1vA218FhDBiIkAxfhTuGlhnFWTINVdPF6.jpg', 'Ukuran 42 dan 41 tersedia', 699000, 1, '2025-04-24 10:16:16', '2025-04-24 10:16:16'),
(4, 'Jersey Kelfast Home 2024', 'product-images/BEjKkl6TKDhC7jEKi8git1XMJgPyXUDfz1UzmGZw.jpg', 'Jersey resmi tim futsal Kelfast untuk laga kandang tahun 2024.', 200000, 1, '2025-06-10 01:30:33', '2025-06-10 01:31:42'),
(5, 'Jersey Kelfast Away 2024', 'product-images/WZoovS2ISz8GvbR1T68TVz80glBZGwFm8JvJ041I.jpg', 'Jersey tandang tim futsal Kelfast edisi 2024.', 200000, 1, '2025-06-10 01:30:33', '2025-06-10 02:24:26'),
(6, 'Training Kit Kelfast', 'product-images/GU1uqiXwcwSLg0hRlkndvBSBVKfOqxOXtq3NSR9u.jpg', 'Training kit eksklusif untuk sesi latihan tim.', 180000, 1, '2025-06-10 01:30:33', '2025-06-10 02:25:17'),
(7, 'Sweater Kelfast Official', 'product-images/xqlVAUDPACJpVMgjlI2aMgFb7oL4P8Wme3kxZX1P.jpg', 'Sweater hangat dengan logo Kelfast.', 220000, 1, '2025-06-10 01:30:33', '2025-06-10 02:25:30'),
(8, 'Topi Snapback Kelfast', 'product-images/sala7W17GDU3VcI9WNIHaR0gNE5xMPrlHb5kvvtU.jpg', 'Topi snapback bergaya modern dengan bordir logo tim.', 80000, 1, '2025-06-10 01:30:33', '2025-06-10 02:25:43'),
(9, 'Scarf Kelfast Fans', 'product-images/Ul2LPAZATpKTTSKnTK5dAwa0PeRaslB2KMFitBjm.jpg', 'Scarf khusus untuk para fans Kelfast yang setia.', 60000, 1, '2025-06-10 01:30:33', '2025-06-10 02:40:22'),
(10, 'Kaos Fans Kelfast', 'product-images/k1BEZgvaxytQVLoH1Hj6V0VQfkbURdflXWgM2ai0.jpg', 'Kaos kasual untuk para pendukung tim futsal Kelfast.', 100000, 1, '2025-06-10 01:30:33', '2025-06-10 02:40:38'),
(11, 'Water Bottle Kelfast', 'product-images/cwIjt20VjkzJvzpEOeohoeE33TNmIP6LUqEKrIMq.jpg', 'Botol minum eksklusif tim futsal Kelfast.', 50000, 1, '2025-06-10 01:30:33', '2025-06-10 02:40:51'),
(12, 'Tas Ransel Kelfast', 'product-images/S2amkjweXFqQj8z1u6vpTcTtkWL4jDixNHvrlu2Y.jpg', 'Tas ransel praktis dan kuat berlogo Kelfast.', 150000, 1, '2025-06-10 01:30:33', '2025-06-10 02:41:08'),
(13, 'Gelang Karet Kelfast', 'product-images/SkzakilSLnMrMQQbHkbhfNpY5p33twkO1ZPEKF6D.jpg', 'Gelang karet dengan warna khas Kelfast.', 20000, 1, '2025-06-10 01:30:33', '2025-06-10 02:41:23'),
(14, 'Kelfast Hoodie Limited', 'https://source.unsplash.com/400x400/?hoodie,sport', 'Hoodie terbatas dengan desain eksklusif Kelfast.', 250000, 1, '2025-06-10 01:30:33', '2025-06-10 01:30:33'),
(15, 'Kelfast Socks', 'https://source.unsplash.com/400x400/?socks,sport', 'Kaos kaki olahraga berkualitas tinggi dari Kelfast.', 30000, 1, '2025-06-10 01:30:33', '2025-06-10 01:30:33'),
(16, 'Kelfast Keychain', 'https://source.unsplash.com/400x400/?keychain,souvenir', 'Gantungan kunci dengan miniatur logo tim.', 15000, 1, '2025-06-10 01:30:33', '2025-06-10 01:30:33'),
(17, 'Kelfast Mini Ball', 'https://source.unsplash.com/400x400/?futsal,ball', 'Bola mini souvenir berlogo tim futsal Kelfast.', 60000, 1, '2025-06-10 01:30:33', '2025-06-10 01:30:33'),
(18, 'Sticker Pack Kelfast', 'https://source.unsplash.com/400x400/?sticker,logo', 'Paket stiker kreatif bertema Kelfast untuk fans.', 10000, 1, '2025-06-10 01:30:33', '2025-06-10 01:30:33'),
(19, 'Jersey Kelfast Home 2024', 'product-images/pFtcfvqCZRzxBQje1OthJVg8g0L4mJq6WgwsyBbf.jpg', 'Jersey resmi tim futsal Kelfast untuk laga kandang tahun 2024.', 200000, 2, '2025-06-10 22:43:48', '2025-06-11 04:47:12'),
(20, 'Jersey Kelfast Away 2024', 'product-images/bzr76GVHoViHKelMJm1yYx8kBxZ6jLbG8HKDK3CJ.jpg', 'Jersey tandang tim futsal Kelfast edisi 2024.', 200000, 2, '2025-06-10 22:43:48', '2025-06-11 04:47:22'),
(21, 'Training Kit Kelfast', 'product-images/0IwoD5hViFqDmHzdh39rTcG38F2Aa7SOroKodnPa.jpg', 'Training kit eksklusif untuk sesi latihan tim.', 180000, 2, '2025-06-10 22:43:48', '2025-06-11 04:47:33'),
(22, 'Sweater Kelfast Official', 'product-images/Kh4Lrt3fjGqsoxkXIrBvIOplLjzbHzEzgfvWeCzw.jpg', 'Sweater hangat dengan logo Kelfast.', 220000, 1, '2025-06-10 22:43:48', '2025-06-11 05:14:05'),
(23, 'Topi Snapback Kelfast', 'product-images/WHM15FjRWiKlO7QgHXIvU9adNjpoEuPoHgwsiIAx.jpg', 'Topi snapback bergaya modern dengan bordir logo tim.', 80000, 1, '2025-06-10 22:43:48', '2025-06-11 05:14:17'),
(24, 'Scarf Kelfast Fans', 'product-images/Fd3kWzzdIwcFERExeXkGlzJhG7Oury0fNb9KF0v5.jpg', 'Scarf khusus untuk para fans Kelfast yang setia.', 60000, 1, '2025-06-10 22:43:48', '2025-06-11 05:14:33'),
(25, 'Kaos Fans Kelfast', 'https://source.unsplash.com/400x400/?tshirt,fan', 'Kaos kasual untuk para pendukung tim futsal Kelfast.', 100000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(26, 'Water Bottle Kelfast', 'https://source.unsplash.com/400x400/?bottle,sport', 'Botol minum eksklusif tim futsal Kelfast.', 50000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(27, 'Tas Ransel Kelfast', 'https://source.unsplash.com/400x400/?backpack,sport', 'Tas ransel praktis dan kuat berlogo Kelfast.', 150000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(28, 'Gelang Karet Kelfast', 'https://source.unsplash.com/400x400/?bracelet', 'Gelang karet dengan warna khas Kelfast.', 20000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(29, 'Kelfast Hoodie Limited', 'https://source.unsplash.com/400x400/?hoodie,sport', 'Hoodie terbatas dengan desain eksklusif Kelfast.', 250000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(30, 'Kelfast Socks', 'https://source.unsplash.com/400x400/?socks,sport', 'Kaos kaki olahraga berkualitas tinggi dari Kelfast.', 30000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(31, 'Kelfast Keychain', 'https://source.unsplash.com/400x400/?keychain,souvenir', 'Gantungan kunci dengan miniatur logo tim.', 15000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(32, 'Kelfast Mini Ball', 'https://source.unsplash.com/400x400/?futsal,ball', 'Bola mini souvenir berlogo tim futsal Kelfast.', 60000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48'),
(33, 'Sticker Pack Kelfast', 'https://source.unsplash.com/400x400/?sticker,logo', 'Paket stiker kreatif bertema Kelfast untuk fans.', 10000, 1, '2025-06-10 22:43:48', '2025-06-10 22:43:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sepatu', NULL, NULL),
(2, 'Baju', NULL, NULL),
(3, 'Aksesoris', NULL, NULL),
(4, 'Sepatu', NULL, NULL),
(5, 'Baju', NULL, NULL),
(6, 'Aksesoris', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GCZEX3OVGx6e0uCr4jpQkpJevOj3uFyFsz1rbiiI', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 Edg/137.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMmliUEtFdmkwU1RPaU9qRWRYZW5xQVczbGxwRGxHQjh4Z0hxdlZCcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1749704626);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'mardlian2', 'ardli2@gmail.com', NULL, '$2y$12$zJtNpVyvGon49OEX/5vPMe2T0qIwr4BD52Gf9fDs2Md6T5e8ZKOfG', NULL, '2025-04-23 20:04:12', '2025-04-23 20:04:12', 'admin'),
(2, 'ardli3', 'kelfast3@gmail.com', NULL, '$2y$12$HigybqN0sVZ/KXf2qoY8kOw9ti7EBWpzNlDc7tfp6W6Dysy9GO1t6', NULL, '2025-04-24 08:09:58', '2025-04-24 08:09:58', 'user'),
(3, 'ardli3', 'kelfast@gmail.com', NULL, '$2y$12$jooWpKfKb/u4osKc3iVHZeHDzI1PP/aI/lyHkM38k4qRe2fUrrMwC', NULL, '2025-04-24 18:19:28', '2025-04-24 18:19:28', 'user'),
(4, 'M. Mardlian Nurofiq', 'mardlian@gmail.com', NULL, '$2y$12$3bfi4R4paRxYVitlKuDCkehTpMNU4XX4kb7E8Tcya88q4WcjJxmfe', NULL, '2025-06-06 21:45:51', '2025-06-06 21:45:51', 'admin'),
(5, 'Uses', 'user@gmail.com', NULL, '$2y$12$u8HDoAB2F9PmPvauD.2rcOvS5pCk5EPkrPVbMAnASYhdZf3Q4SuPW', NULL, '2025-06-11 21:14:52', '2025-06-11 21:14:52', 'user'),
(6, 'User', 'user1@gmail.com', NULL, '$2y$12$tkw0i7IvvwWFqJOSIeNL7.LCZ.5h03KN5NAJeFskoQS1kWcTimfia', NULL, '2025-06-11 21:36:18', '2025-06-11 21:36:18', 'user'),
(7, 'User 2', 'user2@gmail.com', NULL, '$2y$12$xjJfDJzBVIMkte6CrNn3bOeYKuJZhJspWEEKgMnF5Lm3P.c0MAY3m', NULL, '2025-06-11 21:43:18', '2025-06-11 21:43:18', 'user'),
(8, 'User3', 'user3@gmail.com', NULL, '$2y$12$swdpw7DjVgcn.XG7kVdegOCR6Un/sKXAOO83M3mefN1ACHPVYOH2G', NULL, '2025-06-11 21:45:37', '2025-06-11 21:45:37', 'user'),
(9, 'User 4', 'user4@gmail.com', NULL, '$2y$12$w5YMo5nTN8w6u3RIrvYBsePezkEwO913tj3S01QrKI7C0gXo1v0ym', NULL, '2025-06-11 21:52:11', '2025-06-11 21:52:11', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `players_position_id_foreign` (`position_id`);

--
-- Indeks untuk tabel `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_category_id_foreign` (`post_category_id`);

--
-- Indeks untuk tabel `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_foreign` (`product_category_id`);

--
-- Indeks untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_category_id_foreign` FOREIGN KEY (`post_category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_product_category_id_foreign` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
