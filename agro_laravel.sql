-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2023 at 06:16 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agro_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Rahat Ahmed', 'admin@gmail.com', '$2y$10$inJlbcwjbwkMYzVndNp6H.xbSzDe3rtU.NiP2TUpjMvYvkS5XhrRC', 'admin.jpg', '', NULL, '2023-02-14 23:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'More precise work', '2022-10-05 05:35:28', '2022-10-05 05:35:28'),
(2, 'Cost-efficient', '2022-10-05 05:36:51', '2022-10-05 05:36:51'),
(3, 'Multiple Uses', '2022-10-05 05:37:08', '2022-10-05 05:37:08'),
(4, 'Increases Farm Income', '2022-10-05 05:37:34', '2022-10-05 05:37:34'),
(5, 'Makes More Space for Crops', '2022-10-05 05:38:03', '2022-10-05 05:38:03'),
(6, 'Nullifies Effects of Labor Shortages\n', '2022-10-05 05:38:12', '2022-10-05 05:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `photo`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customer 1', 'customer1@gmail.com', '$2y$10$Bf6ChGAJui3NzTILd9wJHOq.NaN9osy5IF1NHD1Wo1dZC/V2HlYPC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-10-18 22:24:16', '2022-10-18 22:25:39'),
(2, 'Sifat', 'customer2@gmail.com', '$2y$10$wnR/DkneJEO7xs0z.lE5Be0qT6jXZprxA6BWyxO8J4MT6XhmsnZ8.', '+8801783753653', 'Bangladesh', 'mirpur 13, c block, road no 08, dhaka', 'Mirpur 13', 'Dhaka', '1216', '1667122938.jpg', '', 1, '2022-10-18 22:30:12', '2022-10-30 03:42:50'),
(3, 'Abdul Karim', 'shaikh35-3024@diu.edu.bd', '$2y$10$9e7bRRClFQok26uW.b4rD.mzgvpDkWh3D663XpVh2UJIE3Rz8xXC2', '+8801783753653', 'Bangladesh', 'mirpur 13, c block, road no 08, dhaka', 'Mirpur 13', 'Dhaka', '1216', '1667192068.jpg', '', 1, '2022-10-30 22:52:50', '2022-10-30 22:54:28'),
(4, 'mr.korim', 'korimvai@gmail.com', '$2y$10$3vGPRLrqC4csB1EdeDV1Bee.GhaE88cs66abaCMxoMHdXt295THmq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9e0d288668b4d193c6ded2431f9e344c46c5f439d018c3f0a52c5a8f63274839', 0, '2023-02-15 10:19:17', '2023-02-15 10:19:17'),
(5, 'Sultan Khan', 'sultan@gmail.com', '$2y$10$RdTVWKr7rVr6vIZ/8bqfquXaYA/7UfOA3D1Z766oMYVDkXFY1rV5C', '+8801783753653', 'Bangladesh', 'mirpur 13, c block, road no 08, dhaka', 'Mirpur 13', 'Dhaka', '1216', NULL, '', 1, '2023-02-15 23:43:04', '2023-02-15 23:44:21'),
(6, 'Rahat Ahmed', 'rahat35-2999@diu.edu.bd', '$2y$10$24IpUDdcNFvjCgnc4YPvIeO6YSoB.FjeOtM9vDicMmS3d04symBOK', '+8801745896548', 'Bangladesh', 'Mohammodpur, Dhaka-1217', 'Mohammodpur', 'Dhaka', '1217', '1676550617.jpg', '', 1, '2023-02-16 06:07:53', '2023-02-16 06:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_holder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_mm` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'expiration month',
  `expiration_yy` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'expiration year',
  `cvv` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donates`
--

INSERT INTO `donates` (`id`, `card_number`, `card_holder`, `expiration_mm`, `expiration_yy`, `cvv`, `amount`, `created_at`, `updated_at`) VALUES
(1, '4244222', 'Rahat', '12', '2027', '234', 34, '2023-02-16 11:54:27', '2023-02-16 11:54:27'),
(2, '424242', 'Rahat', '10', '2025', '234', 20, '2023-02-16 11:56:45', '2023-02-16 11:56:45'),
(3, '42424', 'Rahat', '01', '2023', '234', 6, '2023-02-16 11:57:44', '2023-02-16 11:57:44'),
(4, '424242', 'Rahat', '11', '2028', '234', 34, '2023-02-16 11:58:33', '2023-02-16 11:58:33'),
(5, '4222222222222', 'Rahat', '10', '2022', '343', 20, '2023-02-16 23:14:14', '2023-02-16 23:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Which tractor is best and most powerful?', '<p>There is a vast list of the best and most powerful tractors, including the John Deere 6120 B 4WD, Preet 10049 4WD and others.<br></p>', '2022-10-30 21:41:21', '2022-10-30 21:41:21'),
(2, 'How do I search for hotels with specific facilities such as, for example, a pool?What is the use of PTO HP in Tractor?', '<p>The PTO Horsepower signifies the amount of power available to operate various implements. For example, PTO hauls the implements for tillage and sow multiple crops.<br></p>', '2022-10-30 21:42:08', '2022-10-30 21:42:08'),
(3, 'What is a Zaid crop with an example?', '<p>They are summer season crops, grown for short periods between March to June.<br></p>', '2022-10-30 21:42:29', '2022-10-30 21:42:29'),
(4, 'What are organic pesticides?', '<p>Organic pesticides are derived from botanical and mineral sources. They contain less chemicals and are less threatening than chemical-based pesticides.<br></p>', '2022-10-30 21:42:50', '2022-10-30 21:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_05_055240_create_admins_table', 2),
(6, '2022_10_05_105722_create_amenities_table', 3),
(7, '2022_10_06_033228_create_rooms_table', 4),
(8, '2022_10_06_034529_create_room_photos_table', 5),
(9, '2022_10_19_031643_create_customers_table', 6),
(10, '2022_10_20_145133_create_orders_table', 7),
(11, '2022_10_20_145155_create_order_details_table', 7),
(12, '2022_10_20_145512_create_booked_rooms_table', 7),
(13, '2022_10_29_153442_create_faqs_table', 8),
(14, '2022_10_29_153547_create_testimonials_table', 8),
(15, '2022_10_29_153646_create_features_table', 8),
(16, '2022_10_29_153705_create_videos_table', 8),
(17, '2022_10_29_153843_create_posts_table', 8),
(18, '2022_10_29_155414_create_photos_table', 9),
(19, '2022_10_30_044711_create_pages_table', 10),
(20, '2022_10_30_050021_create_subscribers_table', 11),
(21, '2023_02_16_173627_create_donates_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_last_digit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `transaction_id`, `payment_method`, `card_last_digit`, `paid_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '1666280183', 'PAYID-MNIWVUA1LB27633DP266832U', 'PayPal', NULL, '20.00', 'Completed', '2022-10-20 09:36:24', '2022-10-20 09:36:24'),
(2, 2, '1666284641', 'txn_3Lv1x8BYPKDnQGbG0DZHQL2A', 'Stripe', '4242', '20', 'Completed', '2022-10-20 10:50:42', '2022-10-20 10:50:42'),
(3, 2, '1667123504', 'PAYID-MNPERRQ83172724GG651490G', 'PayPal', NULL, '70.00', 'Completed', '2022-10-30 03:51:44', '2022-10-30 03:51:44'),
(4, 2, '1667123666', 'PAYID-MNPETPY7HD38453FW403884T', 'PayPal', NULL, '60.00', 'Completed', '2022-10-30 03:54:26', '2022-10-30 03:54:26'),
(5, 2, '1667188499', 'txn_3Lyp5OBYPKDnQGbG0GXnxwcB', 'Stripe', '4242', '20', 'Completed', '2022-10-30 21:54:59', '2022-10-30 21:54:59'),
(6, 2, '1667539937', 'PAYID-MNSKHHQ36F61129H9642532V', 'PayPal', NULL, '20.00', 'Completed', '2022-11-03 23:32:17', '2022-11-03 23:32:17'),
(7, 5, '1676526437', 'PAYID-MPW4GJA0BJ67647ER551560A', 'PayPal', NULL, '26.00', 'Completed', '2023-02-15 23:47:17', '2023-02-15 23:47:17'),
(8, 5, '1676531974', 'PAYID-MPW5RYY9UB92078596176053', 'PayPal', NULL, '24.00', 'Completed', '2023-02-16 01:19:35', '2023-02-16 01:19:35'),
(9, 5, '1676532366', 'PAYID-MPW5U7A83S322606R030141X', 'PayPal', NULL, '24.00', 'Completed', '2023-02-16 01:26:06', '2023-02-16 01:26:06'),
(10, 5, '1676533086', 'PAYID-MPW52IY68U00771KD772991P', 'PayPal', NULL, '90.00', 'Completed', '2023-02-16 01:38:06', '2023-02-16 01:38:06'),
(11, 6, '1676550390', 'PAYID-MPXCBTQ4TT31643YB808181B', 'PayPal', NULL, '20.00', 'Completed', '2023-02-16 06:26:30', '2023-02-16 06:26:30'),
(12, 6, '1676551604', 'PAYID-MPXCLDY01A1271325449661J', 'PayPal', NULL, '20.00', 'Completed', '2023-02-16 06:46:44', '2023-02-16 06:46:44'),
(13, 6, '1676570769', 'txn_3McBqOBYPKDnQGbG1yfMx7aD', 'Stripe', '4242', '10', 'Completed', '2023-02-16 12:06:09', '2023-02-16 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `order_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `order_no`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '1666280183', '20', '2022-10-20 09:36:24', '2022-10-20 09:36:24'),
(2, 2, 6, '1666284641', '20', '2022-10-20 10:50:42', '2022-10-20 10:50:42'),
(3, 3, 7, '1667123504', '20', '2022-10-30 03:51:44', '2022-10-30 03:51:44'),
(4, 3, 5, '1667123504', '40', '2022-10-30 03:51:44', '2022-10-30 03:51:44'),
(5, 4, 7, '1667123666', '20', '2022-10-30 03:54:26', '2022-10-30 03:54:26'),
(6, 4, 5, '1667123666', '40', '2022-10-30 03:54:26', '2022-10-30 03:54:26'),
(7, 5, 7, '1667188499', '20', '2022-10-30 21:54:59', '2022-10-30 21:54:59'),
(8, 6, 5, '1667539937', '20', '2022-11-03 23:32:17', '2022-11-03 23:32:17'),
(9, 7, 4, '1676526437', '26', '2023-02-15 23:47:17', '2023-02-15 23:47:17'),
(10, 9, 7, '1676532366', '24', '2023-02-16 01:26:06', '2023-02-16 01:26:06'),
(11, 10, 6, '1676533086', '60', '2023-02-16 01:38:06', '2023-02-16 01:38:06'),
(12, 10, 5, '1676533086', '30', '2023-02-16 01:38:06', '2023-02-16 01:38:06'),
(13, 11, 6, '1676550390', '20', '2023-02-16 06:26:30', '2023-02-16 06:26:30'),
(14, 12, 4, '1676551604', '20', '2023-02-16 06:46:44', '2023-02-16 06:46:44'),
(15, 13, 5, '1676570769', '10', '2023-02-16 12:06:09', '2023-02-16 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `photo`, `caption`, `created_at`, `updated_at`) VALUES
(1, '1676437872.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2022-10-30 22:21:52', '2023-02-14 23:11:57'),
(2, '1676438026.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2022-10-30 22:26:12', '2023-02-14 23:13:46'),
(3, '1676438067.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2022-10-30 22:27:19', '2023-02-14 23:14:27'),
(4, '1676438133.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2022-10-30 22:28:29', '2023-02-14 23:15:33'),
(5, '1676438183.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2023-02-14 23:16:23', '2023-02-14 23:16:23'),
(6, '1676438245.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2023-02-14 23:17:25', '2023-02-14 23:17:25'),
(7, '1676438276.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2023-02-14 23:17:56', '2023-02-14 23:17:56'),
(8, '1676438293.jpg', 'Agriculture is the largest employment sector in Bangladesh.', '2023-02-14 23:18:13', '2023-02-14 23:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `amenities`, `featured_photo`, `video_id`, `created_at`, `updated_at`) VALUES
(4, 'Axe', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">An&nbsp;<b>axe</b>&nbsp;(<span class=\"rt-commentedText nowrap\" style=\"white-space: nowrap;\"><span class=\"IPA nopopups noexcerpt\" lang=\"en-fonipa\"><a href=\"https://en.wikipedia.org/wiki/Help:IPA/English\" title=\"Help:IPA/English\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">/<span style=\"border-bottom: 1px dotted;\"><span title=\"/æ/: \'a\' in \'bad\'\">æ</span><span title=\"\'k\' in \'kind\'\">k</span><span title=\"\'s\' in \'sigh\'\">s</span></span>/</a></span></span>&nbsp;sometimes&nbsp;<b>ax</b>&nbsp;in&nbsp;<a href=\"https://en.wikipedia.org/wiki/American_English\" title=\"American English\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">American English</a>;&nbsp;<a href=\"https://en.wikipedia.org/wiki/American_and_British_English_spelling_differences#Miscellaneous_spelling_differences\" title=\"American and British English spelling differences\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">see spelling differences</a>) is an implement that has been used for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Millennium\" title=\"Millennium\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">millennia</a>&nbsp;to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wood_carving\" title=\"Wood carving\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">shape</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wood_splitting\" title=\"Wood splitting\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">split</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Woodchopping\" title=\"Woodchopping\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">cut</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wood\" title=\"Wood\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">wood</a>, to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Harvest\" title=\"Harvest\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">harvest</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lumber\" title=\"Lumber\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">timber</a>, as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Battle_axe\" title=\"Battle axe\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">weapon</a>, and as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ceremony\" title=\"Ceremony\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ceremonial</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Heraldry\" title=\"Heraldry\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">heraldic</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Symbol\" title=\"Symbol\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">symbol</a>. The axe has many forms and specialised uses but generally consists of an axe head with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Handle_(grip)\" class=\"mw-redirect\" title=\"Handle (grip)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">handle</a>, or&nbsp;<i>helve</i>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Before the modern axe, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stone_Age\" title=\"Stone Age\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">stone-age</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hand_axe\" title=\"Hand axe\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hand axe</a>&nbsp;without a handle was used from 1.5 million years&nbsp;<a href=\"https://en.wikipedia.org/wiki/Before_Present\" title=\"Before Present\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">BP</a>. Hafted axes (those with a handle) date only from 6000 BC. The earliest examples of handled axes have heads of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rock_(geology)\" title=\"Rock (geology)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">stone</a>&nbsp;with some form of wooden handle attached (<a href=\"https://en.wikipedia.org/wiki/Hafting\" title=\"Hafting\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hafted</a>) in a method to suit the available materials and use. Axes made of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copper\" title=\"Copper\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">copper</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bronze\" title=\"Bronze\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">bronze</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Iron\" title=\"Iron\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">iron</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Steel\" title=\"Steel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">steel</a>&nbsp;appeared as these technologies developed.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">The axe is an example of a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Simple_machine\" title=\"Simple machine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">simple machine</a>, as it is a type of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Wedge_(mechanical_device)\" class=\"mw-redirect\" title=\"Wedge (mechanical device)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">wedge</a>, or dual&nbsp;<a href=\"https://en.wikipedia.org/wiki/Inclined_plane\" title=\"Inclined plane\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">inclined plane</a>. This reduces the effort needed by the wood chopper. It splits the wood into two parts by the pressure concentration at the blade. The handle of the axe also acts as a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lever#Third-class_levers\" title=\"Lever\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lever</a>&nbsp;allowing the user to increase the force at the cutting edge—not using the full length of the handle is known as choking the axe. For fine chopping using a side axe this sometimes is a positive effect, but for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Felling\" title=\"Felling\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">felling</a>&nbsp;with a double bitted axe it reduces efficiency.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Generally, cutting axes have a shallow wedge angle, whereas splitting axes have a deeper angle. Most axes are double bevelled (i.e. symmetrical about the axis of the blade), but some specialist&nbsp;<a href=\"https://en.wikipedia.org/wiki/Broadaxe\" title=\"Broadaxe\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">broadaxes</a>&nbsp;have a single bevel blade, and usually an offset handle that allows them to be used for finishing work without putting the user\'s knuckles at risk of injury. Less common today, they were once an integral part of a joiner and carpenter\'s tool kit, not just a tool for use in forestry. A tool of similar origin is the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Billhook\" title=\"Billhook\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">billhook</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Most modern axes have steel heads and wooden handles, typically&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hickory\" title=\"Hickory\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hickory</a>&nbsp;in the US and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ash_tree\" class=\"mw-redirect\" title=\"Ash tree\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ash</a>&nbsp;in Europe and Asia, although&nbsp;<a href=\"https://en.wikipedia.org/wiki/Plastic\" title=\"Plastic\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">plastic</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fibreglass\" class=\"mw-redirect\" title=\"Fibreglass\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">fibreglass</a>&nbsp;handles are also common. Modern axes are specialised by use, size and form. Hafted axes with short handles designed for use with one hand are often called hand axes but the term hand axe refers to axes without handles as well.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hatchet\" title=\"Hatchet\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hatchets</a>&nbsp;tend to be small hafted axes often with a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hammer\" title=\"Hammer\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hammer</a>&nbsp;on the back side (the poll). As easy-to-make weapons, axes have frequently been used in combat, and is one of humanity\'s oldest melee weapons.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Axe#cite_note-1\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup></p>', '10', '2,4,5,6', 'featured_photo1676529254.jpg', 'caDnKmZ8vZs', '2022-10-06 04:56:50', '2023-02-16 00:43:07'),
(5, 'Shovel', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A&nbsp;<b>shovel</b>&nbsp;is a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tool\" title=\"Tool\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">tool</a>&nbsp;used for digging, lifting, and moving bulk materials, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Soil\" title=\"Soil\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">soil</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Coal\" title=\"Coal\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">coal</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Gravel\" title=\"Gravel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">gravel</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Snow\" title=\"Snow\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">snow</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sand\" title=\"Sand\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">sand</a>, or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ore\" title=\"Ore\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ore</a>.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Shovel#cite_note-1\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[1]</a></sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Most shovels are&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hand_tool\" title=\"Hand tool\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hand tools</a>&nbsp;consisting of a broad blade fixed to a medium-length handle. Shovel blades are usually made of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Sheet_metal\" title=\"Sheet metal\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">sheet steel</a>&nbsp;or hard plastics and are very strong. Shovel handles are usually made of wood (especially specific varieties such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fraxinus\" title=\"Fraxinus\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">ash</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Maple\" title=\"Maple\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">maple</a>) or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Glass-reinforced_plastic\" class=\"mw-redirect\" title=\"Glass-reinforced plastic\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">glass-reinforced plastic</a>&nbsp;(fiberglass).</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Hand shovel blades made of sheet steel usually have a folded seam or hem at the back to make a socket for the handle. This fold also commonly provides extra rigidity to the blade. The handles are usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Rivet\" title=\"Rivet\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">riveted</a>&nbsp;in place. A T-piece is commonly fitted to the end of the handle to aid grip and control where the shovel is designed for moving soil and heavy materials. These designs can all be easily&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mass_production\" title=\"Mass production\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">mass-produced</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">The term&nbsp;<i>shovel</i>&nbsp;also applies to larger excavating machines called&nbsp;<a href=\"https://en.wikipedia.org/wiki/Power_shovel\" title=\"Power shovel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">power shovels</a>, which serve the same purpose—digging, lifting, and moving material. Although such modern power shovels as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Loader_(equipment)\" title=\"Loader (equipment)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">front-end loaders</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Excavator\" title=\"Excavator\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">excavators</a>&nbsp;(including tractors that feature a loading bucket on one end and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Backhoe\" title=\"Backhoe\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">backhoe</a>&nbsp;for digging and placing material on the other) descend from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Steam_shovel\" title=\"Steam shovel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">steam shovels</a>&nbsp;and perform similar work they are not classified as shovels.<sup class=\"noprint Inline-Template Template-Fact\" style=\"line-height: 1; font-size: 11.2px; white-space: nowrap;\">[<i><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citation_needed\" title=\"Wikipedia:Citation needed\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span title=\"This claim needs references to reliable sources. (March 2022)\">citation needed</span></a></i>]</sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Hand shovels have been adapted for many different tasks and environments. They can be optimized for a single task or designed as cross-over or compromise&nbsp;<a href=\"https://en.wikipedia.org/wiki/Human_multitasking\" title=\"Human multitasking\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">multitaskers</a>. They are very useful in agriculture.</p>', '10', '1,2,3,4', 'featured_photo1676529335.jpg', 'XQ4hURBl5jE', '2022-10-06 05:09:45', '2023-02-16 00:44:33'),
(6, 'Gardening Fork', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A&nbsp;<b>garden fork</b>,&nbsp;<b>spading fork</b>, or&nbsp;<b>digging fork</b>&nbsp;is a gardening implement, with a handle and a square-shouldered head featuring several (usually four) short, sturdy&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tine_(structural)\" title=\"Tine (structural)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">tines</a>. It is used for loosening, lifting and turning over&nbsp;<a href=\"https://en.wikipedia.org/wiki/Soil\" title=\"Soil\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">soil</a>&nbsp;in gardening and farming, and not to be confused with the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pitchfork\" title=\"Pitchfork\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">pitchfork</a>, a similar tined tool used for moving (or throwing) loose materials such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hay\" title=\"Hay\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">hay</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Straw\" title=\"Straw\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">straw</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Silage\" title=\"Silage\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">silage</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Manure\" title=\"Manure\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">manure</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A garden fork is used similarly to a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Spade\" title=\"Spade\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">spade</a>&nbsp;in loosening and turning over soil. Its tines allow it to be pushed more easily into the ground, and it can rake out stones and weeds and break up clods, it is not so easily stopped by stones, and it does not cut through weed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Root\" title=\"Root\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">roots</a>&nbsp;or root-crops. Garden forks were originally made of wood, but the majority are now made of forged&nbsp;<a href=\"https://en.wikipedia.org/wiki/Carbon_steel#Mild_steel\" title=\"Carbon steel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">carbon steel</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stainless_steel\" title=\"Stainless steel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">stainless steel</a>.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Reflecting their differing uses, garden forks have shorter, flatter, thicker, and more closely spaced tines than pitchforks. They have comparatively a fairly short, stout, usually wooden handle, typically with a \"D\" or \"T\" shaped grab at the end.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">A smaller version of such forks with shorter, closer-spaced, thinner tines (but a full-sized handle) is known as a&nbsp;<i>border fork</i>&nbsp;or&nbsp;<i>ladies\' fork</i>, and is used for lighter work, such as weeding amongst other plants. Forks with broader, flatter tines are made for lifting&nbsp;<a href=\"https://en.wikipedia.org/wiki/Potato\" title=\"Potato\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">potatoes</a>&nbsp;and other root crops from the ground. A pair of forks back-to-back may used to&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lever#Second-class_levers\" title=\"Lever\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">lever</a>&nbsp;apart dense clumps of roots.<sup class=\"noprint Inline-Template\" style=\"line-height: 1; font-size: 11.2px; margin-left: 0.1em; white-space: nowrap;\">[<i><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Please_clarify\" title=\"Wikipedia:Please clarify\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span title=\"The text near this tag may need clarification or removal of jargon. (December 2021)\">clarification needed</span></a></i>]</sup></p>', '20', '4,5,6', 'featured_photo1676529515.png', 'vme7Lkvqxxo', '2022-10-06 05:11:43', '2023-02-16 00:45:28'),
(7, 'Pruning Saw', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">Pruning Saws were at first serrated materials such as flint, obsidian, sea shells and shark teeth.<sup id=\"cite_ref-Saw_2-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-Saw-2\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">In ancient Egypt, open (unframed) saws made of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Copper\" title=\"Copper\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">copper</a>&nbsp;are documented as early as the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Early_Dynastic_Period_of_Egypt\" class=\"mw-redirect\" title=\"Early Dynastic Period of Egypt\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Early Dynastic Period</a>, circa 3,100–2,686 BC.<sup id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-3\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[3]</a></sup><sup class=\"noprint Inline-Template\" style=\"line-height: 1; font-size: 11.2px; white-space: nowrap;\">[<i><a href=\"https://en.wikipedia.org/wiki/Wikipedia:Citing_sources\" title=\"Wikipedia:Citing sources\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span title=\"This citation requires a reference to the specific page or range of pages in which the material appears. (March 2011)\">page&nbsp;needed</span></a></i>]</sup>&nbsp;Many copper saws were found in tomb No. 3471 dating to the reign of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Djer\" title=\"Djer\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Djer</a>&nbsp;in the 31st century BC.<sup id=\"cite_ref-4\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-4\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[4]</a></sup>&nbsp;Saws have been used for cutting a variety of materials, including humans (<a href=\"https://en.wikipedia.org/wiki/Death_by_sawing\" title=\"Death by sawing\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">death by sawing</a>). Models of saws have been found in many contexts throughout Egyptian history. Particularly useful are tomb wall illustrations of carpenters at work that show sizes and the use of different types. Egyptian saws were at first serrated, hardened copper which cut on both pull and push strokes. As the saw developed, teeth were raked to cut only on the pull stroke and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Saw_set\" title=\"Saw set\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">set</a>&nbsp;with the teeth projecting only on one side, rather than in the modern fashion with an alternating set. Saws were also made of bronze and later iron. In the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Iron_Age\" title=\"Iron Age\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Iron Age</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Frame_saw\" title=\"Frame saw\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">frame saws</a>&nbsp;were developed holding the thin blades in tension.<sup id=\"cite_ref-Saw_2-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-Saw-2\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[2]</a></sup>&nbsp;The earliest known sawmill is the Roman&nbsp;<a href=\"https://en.wikipedia.org/wiki/Hierapolis_sawmill\" title=\"Hierapolis sawmill\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Hierapolis sawmill</a>&nbsp;from the third century AD and was for sawing stone.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\"><br></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">According to Chinese legend, the saw was invented by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lu_Ban\" title=\"Lu Ban\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Lu Ban</a>.<sup id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-5\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[5]</a></sup>&nbsp;In&nbsp;<a href=\"https://en.wikipedia.org/wiki/Greek_mythology\" title=\"Greek mythology\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Greek mythology</a>, as recounted by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ovid\" title=\"Ovid\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Ovid</a>,<sup id=\"cite_ref-6\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-6\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[6]</a></sup>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Talos_(inventor)\" title=\"Talos (inventor)\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Talos</a>, the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Daedalus#Daedalus_and_his_nephew\" title=\"Daedalus\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">nephew of Daedalus</a>, invented the saw. In archeological reality, saws date back to prehistory and most probably evolved from&nbsp;<a href=\"https://en.wikipedia.org/wiki/Neolithic\" title=\"Neolithic\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">Neolithic</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stone_tools\" class=\"mw-redirect\" title=\"Stone tools\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">stone</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bone_tools\" class=\"mw-redirect\" title=\"Bone tools\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">bone tools</a>. \"[T]he identities of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Axe\" title=\"Axe\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">axe</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adze\" title=\"Adze\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">adz</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Chisel\" title=\"Chisel\" style=\"color: rgb(51, 102, 204); background: none rgb(255, 255, 255);\">chisel</a>, and saw were clearly established more than 4,000 years ago.\"<sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Saw#cite_note-7\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup><br></p>', '12', '1,3,5,6', 'featured_photo1676529595.jpg', 'mgMBoZ1ZYUM', '2022-10-12 21:45:51', '2023-02-16 00:47:20');
INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `amenities`, `featured_photo`, `video_id`, `created_at`, `updated_at`) VALUES
(9, 'Tractor', '<p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">The first powered farm implements in the early 19th century were&nbsp;<a href=\"https://en.wikipedia.org/wiki/Portable_engine\" title=\"Portable engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">portable engines</a>&nbsp;– steam engines on wheels that could be used to drive mechanical farm machinery by way of a flexible belt.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Richard_Trevithick\" title=\"Richard Trevithick\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Richard Trevithick</a>&nbsp;designed the first \'semi-portable\'&nbsp;<a href=\"https://en.wikipedia.org/wiki/Stationary_steam_engine\" title=\"Stationary steam engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">stationary steam engine</a>&nbsp;for agricultural use, known as a \"barn engine\" in 1812, and it was used to drive a corn threshing machine.<sup id=\"cite_ref-Hodge_5-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Tractor#cite_note-Hodge-5\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[5]</a></sup>&nbsp;The truly portable engine was invented in 1893 by&nbsp;<a href=\"https://en.wikipedia.org/w/index.php?title=William_Tuxford&amp;action=edit&amp;redlink=1\" class=\"new\" title=\"William Tuxford (page does not exist)\" style=\"color: rgb(221, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">William Tuxford</a>&nbsp;of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Boston,_Lincolnshire\" title=\"Boston, Lincolnshire\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Boston, Lincolnshire</a>&nbsp;who started manufacture of an engine built around a locomotive-style boiler with horizontal smoke tubes. A large&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flywheel\" title=\"Flywheel\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">flywheel</a>&nbsp;was mounted on the crankshaft, and a stout leather belt was used to transfer the drive to the equipment being driven. In the 1850s,&nbsp;<a href=\"https://en.wikipedia.org/wiki/John_Fowler_(agricultural_engineer)\" title=\"John Fowler (agricultural engineer)\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">John Fowler</a>&nbsp;used a Clayton &amp; Shuttleworth portable engine to drive apparatus in the first public demonstrations of the application of cable haulage to cultivation.</p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">In parallel with the early portable engine development, many engineers attempted to make them self-propelled – the fore-runners of the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Traction_engine\" title=\"Traction engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">traction engine</a>. In most cases this was achieved by fitting a sprocket on the end of the crankshaft, and running a chain from this to a larger sprocket on the rear axle. These experiments met with mixed success.<sup id=\"cite_ref-Lane2_6-0\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Tractor#cite_note-Lane2-6\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[6]</a></sup>&nbsp;The first proper&nbsp;<a href=\"https://en.wikipedia.org/wiki/Traction_engine\" title=\"Traction engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">traction engine</a>, in the form recognisable today, was developed in 1859 when British engineer&nbsp;<a href=\"https://en.wikipedia.org/wiki/Aveling_and_Porter\" title=\"Aveling and Porter\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Thomas Aveling</a>&nbsp;modified a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Clayton_%26_Shuttleworth\" title=\"Clayton &amp; Shuttleworth\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Clayton &amp; Shuttleworth</a>&nbsp;<a href=\"https://en.wikipedia.org/wiki/Portable_engine\" title=\"Portable engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">portable engine</a>, which had to be hauled from job to job by horses, into a self-propelled one. The alteration was made by fitting a long driving chain between the crankshaft and the rear axle.<sup id=\"cite_ref-7\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Tractor#cite_note-7\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[7]</a></sup></p><p style=\"margin: 0.5em 0px; color: rgb(32, 33, 34); font-family: sans-serif;\">The first half of the 1860s was a period of great experimentation but by the end of the decade the standard form of the traction engine had evolved and changed little over the next sixty years. It was widely adopted for agricultural use. The first tractors were steam-powered&nbsp;<a href=\"https://en.wikipedia.org/wiki/Ploughing_engine\" class=\"mw-redirect\" title=\"Ploughing engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">plowing engines</a>. They were used in pairs, placed on either side of a field to haul a plow back and forth between them using a wire cable. In Britain&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mann%27s_Patent_Steam_Cart_and_Wagon_Company\" title=\"Mann\'s Patent Steam Cart and Wagon Company\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Mann\'s</a>&nbsp;and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Richard_Garrett_%26_Sons\" title=\"Richard Garrett &amp; Sons\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Garrett</a>&nbsp;developed&nbsp;<a href=\"https://en.wikipedia.org/wiki/Steam_tractor\" title=\"Steam tractor\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">steam tractors</a>&nbsp;for direct ploughing, but the heavy, wet soil of England meant that these designs were less economical than a team of horses. In the&nbsp;<a href=\"https://en.wikipedia.org/wiki/United_States\" title=\"United States\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">United States</a>, where soil conditions permitted, steam tractors were used to direct-haul plows. Steam-powered&nbsp;<a href=\"https://en.wikipedia.org/wiki/Agricultural_engine\" class=\"mw-redirect\" title=\"Agricultural engine\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">agricultural engines</a>&nbsp;remained in use well into the 20th century until reliable internal combustion engines had been developed.<sup id=\"cite_ref-8\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Tractor#cite_note-8\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">[8]</a></sup></p>', '230', '2,5,6', 'featured_photo_1676534562.webp', 'pps699y7JGM', '2023-02-16 02:02:42', '2023-02-16 02:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `room_photos`
--

CREATE TABLE `room_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` int(11) NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_photos`
--

INSERT INTO `room_photos` (`id`, `room_id`, `photo`, `created_at`, `updated_at`) VALUES
(23, 4, 'photo_1676533813.jpg', '2023-02-16 01:50:13', '2023-02-16 01:50:13'),
(24, 4, 'photo_1676533846.png', '2023-02-16 01:50:46', '2023-02-16 01:50:46'),
(25, 5, 'photo_1676533955.jpg', '2023-02-16 01:52:35', '2023-02-16 01:52:35'),
(26, 5, 'photo_1676534006.jpg', '2023-02-16 01:53:26', '2023-02-16 01:53:26'),
(27, 6, 'photo_1676534111.jpg', '2023-02-16 01:55:11', '2023-02-16 01:55:11'),
(28, 6, 'photo_1676534160.jpg', '2023-02-16 01:56:00', '2023-02-16 01:56:00'),
(29, 7, 'photo_1676534235.jpg', '2023-02-16 01:57:15', '2023-02-16 01:57:15'),
(30, 7, 'photo_1676534253.jpg', '2023-02-16 01:57:33', '2023-02-16 01:57:33'),
(31, 9, 'photo_1676534605.avif', '2023-02-16 02:03:25', '2023-02-16 02:03:25'),
(32, 9, 'photo_1676534630.webp', '2023-02-16 02:03:50', '2023-02-16 02:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'customer@gmail.com', '', 1, '2023-02-15 23:26:46', '2023-02-15 23:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(1, '1676435401.jpg', 'Sal Harvey', 'Director, DEF Company', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2022-10-30 21:34:27', '2023-02-14 22:30:01'),
(2, '1676435504.jpg', 'Michael Mjomba', 'Community Project Coordinator', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2022-10-30 21:36:21', '2023-02-14 22:31:44'),
(3, '1676435727.jpg', 'James Konde Gilead', 'Operations Officer', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2023-02-14 22:35:27', '2023-02-14 22:35:27'),
(4, '1676435794.jpg', 'Dr René Haller', 'Life President', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2023-02-14 22:36:34', '2023-02-14 22:36:55'),
(5, '1676435948.jpg', 'Chloe Ford-Welman', 'Foundation Director', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2023-02-14 22:39:08', '2023-02-14 22:39:41'),
(6, '1676436124.jpg', 'Abdullahi Boru Halakhe', 'Trustee', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens.', '2023-02-14 22:40:47', '2023-02-14 22:42:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_photos`
--
ALTER TABLE `room_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donates`
--
ALTER TABLE `donates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `room_photos`
--
ALTER TABLE `room_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
