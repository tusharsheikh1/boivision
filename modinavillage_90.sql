-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 01, 2025 at 08:34 AM
-- Server version: 10.11.13-MariaDB
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modinavillage_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `category_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 73, 'Ram & Rom', 'ram-rom-3976', '2022-03-11 12:02:06', '2024-07-14 13:21:32'),
(15, 73, 'Size', 'size-5431', '2022-04-17 14:54:54', '2024-07-14 13:21:43'),
(16, 73, 'bond', 'bond-7350', '2022-05-07 12:32:20', '2024-07-14 13:21:53'),
(17, 73, 'Furniture', 'furniture-6753', '2023-04-05 10:26:32', '2024-07-14 13:22:02'),
(18, 73, 'পরিমান:', 'priman-8767', '2023-05-07 10:09:17', '2024-07-14 13:04:05'),
(25, 73, 'Service Type', 'service-type-7322', '2023-08-24 03:19:26', '2024-07-14 13:22:22'),
(26, 73, 'Android Version', 'android-version-1476', '2023-08-24 03:26:07', '2024-07-14 13:22:14'),
(30, 73, 'Duration', 'duration-3061', '2023-08-30 04:54:22', '2024-07-14 13:21:23'),
(34, 77, 'kg', 'kg-1465', '2024-09-30 16:14:11', '2024-09-30 16:14:11'),
(35, 77, 'kg', 'kg-4818', '2024-09-30 16:14:23', '2024-09-30 16:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_product`
--

CREATE TABLE `attribute_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_value_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qnty` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attributes_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attributes_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(7, 3, '2GB-16GB', '2gb-16gb', '2022-03-11 12:03:02', '2022-04-04 11:56:33'),
(8, 3, '2GB-32GB', '2gb-32gb', '2022-03-11 12:03:41', '2022-04-04 11:57:00'),
(9, 3, '3GB-16GB', '3gb-16gb', '2022-03-11 12:03:48', '2022-04-04 12:01:31'),
(10, 3, '3GB-32GB', '3gb-32gb', '2022-03-11 12:03:58', '2022-04-04 12:02:03'),
(11, 3, '3GB-64GB', '3gb-64gb', '2022-03-11 12:04:06', '2022-04-04 12:02:26'),
(12, 3, '4GB-32GB', '4gb-32gb', '2022-03-11 12:04:22', '2022-04-04 12:02:52'),
(13, 3, '4GB-64GB', '4gb-64gb', '2022-04-04 12:03:20', '2022-04-04 12:03:20'),
(14, 3, '4GB-128GB', '4gb-128gb', '2022-04-04 12:03:51', '2022-04-04 12:03:51'),
(15, 3, '6Gb-64Gb', '6gb-64gb', '2022-04-04 12:04:17', '2022-04-04 12:04:17'),
(16, 3, '6Gb-128Gb', '6gb-128gb', '2022-04-04 12:04:59', '2022-04-04 12:04:59'),
(17, 3, '6Gb-256Gb', '6gb-256gb', '2022-04-04 12:05:25', '2022-04-04 12:05:25'),
(18, 3, '8Gb-64Gb', '8gb-64gb', '2022-04-04 12:05:56', '2022-04-04 12:05:56'),
(19, 3, '8Gb-128Gb', '8gb-128gb', '2022-04-04 12:06:09', '2022-04-04 12:06:09'),
(20, 3, '8Gb-256Gb', '8gb-256gb', '2022-04-04 12:06:21', '2022-04-04 12:06:21'),
(21, 3, '512Mb', '512mb', '2022-04-04 12:20:17', '2022-04-04 12:20:17'),
(22, 3, '1Gb', '1gb', '2022-04-04 12:20:22', '2022-04-04 12:20:22'),
(23, 3, '2Gb', '2gb', '2022-04-04 12:20:41', '2022-04-04 12:20:41'),
(24, 3, '3Gb', '3gb', '2022-04-04 12:20:48', '2022-04-04 12:20:48'),
(25, 3, '4Gb', '4gb', '2022-04-04 12:20:54', '2022-04-04 12:20:54'),
(26, 3, '6Gb', '6gb', '2022-04-04 12:21:00', '2022-04-04 12:21:00'),
(40, 16, '12', '12-7833', '2022-05-07 12:32:47', '2022-05-07 12:32:47'),
(47, 18, '38', '38-4067', '2023-05-07 10:10:03', '2023-05-07 10:10:03'),
(48, 18, '40', '40-8408', '2023-05-07 10:10:08', '2023-05-07 10:10:08'),
(49, 18, '42', '42-4001', '2023-05-07 10:10:13', '2023-05-07 10:10:13'),
(50, 18, '44', '44-5051', '2023-05-07 10:10:16', '2023-05-07 10:10:16'),
(51, 18, 'S', 's-6388', '2023-05-07 10:10:20', '2023-05-07 10:10:20'),
(53, 15, '32', '32-6576', '2023-05-08 05:56:54', '2023-05-08 05:56:54'),
(54, 15, '34', '34-9797', '2023-05-08 05:56:58', '2023-05-08 05:56:58'),
(55, 15, '36', '36-3807', '2023-05-08 05:57:02', '2023-05-08 05:57:02'),
(56, 15, '38', '38-1511', '2023-05-08 05:57:08', '2023-05-08 05:57:08'),
(57, 15, '40', '40-5178', '2023-05-08 05:57:14', '2023-05-08 05:57:14'),
(58, 15, '42', '42-2901', '2023-05-08 05:57:20', '2023-05-08 05:57:20'),
(59, 15, '44', '44-9244', '2023-05-08 05:57:25', '2023-05-08 05:57:25'),
(60, 15, 'S', 's-8907', '2023-05-08 05:57:31', '2023-05-08 05:57:31'),
(62, 18, 'M', 'm-9086', '2023-05-11 18:21:53', '2023-05-11 18:21:53'),
(63, 18, 'L', 'l-4296', '2023-05-11 18:22:04', '2023-05-11 18:22:04'),
(64, 18, 'XL', 'xl-4349', '2023-05-11 18:22:11', '2023-05-11 18:22:11'),
(65, 18, 'XXL', 'xxl-8243', '2023-05-11 18:22:17', '2023-05-11 18:22:17'),
(66, 18, '3XL', '3xl-8154', '2023-05-11 18:22:25', '2023-05-11 18:22:25'),
(67, 15, 'L', 'l-2697', '2023-05-11 18:23:03', '2023-05-11 18:23:03'),
(68, 15, 'M', 'm-4613', '2023-05-11 18:23:19', '2023-05-11 18:23:19'),
(69, 15, 'XL', 'xl-7850', '2023-05-11 18:23:28', '2023-05-11 18:23:28'),
(71, 15, 'XXL', 'xxl-1417', '2023-05-11 18:23:57', '2023-05-11 18:23:57'),
(72, 15, '3XL', '3xl-3647', '2023-05-11 18:24:12', '2023-05-11 18:24:12'),
(86, 25, 'Root', 'root-3247', '2023-08-24 03:21:09', '2023-08-24 03:21:09'),
(87, 25, 'Flash', 'flash-6216', '2023-08-24 03:21:13', '2023-08-24 03:21:13'),
(88, 26, '10', '10-3562', '2023-08-24 03:27:11', '2023-08-24 03:27:11'),
(89, 26, '11', '11-3233', '2023-08-24 03:27:14', '2023-08-24 03:27:14'),
(90, 26, '12', '12-7384', '2023-08-24 03:27:17', '2023-08-24 03:27:17'),
(108, 26, '9', '9-6242', '2023-08-29 04:09:38', '2023-08-29 04:09:38'),
(109, 30, '1 Month', '1-month-6456', '2023-08-30 04:54:35', '2023-08-30 04:54:35'),
(110, 30, '2 Month', '2-month', '2023-08-30 04:54:42', '2023-08-30 05:16:56'),
(111, 30, '3 Month', '3-month-1396', '2023-08-30 05:17:02', '2023-08-30 05:17:02'),
(112, 30, '4 Month', '4-month-2114', '2023-08-30 05:17:09', '2023-08-30 05:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `bio` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `description`, `cover_photo`, `created_at`, `updated_at`) VALUES
(309, 'Pran', 'pran', 1, NULL, '2024-07-15-6695b05c8af5f.png', '2024-07-15 17:27:24', '2024-07-15 17:27:24'),
(310, 'Megi', 'megi', 1, NULL, '2024-07-15-6695b0e63b9ef.png', '2024-07-15 17:29:42', '2024-07-15 17:29:42'),
(311, 'Neslte', 'neslte', 1, NULL, '2024-07-15-6695b15278af1.png', '2024-07-15 17:31:30', '2024-07-15 17:31:30'),
(312, 'Cadbeery', 'cadbeery', 1, NULL, '2024-07-15-6695b20412e09.png', '2024-07-15 17:34:28', '2024-07-15 17:34:28'),
(313, 'Ifad', 'ifad', 1, NULL, '2024-07-15-6695b276308b2.png', '2024-07-15 17:36:22', '2024-07-15 17:36:22'),
(314, 'BD', 'bd', 1, NULL, '2024-07-15-6695b2e3937f3.png', '2024-07-15 17:38:11', '2024-07-15 17:38:11'),
(315, 'Squre', 'squre', 1, NULL, '2024-07-15-6695b37e75c30.png', '2024-07-15 17:40:46', '2024-07-15 17:40:46');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` text DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `is_flash` int(11) NOT NULL DEFAULT 0,
  `end` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `slug`, `name`, `cover_photo`, `is_flash`, `end`, `status`, `created_at`, `updated_at`) VALUES
(1, '64ff0d9ae3aeb', 'Flash', '2023-09-11-64ff0d9ae3694.jpg', 0, NULL, 1, '2023-09-11 06:52:42', '2024-08-31 06:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `campaing_comments`
--

CREATE TABLE `campaing_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaing_products`
--

CREATE TABLE `campaing_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaing_products`
--

INSERT INTO `campaing_products` (`id`, `campaign_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(27, 1, 754, NULL, NULL, NULL),
(28, 1, 755, NULL, NULL, NULL),
(29, 1, 756, NULL, NULL, NULL),
(30, 1, 757, NULL, NULL, NULL),
(31, 1, 758, NULL, NULL, NULL),
(32, 1, 759, NULL, NULL, NULL),
(33, 1, 760, NULL, NULL, NULL),
(34, 1, 761, NULL, NULL, NULL),
(35, 1, 762, NULL, NULL, NULL),
(36, 1, 763, NULL, NULL, NULL),
(37, 1, 764, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart_infos`
--

CREATE TABLE `cart_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ser` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `vendor` int(11) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL DEFAULT '0',
  `color` varchar(255) DEFAULT NULL,
  `attr` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_infos`
--

INSERT INTO `cart_infos` (`id`, `ser`, `user_id`, `vendor`, `product_id`, `qty`, `price`, `weight`, `color`, `attr`, `created_at`, `updated_at`) VALUES
(29, '274a039f3e613254a86ff004875dab35', 333, 330, 763, '1', '1800', '0', 'blank', '[]', '2024-07-16 17:09:22', '2024-07-16 17:09:22'),
(30, '274a039f3e613254a86ff004875dab35', 333, 330, 763, '1', '1800', '0', 'blank', '[]', '2024-07-16 17:09:36', '2024-07-16 17:09:36'),
(33, 'c3fb6cbfe1ffc9f36c91f091a5365d9e', 344, 330, 764, '1', '1600', '0', 'blank', '[]', '2024-11-27 17:03:10', '2024-11-27 17:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `pos` int(11) DEFAULT NULL,
  `poss` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `is_feature`, `pos`, `poss`, `description`, `cover_photo`, `created_at`, `updated_at`) VALUES
(77, 'Original Organic Honey', 'original-organic-honey', 1, 1, 1, NULL, NULL, '2024-07-15-6695abd95154f.png', '2024-07-15 17:08:09', '2024-07-15 17:13:06'),
(78, 'Nuts & Dates', 'nuts-dates', 1, 1, 2, NULL, NULL, '2024-07-15-6695ac19e6118.png', '2024-07-15 17:09:13', '2024-07-15 17:10:32'),
(79, 'Organic Spices', 'organic-spices', 1, 1, 3, NULL, NULL, '2024-07-15-6695ac5a0ad1b.png', '2024-07-15 17:10:18', '2024-07-15 17:12:41'),
(80, 'Organic Oil', 'organic-oil', 1, 1, 4, NULL, NULL, '2024-07-15-6695acb98102b.png', '2024-07-15 17:11:53', '2024-07-15 17:12:31'),
(81, 'Rice, Pulse & Grains', 'rice-pulse-grains', 1, 1, 6, NULL, NULL, '2024-07-15-6695ad69538ef.png', '2024-07-15 17:14:49', '2024-07-15 17:15:02'),
(82, 'Super Foods', 'super-foods', 1, 1, 7, NULL, NULL, '2024-07-15-6695adb5ce690.png', '2024-07-15 17:16:06', '2024-07-15 17:16:06'),
(83, 'Sweeteners & Dairy', 'sweeteners-dairy', 1, 1, 8, NULL, NULL, '2024-07-15-6695ae0d83160.png', '2024-07-15 17:17:33', '2024-07-15 17:17:33'),
(84, 'Pickle & Chutney', 'pickle-chutney', 1, 1, 9, NULL, NULL, '2024-07-15-6695ae6a4be09.png', '2024-07-15 17:19:06', '2024-07-15 18:39:38'),
(85, 'Dry fruits & Dates', 'dry-fruits-dates', 1, 1, 10, NULL, NULL, '2024-07-16-66967c4266a52.png', '2024-07-16 07:57:22', '2024-07-16 07:57:22'),
(86, 'Ghee & Oil', 'ghee-oil', 1, 1, NULL, NULL, NULL, '2024-07-16-66967d370cea5.png', '2024-07-16 08:01:27', '2024-07-16 08:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `category_collection`
--

CREATE TABLE `category_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `collection_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_collection`
--

INSERT INTO `category_collection` (`id`, `category_id`, `collection_id`, `created_at`, `updated_at`) VALUES
(11, 77, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(780, 77, 754, NULL, NULL),
(781, 77, 755, NULL, NULL),
(782, 77, 756, NULL, NULL),
(783, 77, 757, NULL, NULL),
(784, 77, 758, NULL, NULL),
(785, 79, 759, NULL, NULL),
(786, 79, 760, NULL, NULL),
(787, 79, 761, NULL, NULL),
(788, 79, 762, NULL, NULL),
(789, 79, 763, NULL, NULL),
(790, 79, 764, NULL, NULL),
(792, 77, 766, NULL, NULL),
(793, 85, 767, NULL, NULL),
(794, 85, 768, NULL, NULL),
(795, 85, 769, NULL, NULL),
(796, 85, 770, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `send_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text NOT NULL,
  `admin_status` tinyint(1) NOT NULL DEFAULT 0,
  `user_status` tinyint(1) NOT NULL DEFAULT 0,
  `admin_message_log` varchar(15) NOT NULL,
  `user_message_log` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cover_photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `slug`, `status`, `cover_photo`, `created_at`, `updated_at`) VALUES
(10, 'সুন্দর বনের খাটি মধু', 'sundr-bner-khati-mdhu', 1, '2024-07-16-6695bd3f6097c.jpg', '2024-07-15 18:22:23', '2024-07-15 18:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `slug`, `code`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Black', 'black', '#000000', 1, NULL, '2022-03-11 12:07:03', '2022-03-11 12:07:03'),
(2, 'Red', 'red', '#fb0007', 1, NULL, '2022-03-11 12:07:35', '2022-03-11 12:07:35'),
(3, 'Blue', 'blue', '#0000ff', 1, NULL, '2022-03-11 12:07:49', '2022-04-04 12:12:08'),
(4, 'White', 'white', '#ffffff', 1, NULL, '2022-03-11 12:08:10', '2022-03-11 12:08:10'),
(5, 'Pink', 'pink', '#f200fe', 1, NULL, '2022-03-11 12:08:23', '2022-04-04 11:50:23'),
(6, 'Green', 'green', '#038104', 1, NULL, '2022-03-11 12:09:01', '2022-04-04 11:50:11'),
(7, 'Yellow', 'yellow', '#ffff00', 1, NULL, '2022-03-11 12:09:26', '2022-04-04 12:18:09'),
(8, 'Gray', 'gray', '#808080', 1, NULL, '2022-04-04 12:08:10', '2022-04-04 12:08:10'),
(9, 'Silver', 'silver', '#c0c0c0', 1, NULL, '2022-04-04 12:08:42', '2022-04-04 12:08:42'),
(10, 'Orange', 'orange', '#ffa500', 1, NULL, '2022-04-04 12:09:13', '2022-04-04 12:09:13'),
(11, 'Purple', 'purple', '#800080', 1, NULL, '2022-04-04 12:09:39', '2022-04-04 12:09:39'),
(12, 'Maroon', 'maroon', '#800000', 1, NULL, '2022-04-04 12:10:19', '2022-04-04 12:10:19'),
(13, 'Olive', 'olive', '#808000', 1, NULL, '2022-04-04 12:10:45', '2022-04-04 12:10:45'),
(15, 'Cream', 'cream', '#ffffcc', 1, NULL, '2022-04-04 12:13:08', '2022-04-04 12:13:08'),
(16, 'Gold', 'gold', '#ffd700', 1, NULL, '2022-04-04 12:13:50', '2022-04-04 12:13:50'),
(17, 'Nutmeg', 'nutmeg', '#7f2e2e', 1, 'null', '2022-04-07 07:51:21', '2022-04-07 07:51:21'),
(18, 'Cowboy', 'cowboy', '#532929', 1, 'null', '2022-04-17 03:42:26', '2022-04-17 03:42:26'),
(19, 'Sky Blue', 'sky-blue', '#32b4e6', 1, 'Sky Blue', '2023-05-13 02:18:42', '2023-05-13 02:18:42'),
(20, 'Off White', 'off-white', '#faf9f6', 1, 'Off-white is the replacement of White', '2023-05-13 03:59:11', '2023-05-13 03:59:11'),
(21, 'Paste', 'paste', '#cdf6d4', 1, 'Paste', '2023-05-13 04:13:22', '2023-05-13 04:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `color_product`
--

CREATE TABLE `color_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qnty` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_product`
--

INSERT INTO `color_product` (`id`, `color_id`, `product_id`, `qnty`, `price`, `created_at`, `updated_at`) VALUES
(47, 3, 766, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `user_id`, `order_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 200, 1, 98.00, 0, '2023-05-07 09:27:25', '2023-05-07 09:27:25'),
(2, 201, 2, 45.50, 0, '2023-05-11 12:05:54', '2023-05-11 12:05:54'),
(3, 199, 3, 59.50, 0, '2023-05-12 10:48:45', '2023-05-12 10:48:45'),
(4, 199, 4, 59.50, 0, '2023-05-12 10:51:47', '2023-05-12 10:51:47'),
(5, 200, 5, 35.00, 0, '2023-05-12 11:38:01', '2023-05-12 11:38:01'),
(6, 225, 13, 22.30, 0, '2023-06-22 01:03:59', '2023-06-22 01:03:59'),
(7, 225, 14, 22.30, 0, '2023-06-22 01:04:05', '2023-06-22 01:04:05'),
(8, 225, 15, 22.30, 0, '2023-06-22 01:06:16', '2023-06-22 01:06:16'),
(9, 225, 16, 22.30, 0, '2023-06-22 01:07:24', '2023-06-22 01:07:24'),
(10, 225, 17, 22.30, 0, '2023-06-22 01:07:46', '2023-06-22 01:35:25'),
(11, 328, 111, 42.25, 0, '2024-07-15 12:52:45', '2024-07-15 12:52:45'),
(12, 330, 112, 70.00, 0, '2024-07-16 15:46:39', '2024-07-16 15:46:39'),
(13, 330, 113, 90.00, 0, '2024-07-16 15:48:26', '2024-07-16 15:48:26'),
(14, 330, 114, 7.00, 0, '2024-07-16 15:54:13', '2024-07-16 15:54:13'),
(15, 330, 115, 7.00, 0, '2024-07-16 16:48:21', '2024-07-16 16:48:21'),
(16, 330, 116, 7.00, 0, '2024-07-16 16:48:27', '2024-07-16 16:48:27'),
(17, 330, 117, 80.00, 0, '2024-07-16 17:30:22', '2024-07-16 17:30:22'),
(18, 330, 118, 40.00, 0, '2024-07-17 06:48:36', '2024-07-17 06:48:36'),
(19, 330, 119, 7.00, 0, '2024-07-17 08:09:26', '2024-07-17 08:09:26'),
(20, 330, 120, 80.00, 0, '2024-07-18 05:45:26', '2024-07-18 05:45:26'),
(21, 330, 121, 80.00, 0, '2024-07-18 05:45:35', '2024-07-18 05:45:35'),
(22, 330, 122, 80.00, 0, '2024-08-20 18:27:53', '2024-08-20 18:27:53'),
(23, 330, 123, 60.00, 0, '2024-08-20 19:42:59', '2024-08-20 19:42:59'),
(24, 330, 124, 7.00, 0, '2024-08-22 12:13:12', '2024-08-22 12:13:12'),
(25, 330, 125, 90.00, 0, '2024-08-22 20:27:00', '2024-08-22 20:27:00'),
(26, 330, 126, 80.00, 0, '2024-08-25 09:16:21', '2024-08-25 09:16:21'),
(27, 330, 127, 80.00, 0, '2024-08-25 09:19:14', '2024-08-25 09:19:14'),
(28, 330, 128, 7.00, 0, '2024-08-29 20:30:32', '2024-08-29 20:30:32'),
(29, 330, 129, 7.00, 0, '2024-08-29 20:31:39', '2024-08-29 20:31:39'),
(30, 330, 130, 90.00, 0, '2024-08-30 17:10:54', '2024-08-30 17:10:54'),
(31, 330, 131, 90.00, 0, '2024-08-31 10:54:21', '2024-08-31 10:54:21'),
(32, 330, 132, 117.00, 0, '2024-09-23 02:39:41', '2024-09-23 02:39:41'),
(33, 330, 134, 65.00, 0, '2024-10-01 12:41:45', '2024-10-01 12:41:45'),
(34, 330, 135, 65.00, 0, '2024-10-01 12:41:46', '2024-10-01 12:41:46'),
(35, 330, 136, 7.00, 0, '2024-10-01 16:38:47', '2024-10-01 16:38:47'),
(36, 330, 137, 80.00, 0, '2024-10-04 05:16:17', '2024-10-04 05:16:17'),
(37, 330, 138, 7.00, 1, '2024-10-06 06:33:48', '2024-10-06 07:13:06'),
(38, 330, 139, 90.00, 0, '2024-11-20 14:09:39', '2024-11-20 14:09:39'),
(39, 330, 140, 7.00, 0, '2024-11-21 11:05:43', '2024-11-21 11:05:43'),
(40, 330, 141, 7.00, 0, '2024-11-27 16:07:36', '2024-11-27 16:07:36'),
(41, 330, 142, 80.00, 0, '2024-11-27 17:04:14', '2024-11-27 17:04:14'),
(42, 330, 143, 90.00, 0, '2024-11-29 12:41:33', '2024-11-29 12:41:33'),
(43, 330, 150, 55.55, 0, '2025-05-04 07:56:30', '2025-05-04 07:56:30'),
(44, 330, 152, 55.55, 0, '2025-05-08 09:55:10', '2025-05-08 09:55:10'),
(45, 330, 153, 7.00, 0, '2025-05-30 22:05:56', '2025-05-30 22:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `documents` text NOT NULL,
  `meet` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `title`, `body`, `documents`, `meet`, `created_at`, `updated_at`) VALUES
(1, 'Md Shohel', '2009dhaka@gmail.com', 1715475955, '2009dhaka@gmail.com', 'Good Idea', 'default.png', NULL, '2024-07-11 14:40:47', '2024-07-11 14:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `limit_per_user` int(11) NOT NULL,
  `total_use_limit` int(11) NOT NULL,
  `available_limit` int(11) NOT NULL,
  `expire_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupon_user`
--

CREATE TABLE `coupon_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_infos`
--

CREATE TABLE `customer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `distric` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_infos`
--

INSERT INTO `customer_infos` (`id`, `user_id`, `country`, `city`, `distric`, `thana`, `street`, `post_code`, `created_at`, `updated_at`) VALUES
(298, 330, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-16 03:23:59', '2024-07-16 03:23:59'),
(299, 331, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-16 09:10:59', '2024-07-16 09:10:59'),
(300, 332, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-16 15:56:20', '2024-07-16 15:56:20'),
(301, 333, 'Bangladesh', 'chittagong', NULL, NULL, 'enayetbazar', '4000', '2024-07-16 17:08:29', '2024-07-16 17:08:29'),
(302, 334, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-17 08:20:23', '2024-07-17 08:20:23'),
(303, 335, NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-18 10:24:22', '2024-07-18 10:24:22'),
(304, 336, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 17:07:35', '2024-08-20 17:07:35'),
(305, 337, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-20 19:44:00', '2024-08-20 19:44:00'),
(306, 338, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-25 09:18:12', '2024-08-25 09:18:12'),
(308, 340, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 02:47:49', '2024-09-23 02:47:49'),
(309, 341, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-23 02:50:24', '2024-09-23 02:50:24'),
(310, 342, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-06 06:31:44', '2024-10-06 06:31:44'),
(312, 344, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-27 17:02:15', '2024-11-27 17:02:15'),
(313, 345, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-03 23:34:09', '2025-05-03 23:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `device_ids`
--

CREATE TABLE `device_ids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `device_ids`
--

INSERT INTO `device_ids` (`id`, `user_id`, `device_id`, `created_at`, `updated_at`) VALUES
(1, 176, 'fwXl-WKwEyerVNDyB_f9xF:APA91bEkiHafMufEhlQxQKn0tWWv6Zzl8ZtAxLpz05qlOfNgCWAVV8O4E1nOPgXD9cVZi4mdahFtzqHTtybHMVWi3EJW8Y6lPaCL4mfwan2FNE1CgEomDmLRsbeP36SJFLZTimFLamPZ', '2023-04-14 09:07:03', '2023-04-14 09:07:03'),
(2, 178, 'eqSX5yJbnet46brhZ8juhH:APA91bEsOiweU6ip6DcouoPeDeoe8VN91VtDgfbOBzx33PluZfqSsWuQJrTi2Ug4BRcGfscwpmeiyEd6jmUOCYv2Da6ggCaYd7eJkHAW56HRIfCtNDLN79BunuyIFxN7FM37AoIDkuT0', '2023-04-14 09:13:37', '2023-04-14 09:13:37'),
(3, NULL, 'fwXl-WKwEyerVNDyB_f9xF:APA91bEkiHafMufEhlQxQKn0tWWv6Zzl8ZtAxLpz05qlOfNgCWAVV8O4E1nOPgXD9cVZi4mdahFtzqHTtybHMVWi3EJW8Y6lPaCL4mfwan2FNE1CgEomDmLRsbeP36SJFLZTimFLamPZ', '2023-04-14 15:08:14', '2023-04-14 15:08:14'),
(4, 1, 'fwXl-WKwEyerVNDyB_f9xF:APA91bEkiHafMufEhlQxQKn0tWWv6Zzl8ZtAxLpz05qlOfNgCWAVV8O4E1nOPgXD9cVZi4mdahFtzqHTtybHMVWi3EJW8Y6lPaCL4mfwan2FNE1CgEomDmLRsbeP36SJFLZTimFLamPZ', '2023-04-14 17:11:06', '2023-04-14 17:11:06'),
(5, NULL, 'eqSX5yJbnet46brhZ8juhH:APA91bEsOiweU6ip6DcouoPeDeoe8VN91VtDgfbOBzx33PluZfqSsWuQJrTi2Ug4BRcGfscwpmeiyEd6jmUOCYv2Da6ggCaYd7eJkHAW56HRIfCtNDLN79BunuyIFxN7FM37AoIDkuT0', '2023-04-15 03:30:45', '2023-04-15 03:30:45'),
(6, 1, 'eqSX5yJbnet46brhZ8juhH:APA91bEsOiweU6ip6DcouoPeDeoe8VN91VtDgfbOBzx33PluZfqSsWuQJrTi2Ug4BRcGfscwpmeiyEd6jmUOCYv2Da6ggCaYd7eJkHAW56HRIfCtNDLN79BunuyIFxN7FM37AoIDkuT0', '2023-04-15 04:06:21', '2023-04-15 04:06:21'),
(7, NULL, 'eNAr2xICsickPEDbuMllUw:APA91bFRC0tLZg9vH75ccE578ftdgepZ3adx1wv4SWpbemVvXMV9gdWQGXbX_8fFSJWkbWcRgQ-j4xO3FP1LHz7sx7ger_FyFuA17ssQ2DXNWb4Y6v6lvdlTovxQUGKZoMkmwWLc8u0f', '2023-04-15 07:39:01', '2023-04-15 07:39:01'),
(8, 178, 'fwXl-WKwEyerVNDyB_f9xF:APA91bEkiHafMufEhlQxQKn0tWWv6Zzl8ZtAxLpz05qlOfNgCWAVV8O4E1nOPgXD9cVZi4mdahFtzqHTtybHMVWi3EJW8Y6lPaCL4mfwan2FNE1CgEomDmLRsbeP36SJFLZTimFLamPZ', '2023-04-16 04:24:29', '2023-04-16 04:24:29'),
(9, NULL, 'fbpwV6be03vt1wZd-W6FjS:APA91bGuNpSfpsF1AeIEGLoKEQS5i7KzAoSeod9haNbFccdSzmCDlxCvqCrRxhGX_3X9fvy4uRU4TInONQHVPwvvxpGqbzTTrYnWBw2B7OTb414svDfEnxKSFAZHZltAwKIsbVha1CuY', '2023-04-16 18:41:36', '2023-04-16 18:41:36'),
(10, 178, 'eNAr2xICsickPEDbuMllUw:APA91bFRC0tLZg9vH75ccE578ftdgepZ3adx1wv4SWpbemVvXMV9gdWQGXbX_8fFSJWkbWcRgQ-j4xO3FP1LHz7sx7ger_FyFuA17ssQ2DXNWb4Y6v6lvdlTovxQUGKZoMkmwWLc8u0f', '2023-04-17 03:30:21', '2023-04-17 03:30:21'),
(11, 176, 'fbpwV6be03vt1wZd-W6FjS:APA91bGuNpSfpsF1AeIEGLoKEQS5i7KzAoSeod9haNbFccdSzmCDlxCvqCrRxhGX_3X9fvy4uRU4TInONQHVPwvvxpGqbzTTrYnWBw2B7OTb414svDfEnxKSFAZHZltAwKIsbVha1CuY', '2023-04-17 04:05:20', '2023-04-17 04:05:20'),
(12, 177, 'fbpwV6be03vt1wZd-W6FjS:APA91bGuNpSfpsF1AeIEGLoKEQS5i7KzAoSeod9haNbFccdSzmCDlxCvqCrRxhGX_3X9fvy4uRU4TInONQHVPwvvxpGqbzTTrYnWBw2B7OTb414svDfEnxKSFAZHZltAwKIsbVha1CuY', '2023-04-17 04:06:39', '2023-04-17 04:06:39'),
(13, 178, 'fbpwV6be03vt1wZd-W6FjS:APA91bGuNpSfpsF1AeIEGLoKEQS5i7KzAoSeod9haNbFccdSzmCDlxCvqCrRxhGX_3X9fvy4uRU4TInONQHVPwvvxpGqbzTTrYnWBw2B7OTb414svDfEnxKSFAZHZltAwKIsbVha1CuY', '2023-04-18 02:05:37', '2023-04-18 02:05:37'),
(14, 182, 'eNAr2xICsickPEDbuMllUw:APA91bFRC0tLZg9vH75ccE578ftdgepZ3adx1wv4SWpbemVvXMV9gdWQGXbX_8fFSJWkbWcRgQ-j4xO3FP1LHz7sx7ger_FyFuA17ssQ2DXNWb4Y6v6lvdlTovxQUGKZoMkmwWLc8u0f', '2023-04-18 04:01:23', '2023-04-18 04:01:23'),
(15, NULL, 'ef9yjfkwpQZV5p-Z_oZE88:APA91bEZQp4A5JxXLNafLdHBiIReNegmiXshF3yGSMwJFlH74fQ_UBLqsl7PVUN0G0GGqrBA5ZL3rm31NeoCP9d7-acXI4ppkDSAQK8NlfUymmwNQjDmumVoNCf2sLfGJWLD87JACKc8', '2023-04-19 03:41:06', '2023-04-19 03:41:06'),
(16, 182, 'ef9yjfkwpQZV5p-Z_oZE88:APA91bEZQp4A5JxXLNafLdHBiIReNegmiXshF3yGSMwJFlH74fQ_UBLqsl7PVUN0G0GGqrBA5ZL3rm31NeoCP9d7-acXI4ppkDSAQK8NlfUymmwNQjDmumVoNCf2sLfGJWLD87JACKc8', '2023-04-19 03:41:41', '2023-04-19 03:41:41'),
(17, NULL, 'dILHPRV3M8XU9SGagbQ8An:APA91bEWdJP8FWn9yAioC5wDSSRv4k6Dm50j5sm40p1vCM4XOydj5J-6Rw5waUkKWE8oHl8PS86YVRvp-1TJWzZQ2mDIEhEBuUHLr0DgZSi9rOr8dWGH7VZfGkULjvYqSd2tUR7iZfN8', '2023-04-19 18:24:08', '2023-04-19 18:24:08'),
(18, 182, 'dILHPRV3M8XU9SGagbQ8An:APA91bEWdJP8FWn9yAioC5wDSSRv4k6Dm50j5sm40p1vCM4XOydj5J-6Rw5waUkKWE8oHl8PS86YVRvp-1TJWzZQ2mDIEhEBuUHLr0DgZSi9rOr8dWGH7VZfGkULjvYqSd2tUR7iZfN8', '2023-04-19 18:28:12', '2023-04-19 18:28:12'),
(19, NULL, 'd7aSd2JVJTEGjOr4fdX-xe:APA91bEIJZxb-pXYp72rLDSrvvYFNwdVm9BsyEJIpXYaw-9vgAZUn35ozDSMS7CGAQo6BsoILlVAtI-bghyOpM7ITl3QmiQAXbzVKusdRGMAJf1x2-vs7N7uQ8O-GX3IYLcxzi8Oaoh6', '2023-04-19 18:54:30', '2023-04-19 18:54:30'),
(20, NULL, 'fPw2gI90OGJaczE_ZzLsNr:APA91bFaDXEDQqaMIBgSAsfcwfjNvrP6-VnowjhHSdA5wjw7q8s7nnxANjmoRr4qp4s8bAef61pDCldHG5CoLaAf1w3iJhhL7l7HM2U6hiUnLHEdXt7a9aAN5p593EGbU7BokfvfDx6W', '2023-04-20 17:45:52', '2023-04-20 17:45:52'),
(21, 184, 'd7aSd2JVJTEGjOr4fdX-xe:APA91bEIJZxb-pXYp72rLDSrvvYFNwdVm9BsyEJIpXYaw-9vgAZUn35ozDSMS7CGAQo6BsoILlVAtI-bghyOpM7ITl3QmiQAXbzVKusdRGMAJf1x2-vs7N7uQ8O-GX3IYLcxzi8Oaoh6', '2023-04-20 19:01:59', '2023-04-20 19:01:59'),
(22, 164, 'd7aSd2JVJTEGjOr4fdX-xe:APA91bEIJZxb-pXYp72rLDSrvvYFNwdVm9BsyEJIpXYaw-9vgAZUn35ozDSMS7CGAQo6BsoILlVAtI-bghyOpM7ITl3QmiQAXbzVKusdRGMAJf1x2-vs7N7uQ8O-GX3IYLcxzi8Oaoh6', '2023-04-20 19:05:25', '2023-04-20 19:05:25'),
(23, 185, 'd7aSd2JVJTEGjOr4fdX-xe:APA91bEIJZxb-pXYp72rLDSrvvYFNwdVm9BsyEJIpXYaw-9vgAZUn35ozDSMS7CGAQo6BsoILlVAtI-bghyOpM7ITl3QmiQAXbzVKusdRGMAJf1x2-vs7N7uQ8O-GX3IYLcxzi8Oaoh6', '2023-04-21 07:50:46', '2023-04-21 07:50:46'),
(24, 183, 'eNAr2xICsickPEDbuMllUw:APA91bFRC0tLZg9vH75ccE578ftdgepZ3adx1wv4SWpbemVvXMV9gdWQGXbX_8fFSJWkbWcRgQ-j4xO3FP1LHz7sx7ger_FyFuA17ssQ2DXNWb4Y6v6lvdlTovxQUGKZoMkmwWLc8u0f', '2023-04-22 06:51:36', '2023-04-22 06:51:36'),
(25, 183, 'eqSX5yJbnet46brhZ8juhH:APA91bEsOiweU6ip6DcouoPeDeoe8VN91VtDgfbOBzx33PluZfqSsWuQJrTi2Ug4BRcGfscwpmeiyEd6jmUOCYv2Da6ggCaYd7eJkHAW56HRIfCtNDLN79BunuyIFxN7FM37AoIDkuT0', '2023-04-22 08:00:06', '2023-04-22 08:00:06'),
(26, 1, 'eNAr2xICsickPEDbuMllUw:APA91bFRC0tLZg9vH75ccE578ftdgepZ3adx1wv4SWpbemVvXMV9gdWQGXbX_8fFSJWkbWcRgQ-j4xO3FP1LHz7sx7ger_FyFuA17ssQ2DXNWb4Y6v6lvdlTovxQUGKZoMkmwWLc8u0f', '2023-04-24 11:11:17', '2023-04-24 11:11:17'),
(27, NULL, 'f6Ct_bouRdoRNijh3SlFgO:APA91bGF9mmL_fsHE8MGYE6-pTfhx0yH91RSsOHZMixGeL0_AUPuMm6oBHSp5ZBhoAznXE8TqXfJuHCXjJkbnrdG1x2ORIwYtbQ5oupVqo5bkTt3VEuMK9rKc8LfPPsIWyATM4XDyp_9', '2023-04-28 11:06:24', '2023-04-28 11:06:24'),
(28, 183, 'f6Ct_bouRdoRNijh3SlFgO:APA91bGF9mmL_fsHE8MGYE6-pTfhx0yH91RSsOHZMixGeL0_AUPuMm6oBHSp5ZBhoAznXE8TqXfJuHCXjJkbnrdG1x2ORIwYtbQ5oupVqo5bkTt3VEuMK9rKc8LfPPsIWyATM4XDyp_9', '2023-04-28 11:10:58', '2023-04-28 11:10:58'),
(29, 183, 'fJDWT94CYko5rspOGy9gzO:APA91bFg_InBukPVt1ghUTOJ-IrXbxi7fQQcX3eR_fHq9DI5yFG1uymwHDkIRM2Mi7eD5754re_0z6zWl7SkyxAnq2CWNLdiVc9r_NBoq5RMzNw7q6FPCguW8fTwECPNaAQ6Do5jHeqY', '2023-04-28 13:32:27', '2023-04-28 13:32:27'),
(30, NULL, 'fJDWT94CYko5rspOGy9gzO:APA91bFg_InBukPVt1ghUTOJ-IrXbxi7fQQcX3eR_fHq9DI5yFG1uymwHDkIRM2Mi7eD5754re_0z6zWl7SkyxAnq2CWNLdiVc9r_NBoq5RMzNw7q6FPCguW8fTwECPNaAQ6Do5jHeqY', '2023-04-28 13:34:47', '2023-04-28 13:34:47'),
(31, NULL, 'fliPzw3zVONWkc3JcMmL4w:APA91bFuQ7ML684wKvv2oNAxDbDq0BVNUdE3kl6DpFfvSHg_PjOTyK1QOiR-DAzhPVLqtxcLhUFnDsLm-PROwKFBNoDtndIIdtcrmbmA3Ltnhd5ciuSqNb-sRaErgt2hNSdv4mmbMqRY', '2023-04-29 01:42:52', '2023-04-29 01:42:52'),
(32, 164, 'f6Ct_bouRdoRNijh3SlFgO:APA91bGF9mmL_fsHE8MGYE6-pTfhx0yH91RSsOHZMixGeL0_AUPuMm6oBHSp5ZBhoAznXE8TqXfJuHCXjJkbnrdG1x2ORIwYtbQ5oupVqo5bkTt3VEuMK9rKc8LfPPsIWyATM4XDyp_9', '2023-04-29 02:32:32', '2023-04-29 02:32:32'),
(33, 181, 'f6Ct_bouRdoRNijh3SlFgO:APA91bGF9mmL_fsHE8MGYE6-pTfhx0yH91RSsOHZMixGeL0_AUPuMm6oBHSp5ZBhoAznXE8TqXfJuHCXjJkbnrdG1x2ORIwYtbQ5oupVqo5bkTt3VEuMK9rKc8LfPPsIWyATM4XDyp_9', '2023-04-29 10:16:35', '2023-04-29 10:16:35'),
(34, 1, 'fPw2gI90OGJaczE_ZzLsNr:APA91bFaDXEDQqaMIBgSAsfcwfjNvrP6-VnowjhHSdA5wjw7q8s7nnxANjmoRr4qp4s8bAef61pDCldHG5CoLaAf1w3iJhhL7l7HM2U6hiUnLHEdXt7a9aAN5p593EGbU7BokfvfDx6W', '2023-04-29 12:50:55', '2023-04-29 12:50:55'),
(35, 1, 'f6Ct_bouRdoRNijh3SlFgO:APA91bGF9mmL_fsHE8MGYE6-pTfhx0yH91RSsOHZMixGeL0_AUPuMm6oBHSp5ZBhoAznXE8TqXfJuHCXjJkbnrdG1x2ORIwYtbQ5oupVqo5bkTt3VEuMK9rKc8LfPPsIWyATM4XDyp_9', '2023-04-30 02:32:06', '2023-04-30 02:32:06'),
(36, NULL, 'faxWDgyyFv0Rl90k8O4Or-:APA91bHpGyMbQuET95qyRP81NNNjHhhrh2H5gcnv0vTmRJsVZl_Rqjqzo7uClFbYZDwDZW8mJwG6xD1yi6WBRRHMmpA7SUSptYwqYQlttFZnwvK7m8IH-clbjC1ZXiJ89NUS0gmivR_K', '2023-04-30 03:35:45', '2023-04-30 03:35:45'),
(37, 185, 'fJDWT94CYko5rspOGy9gzO:APA91bFg_InBukPVt1ghUTOJ-IrXbxi7fQQcX3eR_fHq9DI5yFG1uymwHDkIRM2Mi7eD5754re_0z6zWl7SkyxAnq2CWNLdiVc9r_NBoq5RMzNw7q6FPCguW8fTwECPNaAQ6Do5jHeqY', '2023-05-01 04:41:40', '2023-05-01 04:41:40'),
(38, 183, 'ebp2SVxV48YGDLMOFlrWsV:APA91bHqdwltjGKcmQ6gRSb_uFaahCdODg1LJjPn2wracvrXEiDb-oDS3PQlxDH1r1ZuF80sYpDnc25g3z86y4XVdgwnerBWIJELDGmrz5na9h5ByzZUgPyvGG84N-QjLiT8xhwOQ4pi', '2023-05-02 05:46:05', '2023-05-02 05:46:05'),
(39, NULL, 'ebp2SVxV48YGDLMOFlrWsV:APA91bHqdwltjGKcmQ6gRSb_uFaahCdODg1LJjPn2wracvrXEiDb-oDS3PQlxDH1r1ZuF80sYpDnc25g3z86y4XVdgwnerBWIJELDGmrz5na9h5ByzZUgPyvGG84N-QjLiT8xhwOQ4pi', '2023-05-02 05:55:58', '2023-05-02 05:55:58'),
(40, 181, 'ebp2SVxV48YGDLMOFlrWsV:APA91bHqdwltjGKcmQ6gRSb_uFaahCdODg1LJjPn2wracvrXEiDb-oDS3PQlxDH1r1ZuF80sYpDnc25g3z86y4XVdgwnerBWIJELDGmrz5na9h5ByzZUgPyvGG84N-QjLiT8xhwOQ4pi', '2023-05-02 05:56:10', '2023-05-02 05:56:10'),
(41, 181, 'fBD9o7WUhk-f7mS875JFzl:APA91bHqS5Dgfw7A_Bv7EbB2N6MgDl8hv1-YR6K7baFeJDw9FO-hJE9BzW0CvvFCmB7pKEn-2Y0F893Rba1HmLRVU-isWejNi2KVGKYKwUPiuktWcNe4FhhbMcV_3SN0VP41KJMXFvml', '2023-05-02 11:56:59', '2023-05-02 11:56:59'),
(42, NULL, 'fBD9o7WUhk-f7mS875JFzl:APA91bHqS5Dgfw7A_Bv7EbB2N6MgDl8hv1-YR6K7baFeJDw9FO-hJE9BzW0CvvFCmB7pKEn-2Y0F893Rba1HmLRVU-isWejNi2KVGKYKwUPiuktWcNe4FhhbMcV_3SN0VP41KJMXFvml', '2023-05-02 12:02:16', '2023-05-02 12:02:16'),
(43, 183, 'fBD9o7WUhk-f7mS875JFzl:APA91bHqS5Dgfw7A_Bv7EbB2N6MgDl8hv1-YR6K7baFeJDw9FO-hJE9BzW0CvvFCmB7pKEn-2Y0F893Rba1HmLRVU-isWejNi2KVGKYKwUPiuktWcNe4FhhbMcV_3SN0VP41KJMXFvml', '2023-05-02 12:02:31', '2023-05-02 12:02:31'),
(44, NULL, 'dkNMSB9KhthGnBGNsuXyDA:APA91bE5f9J7KucZK_JwdNxES5FNx1tHmtz3eEKAxOi2NrHzN5_zY0Yn5wL_BpMfxVN2DObW1W_51jg0nJkoA8Ijd7D61t7KSKUR56kQvZOZ2j3PLa_DcepcIM9N_ObVGQNzPj6ljZPT', '2023-05-02 12:13:03', '2023-05-02 12:13:03'),
(45, 183, 'dkNMSB9KhthGnBGNsuXyDA:APA91bE5f9J7KucZK_JwdNxES5FNx1tHmtz3eEKAxOi2NrHzN5_zY0Yn5wL_BpMfxVN2DObW1W_51jg0nJkoA8Ijd7D61t7KSKUR56kQvZOZ2j3PLa_DcepcIM9N_ObVGQNzPj6ljZPT', '2023-05-02 12:13:24', '2023-05-02 12:13:24'),
(46, 183, 'c_BcCIv96Eyw-sbfD7-_dh:APA91bFEB_Q0pqkp2kvsC9faEWosWFVXpUwoZn7dpTdI86MlL1vNUOoTzbd7D4RDj1HCHGJTzoFtyroVDkpH4taazsxJZW7nbwAGBbO0tdXEbUptyxl47ECkC0EjCMTLNMbjxRzuvaVP', '2023-05-03 02:13:03', '2023-05-03 02:13:03'),
(47, NULL, 'c_BcCIv96Eyw-sbfD7-_dh:APA91bFEB_Q0pqkp2kvsC9faEWosWFVXpUwoZn7dpTdI86MlL1vNUOoTzbd7D4RDj1HCHGJTzoFtyroVDkpH4taazsxJZW7nbwAGBbO0tdXEbUptyxl47ECkC0EjCMTLNMbjxRzuvaVP', '2023-05-03 02:13:27', '2023-05-03 02:13:27'),
(48, 1, 'cskArNxdeW4qb94ZzIN7pF:APA91bHznw2524rs8jPeKcE3tAxPK_zSHyR0bUZ83zIqA1YlNRv3Nol1MXCIpWtOJgyIBeo7GuSkj5O8_NqYwvJ8Q_2G7f_tfFI5UGi7S3p6ahlWxcc8wu94XgNUqb2ORNolj_UAa_27', '2023-05-03 11:45:40', '2023-05-03 11:45:40'),
(49, NULL, 'fMxqHqU1w6rxOXdVqdus6B:APA91bHuqfPn-QWZ9w3cjsIdkuDHxwwDLjudN8JDEJrcqZN2eYZHvvaAbfT6j-AgsNCbVn6S1fHOlNaDgaguDHO7ig6diRT05C9ST4ivbmI2KnOebpto04shUZnZk4xU4ymyMe2jcjmi', '2023-05-04 08:49:48', '2023-05-04 08:49:48'),
(50, NULL, 'furOr3pfp44cpkHkaH-BqM:APA91bF2vZi2zEBbzmzoHW845rHfqvXlw8lUBTolWxPzVluQV33vtNjoEPGvZqzz_toPFkBltieSMd6LmeAtLZxctR63uj7tFbI21_LCkVCOhfi3RHjfEdU1WQpJYlf0pPZie9_Z8FJk', '2023-05-04 14:37:13', '2023-05-04 14:37:13'),
(51, 183, 'fozA4TByGdeKK5XEGAK-R0:APA91bFszmbrZueMmTP7Wb96icV3ayx3n4VlTZEh6HqZ21_Mmrn6aewSBMdjCkp649ZQaG5bBRtJAcnbp1Q9drG3KEDNGH0OjBpygeOh4PfSOArD1ZKk9SGSYVtgrrITUPySquV48qF7', '2023-05-06 10:47:49', '2023-05-06 10:47:49'),
(52, NULL, 'd1Hhf-zdcqtGK-tOh0CE1m:APA91bEanC0EdS0Na-SxECsrsuEqS1qbAK1YJmK4wXgdg4DFGMj1B9MXGo6CQXCTf3gM7VsS5QZFqHyUfhWj7qBrltD3tog7q1LDHkvLMG2pqrOInV6l2WJHBJt-ve8vfJOsqxk0GvNH', '2023-05-06 10:49:25', '2023-05-06 10:49:25'),
(53, 183, 'cq7AMFJUDoIO0CcZtRYV_D:APA91bHdXzkL3SjXnsnNTmjtMwQ_qzHWbX-VRsnqR-18lRxrEtntyzima7zCi4JLBBa28LSAF9dMDE1PAMctf-39dKGU87nzQ0H4K54srLJAaeAKZchPEseQwcj2jXcYJoYNEEsXOKD2', '2023-05-06 10:52:11', '2023-05-06 10:52:11'),
(54, 183, 'd1Hhf-zdcqtGK-tOh0CE1m:APA91bEanC0EdS0Na-SxECsrsuEqS1qbAK1YJmK4wXgdg4DFGMj1B9MXGo6CQXCTf3gM7VsS5QZFqHyUfhWj7qBrltD3tog7q1LDHkvLMG2pqrOInV6l2WJHBJt-ve8vfJOsqxk0GvNH', '2023-05-06 10:55:39', '2023-05-06 10:55:39'),
(55, NULL, 'cq7AMFJUDoIO0CcZtRYV_D:APA91bHdXzkL3SjXnsnNTmjtMwQ_qzHWbX-VRsnqR-18lRxrEtntyzima7zCi4JLBBa28LSAF9dMDE1PAMctf-39dKGU87nzQ0H4K54srLJAaeAKZchPEseQwcj2jXcYJoYNEEsXOKD2', '2023-05-06 11:35:22', '2023-05-06 11:35:22'),
(56, 164, 'cq7AMFJUDoIO0CcZtRYV_D:APA91bHdXzkL3SjXnsnNTmjtMwQ_qzHWbX-VRsnqR-18lRxrEtntyzima7zCi4JLBBa28LSAF9dMDE1PAMctf-39dKGU87nzQ0H4K54srLJAaeAKZchPEseQwcj2jXcYJoYNEEsXOKD2', '2023-05-06 11:35:40', '2023-05-06 11:35:40'),
(57, NULL, 'cyDNj4OCnq2nBUkD3z2L_S:APA91bFa97es-bY6THN1a5gjbErGYCA-lq5MQr1TS1M9p4ZdvL2x-aU7dodTIpy8kgPBS2FkqdbPdBVrdoovB3-uXte-Xl7YXsRUljCwCbNeUO1il_0CdN0n52JOQFCT5J0Q0xD8S8h3', '2023-05-06 15:38:01', '2023-05-06 15:38:01'),
(58, 198, 'd1Hhf-zdcqtGK-tOh0CE1m:APA91bEanC0EdS0Na-SxECsrsuEqS1qbAK1YJmK4wXgdg4DFGMj1B9MXGo6CQXCTf3gM7VsS5QZFqHyUfhWj7qBrltD3tog7q1LDHkvLMG2pqrOInV6l2WJHBJt-ve8vfJOsqxk0GvNH', '2023-05-07 00:07:04', '2023-05-07 00:07:04'),
(59, NULL, 'crJEchStWaPU7ufxXmCAGc:APA91bH3fkeLZVV7OOC4uSBuR4mMjjEw2jyiQTdTVZk0D4pBRJi4ndusu9nIk32zGdj57S6ZRovxq46R6PLYz_axCZSWlU2D_I93u5zo6vJ6r5VvC6aFB0NvESPxth3cMZF4glpmxYLT', '2023-05-09 03:57:28', '2023-05-09 03:57:28'),
(60, NULL, 'em7mIxmq0AF-NbmnLKGiuN:APA91bH-d29A8oPAMdXXKr8h3aAFMcxXWD-J--XQ4UKfwrlSHHiggGq_ScvLmY1PNqzJQQbRe2mXKNfIZHRbt8Z8mcnTsPTTGua6JBfQ8WHCqPR2ymf2OjvSxr0P_r4clZOnPPtstpHL', '2023-05-10 07:46:42', '2023-05-10 07:46:42'),
(61, NULL, 'c9q64IX_7m3VTOQ9qLT27p:APA91bFTICSHEX0pfaOpup5vNGeJndAFNogbKpwGunMhevV4FMU5iKaRPTv-WqxLAqZmARKbZWL1hlWAkcMQTskzx--jlERclSS0nzyQKHH-Gxo36PVYsJBpzcnnbdtAUIPAaW5NZRj3', '2023-05-10 12:19:20', '2023-05-10 12:19:20'),
(62, NULL, 'e-iYPKlSzQmhvjiqHSyVLB:APA91bHCoP5i_2YvZLwVS3zc4ZoOTLA7PS84d-OcBlACop1m55x4J8ESepAWkW3rk45WIc92TQZ4lZNkIO5-EjAyF4p_rBGHeD_N7Mw295BK2ROEw0S7hMixTI2XcbctBLfCaz5QZxg7', '2023-05-11 09:57:33', '2023-05-11 09:57:33'),
(63, 198, 'em7mIxmq0AF-NbmnLKGiuN:APA91bH-d29A8oPAMdXXKr8h3aAFMcxXWD-J--XQ4UKfwrlSHHiggGq_ScvLmY1PNqzJQQbRe2mXKNfIZHRbt8Z8mcnTsPTTGua6JBfQ8WHCqPR2ymf2OjvSxr0P_r4clZOnPPtstpHL', '2023-05-11 18:19:14', '2023-05-11 18:19:14'),
(64, NULL, 'eT1dNdZFgZYic6mo1kNol_:APA91bErtyzg3wSIuD3uoxf8HtKklANgps1fmoYidMww2QobN4tyRah4gDdWrvlHYcz5sC98TQlh7z9CNYktXJXuSMzoyEJ-NYiOGYLU4s6XZ_wQks5PYeLSSAhd6Z2KecsSgCiKk-Oz', '2023-05-12 07:21:22', '2023-05-12 07:21:22'),
(65, NULL, 'fvcfdiBe11f18W0cgqJQ65:APA91bE4gRHJKxbkNtaD8hlaLh9FaCvvCrn-mrYcria339eI_6N7Y6N7ScTpXyw4rFkmgHv--lRifANgd-p0_lRhYycY7G3AWzeJXljZtQZNel7kyXFi74f7kD5n40qe37elZRoywkho', '2023-05-12 10:46:33', '2023-05-12 10:46:33'),
(66, 164, 'fvcfdiBe11f18W0cgqJQ65:APA91bE4gRHJKxbkNtaD8hlaLh9FaCvvCrn-mrYcria339eI_6N7Y6N7ScTpXyw4rFkmgHv--lRifANgd-p0_lRhYycY7G3AWzeJXljZtQZNel7kyXFi74f7kD5n40qe37elZRoywkho', '2023-05-13 06:18:34', '2023-05-13 06:18:34'),
(67, 206, 'fvcfdiBe11f18W0cgqJQ65:APA91bE4gRHJKxbkNtaD8hlaLh9FaCvvCrn-mrYcria339eI_6N7Y6N7ScTpXyw4rFkmgHv--lRifANgd-p0_lRhYycY7G3AWzeJXljZtQZNel7kyXFi74f7kD5n40qe37elZRoywkho', '2023-05-13 06:53:10', '2023-05-13 06:53:10'),
(68, 207, 'fvcfdiBe11f18W0cgqJQ65:APA91bE4gRHJKxbkNtaD8hlaLh9FaCvvCrn-mrYcria339eI_6N7Y6N7ScTpXyw4rFkmgHv--lRifANgd-p0_lRhYycY7G3AWzeJXljZtQZNel7kyXFi74f7kD5n40qe37elZRoywkho', '2023-05-13 07:07:19', '2023-05-13 07:07:19'),
(69, 1, 'dB9vlDl5vZNazhvPDYduJ9:APA91bEkwYu6D4eQCzhkqb7jPz-3LZb3bo2WjEbySsCR0GAHsw36z9FAXbcQHXtFi0iGEhbSvfEY5sudEvGKixZjzxl7QuvErfKNSeaTPwuWF0Jchz2gpQ-kpMA3FYlSzE78rYeedD7Y', '2023-05-13 10:52:13', '2023-05-13 10:52:13'),
(70, NULL, 'e59wEbWKdNxUB8V9Gh6tnU:APA91bGsddHZz6v6v9qV_kWsoNWy9pJ4heUMr-b6_JEqKoOfv8AsJSkfzg1pQCJoAGBqrcvwsKnHvxkEA3s7xb0g6UPmsHDKO-uPc27vrvsIIjIBgQrytnQB3zZhV52yDgf3Xf_vgWsf', '2023-05-14 02:19:58', '2023-05-14 02:19:58'),
(71, NULL, 'dB9vlDl5vZNazhvPDYduJ9:APA91bEkwYu6D4eQCzhkqb7jPz-3LZb3bo2WjEbySsCR0GAHsw36z9FAXbcQHXtFi0iGEhbSvfEY5sudEvGKixZjzxl7QuvErfKNSeaTPwuWF0Jchz2gpQ-kpMA3FYlSzE78rYeedD7Y', '2023-05-14 08:38:18', '2023-05-14 08:38:18'),
(72, NULL, 'cIPJWaswoD_rvOsJw2Y1UI:APA91bHbI4v4hxWz-Rbs7g104vv31co4u7QgzMnK_FLRmTT-bGNwqymb18ovQEciyaCEkZgRJjCDEdb6XJC-1hyBzH8jKRtd-qYPsGWFi9guEqxygqaAFE8jQ6kZPDOZFVTimP9Q9ZG5', '2023-05-18 01:24:08', '2023-05-18 01:24:08'),
(73, NULL, 'fhMoN-rGL66DhJNAGEkYsV:APA91bFJyabCzmek6QrpD_Lh_sJiDYOkdtsNWlgOn5WfBWxwBrVIGg19UuFYkQz3McC4P0dr1XKmlPVFKC02vJuXYEKlNcCCLuR7050vM8kchYbV06P5wjltsBF6qFPXXRHzzpptr0Li', '2023-05-20 05:47:57', '2023-05-20 05:47:57'),
(74, NULL, 'egpjBRZ25kq8Fgdhcu8CMf:APA91bFv5DsI-KQ3-amXcvcwsDnNCI_-K3xPpJ7vvly84eiQu2NM3eEfBEAlW3gSJmhVAA7FlaGn2-Nnu50TlL3F26Mo4Gl7Fg_qBg9--G-0ianu21WRV8_-sRwms-INIUQzMQBGfWIc', '2023-05-21 18:26:00', '2023-05-21 18:26:00'),
(75, NULL, 'fIHT1U5BG-hd05ncChQp9E:APA91bH8MpEkai4H-LJe2Lj1NLULw8litbmksw2pvRdqP_YXZCNw6emq0Ouui5xcmJLJtC7ZkQTrWJ97-lDnAtvjMEx0xhWf6wdN3f5nqzSeOtTdkPcBNRCUhPqIr7CeYYXq9njz2TSS', '2023-05-23 09:23:20', '2023-05-23 09:23:20'),
(76, 211, 'cOLHYPw8Cird7vcI94nD5u:APA91bExRgLz7pUCvt46izmN_aCjq0nij1XuHkVf8ZGBQaIRs3xk6-Ur7aGMg_WIjAxuOX9ynmWkg0ZFePSkA5OAVTU4Jo2M7P3WtOTdSil5w3tGd9A6bqLc3lw2SiJdFfCMXnBAiYU4', '2023-05-26 19:34:56', '2023-05-26 19:34:56'),
(77, NULL, 'fatNnWvyUEL5X0GALf8UQC:APA91bEzII_HhelvrbEUWuuY_FdqEU4TWz0KfSDxCvzoJUwRlza8vtcTZIQf1WoYt7sma57_AtGFgFCc5PnHBaldHXMpNTD9TaOEhXjSYmyFH2nh8q3_99G2kypSNCFc3spboYnWjy73', '2023-05-27 11:40:22', '2023-05-27 11:40:22'),
(78, 1, 'fatNnWvyUEL5X0GALf8UQC:APA91bEzII_HhelvrbEUWuuY_FdqEU4TWz0KfSDxCvzoJUwRlza8vtcTZIQf1WoYt7sma57_AtGFgFCc5PnHBaldHXMpNTD9TaOEhXjSYmyFH2nh8q3_99G2kypSNCFc3spboYnWjy73', '2023-05-27 11:50:39', '2023-05-27 11:50:39'),
(79, 212, 'dSf9FXTtE1D24ek7LO7LG4:APA91bEnY1CO3pDkQ0OAxghzB04M_5hX_3PEOhpU9YY8PEglfRFXgQVh5WGRUTnKu1OF49hTvk08vIp31HGv0436qen_jGpDbW3tDMN-b7egber1MsNQjK78ryImkbuChHu-1XOUJjr1', '2023-05-31 06:57:14', '2023-05-31 06:57:14'),
(80, NULL, 'dSf9FXTtE1D24ek7LO7LG4:APA91bEnY1CO3pDkQ0OAxghzB04M_5hX_3PEOhpU9YY8PEglfRFXgQVh5WGRUTnKu1OF49hTvk08vIp31HGv0436qen_jGpDbW3tDMN-b7egber1MsNQjK78ryImkbuChHu-1XOUJjr1', '2023-05-31 06:59:42', '2023-05-31 06:59:42'),
(81, NULL, 'doJ8ouPsjyxAmR4b552oXP:APA91bEjztPCL43FiBYVvboFWmumiZx3Q14xbXSUJKiURnVm1DdlBNtruSOyUgBz5lb7yvixa5SDiDFItJ01wKs3tYlLwNad242-hbpszNn8NnHrNRCf_mzmWWD-gWAEcnmaLjlQOHX0', '2023-06-05 11:44:45', '2023-06-05 11:44:45'),
(82, 214, 'eWqEIsry7q6O4acUU7mz-c:APA91bHPYwexmuz_npdnHmNIVVzcjjrfx1hnHuqQ3WKGNdM5qA2BNard91ylrOt1pxcFKwFEXKbANLf3DBrhKz3Z4t1zPPOx_sf1ZOvxmTdeKb8h9IRoRR0Im2CP44zRh7B3oT0G4-fQ', '2023-06-10 13:58:58', '2023-06-10 13:58:58'),
(83, NULL, 'eWqEIsry7q6O4acUU7mz-c:APA91bHPYwexmuz_npdnHmNIVVzcjjrfx1hnHuqQ3WKGNdM5qA2BNard91ylrOt1pxcFKwFEXKbANLf3DBrhKz3Z4t1zPPOx_sf1ZOvxmTdeKb8h9IRoRR0Im2CP44zRh7B3oT0G4-fQ', '2023-06-10 14:01:09', '2023-06-10 14:01:09'),
(84, 215, 'eWqEIsry7q6O4acUU7mz-c:APA91bHPYwexmuz_npdnHmNIVVzcjjrfx1hnHuqQ3WKGNdM5qA2BNard91ylrOt1pxcFKwFEXKbANLf3DBrhKz3Z4t1zPPOx_sf1ZOvxmTdeKb8h9IRoRR0Im2CP44zRh7B3oT0G4-fQ', '2023-06-10 14:02:01', '2023-06-10 14:02:01'),
(85, NULL, 'cDL_Y_eIIY1hNTPgEn4PYp:APA91bHOJsoQfTATetryF-_KES7YAThGvMn26WIulwIQoNky_AqrVgsolinXyRyt5Djz4ft75e6x5F2bL4ESbFSxArKVoTvjvkfjqp6At7d6ptGfW8jpR82ztbngjL6mGgQRk9ZmMf5_', '2023-06-18 20:54:56', '2023-06-18 20:54:56'),
(86, NULL, 'eqAssfvuVU7Mmh1L_MGdxl:APA91bH_jHCdbJ7h31x1YKVEyixwc_wQV523Do8SGqTvGRCUhxwj5NZ1QOgPzYhp2_g_x-glrH2CHbW2JJQ4sWSvrVPr29Rm1opqOXe9TK8PTtNcm_j-mi-Va_kRqFdLOTb-35oKp2Nd', '2023-06-22 13:10:20', '2023-06-22 13:10:20'),
(87, 1, 'cDL_Y_eIIY1hNTPgEn4PYp:APA91bHOJsoQfTATetryF-_KES7YAThGvMn26WIulwIQoNky_AqrVgsolinXyRyt5Djz4ft75e6x5F2bL4ESbFSxArKVoTvjvkfjqp6At7d6ptGfW8jpR82ztbngjL6mGgQRk9ZmMf5_', '2023-06-22 20:13:49', '2023-06-22 20:13:49'),
(88, NULL, 'dlJR98aHE1t5wZE4Ypah5k:APA91bG4s0VOo6FgtF0RwEg1YeSA7ak1dmm1tjsFfzY885_5ZzMWJbmIzxdGIKAUbC-FtwqPDs2exrzR1A3zoijbxiI3dZEo1VCMJVh7pHcUFiT7fkCs6nT3f_r8hhRyetIJE49Nvcny', '2023-06-23 22:51:17', '2023-06-23 22:51:17'),
(89, NULL, 'cRVFOtEE_jzr95CC1_YxUy:APA91bELHPaxa3NlhUh1IE0leZOc8mvWhfgLhflo9EenQJJChq_WD0_p9m7wPKaZwCASp2_z3VSgyLwC1zdyD6uLaXOcQrT4xRGc5NIitkQNIHX5t52L7DIwpk3hJDkYLaYMyeMk14NI', '2023-06-30 01:48:24', '2023-06-30 01:48:24'),
(90, NULL, 'dL7qgk6zvhauQsi_DgND_E:APA91bHZLRlxjoJGZsfwaIXUwg0EGVkowVLxo4_8l0-CEg5jfkEtRaRqbtaRDC26_Ggngv_onslunxmNBUvwfUGhMXzjs1bjqR7v3LC4NKZEWpYfY8MjfJpZCMcc7a85s0O9898xl3YN', '2023-07-01 06:24:14', '2023-07-01 06:24:14'),
(91, 227, 'dL7qgk6zvhauQsi_DgND_E:APA91bHZLRlxjoJGZsfwaIXUwg0EGVkowVLxo4_8l0-CEg5jfkEtRaRqbtaRDC26_Ggngv_onslunxmNBUvwfUGhMXzjs1bjqR7v3LC4NKZEWpYfY8MjfJpZCMcc7a85s0O9898xl3YN', '2023-07-01 15:09:10', '2023-07-01 15:09:10'),
(92, NULL, 'fz7sMQEGtanmjsSxIWmuwm:APA91bFwc-vIQBHFxgmSiyj91nXa1_yv_NmfgtKu3HqQqxSkHeCOCbUyOQpzSbmhtRyYaJrOE8bVQiMY0TlolhhdmVCdw8OiZGmrlRGeZFf31ykAZyNxXFLv_V7I7zd65BGhBi-myhhF', '2023-07-02 00:18:47', '2023-07-02 00:18:47'),
(93, NULL, 'doN5pTZPZ6MuFxOOC2oUSM:APA91bGI3umvnt1rtrNtDNWnmTIUciznKeCpwIhNt_JF8yayeYJ5YsnxB9hWQ_171oUxEbAzy4W1OF0-CwN7PDwkLiishM1LMEtPBhe8Z1Y9mB2PTFDMtraPgXg5GzVFId396zg4zANI', '2023-07-03 09:57:25', '2023-07-03 09:57:25'),
(94, NULL, 'dEK8Be_j0DwqmCsie54BL2:APA91bHAq5ag4oLP4JXJ6fWtFTNDZa2CpG5a3e5KhZR5Zqco2lAede8W7NOZRURifYhgZLlNVaELGJlAvfq7UALnWKRSEFkYCvyhkqTmA14750bGnoFEr8NJl5wc9NwQYZf6WJhliLjy', '2023-07-07 23:11:16', '2023-07-07 23:11:16'),
(95, NULL, 'czuEAyIU9tMFNjBnv8olkO:APA91bGMLik2LdXfJyNit0NBIhA-omouxi3YSLDhSPVn-Wx7qu3ZxA2ug9BiL2hshS1FVWp36t_AXRjSBwEv1fGQ1Rf94X31aimp4Rq7_s2qP_d0cmZVk95E9VQYo9i4JloFSJAiWLXq', '2023-07-08 05:05:34', '2023-07-08 05:05:34'),
(96, NULL, 'csVkWAeNu6aa5xLrmP53Xy:APA91bGVJi2xvwkvWXNsKZpVt8lsICrRzsXNlO2pLcCV7SAo-_OTekaKFsKhlMp_MXumVb-YA-Dn5lNWGQlsWFwV405vhZeYYQ4sz2HI1qXxon-MmTFw_0Rmr3X-jYUGVZR0sSDSOoGS', '2023-07-08 07:22:10', '2023-07-08 07:22:10'),
(97, NULL, 'fzJI0ACH5VRE3W04jA72fr:APA91bH2eXGNH55vuDnVwoP2KCqjyvP8Dal7VBj6ibNo0-o0X6g60nkCtOunvlWTFaWEE208DnT6Pk_M2T_hN0v1P8y4vq9hie2ffevoDjJ6ciiYbxuKkCF7BOM_TTnBBjbQDXen1ngd', '2023-07-11 13:42:00', '2023-07-11 13:42:00'),
(98, NULL, 'dRfdA0QcHyMdG25ASSkdSJ:APA91bFfpwI3cIL26EvBYyM3uIsUjARtHx7CEo9YAbFlLtgoSqlugkdZIwm9MWYlixc4h1V8rWMvPNHfoLgcvB0mU3khqB6WcyPdcEgIhQfiEyKhcGY2-eoBmI7hB7lx2tNMhhvv8kwt', '2023-07-12 02:25:08', '2023-07-12 02:25:08'),
(99, 233, 'dRfdA0QcHyMdG25ASSkdSJ:APA91bFfpwI3cIL26EvBYyM3uIsUjARtHx7CEo9YAbFlLtgoSqlugkdZIwm9MWYlixc4h1V8rWMvPNHfoLgcvB0mU3khqB6WcyPdcEgIhQfiEyKhcGY2-eoBmI7hB7lx2tNMhhvv8kwt', '2023-07-12 03:03:02', '2023-07-12 03:03:02'),
(100, NULL, 'e5iJlI3SYGQR4hr7CaRs5F:APA91bEW1bGUZprT_2qDK-MDw6tzsU5V7m1xdf5DeWX0tdPnLEw--TZK8T6gH-DGt4MnLkgSqc4vuXjlbytrD2JtJYuVhaImqTCSld38FlMDZmq-vREHN0ph1FlTqkYE9N9OoqTXUk-9', '2023-07-13 07:28:17', '2023-07-13 07:28:17'),
(101, 1, 'eNYV1WjLN6hBPJlWVXGg-w:APA91bFHHO6VpyXKvsq_WjdkOx6TIl4-iA2eEC39EhEVuBomxUPBey-fuBe1mjWg9ukXtyPTdvJCP6009subIY6p3-GZfEHXuQz-s-uIS-GOF_HkCnFLcI9TRJ8xUsTstiHgvftjlZ9d', '2023-07-14 04:49:42', '2023-07-14 04:49:42'),
(102, NULL, 'eNYV1WjLN6hBPJlWVXGg-w:APA91bFHHO6VpyXKvsq_WjdkOx6TIl4-iA2eEC39EhEVuBomxUPBey-fuBe1mjWg9ukXtyPTdvJCP6009subIY6p3-GZfEHXuQz-s-uIS-GOF_HkCnFLcI9TRJ8xUsTstiHgvftjlZ9d', '2023-07-14 04:59:47', '2023-07-14 04:59:47'),
(103, NULL, 'c4uTfMOab7cmgAJIL2bh2a:APA91bHKxTffQF4jU88kcjk4h27PWPyB2YiT9B5oN8whJqyq0E2JqJQT13yLD0nwpzvkb33YW1fJXo7xZ2lO0LnpqY6_sellSLShf2wM7VkWZswymegXKaNRLfDwwiwgsH7-38GvmIL2', '2023-07-27 07:37:04', '2023-07-27 07:37:04'),
(104, NULL, 'dC8NhueOvBSj-H0T3NbUFd:APA91bG_J38vdYfeUBs6dRP5SiU90nt0sGj9vpdDiPyGfx9qwifoKwE31qagcF8ArLDIy8lUWkDLwhAwIayAMuhw6pWIbsvkGB345lzd3tMfSfzQFBZSvZP3hBXXkGDqkOUSF4PJUJ0S', '2023-07-29 11:31:12', '2023-07-29 11:31:12'),
(105, NULL, 'c8xoMS6txtzrNXlAEh7_eY:APA91bEvfYBAVcu6uMSgCKulXbd37Cy_3uFT2-dEXixiRoAr_S0IYdKMaz4QAkku8K8ZWXBI1uhi06Vd3vc2eXNRfh7OFtvayx6R3-Svw8kKD5Ho0iAV_lK4p4OiAhnKeT1v8NjNv9hp', '2023-08-04 14:01:24', '2023-08-04 14:01:24'),
(106, NULL, 'd_VKCPYtcJ9bZwPlg51Gu-:APA91bFQFso1tRWLZWkqjD9rDMekvd-jw71EOZN-EouOXvbY7Yn-2WJNzo76wLoeoMo7PgtlC8ormpffvx0k96eQvUizcy9sH2S5VGQ8JpUgXEJz7ij85Ptsm3MKNkCEqYvnpPv7QA8s', '2023-08-07 01:02:43', '2023-08-07 01:02:43'),
(107, NULL, 'fAEsbtN102Jkn6VPctn5ZI:APA91bGLzl6APQtSvTaw3NSk08gWYuDANP_1aFrXkiZCE4pvg5Wilu_Tk0jgMmMxy2B6xrzv_sxQ7TNc-O4bH7Mwb58QDwbg7c5DJKsH3KRNUR83u2ftfu_WEEHyIb0ueVv4HYnTg2gz', '2023-08-15 14:57:05', '2023-08-15 14:57:05'),
(108, NULL, 'fCi4cd5obulftwLxNe1LUm:APA91bHvgJiB517LtZph2_c_JFlNKqg-26Nf2rdHcZuP4KvZzfxvvUSYIu3pSWTTKesY8nRNtU4UIGHbE3YePSClxMrWndByol2DsPHyUcogYtEN7NSO5OXqzwzTjDrppoyY6qv-SRgp', '2023-08-19 04:37:14', '2023-08-19 04:37:14'),
(109, NULL, 'dGbffmsXu4AD3-xRQwysSC:APA91bEeUEbfHVEKepN_YXACB7-Jy9-6kuCnRIvN5VUCVAqSiW0Ff23piD8APn5hK_3HMAD0tf2YqkHob0Cc4MbVnNPsO7eyTPWB1g9iFkfTdDDw99TykK-SFwSXpwshruTwlIfZPCKS', '2023-08-22 22:12:20', '2023-08-22 22:12:20'),
(110, 1, 'dGbffmsXu4AD3-xRQwysSC:APA91bEeUEbfHVEKepN_YXACB7-Jy9-6kuCnRIvN5VUCVAqSiW0Ff23piD8APn5hK_3HMAD0tf2YqkHob0Cc4MbVnNPsO7eyTPWB1g9iFkfTdDDw99TykK-SFwSXpwshruTwlIfZPCKS', '2023-08-22 22:35:57', '2023-08-22 22:35:57'),
(111, NULL, 'cc84NG_dlCRSm5m_iCbpKt:APA91bF0QPYxs_bI0Byx7peXZmyMeNMno7b-Nar3JAiGLRUEZ9rp_NylQtQaI0qYDfj9wYmqgLmMmQLc_9cF-5SMINvdfQC1hEYgn_fxL7hepGwGn6QtpNFPjr7eWhApV2ghuXNE-flh', '2023-08-22 22:52:52', '2023-08-22 22:52:52'),
(112, 1, 'cc84NG_dlCRSm5m_iCbpKt:APA91bF0QPYxs_bI0Byx7peXZmyMeNMno7b-Nar3JAiGLRUEZ9rp_NylQtQaI0qYDfj9wYmqgLmMmQLc_9cF-5SMINvdfQC1hEYgn_fxL7hepGwGn6QtpNFPjr7eWhApV2ghuXNE-flh', '2023-08-22 23:07:29', '2023-08-22 23:07:29'),
(113, NULL, 'fmuuI6mFdY8ktJ3g-Isa28:APA91bGLY2c84NFiBifXz6mlrliN_VZRkmU0eXTCjmEhtCUN02eWjLuaY5jgwWonfGkZWgT43hXpQqeXKd79PSLG5uML8tdR788Poi6Kt61HJPwzS7r2fdEB4QL8-hsUHTDYgvIw2GyQ', '2023-08-23 04:02:34', '2023-08-23 04:02:34'),
(114, 249, 'ezLotw35tDKs30-TE7s19O:APA91bGjUrJNw1xZ2axcdn3z1VAhRTqEQYq9oWY2rdqL7MY5q4hlJ5_hUKY-MtJzJ099xIIgfCYGmFnHC47hpES5RXST1RDbbyGZxbPlT_CNURJkCnYfqIN9NPmy75sa7ChuimCGlmT2', '2023-08-23 05:57:09', '2023-08-23 05:57:09'),
(115, NULL, 'f4LzB4R-nieYDlfsjoarDJ:APA91bE-wB619c8yPVNz6CXB4ZyumoVXIUmI2J-PKthwQb_J1XpVhnwnzs9wOVoV5pKsDoWoSbqH2UvGIxk-ho33KdC2IptCde5Ku3bdlMDQ3vhA99qBgVhg7VjH6mxUhJR5oIrkjzeu', '2023-08-24 00:40:30', '2023-08-24 00:40:30'),
(116, 1, 'f4LzB4R-nieYDlfsjoarDJ:APA91bE-wB619c8yPVNz6CXB4ZyumoVXIUmI2J-PKthwQb_J1XpVhnwnzs9wOVoV5pKsDoWoSbqH2UvGIxk-ho33KdC2IptCde5Ku3bdlMDQ3vhA99qBgVhg7VjH6mxUhJR5oIrkjzeu', '2023-08-24 00:45:35', '2023-08-24 00:45:35'),
(117, 252, 'f4LzB4R-nieYDlfsjoarDJ:APA91bE-wB619c8yPVNz6CXB4ZyumoVXIUmI2J-PKthwQb_J1XpVhnwnzs9wOVoV5pKsDoWoSbqH2UvGIxk-ho33KdC2IptCde5Ku3bdlMDQ3vhA99qBgVhg7VjH6mxUhJR5oIrkjzeu', '2023-08-24 01:10:15', '2023-08-24 01:10:15'),
(118, NULL, 'dq8SqidP3HS5LG0woa4Yxk:APA91bFJnl1g_TK4CGxS49iHa0hjqeimTdStAg1ZMykULG6BghD2_TwJSlap1-GDQkpcv_dfZ5qf3bneA2v-_-Ut__w78rwOVkE1HCQDPY2_0ydrqx7aPUNFpH18pmOtkBmdA6RwU34j', '2023-08-24 01:14:11', '2023-08-24 01:14:11'),
(119, 252, 'dq8SqidP3HS5LG0woa4Yxk:APA91bFJnl1g_TK4CGxS49iHa0hjqeimTdStAg1ZMykULG6BghD2_TwJSlap1-GDQkpcv_dfZ5qf3bneA2v-_-Ut__w78rwOVkE1HCQDPY2_0ydrqx7aPUNFpH18pmOtkBmdA6RwU34j', '2023-08-24 01:17:32', '2023-08-24 01:17:32'),
(120, 1, 'dq8SqidP3HS5LG0woa4Yxk:APA91bFJnl1g_TK4CGxS49iHa0hjqeimTdStAg1ZMykULG6BghD2_TwJSlap1-GDQkpcv_dfZ5qf3bneA2v-_-Ut__w78rwOVkE1HCQDPY2_0ydrqx7aPUNFpH18pmOtkBmdA6RwU34j', '2023-08-24 02:51:42', '2023-08-24 02:51:42'),
(121, 1, 'fHFHe7SyfZM0tPpLMycs8r:APA91bH_wuDh4BWOH2s8nWsHfy_6SdPzYlNT3lasOnZMm-RaUDmuNHmarh9TLLep4uUoEvXLNYHLEJlmHNPAmpHydulc2vHSVc9eyAAjgb_i_WjMJInqAtgJJoOKKFKZFpQ76LK7g5l0', '2023-08-25 11:48:08', '2023-08-25 11:48:08'),
(122, NULL, 'fHFHe7SyfZM0tPpLMycs8r:APA91bH_wuDh4BWOH2s8nWsHfy_6SdPzYlNT3lasOnZMm-RaUDmuNHmarh9TLLep4uUoEvXLNYHLEJlmHNPAmpHydulc2vHSVc9eyAAjgb_i_WjMJInqAtgJJoOKKFKZFpQ76LK7g5l0', '2023-08-25 11:51:53', '2023-08-25 11:51:53'),
(123, 256, 'fHFHe7SyfZM0tPpLMycs8r:APA91bH_wuDh4BWOH2s8nWsHfy_6SdPzYlNT3lasOnZMm-RaUDmuNHmarh9TLLep4uUoEvXLNYHLEJlmHNPAmpHydulc2vHSVc9eyAAjgb_i_WjMJInqAtgJJoOKKFKZFpQ76LK7g5l0', '2023-08-25 11:52:03', '2023-08-25 11:52:03'),
(124, NULL, 'cyhIoESX-OFaNC6421BgL8:APA91bFV64jspBd75xipVY7ZqAr8Fj5qb_P9mtYGHkLppCJWl0KHFJpjr0xoN4W1cplxyEACine3vbx4qrOFmPft-X5iT613dmWrU_DFyB3oygUe8EhisUtouwNmQZ50Do2VeAqYqvx1', '2023-08-25 19:21:31', '2023-08-25 19:21:31'),
(125, NULL, 'cluyefzZ8QrxXRmvKsY97g:APA91bHWlbWqp4e7MbC1nAMr8bW3l6An9_MAEI2pLX3h3I7VV-SW4T8a1E61fII84ORQdWpWV4VsfehBhTLqcnSH87xBgbYG46teDm1lXBiRcSYSr-Et8ZuhVLjaeno5HrlgCibe51zq', '2023-08-26 04:26:16', '2023-08-26 04:26:16'),
(126, 1, 'fo7Ke6b2c9tojakmg9Jw6K:APA91bGFN-qvXu4bUpwdO4jDt-l-DZVelpT8Y23d9-E7chgqfaeLWFhUbN2DouYaKCsr_Q8aI_sFX40uDCr626sXZYDUSHf9NFWK2dzFZk1llkqlBHgvxGWSpYsvbvWVQ9Mx1mmYsvLW', '2023-08-26 05:49:59', '2023-08-26 05:49:59'),
(127, NULL, 'fo7Ke6b2c9tojakmg9Jw6K:APA91bGFN-qvXu4bUpwdO4jDt-l-DZVelpT8Y23d9-E7chgqfaeLWFhUbN2DouYaKCsr_Q8aI_sFX40uDCr626sXZYDUSHf9NFWK2dzFZk1llkqlBHgvxGWSpYsvbvWVQ9Mx1mmYsvLW', '2023-08-26 07:08:13', '2023-08-26 07:08:13'),
(128, NULL, 'eMtOcCt79wp3hVZDtOL9Y0:APA91bGP8fH7avgJAUgGotHbvV8s7MlHAV2FEDe3Bt6fvQxZ1TfckX_RJDTxIBXnHxpR5IBr9761ptP_3v6PTM4B7ikbTwJNx9HXwUGhhEw4Nj1Mfz_jcevJ8BFhDv91oeNES17Y48fU', '2023-08-26 10:54:11', '2023-08-26 10:54:11'),
(129, 253, 'eMtOcCt79wp3hVZDtOL9Y0:APA91bGP8fH7avgJAUgGotHbvV8s7MlHAV2FEDe3Bt6fvQxZ1TfckX_RJDTxIBXnHxpR5IBr9761ptP_3v6PTM4B7ikbTwJNx9HXwUGhhEw4Nj1Mfz_jcevJ8BFhDv91oeNES17Y48fU', '2023-08-26 10:54:20', '2023-08-26 10:54:20'),
(130, NULL, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-26 12:30:15', '2023-08-26 12:30:15'),
(131, 252, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-26 12:30:31', '2023-08-26 12:30:31'),
(132, 264, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 02:12:24', '2023-08-27 02:12:24'),
(133, NULL, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 02:20:28', '2023-08-27 02:20:28'),
(134, 265, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 02:20:40', '2023-08-27 02:20:40'),
(135, 266, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-27 02:31:50', '2023-08-27 02:31:50'),
(136, 268, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-27 02:34:06', '2023-08-27 02:34:06'),
(137, NULL, 'fTP7ZYefFF6xUdKdxBes6n:APA91bGhhN-e0xMADxy7xH5yhR5agZ8kLKW63yiZt6WW-vtJ8S0TcDUawRBc2OTC5KcM8exBKPmibqfh8Xs4nqh7jE1iml3G9ODZHv8MNbcaTKAIAusUzUDe8W5p2jJlx-Nin01TqeYG', '2023-08-27 02:36:05', '2023-08-27 02:36:05'),
(138, 269, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-27 02:38:19', '2023-08-27 02:38:19'),
(139, 256, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-27 02:55:05', '2023-08-27 02:55:05'),
(140, 272, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 03:02:20', '2023-08-27 03:02:20'),
(141, 273, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 04:01:13', '2023-08-27 04:01:13'),
(142, 274, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 04:49:00', '2023-08-27 04:49:00'),
(143, 1, 'fqHg-3fw3bKo6wtzyuOZmH:APA91bH044ZuimDSeQZQ085Bu7QhStFysJrCTytUg5bYpz41K0IvJGOuFEfS7Vnm0jX2OXTAkrE5mT7pcsxzbMATJMlmIO1UcAhi81B0hMRbrfrfgJbacpZ8SfXlACKksxpzjjb81KPY', '2023-08-27 05:15:44', '2023-08-27 05:15:44'),
(144, NULL, 'flD2vhILd5ObPKvnSNpfOl:APA91bFwGLmGYVF8rrSxeoxJa60JPGIZWjHU-tTuJTX8mbaaaGGomJUWi7jnfk45I1kSAu5ZJow1Ou8FfS2STUJtRhOiBGGOYzktoFpS0shGtxJiZnjSr15F4ECVQerIdvPHIAIxPUOz', '2023-08-27 09:37:38', '2023-08-27 09:37:38'),
(145, 275, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 10:03:29', '2023-08-27 10:03:29'),
(146, 279, 'cxuuwpKVqd2gtnEBk9p6od:APA91bF2_tg3BoMSSMuaFvdQltpq4yg0JTscD7AMDkCGdGmW5174NTTZRtnZzC93NQfv1gvQ82wtWh3c4tELwhdOyUohtuZePdzRfusHVk80I-QANtmdZ4bGGipy8pj45uePxDPN3NMq', '2023-08-27 10:43:28', '2023-08-27 10:43:28'),
(147, NULL, 'fQW7pvR4gkwTrM0KKtybg8:APA91bGCw4mx8sxxaw3MeN2NRWdWDS0rT-2iXG8djpkPRkrbnfmlF4E62XMPywPMRM3-fQoU2x0RWymAlGBsiMw9eym27MJvJWaAXG6EXmvUmKe-ZYaIn0Zbe5lQjjH9ut1LDFcQDmwS', '2023-08-27 21:03:58', '2023-08-27 21:03:58'),
(148, 1, 'fQW7pvR4gkwTrM0KKtybg8:APA91bGCw4mx8sxxaw3MeN2NRWdWDS0rT-2iXG8djpkPRkrbnfmlF4E62XMPywPMRM3-fQoU2x0RWymAlGBsiMw9eym27MJvJWaAXG6EXmvUmKe-ZYaIn0Zbe5lQjjH9ut1LDFcQDmwS', '2023-08-27 21:06:22', '2023-08-27 21:06:22'),
(149, NULL, 'eZ-7LHfsXdEHIV3nXfCSFq:APA91bFohRX4AfEtmbJ_Hqbx3WtXTQ7fi72sWxbFOu3xJ2GLUrX1VXVbxuBj_s82M10bIIbasCYlvmH00Ae_azVD1lafSh5LyWZkihWroFQCa5i8HACJZvLXJvjE9XD3Xg_HEtiGLh8Z', '2023-09-10 07:14:51', '2023-09-10 07:14:51'),
(150, NULL, 'cm-ntW2yKvRBLCXVQqNtiB:APA91bHdr8SNFvNhi-vrejr4x-WZkSmzlxReKzvXleSyvZgM7sRE0aeenq-zy4Pg__2otckUgfInIadPy5TzIZH2Ydcpupn3OFI-xuhEz2-c4STFLZ7nyNHiCQIUAZNrs6lpk17TVXRn', '2023-09-10 21:41:50', '2023-09-10 21:41:50'),
(151, NULL, 'fy3LuRUeHfzwUQtNwu-NTD:APA91bGvgRRRWNVOr8hJ4ogcp08w7GKAOgzyZxZeG3RehMJeG_f-4iuCkYW1lEPHsHm9QRUb0AWqtJZN-ixHfJ1bhasUdCsrpEiOy8JmvHaSkU9qaFPfWRAyZwD8tSgxzIIcOtVqaa9F', '2023-09-11 07:44:21', '2023-09-11 07:44:21'),
(152, 287, 'dB9vlDl5vZNazhvPDYduJ9:APA91bEkwYu6D4eQCzhkqb7jPz-3LZb3bo2WjEbySsCR0GAHsw36z9FAXbcQHXtFi0iGEhbSvfEY5sudEvGKixZjzxl7QuvErfKNSeaTPwuWF0Jchz2gpQ-kpMA3FYlSzE78rYeedD7Y', '2023-09-11 07:47:08', '2023-09-11 07:47:08'),
(153, NULL, 'fcbPuBUkhgsueoqI1mXgjv:APA91bEO1tIlgNODpu9OjMXfjQ4hGCn5xD18H5le-x2gW4kxD3WDBYV8T3LFqOY9OUCpupor5mrdSze3-PeudxD89rKejMdS_lwkYrUEpTZObMahnjrN65DR_F5L6rJc3bCXhoJc_-6V', '2024-01-11 04:30:20', '2024-01-11 04:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `download_products`
--

CREATE TABLE `download_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_users`
--

CREATE TABLE `download_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `download_user_products`
--

CREATE TABLE `download_user_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_mini_categories`
--

CREATE TABLE `extra_mini_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mini_category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_feature` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_mini_category_product`
--

CREATE TABLE `extra_mini_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `extra_mini_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_26_083352_create_roles_table', 1),
(5, '2021_04_26_090110_create_shop_infos_table', 1),
(6, '2021_04_26_094146_create_settings_table', 1),
(7, '2021_04_26_103452_create_categories_table', 1),
(8, '2021_04_27_041822_create_brands_table', 1),
(9, '2021_04_27_060049_create_colors_table', 1),
(10, '2021_04_27_074706_create_sizes_table', 1),
(11, '2021_04_27_083844_create_tags_table', 1),
(12, '2021_04_27_090113_create_coupons_table', 1),
(13, '2021_04_27_103134_create_products_table', 1),
(14, '2021_04_27_105130_create_product_images_table', 1),
(15, '2021_04_27_105229_create_color_product_table', 1),
(16, '2021_04_27_105500_create_category_product_table', 1),
(17, '2021_04_27_105537_create_product_size_table', 1),
(18, '2021_04_27_105553_create_product_tag_table', 1),
(19, '2021_04_29_081243_create_customer_infos_table', 1),
(20, '2021_04_30_130910_create_sliders_table', 2),
(21, '2021_05_01_045759_create_sub_categories_table', 3),
(22, '2021_05_01_050839_create_product_sub_category_table', 3),
(23, '2021_05_01_080942_create_download_products_table', 4),
(24, '2021_05_06_053040_create_product_reviews_table', 5),
(25, '2021_05_06_082332_create_collections_table', 5),
(26, '2021_05_08_174823_create_coupon_user_table', 6),
(27, '2021_05_08_190847_create_orders_table', 7),
(28, '2021_05_08_191930_create_order_details_table', 7),
(29, '2021_05_10_064750_create_vendor_accounts_table', 8),
(30, '2021_05_10_161230_create_category_collection_table', 9),
(31, '2021_05_11_070555_create_comments_table', 10),
(32, '2021_05_11_144526_create_reviews_table', 11),
(33, '2021_05_11_175121_create_download_users_table', 12),
(34, '2021_05_11_175522_create_download_user_products_table', 13),
(35, '2021_05_13_105137_create_product_user_table', 14),
(36, '2021_05_13_131154_create_commissions_table', 15),
(37, '2021_10_14_151726_create_subscriptions_table', 16),
(38, '2021_12_30_171921_create_wishlists_table', 17),
(39, '2021_12_31_082346_create_tickets_table', 18),
(40, '2021_12_31_103443_create_pages_table', 19),
(42, '2022_01_05_112513_create_mini_categories_table', 20),
(44, '2022_01_26_051820_create_bloods_table', 22),
(45, '2022_01_31_111628_create_mini_category_product', 22),
(46, '2022_01_31_114053_create_contacts_table', 23),
(47, '2022_02_03_172827_create_campaigns_table', 24),
(48, '2022_02_03_173019_create_campaing_products_table', 24),
(49, '2022_02_08_171958_create_campaing_comments_table', 25),
(50, '2022_02_08_174642_create_blogs_table', 26),
(51, '2022_02_09_134634_create_chats_table', 27),
(52, '2022_02_22_155141_create_extra_mini_categories_table', 28),
(53, '2022_02_22_155506_create_extra_mini_categories_product', 29),
(54, '2022_02_22_170629_create_extra_mini_category_product', 30),
(55, '2022_02_23_031956_create_attributes_table', 31),
(56, '2022_02_23_032033_create_attribute_values_table', 31),
(57, '2022_02_23_064159_create_attribute_product_table', 32),
(58, '2022_03_13_100532_create_unproducts_table', 33),
(59, '2022_03_23_133735_create_blog_comments_table', 34),
(60, '2022_03_23_153622_create_partial_payments', 35),
(61, '2022_03_23_182215_create_device_ids_table', 36),
(62, '2022_03_30_062751_create_withdraws_table', 37),
(63, '2022_04_21_173335_create_cart_infos_table', 38),
(64, '2023_03_03_074535_create_authors_table', 39),
(65, '2024_01_29_201340_update_orders_table_add_nullable_email_column', 40),
(66, '2024_02_04_124617_add_sku_to_products_table', 41),
(67, '2024_03_03_111021_make_last_name_nullable_in_orders_table', 42),
(68, '2024_03_03_111354_make_columns_nullable_in_orders_table', 42),
(69, '2024_03_10_114254_add_prdct_extra_msg_to_products_table', 43),
(70, '2024_04_01_080258_make_email_nullable_in_users_table', 44);

-- --------------------------------------------------------

--
-- Table structure for table `mini_categories`
--

CREATE TABLE `mini_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mini_category_product`
--

CREATE TABLE `mini_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mini_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multi_order`
--

CREATE TABLE `multi_order` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `partial_pay` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `multi_order`
--

INSERT INTO `multi_order` (`id`, `vendor_id`, `order_id`, `partial_pay`, `total`, `discount`, `status`) VALUES
(1, 200, 1, 0, 1100, 0, 2),
(2, 201, 2, 0, 575, 0, 2),
(3, 199, 3, 0, 715, 0, 0),
(4, 199, 4, 0, 715, 0, 2),
(5, 200, 5, 0, 470, 0, 2),
(6, 1, 6, 0, 790, 0, 3),
(7, 1, 7, 0, 14620, 0, 0),
(8, 1, 8, 0, 550, 0, 0),
(9, 1, 9, 0, 550, 0, 0),
(10, 1, 10, 0, 550, 0, 0),
(11, 1, 11, 0, 825, 0, 0),
(12, 1, 12, 0, 450, 0, 0),
(13, 225, 13, 0, 566, 0, 0),
(14, 225, 14, 0, 566, 0, 0),
(15, 225, 15, 0, 566, 0, 0),
(16, 225, 16, 0, 566, 0, 1),
(17, 225, 17, 0, 566, 0, 5),
(18, 1, 18, 0, 1080, 0, 0),
(19, 1, 19, 0, 1080, 0, 1),
(20, 1, 20, 0, 815, 0, 0),
(21, 1, 21, 0, 815, 0, 0),
(22, 1, 22, 0, 825, 0, 0),
(23, 1, 23, 0, 825, 0, 0),
(24, 1, 24, 0, 845, 0, 0),
(25, 1, 25, 0, 1080, 0, 0),
(26, 1, 26, 0, 692, 0, 0),
(27, 1, 27, 0, 692, 0, 0),
(28, 1, 28, 0, 380, 0, 0),
(29, 1, 29, 0, 816, 0, 4),
(30, 1, 30, 250, 1100, 0, 0),
(31, 1, 31, 845, 845, 0, 2),
(32, 1, 32, 0, 712, 0, 5),
(33, 1, 33, 0, 1600, 0, 3),
(34, 1, 34, 0, 1100, 0, 0),
(35, 1, 35, 0, 570, 0, 3),
(36, 1, 36, 0, 230, 0, 3),
(37, 1, 37, 0, 330, 0, 3),
(38, 1, 38, 0, 1630, 0, 0),
(39, 1, 39, 0, 2680, 0, 0),
(40, 1, 40, 0, 1930, 0, 3),
(41, 1, 41, 0, 2680, 2050, 3),
(42, 1, 42, 0, 680, 180, 3),
(43, 1, 43, 0, 152, 0, 3),
(44, 1, 44, 0, 1680, 0, 0),
(45, 1, 45, 0, 2680, 0, 3),
(46, 1, 46, 0, 1580, 0, 0),
(47, 1, 47, 0, 1580, 0, 3),
(48, 1, 48, 0, 230, 0, 0),
(49, 1, 49, 0, 230, 0, 0),
(50, 1, 50, 0, 230, 0, 0),
(51, 1, 51, 0, 100, 0, 0),
(52, 1, 52, 0, 100, 0, 0),
(53, 1, 53, 0, 10, 0, 0),
(54, 1, 54, 0, 100, 0, 0),
(55, 1, 55, 0, 160, 0, 0),
(56, 1, 56, 0, 160, 0, 0),
(57, 1, 57, 0, 250, 0, 0),
(58, 1, 58, 0, 100, 0, 0),
(59, 1, 59, 0, 2680, 0, 0),
(60, 1, 60, 0, 100, 0, 3),
(61, 1, 61, 0, 100, 0, 4),
(62, 1, 62, 0, 250, 0, 0),
(63, 1, 63, 0, 100, 0, 0),
(64, 1, 64, 0, 100, 0, 0),
(65, 1, 65, 0, 500, 0, 0),
(66, 1, 66, 0, 2680, 0, 0),
(67, 1, 67, 0, 160, 0, 0),
(68, 1, 68, 0, 1630, 0, 0),
(69, 1, 69, 0, 1580, 0, 0),
(70, 1, 70, 0, 1630, 0, 0),
(71, 1, 71, 0, 10, 0, 0),
(72, 1, 72, 0, 2380, 0, 3),
(73, 1, 73, 0, 1500, 0, 3),
(74, 1, 74, 0, 1500, 0, 0),
(75, 1, 75, 0, 1500, 0, 0),
(76, 1, 76, 0, 400, 50, 3),
(77, 1, 77, 0, 250, 0, 0),
(78, 1, 78, 0, 260, 0, 0),
(79, 1, 79, 0, 215, 0, 0),
(80, 1, 80, 0, 215, 0, 0),
(81, 1, 81, 0, 210, 0, 4),
(82, 1, 82, 0, 190, 0, 4),
(83, 1, 83, 0, 300, 0, 0),
(84, 1, 84, 0, 530, 0, 3),
(85, 1, 85, 0, 1230, 0, 4),
(86, 1, 86, 0, 1180, 0, 3),
(87, 1, 87, 0, 1230, 0, 3),
(88, 1, 88, 0, 175, 0, 0),
(89, 1, 89, 0, 660, 0, 0),
(90, 1, 90, 0, 1200, 0, 0),
(91, 1, 91, 0, 175, 0, 0),
(92, 1, 92, 0, 175, 0, 0),
(93, 1, 93, 0, 670, 0, 0),
(94, 1, 94, 0, 1200, 0, 4),
(95, 1, 95, 0, 3100, 0, 3),
(96, 1, 96, 0, 1200, 0, 0),
(97, 1, 97, 0, 900, 0, 0),
(98, 1, 98, 0, 770, 0, 4),
(99, 1, 99, 0, 710, 0, 1),
(100, 1, 100, 0, 2140, 0, 1),
(101, 1, 101, 0, 435, 0, 0),
(102, 1, 102, 0, 300, 0, 0),
(103, 1, 104, 0, 1760, 0, 0),
(104, 1, 106, 0, 360, 12, 1),
(105, 1, 107, 0, 550, 0, 0),
(106, 328, 111, 0, 905, 0, 0),
(107, 330, 112, 0, 1460, 0, 0),
(108, 330, 113, 0, 1860, 0, 0),
(109, 330, 114, 0, 200, 0, 0),
(110, 330, 115, 0, 260, 0, 0),
(111, 330, 116, 0, 260, 0, 0),
(112, 330, 117, 0, 1720, 0, 1),
(113, 330, 118, 0, 860, 0, 0),
(114, 330, 119, 0, 200, 0, 0),
(115, 330, 120, 0, 1720, 0, 1),
(116, 330, 121, 0, 1720, 0, 1),
(117, 330, 122, 0, 1660, 0, 0),
(118, 330, 123, 0, 1260, 0, 0),
(119, 330, 124, 0, 260, 0, 0),
(120, 330, 125, 0, 1860, 0, 0),
(121, 330, 126, 0, 1720, 0, 0),
(122, 330, 127, 0, 1720, 0, 0),
(123, 330, 128, 0, 200, 0, 0),
(124, 330, 129, 0, 200, 0, 0),
(125, 330, 130, 0, 1860, 0, 0),
(126, 330, 131, 0, 1920, 0, 0),
(127, 330, 132, 0, 2400, 0, 0),
(128, 330, 134, 0, 1360, 0, 0),
(129, 330, 135, 0, 1360, 0, 0),
(130, 330, 136, 0, 200, 0, 0),
(131, 330, 137, 0, 1660, 0, 0),
(132, 330, 138, 0, 200, 0, 3),
(133, 330, 139, 0, 1860, 0, 0),
(134, 330, 140, 0, 200, 0, 0),
(135, 330, 141, 0, 260, 0, 4),
(136, 330, 142, 0, 1660, 0, 9),
(137, 330, 143, 0, 1860, 0, 2),
(138, 1, 148, 0, 1181, 0, 0),
(139, 330, 150, 0, 1181, 0, 0),
(140, 330, 152, 0, 1181, 0, 0),
(141, 330, 153, 0, 270, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `thana` varchar(255) DEFAULT NULL,
  `meet_time` text DEFAULT NULL,
  `post_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_charge` decimal(10,2) DEFAULT NULL,
  `single_charge` decimal(10,2) DEFAULT 0.00,
  `payment_method` varchar(255) DEFAULT NULL,
  `refund_method` varchar(255) DEFAULT NULL,
  `refund_amount` varchar(255) DEFAULT NULL,
  `pay_staus` int(11) DEFAULT NULL,
  `pay_date` varchar(11) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `routing_number` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `is_pre` tinyint(1) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `refer_bonus` int(11) NOT NULL DEFAULT 0,
  `refer_id` int(11) DEFAULT NULL,
  `cart_type` varchar(255) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `first_name`, `order_id`, `invoice`, `last_name`, `company_name`, `country`, `address`, `town`, `district`, `thana`, `meet_time`, `post_code`, `phone`, `email`, `shipping_method`, `shipping_charge`, `single_charge`, `payment_method`, `refund_method`, `refund_amount`, `pay_staus`, `pay_date`, `mobile_number`, `transaction_id`, `bank_name`, `account_number`, `holder_name`, `branch_name`, `routing_number`, `coupon_code`, `subtotal`, `discount`, `total`, `point`, `is_pre`, `status`, `refer_bonus`, `refer_id`, `cart_type`, `created_at`, `updated_at`) VALUES
(112, NULL, 'Md Abdul Rashid', 'HC6PnfcBsj', '#00112', NULL, NULL, 'Bangladesh', '35/3/1,B,Section-13', NULL, NULL, NULL, NULL, NULL, '01858989394', NULL, NULL, 60.00, 60.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1400.00, 0.00, 1460.00, 0, 0, 0, 14, NULL, '1', '2024-07-16 15:46:39', '2024-07-16 15:46:39'),
(113, NULL, 'Md Abu Sayed', 'LokCKHFJvi', '#00113', NULL, NULL, 'Bangladesh', '35/3/1,B,Section-13\r\n35/3/1,B,Section-13', NULL, NULL, NULL, NULL, NULL, '01858989394', NULL, NULL, 60.00, 60.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1860.00, 0, 0, 0, 18, NULL, '1', '2024-07-16 15:48:26', '2024-07-16 15:48:26'),
(114, NULL, 'hhhh', '3Emx60tK9p', '#00114', NULL, NULL, 'Bangladesh', 'fffffff', NULL, NULL, NULL, NULL, NULL, '01775457008', NULL, NULL, 60.00, 60.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '1', '2024-07-16 15:54:12', '2024-07-16 15:54:13'),
(115, NULL, 'Hazrat Belal', 'qiw9vRlEdm', '#00115', NULL, NULL, NULL, 'Tulshighat Gaibandha shador Gaibandha', NULL, NULL, NULL, NULL, NULL, '01646609509', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 260.00, 0, 0, 0, 1, NULL, '0', '2024-07-16 16:48:21', '2024-07-16 16:48:21'),
(116, NULL, 'Hazrat Belal', 'pczOsZX9j4', '#00116', NULL, NULL, NULL, 'Tulshighat Gaibandha shador Gaibandha', NULL, NULL, NULL, NULL, NULL, '01646609509', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 260.00, 0, 0, 0, 1, NULL, '0', '2024-07-16 16:48:27', '2024-07-17 04:54:03'),
(118, NULL, 'Robin', '2ErmYBMbaj', '#00118', NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, '01854162055', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 800.00, 0.00, 860.00, 0, 0, 0, 8, NULL, '0', '2024-07-17 06:48:36', '2024-07-17 06:48:36'),
(119, NULL, 'Faysal', 'uZNQWTFyKq', '#00119', NULL, NULL, NULL, 'House 12,road 12,uttara', NULL, NULL, NULL, NULL, NULL, '01715123456', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '0', '2024-07-17 08:09:26', '2024-07-17 08:09:26'),
(120, NULL, 'Hazrat Belal', 'YDwNVzEUjb', '#00120', NULL, NULL, NULL, 'Tulshighat Gaibandha shador Gaibandha', NULL, NULL, NULL, NULL, NULL, '01646609509', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1720.00, 0, 0, 1, 16, NULL, '0', '2024-07-18 05:45:26', '2024-07-18 05:53:53'),
(121, NULL, 'Hazrat Belal', 'Iao9AwgHKU', '#00121', NULL, NULL, NULL, 'Tulshighat Gaibandha shador Gaibandha', NULL, NULL, NULL, NULL, NULL, '01646609509', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1720.00, 0, 0, 1, 16, NULL, '0', '2024-07-18 05:45:35', '2024-07-18 05:51:47'),
(122, NULL, 'Sid Antor', 'dUzSBaOKhL', '#00122', NULL, NULL, NULL, 'Nazimuddin Road', NULL, NULL, NULL, NULL, NULL, '01795830504', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1660.00, 0, 0, 0, 16, NULL, '0', '2024-08-20 18:27:53', '2024-08-20 18:27:53'),
(123, NULL, 'Imran Hossain', '089LEQBfNm', '#00123', NULL, NULL, NULL, 'Kalabagan', NULL, NULL, NULL, NULL, NULL, '01960007758', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1200.00, 0.00, 1260.00, 0, 0, 0, 12, NULL, '0', '2024-08-20 19:42:59', '2024-08-20 19:42:59'),
(124, NULL, 'Kamal Munsi', 'U9aI8TEmbR', '#00124', NULL, NULL, NULL, 'Yvigugu', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 260.00, 0, 0, 0, 1, NULL, '0', '2024-08-22 12:13:12', '2024-08-22 12:13:12'),
(125, NULL, 'Test', 'fvr0RqOWg3', '#00125', NULL, NULL, NULL, 'Nazimuddin Road\r\nLalbagh', NULL, NULL, NULL, NULL, NULL, '01795765789', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01842901060', '734SBK', NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1860.00, 0, 0, 0, 18, NULL, '0', '2024-08-22 20:27:00', '2024-08-22 20:27:00'),
(126, NULL, 'Tushar Sheikh', '5E618u4aMv', '#00126', NULL, NULL, NULL, '50 panch bhai ghat lane, sutrapur, dholaikhal', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01774405367', '76483748374834', NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1720.00, 0, 0, 0, 16, NULL, '0', '2024-08-25 09:16:21', '2024-08-25 09:16:21'),
(127, NULL, 'Tushar Sheikh', 'lFMIaoPbWX', '#00127', NULL, NULL, NULL, '50 panch bhai ghat lane, sutrapur, dholaikhal', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 120.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1720.00, 0, 0, 0, 16, NULL, '0', '2024-08-25 09:19:14', '2024-08-25 09:19:14'),
(128, 339, 'Istiak', 'zVUcgoPLap', '#00128', NULL, NULL, NULL, 'bagmara, Rajshahi', NULL, NULL, NULL, NULL, NULL, '01791014234', 'noreply@lems.shop', NULL, 60.00, 0.00, 'aamarpay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '0', '2024-08-29 20:30:32', '2024-08-29 20:30:32'),
(129, 339, 'Istiak', 'd30bMjgzfu', '#00129', NULL, NULL, NULL, 'bagmars tjdjf . tjrjmfdjgm', NULL, NULL, NULL, NULL, NULL, '01791014234', 'noreply@lems.shop', NULL, 60.00, 0.00, 'aamarpay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '0', '2024-08-29 20:31:39', '2024-08-29 20:31:39'),
(130, NULL, 'Raj', 'M4TplIskfY', '#00130', NULL, NULL, NULL, 'Rangpur', NULL, NULL, NULL, NULL, NULL, '01781674075', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01781674075', 'Ghdhdgsh', NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1860.00, 0, 0, 0, 18, NULL, '0', '2024-08-30 17:10:53', '2024-08-30 17:10:54'),
(131, NULL, 'ss', 'bXcitqvTWK', '#00131', NULL, NULL, NULL, 'czv', NULL, NULL, NULL, NULL, NULL, '01911585859', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01911585859', 'Vfreetyjn33646', NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1920.00, 0, 0, 0, 18, NULL, '0', '2024-08-31 10:54:21', '2024-08-31 10:54:21'),
(132, NULL, 'phy', 'hextQPfUST', '#00132', NULL, NULL, 'Bangladesh', 'hghjhj', NULL, NULL, NULL, NULL, NULL, '01726672665', NULL, NULL, 60.00, 60.00, 'Bkash', NULL, NULL, NULL, NULL, '01726672665', '25458487784554', NULL, NULL, NULL, NULL, NULL, '', 2340.00, 0.00, 2400.00, 0, 0, 0, 23, NULL, '1', '2024-09-23 02:39:41', '2024-09-23 02:39:41'),
(133, NULL, 'phy', 'K1mPjcXAVo', '#00133', NULL, NULL, 'Bangladesh', 'hghjhj', NULL, NULL, NULL, NULL, NULL, '01726672665', NULL, NULL, 60.00, 60.00, 'Bkash', NULL, NULL, NULL, NULL, '01726672665', '25458487784554', NULL, NULL, NULL, NULL, NULL, '', 2340.00, 0.00, 2400.00, 0, 0, 1, 0, NULL, '1', '2024-09-23 02:42:46', '2024-10-01 12:20:36'),
(134, NULL, 'RAJU AHMAD', 'cEZ9rxl60G', '#00134', NULL, NULL, NULL, 'SAJJAN KANDA', NULL, NULL, NULL, NULL, NULL, '01746636666', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01746636666', '2', NULL, NULL, NULL, NULL, NULL, '', 1300.00, 0.00, 1360.00, 0, 0, 0, 13, NULL, '0', '2024-10-01 12:41:45', '2024-10-01 12:41:45'),
(135, NULL, 'RAJU AHMAD', 'xIn4hCQcUa', '#00135', NULL, NULL, NULL, 'SAJJAN KANDA', NULL, NULL, NULL, NULL, NULL, '01746636666', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01746636666', '291231', NULL, NULL, NULL, NULL, NULL, '', 1300.00, 0.00, 1360.00, 0, 0, 0, 13, NULL, '0', '2024-10-01 12:41:46', '2024-10-01 12:41:46'),
(136, NULL, 'shishir barai', 'fbrsaUJkA2', '#00136', NULL, NULL, NULL, 'kalabari,kotalipara,gopalgonj', NULL, NULL, NULL, NULL, NULL, '01982708789', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01982708789', '738V89A3', NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '0', '2024-10-01 16:38:47', '2024-10-01 16:38:47'),
(137, NULL, 'Tushar Sheikh', 'D6LbM24UoN', '#00137', NULL, NULL, NULL, 'Hello World', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 60.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1660.00, 0, 0, 0, 16, NULL, '0', '2024-10-04 05:16:17', '2024-10-04 05:16:17'),
(138, 342, 'rana', 'pSTbPZJnFQ', '#00138', NULL, NULL, NULL, 'Bangladesh', NULL, NULL, NULL, NULL, NULL, '01913248070', 'noreply@lems.shop', NULL, 60.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 3, 1, NULL, '0', '2024-10-06 06:33:47', '2024-10-06 07:13:06'),
(139, NULL, 'Omar Faroque', 'CLiVTe8MR2', '#00139', NULL, NULL, NULL, 'college gate, house no- 121/1, middle auchpara,\r\nNight Nagar, Tongi West, Gazipur', NULL, NULL, NULL, NULL, NULL, '01925809935', 'noreply@lems.shop', NULL, 60.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1860.00, 0, 0, 0, 18, NULL, '0', '2024-11-20 14:09:39', '2024-11-20 14:09:39'),
(140, NULL, 'asfsdfs', 'e3r9vafhYC', '#00140', NULL, NULL, NULL, 'sfsdfsdfs', NULL, NULL, NULL, NULL, NULL, '01575454222', 'noreply@lems.shop', NULL, 60.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, '01575454222', 'sdfsdfasdf', NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 200.00, 0, 0, 0, 1, NULL, '0', '2024-11-21 11:05:42', '2024-11-21 11:05:43'),
(141, NULL, 'Fhh', 'rYiPwQdJhm', '#00141', NULL, NULL, NULL, 'Yvyvy', NULL, NULL, NULL, NULL, NULL, '01770701580', 'noreply@lems.shop', NULL, 120.00, 0.00, 'Bkash', NULL, NULL, NULL, NULL, 'Hkk', 'Ukk', NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 260.00, 0, 0, 4, 1, NULL, '0', '2024-11-27 16:07:36', '2025-05-03 23:30:41'),
(142, NULL, 'test', '7hJP6qFvdM', '#00142', NULL, NULL, 'Bangladesh', 'jhkjhlj', NULL, NULL, NULL, NULL, NULL, '01512121212', NULL, NULL, 60.00, 60.00, 'Bkash', NULL, NULL, NULL, NULL, '01512121212', 'hkhjuju415544', NULL, NULL, NULL, NULL, NULL, '', 1600.00, 0.00, 1660.00, 10, 0, 9, 16, NULL, '1', '2024-11-27 17:04:14', '2025-05-03 23:25:55'),
(143, NULL, 'Khan Fazlul Karim Jitu', 'AHQuRaTFjg', '#00143', NULL, NULL, NULL, '1/14/B Road NO,6 Sikder Real Estate Talioffice', NULL, NULL, NULL, NULL, NULL, '01680551515', 'noreply@lems.shop', NULL, 60.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1800.00, 0.00, 1860.00, 0, 0, 2, 18, NULL, '0', '2024-11-29 12:41:32', '2025-05-03 23:23:20'),
(144, NULL, 'Tushar Sheikh', '3IorYjftDl', '#00144', NULL, NULL, NULL, 'fffffffffffffffffffffffff', NULL, NULL, NULL, NULL, NULL, '01776878798', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 111110.00, 0.00, 111180.00, 0, 0, 0, 0, NULL, '0', '2025-05-04 00:22:45', '2025-05-04 00:22:45'),
(145, NULL, 'Tushar Sheikh', '6Vdi7oub8D', '#00145', NULL, NULL, NULL, 'fffffffffffffffffffffffff', NULL, NULL, NULL, NULL, NULL, '01776878798', 'noreply@lems.shop', NULL, 130.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 111110.00, 0.00, 111240.00, 0, 0, 0, 0, NULL, '0', '2025-05-04 00:22:58', '2025-05-04 00:22:58'),
(146, NULL, 'Tushar Sheikh', 'SuX58jtihv', '#00146', NULL, NULL, NULL, 'shds shd sh ssss shss s', NULL, NULL, NULL, NULL, NULL, '01745676787', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 0, NULL, '0', '2025-05-04 07:37:17', '2025-05-04 07:37:17'),
(147, 345, 'Tushar Sheikh', '0HkyanCc1Y', '#00147', NULL, NULL, NULL, 'shds shd sh ssss shss s', NULL, NULL, NULL, NULL, NULL, '01745676787', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 0, NULL, '0', '2025-05-04 07:48:52', '2025-05-04 07:48:52'),
(148, 345, 'Tushar Sheikh', 'Axb9OCkfT1', '#00148', NULL, NULL, NULL, 'shds shd sh ssss shss s', NULL, NULL, NULL, NULL, NULL, '01745676787', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 0, NULL, '0', '2025-05-04 07:49:48', '2025-05-04 07:49:48'),
(149, 345, 'Tushar Sheikh', 'wumY73qMZv', '#00149', NULL, NULL, NULL, 'shds shd sh ssss shss s', NULL, NULL, NULL, NULL, NULL, '01745676787', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 0, NULL, '0', '2025-05-04 07:55:31', '2025-05-04 07:55:31'),
(150, NULL, 'aaaaaa', 'aXpGd6Rb8h', '#00150', NULL, NULL, NULL, 'bbbbbbbbbbbbbbb bbbbbbbbb gggggggg', NULL, NULL, NULL, NULL, NULL, '01765676767', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 11, NULL, '0', '2025-05-04 07:56:30', '2025-05-04 07:56:30'),
(151, NULL, 'Tushar Sheikh', 'PHYID3aVTi', '#00151', NULL, NULL, NULL, '50,Panch bhai ghat lane, sutrapur, Dhaka-1100', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 11111.00, 0.00, 11181.00, 0, 0, 0, 0, NULL, '0', '2025-05-08 09:54:58', '2025-05-08 09:54:58'),
(152, NULL, 'Tushar Sheikh', 'gndlpHWsu1', '#00152', NULL, NULL, NULL, '50,Panch bhai ghat lane, sutrapur, Dhaka-1100', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 70.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 1110.99, 0.00, 1180.99, 0, 0, 0, 11, NULL, '0', '2025-05-08 09:55:10', '2025-05-08 09:55:10'),
(153, NULL, 'Tushar Sheikh', 'ZTxJq64cXa', '#00153', NULL, NULL, NULL, '50,Panch bhai ghat lane, sutrapur, Dhaka-1100', NULL, NULL, NULL, NULL, NULL, '01774405367', 'noreply@lems.shop', NULL, 130.00, 0.00, 'Cash on Delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 140.00, 0.00, 270.00, 0, 0, 0, 1, NULL, '0', '2025-05-30 22:05:56', '2025-05-30 22:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `total_price` decimal(20,2) NOT NULL,
  `g_total` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `title`, `color`, `size`, `qty`, `price`, `total_price`, `g_total`, `created_at`, `updated_at`) VALUES
(36, 36, 1, 685, 'YouTube Premium Subscription - ইউটিউব প্রিমিয়াম সাবস্ক্রিপশন', 'blank', '{\"duration-8546\":\"82\"}', 1, 100.00, 230.00, 100.00, '2023-08-23 04:21:12', '2023-08-23 04:21:12'),
(37, 37, 1, 685, 'YouTube Premium Subscription - ইউটিউব প্রিমিয়াম সাবস্ক্রিপশন', 'blank', '{\"duration-8546\":\"82\"}', 2, 100.00, 330.00, 200.00, '2023-08-23 04:22:46', '2023-08-23 04:22:46'),
(40, 40, 1, 686, 'Samsung Galaxy M31 Root', 'blank', '{\"android-version-1651\":\"74\",\"service-type-9233\":\"80\"}', 1, 1800.00, 1930.00, 1800.00, '2023-08-23 06:02:18', '2023-08-23 06:02:18'),
(41, 41, 1, 687, 'Unlimited Gmail Create Without Number Method', 'blank', '[]', 1, 2550.00, 630.00, 2550.00, '2023-08-23 10:03:02', '2023-08-23 10:03:02'),
(42, 42, 1, 688, 'VPN Unlimited 7 Days Trail Method - ভিপিএন আনলিমিটেড ৭ দিনের জন্য ফ্রী তে যত বার খুশি ততো বার', 'blank', '[]', 1, 550.00, 500.00, 550.00, '2023-08-23 11:10:34', '2023-08-23 11:10:34'),
(45, 45, 1, 684, 'JOYROOM JR-T03S Pro ANC Bluetooth Earbuds', 'blank', '[]', 1, 2550.00, 2680.00, 2550.00, '2023-08-26 00:36:16', '2023-08-26 00:36:16'),
(47, 47, 1, 683, 'T800 Ultra Smartwatch Series 8 with Wireless Charging', 'black', '[]', 1, 1450.00, 1580.00, 1450.00, '2023-08-26 06:03:39', '2023-08-26 06:03:39'),
(60, 60, 1, 693, 'Fresh Gmail Accounts', 'blank', '{\"quantity-2797\":\"91\"}', 1, 100.00, 100.00, 100.00, '2023-08-26 12:58:27', '2023-08-26 12:58:27'),
(72, 72, 1, 698, 'HW9 Pro Max Smart Watch (3 Straps In 1)', 'black', '[]', 1, 2250.00, 2380.00, 2250.00, '2023-08-28 11:00:06', '2023-08-28 11:00:06'),
(73, 73, 1, 701, 'Huawei Y5 (2019) Software Development', 'blank', '{\"service-type-4987\":\"86\",\"android-version-6738\":\"108\"}', 1, 1500.00, 1500.00, 1500.00, '2023-08-29 07:24:52', '2023-08-29 07:24:52'),
(76, 76, 1, 685, 'YouTube Premium Subscription - ইউটিউব প্রিমিয়াম সাবস্ক্রিপশন', 'blank', '{\"duration-1807\":\"112\"}', 1, 400.00, 350.00, 400.00, '2023-08-30 06:01:06', '2023-08-30 06:01:06'),
(78, 78, 1, 709, 'Twinings Pure Camomile Tea Bags 80 Pack-Australia', 'blank', '[]', 1, 130.00, 130.00, 130.00, '2024-01-22 04:30:17', '2024-01-22 04:30:17'),
(82, 82, 1, 714, 'Wheel Washing Powder Vanish  Clean & Fresh', 'blank', '[]', 1, 110.00, 190.00, 110.00, '2024-04-26 11:50:20', '2024-04-26 11:50:20'),
(87, 87, 1, 714, 'Vanish Popular Washing Powder', 'blank', '[]', 20, 55.00, 1230.00, 1100.00, '2024-05-04 04:06:32', '2024-05-04 04:06:32'),
(91, 90, 1, 714, 'Vanish Popular  ডিটারজেন্ট।', 'blank', '[]', 20, 55.00, 1200.00, 1100.00, '2024-05-15 11:38:21', '2024-05-15 11:38:21'),
(99, 98, 1, 741, 'শাহী গরম মশলা (২৫০ গ্রাম)', 'blank', '[]', 1, 650.00, 650.00, 650.00, '2024-07-11 13:01:40', '2024-07-11 13:01:40'),
(100, 99, 1, 741, 'শাহী গরম মশলা (২৫০ গ্রাম)', 'blank', '[]', 1, 650.00, 710.00, 650.00, '2024-07-11 15:31:21', '2024-07-11 15:31:21'),
(101, 100, 1, 742, 'চিনা বাদাম (৫০০ গ্রাম)', 'blank', '[]', 1, 400.00, 400.00, 400.00, '2024-07-11 23:49:49', '2024-07-11 23:49:49'),
(102, 100, 1, 745, 'কাজু বাদাম (৫০০ গ্রাম)', 'blank', '[]', 1, 750.00, 750.00, 750.00, '2024-07-11 23:49:49', '2024-07-11 23:49:49'),
(103, 100, 1, 743, 'কাঠ বাদাম (৫০০ গ্রাম)', 'blank', '[]', 1, 570.00, 570.00, 570.00, '2024-07-11 23:49:49', '2024-07-11 23:49:49'),
(104, 100, 1, 736, 'পেঁয়াজের গুঁড়া (২০০ গ্রাম)', 'blank', '[]', 2, 180.00, 360.00, 360.00, '2024-07-11 23:49:49', '2024-07-11 23:49:49'),
(111, 111, 328, 752, 'তীর সয়াবিন তেল (৫ লিটার)', 'blank', '[]', 1, 845.00, 845.00, 802.75, '2024-07-15 12:52:45', '2024-07-15 12:52:45'),
(112, 112, 330, 755, 'কালোজিরা ফুলের মধু | Black Seed Flower Honey', 'blank', '[]', 1, 1400.00, 1400.00, 1330.00, '2024-07-16 15:46:39', '2024-07-16 15:46:39'),
(113, 113, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1800.00, 1710.00, '2024-07-16 15:48:26', '2024-07-16 15:48:26'),
(114, 114, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 140.00, 133.00, '2024-07-16 15:54:13', '2024-07-16 15:54:13'),
(115, 115, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 260.00, 133.00, '2024-07-16 16:48:21', '2024-07-16 16:48:21'),
(116, 116, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 260.00, 133.00, '2024-07-16 16:48:27', '2024-07-16 16:48:27'),
(118, 118, 330, 759, 'শাহী গরম মশলা | Shahi Garam Masala Powder', 'blank', '[]', 1, 800.00, 860.00, 760.00, '2024-07-17 06:48:36', '2024-07-17 06:48:36'),
(119, 119, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-07-17 08:09:26', '2024-07-17 08:09:26'),
(120, 120, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1720.00, 1520.00, '2024-07-18 05:45:26', '2024-07-18 05:45:26'),
(121, 121, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1720.00, 1520.00, '2024-07-18 05:45:35', '2024-07-18 05:45:35'),
(122, 122, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1660.00, 1520.00, '2024-08-20 18:27:53', '2024-08-20 18:27:53'),
(123, 123, 330, 756, 'মিশ্র ফুলের মধু | Mix Flower Honey', 'blank', '[]', 1, 1200.00, 1260.00, 1140.00, '2024-08-20 19:42:59', '2024-08-20 19:42:59'),
(124, 124, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 260.00, 133.00, '2024-08-22 12:13:12', '2024-08-22 12:13:12'),
(125, 125, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1860.00, 1710.00, '2024-08-22 20:27:00', '2024-08-22 20:27:00'),
(126, 126, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1720.00, 1520.00, '2024-08-25 09:16:21', '2024-08-25 09:16:21'),
(127, 127, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1720.00, 1520.00, '2024-08-25 09:19:14', '2024-08-25 09:19:14'),
(128, 128, 330, 762, 'হলুদের গুঁড়া | Turmeric Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-08-29 20:30:32', '2024-08-29 20:30:32'),
(129, 129, 330, 762, 'হলুদের গুঁড়া | Turmeric Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-08-29 20:31:39', '2024-08-29 20:31:39'),
(130, 130, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1860.00, 1710.00, '2024-08-30 17:10:53', '2024-08-30 17:10:53'),
(131, 131, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1920.00, 1710.00, '2024-08-31 10:54:21', '2024-08-31 10:54:21'),
(132, 132, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 140.00, 133.00, '2024-09-23 02:39:41', '2024-09-23 02:39:41'),
(133, 132, 330, 759, 'শাহী গরম মশলা | Shahi Garam Masala Powder', 'blank', '[]', 1, 800.00, 800.00, 760.00, '2024-09-23 02:39:41', '2024-09-23 02:39:41'),
(134, 132, 330, 755, 'কালোজিরা ফুলের মধু | Black Seed Flower Honey', 'blank', '[]', 1, 1400.00, 1400.00, 1330.00, '2024-09-23 02:39:41', '2024-09-23 02:39:41'),
(135, 134, 330, 757, 'লিচু ফুলের মধু | Litchi Flower Honey', 'blank', '[]', 1, 1300.00, 1360.00, 1235.00, '2024-10-01 12:41:45', '2024-10-01 12:41:45'),
(136, 135, 330, 757, 'লিচু ফুলের মধু | Litchi Flower Honey', 'blank', '[]', 1, 1300.00, 1360.00, 1235.00, '2024-10-01 12:41:46', '2024-10-01 12:41:46'),
(137, 136, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-10-01 16:38:47', '2024-10-01 16:38:47'),
(138, 137, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1660.00, 1520.00, '2024-10-04 05:16:17', '2024-10-04 05:16:17'),
(139, 138, 330, 762, 'হলুদের গুঁড়া | Turmeric Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-10-06 06:33:48', '2024-10-06 06:33:48'),
(140, 139, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1860.00, 1710.00, '2024-11-20 14:09:39', '2024-11-20 14:09:39'),
(141, 140, 330, 761, 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', 'blank', '[]', 1, 140.00, 200.00, 133.00, '2024-11-21 11:05:42', '2024-11-21 11:05:42'),
(142, 141, 330, 762, 'হলুদের গুঁড়া | Turmeric Powder', 'blank', '[]', 1, 140.00, 260.00, 133.00, '2024-11-27 16:07:36', '2024-11-27 16:07:36'),
(143, 142, 330, 764, 'আদার গুঁড়া | Ginger Powder', 'blank', '[]', 1, 1600.00, 1600.00, 1520.00, '2024-11-27 17:04:14', '2024-11-27 17:04:14'),
(144, 143, 330, 763, 'ধনিয়ার গুঁড়া | Coriander Powder', 'blank', '[]', 1, 1800.00, 1860.00, 1710.00, '2024-11-29 12:41:33', '2024-11-29 12:41:33'),
(145, 148, 1, 770, 'Mabrum moriom', 'blank', '[]', 1, 1110.99, 1180.99, 1110.99, '2025-05-04 07:49:48', '2025-05-04 07:49:48'),
(146, 150, 330, 770, 'Mabrum moriom', 'blank', '[]', 1, 1110.99, 1180.99, 1055.44, '2025-05-04 07:56:30', '2025-05-04 07:56:30'),
(147, 152, 330, 770, 'Mabrum moriom', 'blank', '[]', 1, 1110.99, 1180.99, 1055.44, '2025-05-08 09:55:10', '2025-05-08 09:55:10'),
(148, 153, 330, 762, 'হলুদের গুঁড়া | Turmeric Powder', 'blank', '[]', 1, 140.00, 270.00, 133.00, '2025-05-30 22:05:56', '2025-05-30 22:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `title`, `body`, `position`, `status`, `created_at`, `updated_at`) VALUES
(5, 'About Us', 'About Us', '<p><font color=\"#000000\"><b>About Us</b></font></p><p><font color=\"#000000\">OFS Bazar is an online shop in Bangladesh.&nbsp;</font></p><p><font color=\"#000000\">We believe time is valuable to our fellow Bangladeshi residents, and that they should not have to waste hours in traffic, bad weather and wait in line just to buy basic necessities like spices !&nbsp;&nbsp;</font></p><p><font color=\"#000000\">This is why OFS Bazar delivers everything you need right at your door-step and at no additional cost. We promise quality.</font></p><ol class=\" olclass \" style=\"margin-top: -4px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: Arial, Verdana, sans-serif; font-size: 14px;\"><li></li></ol>', 1, 1, '2022-03-12 14:18:41', '2024-07-11 08:46:36'),
(6, 'FAQ', 'FAQ', '<p><b>FAQ</b></p><p>Q: What is OFS Bazar</p><p><span style=\"font-size: 1rem;\">&nbsp; &nbsp; &gt; It is biggest Online Shop in Bangladesh</span><br></p><p><span style=\"font-size: 1rem;\">Q: What I will get if I purchase from OFS Bazar?</span><br></p><p><span style=\"font-size: 1rem;\">&nbsp; &nbsp;&gt; You will get discounts, offers, Coupons and a lot more</span><br></p><p><span style=\"font-size: 1rem;\">Q: What Products I can Find at OFS Bazar?</span><br></p><p><span style=\"font-size: 1rem;\">&nbsp; &nbsp; &gt; You can find a lot of Products under any category.</span><br></p>', 1, 1, '2022-03-12 14:18:58', '2024-07-11 08:48:57'),
(7, 'Privacy Policy', 'Privacy Policy', '<div><b><u>Privacy Policy:</u></b></div><div>When you use our Website, we collect and store your personal information which is provided by you from time to time. Our primary goal in doing so is to provide you a safe, efficient, smooth and customized experience. This allows us to provide services and features that most likely meet your needs, and to customize our website to make your experience safer and easier. More importantly, while doing so, we collect personal information from you that we consider necessary for achieving this purpose.&nbsp;</div><div><span style=\"font-size: 1rem;\"><br></span></div><div><span style=\"font-size: 1rem;\"><b><u>Below are some of the ways in which we collect and store your information:&nbsp;</u></b></span><br></div><div><span style=\"font-size: 1rem;\">We receive and store any information you enter on our website or give us in any other way. We use the information that you provide for such purposes as responding to your requests, customizing future shopping for you, improving our stores, and communicating with you.</span><br></div><div><br></div><div>We also store certain types of information whenever you interact with us. For example, We obtain certain types of information when your web browser accesses ofsbazar.com or advertisements and other content served by or on behalf of ofsbazar.com on other websites.</div><div><br></div><div>To help us make e-mails more useful and interesting, we often receive a confirmation when you open e-mail from ofsbazar.com if your computer supports such capabilities.</div><div><br></div><div><b><u>Changes To Your Information:</u></b></div><div><span style=\"font-size: 1rem;\">The information you provide us isn’t set in iron. You may review, update, correct or delete the personal information in your profile at any time.&nbsp;</span><br></div><div><br></div><div>If you would like us to remove your information from our records, please create a request at the Contact Us page.&nbsp;</div><div><br></div><div>Information about our customers is an important part of our business, and we are not in the business of selling it to others.&nbsp;</div><div><br></div><div>We release account and other personal information when we believe release is appropriate to comply with the law; enforce or apply our Terms &amp; Conditions and other agreements; or protect the rights, property, or safety of ofsbazar.com, our users, or others. This includes exchanging information with other companies and organizations for fraud protection.</div><div><br></div><div>Thank you for choosing OFS Bazar. Your privacy is important to us, and we are committed to protecting and respecting it.<br></div>', 1, 1, '2022-03-12 14:19:16', '2024-07-11 08:56:45'),
(8, 'Refund and Returns Policy', 'Refund and Returns Policy', '<div><b>Refund and Returns Policy</b></div><div>Thank you for choosing to purchase from OFS Bazar. We fundamentally believe you will be thrilled with the products that you purchased from us. That’s because we go out of our way to ensure that the product’s quality and after-sales service are just what you need. Considering the prevailing circumstances and demand, a customer can return their product following the below-mentioned instructions.</div><div><br></div><div><b><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Returns Policy:</font></u></b></div><div><span style=\"font-size: 1rem;\">Please make sure to inspect the product in the presence of the delivery man upon receiving it. If you discover any inconsistencies or defects, kindly contact us at 01911-585859.</span><br></div><div><br></div><div><b><u>Conditions for Returns:</u></b></div><div><span style=\"font-size: 1rem;\">a) If the product has expired or is damaged.</span><br></div><div><span style=\"font-size: 1rem;\">b) If the product does not match its appearance as shown on the website or Facebook page.</span><br></div><div><span style=\"font-size: 1rem;\">c) If the product’s quality does not meet the standards as described.</span><br></div><div><span style=\"font-size: 1rem;\">d) If there is any issue with the delivery.</span><br></div><div><span style=\"font-size: 1rem;\">e) If the product’s weight is not as specified.</span><br></div><div><span style=\"font-size: 1rem;\">f) If an incorrect product has been provided.</span><br></div><div><br></div><div><b><u style=\"background-color: rgb(255, 255, 0);\">Refund Policy:</u></b></div><div><span style=\"font-size: 1rem;\">For the first time, we offer a unique opportunity for you to test our products, and if you are not satisfied, you can request a refund within 7 days from the date of delivery. In the event that you consume a portion of the product, you will be charged for the consumed quantity. For any inquiries or questions, please don’t hesitate to contact us at 01911-585859.</span><br></div><div><br></div><div><b><u>Conditions for Refund:</u></b></div><div><span style=\"font-size: 1rem;\">a) We will initiate refunds within 3 days of receiving the returned product.</span><br></div><div><span style=\"font-size: 1rem;\">b) Products must be packed properly when requesting a refund.</span><br></div><div><span style=\"font-size: 1rem;\">c) The return shipping cost will be deducted from the total refund amount.</span><br></div><div><br></div><div><br></div><div>Implementing a return and refund policy is a strategic business decision that can enhance customer satisfaction, build trust, and foster long-term success. It’s important to communicate this policy clearly to customers, both online and in physical locations, and to provide proper training to your staff for handling return requests in a professional and efficient manner.</div>', 1, 1, '2022-03-12 14:19:33', '2024-07-11 09:08:31'),
(11, 'Terms & Conditions', 'Terms & Conditions', '<h5><span style=\"font-size: 16px;\"><b>Terms &amp; Conditions</b></span></h5><h5><span style=\"font-size: 16px;\"><b><u>1. Introduction</u></b></span></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">These Terms and Conditions govern your use of OFS Bazar e-commerce platform for food-related products and services. By accessing or using our services, you agree to comply with and be bound by these terms. If you do not agree with these terms, please do not use our services.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>2. Account Registration</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">To use certain features of our services, you may be required to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to provide accurate and complete information during the registration process and to update your information as necessary to ensure its accuracy.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>3. Ordering and Payment</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">a) Order Placement: By placing an order through our platform, you are making an offer to purchase products or services. We reserve the right to accept or reject your offer at our discretion.</span><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">b) Pricing and Payment: Prices for products and services are displayed on our website and are subject to change without notice. Payment is due at the time of purchase, and we accept various payment methods. By providing your payment information, you authorize us to charge the specified amount.</span><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">c) Cancellation and Refunds: Orders may be subject to cancellation and refund policies as specified on our platform. Please review our Refund and Returns Policy for more details.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>4. Delivery and Returns</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">a) Delivery: We will make reasonable efforts to deliver your order according to the specified delivery options. However, delivery times may vary, and we do not guarantee specific delivery dates or times.</span><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">b) Returns: Please refer to our Refund and Returns Policy for information regarding returns and exchanges.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>5. Use of Our Services</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">You agree to use our services for lawful and appropriate purposes. You may not use our services for any illegal or unauthorized purpose, including, but not limited to, transmitting any harmful, infringing, or offensive content.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>6. Limitation of Liability</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">In no event shall OFS Bazar be liable for any direct, indirect, incidental, special, or consequential damages arising out of or in any way connected with the use of our services, including but not limited to damages for loss of profits, business interruption, or loss of data.</span><br></h5><h5><b style=\"font-size: 16px; color: inherit; font-family: inherit;\"><u>7. Termination</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">We reserve the right to terminate or suspend your access to our services at our discretion, with or without cause and without notice. Upon termination, your right to use our services will cease immediately.</span><br></h5><h5><b style=\"color: inherit; font-family: inherit; font-size: 16px;\"><u>8. Privacy</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">Your use of our services is also governed by our Privacy Policy. By using our services, you consent to the collection and use of your information as described in the Privacy Policy.</span></h5><h5><b style=\"color: inherit; font-family: inherit; font-size: 16px;\"><u>9. Changes to Terms and Conditions</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">We may update these Terms and Conditions from time to time. Any updates will be posted on our website with a revised effective date. It is your responsibility to review these terms periodically.</span></h5><h5><b style=\"color: inherit; font-family: inherit; font-size: 16px;\"><u>10. Contact Us</u></b><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">If you have any questions or concerns regarding these Terms and Conditions, please contact us at:</span><br></h5><h5><span style=\"font-size: 16px;\"><br></span></h5><h5><span style=\"font-size: 16px;\">OFS Bazar</span></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">Phone Number: 01911-585859</span><br></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\"><br></span></h5><h5><span style=\"font-size: 16px; color: inherit; font-family: inherit;\">Thank you for choosing OFS Bazar. We look forward to serving you and providing you with quality food-related products and services.</span><br></h5><h5></h5>', 1, 1, '2022-03-12 14:45:27', '2024-07-11 09:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `partial_payments`
--

CREATE TABLE `partial_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partial_payments`
--

INSERT INTO `partial_payments` (`id`, `order_id`, `payment_method`, `transaction_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 25, 'bk', 'Fhgsdh', '100', 0, '2023-07-12 03:12:05', '2023-07-12 03:12:05'),
(2, 27, 'bk', 'Dhdhff', '600', 0, '2023-07-12 03:31:45', '2023-07-12 03:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `full_description` longtext NOT NULL,
  `spec` longtext DEFAULT NULL,
  `regular_price` varchar(111) NOT NULL,
  `whole_price` varchar(111) DEFAULT NULL,
  `buying_price` varchar(111) DEFAULT NULL,
  `dis_type` int(11) DEFAULT NULL,
  `discount_price` varchar(111) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `shipping_charge` tinyint(1) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `reach` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `is_aproved` int(11) DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `download_able` tinyint(1) NOT NULL DEFAULT 0,
  `download_limit` int(11) DEFAULT NULL,
  `download_expire` date DEFAULT NULL,
  `sheba` int(11) DEFAULT NULL,
  `book` int(11) DEFAULT NULL,
  `isbn` varchar(222) DEFAULT NULL,
  `edition` varchar(255) DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `book_file` varchar(255) DEFAULT NULL,
  `refer` int(11) NOT NULL DEFAULT 0,
  `video` varchar(255) DEFAULT NULL,
  `video_thumb` varchar(255) DEFAULT NULL,
  `yvideo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `prdct_extra_msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `author_id`, `user_id`, `brand_id`, `slug`, `title`, `short_description`, `full_description`, `spec`, `regular_price`, `whole_price`, `buying_price`, `dis_type`, `discount_price`, `quantity`, `unit`, `image`, `shipping_charge`, `point`, `reach`, `status`, `is_aproved`, `type`, `download_able`, `download_limit`, `download_expire`, `sheba`, `book`, `isbn`, `edition`, `pages`, `country`, `language`, `book_file`, `refer`, `video`, `video_thumb`, `yvideo`, `created_at`, `updated_at`, `sku`, `prdct_extra_msg`) VALUES
(754, NULL, 330, 315, '761154716884489', 'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey', '<p>আমাদের নিজস্ব মৌয়ালরা সুন্দরবনের গহীন থেকে তাদের প্রানের ঝুঁকি নিয়ে সুন্দরবনের প্রাকৃতিক চাকের মধু সংগ্রহ করছে। আর সেই “র” মধুটাই আমরা পৌঁছে দিচ্ছি আপনাদের হাতে। সুন্দরবনের প্রাকৃতিক চাকের মধুতে খলিশা, গেওয়া, গরান, কেওড়া, বাইন, শেয়াল, হরকোচা, উড়া আর ও অনেক রকমের ফুল থাকার কারনে এই সুন্দরবনের প্রাকৃতিক চাকের মধু দেখতে যেমন সুন্দর তার সাথে এইটা খেতেও টক মিষ্টি দুর্দান্ত স্বাদের।<br></p>', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">সুন্দরবনের প্রাকৃতিক চাকের মধু (Sundarbans Natural Honey) এর চাহিদা বরাবরই ভিন্ন। খাঁটি মধু বলতেই সবার আগে এর কথাই মাথায় আসে। প্রাকৃতিক মধু সংগ্রহের জন্য&nbsp;আমাদের মৌয়ালরা সুন্দরবনের গহীনে চলে যায়। বছরের বিভিন্ন সময় সংগ্রহ করা গেলেও ফেব্রুয়ারি থেকে এপ্রিল মাস এর জন্য উৎকৃষ্ট সময়। মৌয়ালরা মধু সংগ্রহের জন্য বিভিন্ন নৌকাতে করে চাকের খোঁজে পাড়ি জমায় বনের গহীনে। সুন্দরবনের প্রাকৃতিক চাকের মধুতে খলিসা ফুলের নির্যাস বেশি থাকে। এই প্রাকৃতিক চাকের মধু অনেক পাতলা এবং সুস্বাদু হয়।</p><h1 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের খাঁটি মধুর বৈশিষ্ট্যঃ</span></h1><ul style=\"list-style-type: disc; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সুন্দরবনের প্রাকৃতিক মধু দেখতে সাধারণত হালকা হলুদ বর্ণের (Light Amber) রঙের হয় (তবে সময়, চাক ও ফুল ভেদে কিছুটা হালকা (Light) বা গাড়ো (Dark) হতে পারে)।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সুন্দরবনের প্রাকৃতিক মধু খেতে খুবই সুস্বাদু, হালকা টকটক মিষ্টি লাগে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কিছু মানুষের কাছে- সুন্দরবনের মধু অনেকটা আখের রসের মতো লাগে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর ঘনত্ব সবসময় পাতলা হবে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর অন্যতম বৈশিষ্ট্য হচ্ছে- একটু ঝাঁকি লাগলেই প্রচুর পরিমাণে ফেনা হয়ে যাবে। তবে শীতকালে ফেনা হওয়ার প্রবণতা কম দেখা যায়।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সুন্দরবনের প্রাকৃতিক চাকের খাটি মধু আমরা কখনই জমতে দেখা যায়নি। হোক সেটা ফ্রিজের ভেতরে বা বাইরে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধুর আরেকটি বড় বৈশিষ্ট্য হচ্ছে- হাতে চাক কাটা পদ্ধতিতে সংগ্রহ করা মধুর উপরে হলুদ রঙের পোলেন জমা হয়। এটাকে অনেকে গাদ জমা বলে থাকেন।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধু খেতে কিছুটা ঝাঁঝালো হয় ।</li></ul><h1 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের মধু সাধারনত দুই প্রকার হয়ে থাকেঃ</span></h1><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">১। সুন্দরবনের প্রাকৃতিক চাকের মধু – এপিস ডরসাটা বা বুনো মৌমাছি সুন্দরবনের গহীনে ফোঁটা খলিশা, গরান, কেওড়া, গেওয়া ইত্যাদি ফুলের থেকে নেকটার সংগ্রহ করে এবং সেই নেকটার চাকে জমা করে। আর মৌয়ালরা সেই প্রাকিতিক চাক থেকেই সেই খাঁটি মধু সংগ্রহ করে। এই মধু তৈরিতে মানুষের কোনরূপ হাতের ছোঁয়া ছাড়াই সম্পূর্ণ প্রাকৃতিক ভাবে তৈরি হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">২। সুন্দরবনের চাষের মধু- এপিস মেলিফেরা ও এপিস ফ্লোরিয়া মৌমাছি&nbsp; যেগুলা&nbsp; থেকে এই চাষের মধু সংগ্রহ কর হয়। এই চাষের মধুতে সুন্দরবনের ফুলের নেকটার ছাড়াও অন্যান্য ফুলের নেকটার থাকে। এই মধুটা চাষের মৌবক্স থেকে সংগ্রহ করা হয় আর নেকটার সংকট থাকলে এই মৌমাছিদের কে চিনি খাওয়ানো হয়।</p><h1 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের সুন্দরবনের মধুটা কেন আলাদাঃ</span></h1><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">আমরা আপনাদেরকে দিচ্ছি সুন্দরবনের প্রাকৃতিক চাকের “র” মধু যা সম্পূর্ণরূপে খাঁটি। কারন এই মধু আমাদের নিজস্ব তত্ত্বাবধানে গহীন বন থেকে আমাদের নিজস্ব মৌয়ালরা এপিস ডরসাটা বা বুনো মৌমাছির প্রাকৃতিক চাক থেকে মধু সংগ্রহ করে। আর এই খাঁটি সুন্দরবনের প্রাকৃতিক চাকের “র” মধুটা আমরা পৌঁছে দিচ্ছি আপনার হাতে ।&nbsp;</p><h1 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের “র” মধুর PH:</span></h1><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">সুন্দরবনের “র” মধুর PH সাধারনত ২.৮ থেকে ৫.৫ হয়ে থাকে বা ৩.১ থেকে ৬.০ হয়ে থাকে। যদি সুন্দরবনের মধুর PH ৬ এর থেকে বেশি হয় তাহলে বুঝতে হবে সেই মধুতে নিশ্চিত ভেজাল দেওয়া আছে।</p>', NULL, '1600', '1400', '1200', 0, NULL, 1000, NULL, '2024-07-16-66966edfedf9a.jpg', 1, 4, 94, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:00:16', '2025-05-30 14:55:31', '1457', NULL),
(755, NULL, 330, 314, '21126813211244', 'কালোজিরা ফুলের মধু | Black Seed Flower Honey', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</span><br></p>', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</p><h2 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; line-height: 1.3; font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধু&nbsp;</span><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">কিভাবে তৈরি করা হয়?</span></h2><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">আমাদের নিজস্ব খামারে পালিত এপিস মেলিফেরা মৌমাছি কালোজিরা ফুল থেকে নেকটার সংগ্রহ করে ফ্রেমে জমা করে যা পরবর্তীতে কালোজিরা ফুলের মধুতে রুপ নেয় এবং এই খাঁটি কালোজিরা ফুলের মধুটাই রিফাইন করে আমরা পৌঁছে দিচ্ছি আপনার হাতে।</p><h2 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; line-height: 1.3; font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধুর উপকারিতা:</span></h2><ul style=\"list-style-type: disc; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কালোজিরা মধু শরীরে তাপ ও শক্তির ভালো উৎস যা শরীরে তাপ ও শক্তির যোগান দেয়।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">হজম&nbsp;প্রকিয়াতে&nbsp;সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">রক্তশূন্যতা রোধে এই মধু কার্যাকারী।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কোষ্ঠকাঠিন্য ও ডায়রিয়া দূর করতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">এই মধু অনিদ্রার ভালো ঔষুধ।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">প্রশান্তিদায়ক পানি হিসাবে এই মধুর শরবত অনেক উপকারী।&nbsp;</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মুখগহ্বরের স্বাস্থ্য রক্ষায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">পাকস্থলীর হাইড্রোক্লোরিক এ্যাসিড ক্ষরন কমিয়ে পাকস্থলীর বিভিন্ন সমস্যা দূর করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">অরুচি,বমিভাব,বুকজ্বালা ইত্যাদি দূর করতে এই মধু সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">পানিশূন্যতা রোধে কার্যকারী।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">সর্দি,কাশি,গলাব্যাথা দূর করতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">দৃষ্টিশক্তি বাড়াতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">রূপচর্চায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">হাড় ও দাঁত গঠনে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">হাঁপানি রোধে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">রক্ত পরিষ্কারক হিসাবে এই মধু উপকারী।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">রো প্রতিরোধশক্তি বাড়াতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">উচ্চ রক্তচাপ কমাতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">হৃদরোগের ঝুকি কমাতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">চর্বি কমাতে সাহায্য করে।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মধুতে বিদ্যামান বিটা ক্যারোটিন থাকে যা আমাদের চুল পড়া রোধে সাহায্য করে।</li></ul><h2 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; line-height: 1.3; font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের&nbsp;</span><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা&nbsp;</span><span style=\"-webkit-box-decoration-break: clone; font-weight: 400;\">মধু কেন নিবেন?</span></h2><ul style=\"list-style-type: disc; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">আমাদের নিজস্ব খামারে নিজস্ব পালিত এপিস মেলিফেরা মৌমাছি দ্বারা নিজ তত্ত্বাবধানে সংগ্রহীত কালোজিরা ফুলের মধু।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">আমাদের কালোজিরা মধু রিফাইন করার ফলে এই মধু ১০০% পানি, ময়লা, মৌমাছির গলিত ডিম, বাচ্চা,পাখনা মুক্ত।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কালোজিরা মধু রিফাইন করার কারণে এইটা ‘র’ মধুর থেকে বেশি দিন সংরক্ষণ করা যায় কিন্তু সর্বোচ্চ ফলাফল পেতে ১-১.৫ বছরের ভেতরেই ব্যবহার করা উত্তম।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">খামার থেকে কালোজিরা মধু সংগ্রহ থেকে শুরু করে প্যাকেজিং পর্যন্ত সম্পূর্ণ নিজস্ব তত্ত্বাবধানে করা হয়।</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কালোজিরা মধুতে যে কোন সমস্যা হলে ১০ দিনের ভেতরে পরিবর্তনযোগ্য ও দশ দিন পর্যন্ত ক্যাশব্যাক গ্যারান্টি।<br></li></ul><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">&nbsp;</p>', NULL, '1400', '1200', '1080', 0, NULL, 998, NULL, '2024-07-16-66966f649001c.jpg', 1, 100, 109, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:02:28', '2025-05-24 10:44:49', '4444422', NULL),
(756, NULL, 330, 314, '532787280156629', 'মিশ্র ফুলের মধু | Mix Flower Honey', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">শীত মৌসুমের শেষ এর দিকে দেশের বিভিন্ন অঞ্চলে কালোজিরা এবং ধনিয়ার চাষ হয়।প্রাকৃতিক ভাবে মধু সংগ্রহের উদ্দেশ্যে মৌয়াল রা ওই সকল অঞ্চলে পাড়ি জমায়। প্রাকৃতিক নিয়মে ধনিয়া এবং কালোজিরার ফুল কিছু দিনের জন্য একই সময়েই ফোটে আর এই সময় এর মধ্যেই মৌমাছি উভয় ফুল থেকেই নেকটার সংগ্রহ করে।সৃষ্টি কর্তা প্রদত্ত নিয়মে মৌমাছি তার অপার পরিশ্রমের মাধ্যমে মধু তৈরি করে চাকে জমা করে।আর উভয় ফুল থেকে সংগ্রহ করা এই মধুই মিশ্র ফুলের মধু নামে পরিচিত।</p>', '<p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</p><h2 style=\"padding: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধু&nbsp;</span><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কিভাবে তৈরি করা হয়?</span></h2><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমাদের নিজস্ব খামারে পালিত এপিস মেলিফেরা মৌমাছি কালোজিরা ফুল থেকে নেকটার সংগ্রহ করে ফ্রেমে জমা করে যা পরবর্তীতে কালোজিরা ফুলের মধুতে রুপ নেয় এবং এই খাঁটি কালোজিরা ফুলের মধুটাই রিফাইন করে আমরা পৌঁছে দিচ্ছি আপনার হাতে।</p><h2 style=\"padding: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধুর উপকারিতা:</span></h2><ul style=\"margin-bottom: 1.3em; list-style-type: disc; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু শরীরে তাপ ও শক্তির ভালো উৎস যা শরীরে তাপ ও শক্তির যোগান দেয়।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হজম&nbsp;প্রকিয়াতে&nbsp;সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্তশূন্যতা রোধে এই মধু কার্যাকারী।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কোষ্ঠকাঠিন্য ও ডায়রিয়া দূর করতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই মধু অনিদ্রার ভালো ঔষুধ।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">প্রশান্তিদায়ক পানি হিসাবে এই মধুর শরবত অনেক উপকারী।&nbsp;</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মুখগহ্বরের স্বাস্থ্য রক্ষায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পাকস্থলীর হাইড্রোক্লোরিক এ্যাসিড ক্ষরন কমিয়ে পাকস্থলীর বিভিন্ন সমস্যা দূর করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">অরুচি,বমিভাব,বুকজ্বালা ইত্যাদি দূর করতে এই মধু সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পানিশূন্যতা রোধে কার্যকারী।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সর্দি,কাশি,গলাব্যাথা দূর করতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">দৃষ্টিশক্তি বাড়াতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রূপচর্চায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাড় ও দাঁত গঠনে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাঁপানি রোধে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্ত পরিষ্কারক হিসাবে এই মধু উপকারী।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রো প্রতিরোধশক্তি বাড়াতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">উচ্চ রক্তচাপ কমাতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হৃদরোগের ঝুকি কমাতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">চর্বি কমাতে সাহায্য করে।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মধুতে বিদ্যামান বিটা ক্যারোটিন থাকে যা আমাদের চুল পড়া রোধে সাহায্য করে।</li></ul><h2 style=\"padding: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের&nbsp;</span><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা&nbsp;</span><span style=\"padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">মধু কেন নিবেন?</span></h2><ul style=\"margin-bottom: 1.3em; list-style-type: disc; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের নিজস্ব খামারে নিজস্ব পালিত এপিস মেলিফেরা মৌমাছি দ্বারা নিজ তত্ত্বাবধানে সংগ্রহীত কালোজিরা ফুলের মধু।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের কালোজিরা মধু রিফাইন করার ফলে এই মধু ১০০% পানি, ময়লা, মৌমাছির গলিত ডিম, বাচ্চা,পাখনা মুক্ত।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু রিফাইন করার কারণে এইটা ‘র’ মধুর থেকে বেশি দিন সংরক্ষণ করা যায় কিন্তু সর্বোচ্চ ফলাফল পেতে ১-১.৫ বছরের ভেতরেই ব্যবহার করা উত্তম।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">খামার থেকে কালোজিরা মধু সংগ্রহ থেকে শুরু করে প্যাকেজিং পর্যন্ত সম্পূর্ণ নিজস্ব তত্ত্বাবধানে করা হয়।</li><li style=\"padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধুতে যে কোন সমস্যা হলে ১০ দিনের ভেতরে পরিবর্তনযোগ্য ও দশ দিন পর্যন্ত ক্যাশব্যাক গ্যারান্টি।</li></ul>', NULL, '1200', '650', '140', 0, NULL, 999, NULL, '2024-07-16-669674180f59e.jpg', 1, 10, 92, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:22:32', '2025-05-10 00:12:57', '4455544', NULL),
(757, NULL, 330, 314, '302438978560761', 'লিচু ফুলের মধু | Litchi Flower Honey', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</span><br></p>', '<h3 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.25em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\">মধু খাওয়ার উপকারিতাঃ</h3><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;শক্তি প্রদায়ী :&nbsp;</span>মধু ভালো শক্তি প্রদায়ী খাদ্য। তাপ ও শক্তির ভালো উৎস। মধু দেহে তাপ ও শক্তি জুগিয়ে শরীরকে সুস্থ রাখে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হজমে সহায়তা:&nbsp;</span>এতে যে শর্করা থাকে, তা সহজেই হজম হয়। কারণ, এতে যে ডেক্সট্রিন থাকে, তা সরাসরি রক্তে প্রবেশ করে এবং তাৎক্ষণিকভাবে ক্রিয়া করে। পেটরোগা মানুষের জন্য মধু বিশেষ উপকারী।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;কোষ্ঠকাঠিন্য দূর করে:&nbsp;</span>মধুতে রয়েছে ভিটামিন বি-কমপ্লেক্স। এটি ডায়রিয়া ও কোষ্ঠকাঠিন্য দূর করে। ১ চা–চামচ খাঁটি মধু ভোরবেলা পান করলে কোষ্ঠবদ্ধতা এবং অম্লত্ব দূর হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্তশূন্যতায়:&nbsp;</span>মধু রক্তের হিমোগ্লোবিন গঠনে সহায়তা করে বলে এটি রক্তশূন্যতায় বেশ ফলদায়ক। কারণ, এতে থাকে খুব বেশি পরিমাণে কপার, লৌহ ও ম্যাঙ্গানিজ।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে:&nbsp;</span>বলা হয়, ফুসফুসের যাবতীয় রোগে মধু উপকারী। যদি একজন অ্যাজমা (শ্বাসকষ্ট) রোগীর নাকের কাছে মধু ধরে শ্বাস টেনে নেওয়া হয়, তাহলে সে স্বাভাবিক এবং গভীরভাবে শ্বাস টেনে নিতে পারবে। অনেকে মনে করে, এক বছরের পুরোনো মধু শ্বাসকষ্টের রোগীদের জন্য বেশ ভালো।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;অনিদ্রায়:&nbsp;</span>মধু অনিদ্রার ভালো ওষুধ। রাতে শোয়ার আগে এক গ্লাস পানির সঙ্গে দুই চা–চামচ মধু মিশিয়ে খেলে এটি গভীর ঘুম ও সম্মোহনের কাজ করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;যৌন দুর্বলতায়:&nbsp;</span>পুরুষদের মধ্যে যাঁদের যৌন দুর্বলতা রয়েছে, তাঁরা যদি প্রতিদিন মধু ও ছোলা মিশিয়ে খান, তাহলে বেশ উপকার পাবেন।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;প্রশান্তিদায়ক পানীয়:&nbsp;</span>হালকা গরম দুধের সঙ্গে মিশ্রিত মধু একটি প্রশান্তিদায়ক পানীয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;মুখগহ্বরের স্বাস্থ্য রক্ষায়:&nbsp;</span>মুখগহ্বরের স্বাস্থ্য রক্ষায় মধু ব্যবহৃত হয়। এটা দাঁতের ওপর ব্যবহার করলে দাঁতের ক্ষয়রোধ করে। দাঁতে পাথর জমাট বাঁধা রোধ করে এবং দাঁত পড়ে যাওয়াকে বিলম্বিত করে। মধু রক্তনালিকে সম্প্রসারিত করে দাঁতের মাড়ির স্বাস্থ্য রক্ষা করে। যদি মুখের ঘায়ের জন্য গর্ত হয়, এটি সেই গর্ত ভরাট করতে সাহায্য করে এবং সেখানে পুঁজ জমতে দেয় না। মধু মিশ্রিত পানি দিয়ে গড়গড়া করলে মাড়ির প্রদাহ দূর হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;<span style=\"font-weight: bolder;\">পাকস্থলীর সুস্থতায়:&nbsp;</span>মধু পাকস্থলীর কাজকে জোরালো করে এবং হজমের গোলমাল দূর করে। এর ব্যবহার হাইড্রোক্রলিক অ্যাসিড ক্ষরণ কমিয়ে দেয় বলে অরুচি, বমিভাব, বুকজ্বালা এগুলো দূর করা সম্ভব হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;তাপ উৎপাদনে:&nbsp;</span>শীতের ঠান্ডায় এটি শরীরকে গরম রাখে। এক অথবা দুই চা–চামচ মধু এক কাপ ফুটানো পানির সঙ্গে খেলে শরীর ঝরঝরে ও তাজা থাকে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;পানিশূন্যতায়:&nbsp;</span>ডায়রিয়া হলে এক লিটার পানিতে ৫০ মিলিলিটার মধু মিশিয়ে খেলে দেহে পানিশূন্যতা রোধ করা যায়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;দৃষ্টিশক্তি বাড়াতে:</span>&nbsp;চোখের জন্য ভালো। গাজরের রসের সঙ্গে মধু মিশিয়ে খেলে দৃষ্টিশক্তি বাড়ে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রূপচর্চায়:&nbsp;</span>মেয়েদের রূপচর্চার ক্ষেত্রে মাস্ক হিসেবে মধুর ব্যবহার বেশ জনপ্রিয়। মুখের ত্বকের মসৃণতা বৃদ্ধির জন্যও মধু ব্যবহৃত হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;ওজন কমাতে:&nbsp;</span>মধুতে নেই কোনো চর্বি। পেট পরিষ্কার করে, চর্বি কমায়, ফলে ওজন কমে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হজমে সহায়তা:</span>&nbsp;মধু প্রাকৃতিকভাবেই মিষ্টি। তাই মধু সহজে হজম হয় এবং হজমে সহায়তা করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;গলার স্বর:&nbsp;</span>গলার স্বর সুন্দর ও মধুর করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হাড় ও দাঁত গঠনে:&nbsp;</span>মধুর গুরুত্বপূর্ণ উপকরণ ক্যালসিয়াম। ক্যালসিয়াম দাঁত, হাড়, চুলের গোড়া শক্ত রাখে, নখের ঔজ্জ্বল্য বৃদ্ধি করে, ভঙ্গুরতা রোধ করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করতে:&nbsp;</span>এতে রয়েছে ভিটামিন বি-কমপ্লেক্স, যা রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;আমাশয় ও পেটের পীড়া নিরাময়ে:&nbsp;</span>পুরোনো আমাশয় এবং পেটের পীড়া নিরাময়সহ নানাবিধ জটিল রোগের উপকার করে থাকে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হাঁপানি রোধে:</span>&nbsp;আধা গ্রাম গুঁড়ো করা গোলমরিচের সঙ্গে সমপরিমাণ মধু এবং আদা মেশান। দিনে অন্তত তিনবার এই মিশ্রণ খান। এটা হাঁপানি রোধে সহায়তা করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\"></span>&nbsp;<span style=\"font-weight: bolder;\">উচ্চ রক্তচাপ কমায়:</span>&nbsp;দুই চামচ মধুর সঙ্গে এক চামচ রসুনের রস মেশান। সকাল-সন্ধ্যা দুইবার এই মিশ্রণ খান। প্রতিনিয়ত এটার ব্যবহার উচ্চ রক্তচাপ কমায়। প্রতিদিন সকালে খাওয়ার এক ঘণ্টা আগে খাওয়া উচিত।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্ত পরিষ্কারক:</span>&nbsp;এক গ্লাস গরম পানির সঙ্গে এক বা দুই চামচ মধু ও এক চামচ লেবুর রস মেশান। পেট খালি করার আগে প্রতিদিন এই মিশ্রণ খান। এটা রক্ত পরিষ্কার করতে সাহায্য করে। তা ছাড়া রক্তনালিগুলোও পরিষ্কার করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্ত উৎপাদনে সহায়তা:</span>&nbsp;রক্ত উৎপাদনকারী উপকরণ আয়রন রয়েছে মধুতে। আয়রন রক্তের উপাদানকে (আরবিসি, ডব্লিউবিসি, প্লাটিলেট) অধিক কার্যকর ও শক্তিশালী করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হৃদ্‌রোগে:</span>&nbsp;এক চামচ মৌরি গুঁড়োর সঙ্গে এক বা দুই চামচ মধুর মিশ্রণ হৃদ্‌রোগের টনিক হিসেবে কাজ করে। এটা হৃৎপেশিকে সবল করে এবং এর কার্যক্ষমতা বৃদ্ধি করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রোগ প্রতিরোধশক্তি বাড়ায়:</span>&nbsp;মধু শরীরের রোগ প্রতিরোধশক্তি বাড়ায় এবং শরীরের ভেতরে এবং বাইরে যেকোনো ব্যাকটেরিয়ার আক্রমণ প্রতিহত করার ক্ষমতাও জোগান দেয়। মধুতে আছে একধরনের ব্যাকটেরিয়া প্রতিরোধকারী উপাদান, যা অনাকাঙ্ক্ষিত সংক্রমণ থেকে দেহকে রক্ষা করে।</p>', NULL, '1300', '1000', '100', 0, NULL, 998, NULL, '2024-07-16-6696757b98536.jpg', 1, 100, 104, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:28:27', '2025-05-31 19:01:51', '125896', NULL);
INSERT INTO `products` (`id`, `author_id`, `user_id`, `brand_id`, `slug`, `title`, `short_description`, `full_description`, `spec`, `regular_price`, `whole_price`, `buying_price`, `dis_type`, `discount_price`, `quantity`, `unit`, `image`, `shipping_charge`, `point`, `reach`, `status`, `is_aproved`, `type`, `download_able`, `download_limit`, `download_expire`, `sheba`, `book`, `isbn`, `edition`, `pages`, `country`, `language`, `book_file`, `refer`, `video`, `video_thumb`, `yvideo`, `created_at`, `updated_at`, `sku`, `prdct_extra_msg`) VALUES
(758, NULL, 330, 314, '553258137106521', 'লিচু ফুলের মধু | Litchi Flower Honey', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</span><br></p>', '<h3 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; font-size: 1.25em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\">মধু খাওয়ার উপকারিতাঃ</h3><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;শক্তি প্রদায়ী :&nbsp;</span>মধু ভালো শক্তি প্রদায়ী খাদ্য। তাপ ও শক্তির ভালো উৎস। মধু দেহে তাপ ও শক্তি জুগিয়ে শরীরকে সুস্থ রাখে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হজমে সহায়তা:&nbsp;</span>এতে যে শর্করা থাকে, তা সহজেই হজম হয়। কারণ, এতে যে ডেক্সট্রিন থাকে, তা সরাসরি রক্তে প্রবেশ করে এবং তাৎক্ষণিকভাবে ক্রিয়া করে। পেটরোগা মানুষের জন্য মধু বিশেষ উপকারী।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;কোষ্ঠকাঠিন্য দূর করে:&nbsp;</span>মধুতে রয়েছে ভিটামিন বি-কমপ্লেক্স। এটি ডায়রিয়া ও কোষ্ঠকাঠিন্য দূর করে। ১ চা–চামচ খাঁটি মধু ভোরবেলা পান করলে কোষ্ঠবদ্ধতা এবং অম্লত্ব দূর হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্তশূন্যতায়:&nbsp;</span>মধু রক্তের হিমোগ্লোবিন গঠনে সহায়তা করে বলে এটি রক্তশূন্যতায় বেশ ফলদায়ক। কারণ, এতে থাকে খুব বেশি পরিমাণে কপার, লৌহ ও ম্যাঙ্গানিজ।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে:&nbsp;</span>বলা হয়, ফুসফুসের যাবতীয় রোগে মধু উপকারী। যদি একজন অ্যাজমা (শ্বাসকষ্ট) রোগীর নাকের কাছে মধু ধরে শ্বাস টেনে নেওয়া হয়, তাহলে সে স্বাভাবিক এবং গভীরভাবে শ্বাস টেনে নিতে পারবে। অনেকে মনে করে, এক বছরের পুরোনো মধু শ্বাসকষ্টের রোগীদের জন্য বেশ ভালো।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;অনিদ্রায়:&nbsp;</span>মধু অনিদ্রার ভালো ওষুধ। রাতে শোয়ার আগে এক গ্লাস পানির সঙ্গে দুই চা–চামচ মধু মিশিয়ে খেলে এটি গভীর ঘুম ও সম্মোহনের কাজ করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;যৌন দুর্বলতায়:&nbsp;</span>পুরুষদের মধ্যে যাঁদের যৌন দুর্বলতা রয়েছে, তাঁরা যদি প্রতিদিন মধু ও ছোলা মিশিয়ে খান, তাহলে বেশ উপকার পাবেন।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;প্রশান্তিদায়ক পানীয়:&nbsp;</span>হালকা গরম দুধের সঙ্গে মিশ্রিত মধু একটি প্রশান্তিদায়ক পানীয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;মুখগহ্বরের স্বাস্থ্য রক্ষায়:&nbsp;</span>মুখগহ্বরের স্বাস্থ্য রক্ষায় মধু ব্যবহৃত হয়। এটা দাঁতের ওপর ব্যবহার করলে দাঁতের ক্ষয়রোধ করে। দাঁতে পাথর জমাট বাঁধা রোধ করে এবং দাঁত পড়ে যাওয়াকে বিলম্বিত করে। মধু রক্তনালিকে সম্প্রসারিত করে দাঁতের মাড়ির স্বাস্থ্য রক্ষা করে। যদি মুখের ঘায়ের জন্য গর্ত হয়, এটি সেই গর্ত ভরাট করতে সাহায্য করে এবং সেখানে পুঁজ জমতে দেয় না। মধু মিশ্রিত পানি দিয়ে গড়গড়া করলে মাড়ির প্রদাহ দূর হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;<span style=\"font-weight: bolder;\">পাকস্থলীর সুস্থতায়:&nbsp;</span>মধু পাকস্থলীর কাজকে জোরালো করে এবং হজমের গোলমাল দূর করে। এর ব্যবহার হাইড্রোক্রলিক অ্যাসিড ক্ষরণ কমিয়ে দেয় বলে অরুচি, বমিভাব, বুকজ্বালা এগুলো দূর করা সম্ভব হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;তাপ উৎপাদনে:&nbsp;</span>শীতের ঠান্ডায় এটি শরীরকে গরম রাখে। এক অথবা দুই চা–চামচ মধু এক কাপ ফুটানো পানির সঙ্গে খেলে শরীর ঝরঝরে ও তাজা থাকে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;পানিশূন্যতায়:&nbsp;</span>ডায়রিয়া হলে এক লিটার পানিতে ৫০ মিলিলিটার মধু মিশিয়ে খেলে দেহে পানিশূন্যতা রোধ করা যায়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;দৃষ্টিশক্তি বাড়াতে:</span>&nbsp;চোখের জন্য ভালো। গাজরের রসের সঙ্গে মধু মিশিয়ে খেলে দৃষ্টিশক্তি বাড়ে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রূপচর্চায়:&nbsp;</span>মেয়েদের রূপচর্চার ক্ষেত্রে মাস্ক হিসেবে মধুর ব্যবহার বেশ জনপ্রিয়। মুখের ত্বকের মসৃণতা বৃদ্ধির জন্যও মধু ব্যবহৃত হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;ওজন কমাতে:&nbsp;</span>মধুতে নেই কোনো চর্বি। পেট পরিষ্কার করে, চর্বি কমায়, ফলে ওজন কমে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হজমে সহায়তা:</span>&nbsp;মধু প্রাকৃতিকভাবেই মিষ্টি। তাই মধু সহজে হজম হয় এবং হজমে সহায়তা করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;গলার স্বর:&nbsp;</span>গলার স্বর সুন্দর ও মধুর করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হাড় ও দাঁত গঠনে:&nbsp;</span>মধুর গুরুত্বপূর্ণ উপকরণ ক্যালসিয়াম। ক্যালসিয়াম দাঁত, হাড়, চুলের গোড়া শক্ত রাখে, নখের ঔজ্জ্বল্য বৃদ্ধি করে, ভঙ্গুরতা রোধ করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করতে:&nbsp;</span>এতে রয়েছে ভিটামিন বি-কমপ্লেক্স, যা রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;আমাশয় ও পেটের পীড়া নিরাময়ে:&nbsp;</span>পুরোনো আমাশয় এবং পেটের পীড়া নিরাময়সহ নানাবিধ জটিল রোগের উপকার করে থাকে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হাঁপানি রোধে:</span>&nbsp;আধা গ্রাম গুঁড়ো করা গোলমরিচের সঙ্গে সমপরিমাণ মধু এবং আদা মেশান। দিনে অন্তত তিনবার এই মিশ্রণ খান। এটা হাঁপানি রোধে সহায়তা করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\"></span>&nbsp;<span style=\"font-weight: bolder;\">উচ্চ রক্তচাপ কমায়:</span>&nbsp;দুই চামচ মধুর সঙ্গে এক চামচ রসুনের রস মেশান। সকাল-সন্ধ্যা দুইবার এই মিশ্রণ খান। প্রতিনিয়ত এটার ব্যবহার উচ্চ রক্তচাপ কমায়। প্রতিদিন সকালে খাওয়ার এক ঘণ্টা আগে খাওয়া উচিত।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্ত পরিষ্কারক:</span>&nbsp;এক গ্লাস গরম পানির সঙ্গে এক বা দুই চামচ মধু ও এক চামচ লেবুর রস মেশান। পেট খালি করার আগে প্রতিদিন এই মিশ্রণ খান। এটা রক্ত পরিষ্কার করতে সাহায্য করে। তা ছাড়া রক্তনালিগুলোও পরিষ্কার করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রক্ত উৎপাদনে সহায়তা:</span>&nbsp;রক্ত উৎপাদনকারী উপকরণ আয়রন রয়েছে মধুতে। আয়রন রক্তের উপাদানকে (আরবিসি, ডব্লিউবিসি, প্লাটিলেট) অধিক কার্যকর ও শক্তিশালী করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;হৃদ্‌রোগে:</span>&nbsp;এক চামচ মৌরি গুঁড়োর সঙ্গে এক বা দুই চামচ মধুর মিশ্রণ হৃদ্‌রোগের টনিক হিসেবে কাজ করে। এটা হৃৎপেশিকে সবল করে এবং এর কার্যক্ষমতা বৃদ্ধি করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\"><img decoding=\"async\" class=\"emoji\" role=\"img\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" title=\"লিচু ফুলের মধু | Litchi Flower Honey\" style=\"opacity: 1; transition: opacity 1s ease 0s; border-width: initial !important; border-color: initial !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;রোগ প্রতিরোধশক্তি বাড়ায়:</span>&nbsp;মধু শরীরের রোগ প্রতিরোধশক্তি বাড়ায় এবং শরীরের ভেতরে এবং বাইরে যেকোনো ব্যাকটেরিয়ার আক্রমণ প্রতিহত করার ক্ষমতাও জোগান দেয়। মধুতে আছে একধরনের ব্যাকটেরিয়া প্রতিরোধকারী উপাদান, যা অনাকাঙ্ক্ষিত সংক্রমণ থেকে দেহকে রক্ষা করে।</p>', NULL, '1300', '1000', '100', 0, NULL, 1000, NULL, '2024-07-16-6696757b98536.jpg', 1, 100, 96, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:28:27', '2025-05-14 12:39:09', '125896', NULL),
(759, NULL, 330, 312, '598954979462660', 'শাহী গরম মশলা | Shahi Garam Masala Powder', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">আপনি চিটাগাং এর মেজবান থেকে শুরু করে পুরান ঢাকার কাচ্চি কিংবা গরু মাংসের কালা ভুনা থেকে শুরু করে মাংসের ঝোল সব কিছুই একটা মশলা দিয়ে রান্না করতে পারবেন।&nbsp;</span><br></p>', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">শাহী গরম মশলা দিয়ে আপনি চিটাগাং এর মেজবান থেকে শুরু করে পুরান ঢাকার কাচ্চি কিংবা গরু মাংসের কালা ভুনা থেকে শুরু করে মাংসের ঝোল সব কিছুই একটা মশলা দিয়ে রান্না করতে পারবেন। আর এই প্রথম বাংলাদেশে স্পেশাল শাহী গরম মশলা নিয়ে এসেছি। যা আমরা দক্ষ বাবুর্চি ও মাস্টার শেফ সাথে বসে অনেক গবেষণা পরে মসলার সঠিক পরিমাপে আমরা স্পেশাল শাহী গরম মশলা তৈরি করতে পেরেছি।</p><h2 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; line-height: 1.3; font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"font-weight: bolder;\">শাহী গরম মশলা উপকরণ সমূহঃ&nbsp;</span></h2><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">স্টার এনিস, জয়ত্রী, শাহী এলাচ, দারুচিনি, সবুজ এলাচ, লবঙ্গ, কাবাব চিনি, শাহী সাদা মরিচ, শাহা জিরা, জয়ফল, তেজপাতা, ধনিয়া, জিরা, নাইজেলা, ক্যারম বীজ ইত্যাদী সহ বেশ কিছু সিক্রেট মশলা উপকরন ব্যবহার করা হয়েছে।</p><h2 style=\"color: rgb(0, 0, 0); margin-bottom: 0.5em; text-rendering: optimizespeed; width: 915px; line-height: 1.3; font-size: 1.6em; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700;\"><span style=\"font-weight: bolder;\">শাহী গরম মশলা</span><span style=\"font-weight: bolder;\">&nbsp;দিয়ে আপনি রান্না করতে পারবেনঃ</span></h2><ul style=\"list-style-type: disc; margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মাংসের রেজালা</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মাংস ভুনা</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মাংস কালাভুনা</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মেজবান (চাইলে আরও কিছুটা মিষ্টি জিরা দিতে পারেন পছন্দ অনুযায়ী)</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">কাচ্চি (বাদাম,আলুবোখারা,ঘি,গুঁড়া দুধ,টকদই,পেয়াজ ব্রেস্তা এবং চাইলে কেওড়া জল ইত্যাদি এড করতে হবে)</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মুরগির রোস্ট (চিনি,গুঁড়াদুধ,ঘি,টকদই,পেয়াজ ব্রেস্তা,টমেটো সস, কেওড়া জল+ গোলাপ জল ইত্যাদি এড করতে হবে)</li><li style=\"margin-bottom: 0.6em; margin-left: 1.3em;\">মাংস রিলেটেড যে কোন রান্না</li></ul>', NULL, '800', '650', '500', 0, NULL, 998, NULL, '2024-07-16-669676934e59d.jpg', 1, 100, 117, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:33:07', '2025-05-30 14:16:01', '45892', NULL),
(760, NULL, 330, 314, '167233538195717', 'মরিচের গুঁড়া- ঝাল | Chilli Powder (Spice)', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">মরিচের গুঁড়া:</span>&nbsp;পরিপক্ক মরিচ শুকানোর পর বোটা ছাড়িয়ে মরিচের গুঁড়া তৈরি করা হয়।</p>', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">মরিচের গুঁড়া:</span>&nbsp;পরিপক্ক মরিচ শুকানোর পর বোটা ছাড়িয়ে মরিচের গুঁড়া তৈরি করা হয়।</p>', NULL, '1400', '1200', '100', 0, NULL, 100000, NULL, '2024-07-16-6696793eb2bc8.jpg', 1, 100, 113, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:44:30', '2025-05-28 08:07:08', '44444224', NULL),
(761, NULL, 330, 315, '590696078933680', 'হিমালয়ান পিংক সল্ট গুঁড়া | Himalayan Pink Salt Powder', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</span><br></p>', '<p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">প্রধানত হিমালয়ান সল্ট সোডিয়াম ক্লোরাইড নিয়ে গঠিত। তবে এতে সালফেট, ম্যাগনেসিয়াম, ক্যালসিয়াম, পটাসিয়াম, ফসফরাস, কপার, জিংক, সেলেনিয়াম, আয়োডিন এবং ফ্লোরাইডসহ প্রায় ৮০টির মত উপাদান থাকে। এই লবণের খনিজ উপাদানগুলো আঠালো গঠনে থাকে এবং মানুষের শরীরের কোষে খুব সহজেই শোষিত হতে পারে। খনিজ লবণে সমৃদ্ধ হওয়ায় এই লবণ শরীর ও মনের নিরাময়ে বিস্ময়কর ভাবে কাজ করে। চলুন হিমালয়ান সল্টের স্বাস্থ্য উপকারিতা সম্পর্কে জেনে নিই।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">১। শরীরের তরলের ভারসাম্য রক্ষা করে</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান পিংক সল্টে বিভিন্ন ধরণের ইলেক্ট্রোলাইট থাকে যা শরীরের আর্দ্রতা নিয়ন্ত্রণ করে। শরীরের কোষগুলোর কাজ সঠিকভাবে সম্পন্ন হওয়ার জন্য শরীরের আর্দ্রতা বজায় থাকা অত্যন্ত প্রয়োজনীয়। এই লবণে উপস্থিত প্রধান ইলেক্ট্রোলাইটগুলো হচ্ছে সোডিয়াম, পটাসিয়াম, ক্যালসিয়াম, ম্যাগনেসিয়াম এবং ক্লোরাইড। এই ইলেক্ট্রোলাইটগুলো পানির চেয়েও দ্রুত শরীরে শোষিত হয়। একটি কাঁচের জারে ১ ইঞ্চি পরিমাণ হিমালয়ান ক্রিস্টাল সল্ট নিন। এর মধ্যে ২-৩ ইঞ্চি পরিমাণ বিশুদ্ধ পানি দিয়ে ঢেকে রাখুন সারারাত। সকালে এই দ্রবণটি থেকে ১ চা চামচ দ্রবণ নিয়ে ১ গ্লাস বিশুদ্ধ পানিতে মিশিয়ে পান করুন। তবে এই দ্রবণটি তৈরি করার সময় ধাতব ঢাকনা বা চামচ ব্যবহার করবেন না।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">২। শরীরকে বিষমুক্ত হতে সাহায্য করে</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট গোসলের পানিতে ব্যবহার করলে শরীরের কোষগুলো পুনরুজ্জীবিত ও বিষমুক্ত হয়। এই লবণের খনিজ উপাদানগুলো পানিতে স্থানান্তরিত হয়। তাই যখন এই পানি দিয়ে গোসল করা হয় তখন শরীরের কোষ ও রক্তস্রোত থেকে বিষাক্ত পদার্থ বাহির হয়ে যায়।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">৩। পরিপাক নালীকে পরিষ্কার করে</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">প্রাকৃতিকভাবে পরিপাক নালীকে পরিষ্কার হতে সাহায্য করে পিংক সল্ট। এটি জোলাপ হিসেবে কাজ করে এবং পরিপাক তন্ত্রের জমে থাকা টক্সিনকে বর্জ্য পদার্থ হিসেবে বাহির হয়ে যাওয়ার জন্য সাহায্য করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">৪। শরীরের pH এর ভারসাম্য রক্ষা করে</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট শরীরের ক্ষারীয় অবস্থা বজায় থাকতে সাহায্য করে। এটি দেহের তরলের হাইড্রোজেন আয়নের মাত্রা নিয়ন্ত্রণ করে। সীসা, মার্কারি ও আর্সেনিকের মত ভারী ধাতু শরীর থেকে বাহির করে দিতে সাহায্য করে।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\"><span style=\"font-weight: bolder;\">৫। শ্বাসতন্ত্রের রোগ থেকে মুক্তি দেয়</span></p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">সাইনুসাইটিস, অ্যাজমা, ব্রংকাইটিস বা অ্যালার্জি থেকে নিরাময়ে সাহায্য করে হিমালয়ান সল্ট। শ্বসনতন্ত্রকে পরিষ্কার হতে ও ক্ষতিকর পদার্থ বাহির হয়ে যেতে সাহায্য করে। এই লবণের অ্যান্টি ইনফ্লামেটরি উপাদান অতিরিক্ত মিউকাসকে নরম ও আলগা হতে সাহায্য করে এবং মিউকোসিলিয়ারি পরিবহণের গতি বৃদ্ধিতে সাহায্য করে। এই লবণের উপাদানগুলো ফুসফুসের গভীরে প্রবেশ করে ক্ষতিগ্রস্থ টিস্যুকে নিরাময়ে সাহায্য করে। গরম পানিতে পিংক সল্ট দিয়ে এর ভাপ নিন।</p><p style=\"margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">এছাড়াও হিমালয়ান সল্ট দাঁতের স্বাস্থ্যের উন্নতিতে সাহায্য করে, ব্লাড সুগার স্বাভাবিক রাখতে সাহায্য করে, পেশীর সংকোচন প্রতিরোধ করে, ত্বকের প্রদাহ কমতে সাহায্য করে এবং ভালো ঘুম হতে সাহায্য করে।</p>', NULL, '140', '120', '100', 0, NULL, 992, NULL, '2024-07-16-669679b4651ba.jpg', 1, 100, 130, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:46:28', '2025-05-26 12:07:43', '1258964', NULL),
(762, NULL, 330, 314, '64701358283483', 'হলুদের গুঁড়া | Turmeric Powder', '<p><div class=\"price-wrapper\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><h1 class=\"product-title product_title entry-title\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); margin-bottom: 0.5em; margin-top: 0px; text-rendering: optimizespeed; width: 473.5px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">হলুদের গুঁড়া | Turmeric Powder</h1>', '<p><div class=\"price-wrapper\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><h1 class=\"product-title product_title entry-title\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); margin-bottom: 0.5em; margin-top: 0px; text-rendering: optimizespeed; width: 473.5px; font-size: 1.7em; line-height: 1.3; font-family: &quot;Hind Siliguri&quot;, sans-serif; font-weight: 700; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">হলুদের গুঁড়া | Turmeric Powder</h1>', NULL, '140', '120', '60', 0, NULL, 995, NULL, '2024-07-16-66967a44c352b.jpg', 1, 100, 128, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:48:53', '2025-05-30 22:05:56', '12589647', NULL),
(763, NULL, 330, 313, '727743771013033', 'ধনিয়ার গুঁড়া | Coriander Powder', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</span><br></p>', '<p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">প্রধানত হিমালয়ান সল্ট সোডিয়াম ক্লোরাইড নিয়ে গঠিত। তবে এতে সালফেট, ম্যাগনেসিয়াম, ক্যালসিয়াম, পটাসিয়াম, ফসফরাস, কপার, জিংক, সেলেনিয়াম, আয়োডিন এবং ফ্লোরাইডসহ প্রায় ৮০টির মত উপাদান থাকে। এই লবণের খনিজ উপাদানগুলো আঠালো গঠনে থাকে এবং মানুষের শরীরের কোষে খুব সহজেই শোষিত হতে পারে। খনিজ লবণে সমৃদ্ধ হওয়ায় এই লবণ শরীর ও মনের নিরাময়ে বিস্ময়কর ভাবে কাজ করে। চলুন হিমালয়ান সল্টের স্বাস্থ্য উপকারিতা সম্পর্কে জেনে নিই।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">১। শরীরের তরলের ভারসাম্য রক্ষা করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান পিংক সল্টে বিভিন্ন ধরণের ইলেক্ট্রোলাইট থাকে যা শরীরের আর্দ্রতা নিয়ন্ত্রণ করে। শরীরের কোষগুলোর কাজ সঠিকভাবে সম্পন্ন হওয়ার জন্য শরীরের আর্দ্রতা বজায় থাকা অত্যন্ত প্রয়োজনীয়। এই লবণে উপস্থিত প্রধান ইলেক্ট্রোলাইটগুলো হচ্ছে সোডিয়াম, পটাসিয়াম, ক্যালসিয়াম, ম্যাগনেসিয়াম এবং ক্লোরাইড। এই ইলেক্ট্রোলাইটগুলো পানির চেয়েও দ্রুত শরীরে শোষিত হয়। একটি কাঁচের জারে ১ ইঞ্চি পরিমাণ হিমালয়ান ক্রিস্টাল সল্ট নিন। এর মধ্যে ২-৩ ইঞ্চি পরিমাণ বিশুদ্ধ পানি দিয়ে ঢেকে রাখুন সারারাত। সকালে এই দ্রবণটি থেকে ১ চা চামচ দ্রবণ নিয়ে ১ গ্লাস বিশুদ্ধ পানিতে মিশিয়ে পান করুন। তবে এই দ্রবণটি তৈরি করার সময় ধাতব ঢাকনা বা চামচ ব্যবহার করবেন না।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">২। শরীরকে বিষমুক্ত হতে সাহায্য করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট গোসলের পানিতে ব্যবহার করলে শরীরের কোষগুলো পুনরুজ্জীবিত ও বিষমুক্ত হয়। এই লবণের খনিজ উপাদানগুলো পানিতে স্থানান্তরিত হয়। তাই যখন এই পানি দিয়ে গোসল করা হয় তখন শরীরের কোষ ও রক্তস্রোত থেকে বিষাক্ত পদার্থ বাহির হয়ে যায়।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৩। পরিপাক নালীকে পরিষ্কার করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">প্রাকৃতিকভাবে পরিপাক নালীকে পরিষ্কার হতে সাহায্য করে পিংক সল্ট। এটি জোলাপ হিসেবে কাজ করে এবং পরিপাক তন্ত্রের জমে থাকা টক্সিনকে বর্জ্য পদার্থ হিসেবে বাহির হয়ে যাওয়ার জন্য সাহায্য করে।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৪। শরীরের pH এর ভারসাম্য রক্ষা করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট শরীরের ক্ষারীয় অবস্থা বজায় থাকতে সাহায্য করে। এটি দেহের তরলের হাইড্রোজেন আয়নের মাত্রা নিয়ন্ত্রণ করে। সীসা, মার্কারি ও আর্সেনিকের মত ভারী ধাতু শরীর থেকে বাহির করে দিতে সাহায্য করে।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৫। শ্বাসতন্ত্রের রোগ থেকে মুক্তি দেয়</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সাইনুসাইটিস, অ্যাজমা, ব্রংকাইটিস বা অ্যালার্জি থেকে নিরাময়ে সাহায্য করে হিমালয়ান সল্ট। শ্বসনতন্ত্রকে পরিষ্কার হতে ও ক্ষতিকর পদার্থ বাহির হয়ে যেতে সাহায্য করে। এই লবণের অ্যান্টি ইনফ্লামেটরি উপাদান অতিরিক্ত মিউকাসকে নরম ও আলগা হতে সাহায্য করে এবং মিউকোসিলিয়ারি পরিবহণের গতি বৃদ্ধিতে সাহায্য করে। এই লবণের উপাদানগুলো ফুসফুসের গভীরে প্রবেশ করে ক্ষতিগ্রস্থ টিস্যুকে নিরাময়ে সাহায্য করে। গরম পানিতে পিংক সল্ট দিয়ে এর ভাপ নিন।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">এছাড়াও হিমালয়ান সল্ট দাঁতের স্বাস্থ্যের উন্নতিতে সাহায্য করে, ব্লাড সুগার স্বাভাবিক রাখতে সাহায্য করে, পেশীর সংকোচন প্রতিরোধ করে, ত্বকের প্রদাহ কমতে সাহায্য করে এবং ভালো ঘুম হতে সাহায্য করে।</p>', NULL, '1800', '1450', '140', 0, NULL, 995, NULL, '2024-07-16-66967ae89944b.jpg', 1, 100, 155, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:51:36', '2025-05-30 14:55:15', '4455578', NULL),
(764, NULL, 330, 314, '502897867172481', 'আদার গুঁড়া | Ginger Powder', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif; font-size: medium;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</span><br></p>', '<p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট পৃথিবীতে পাওয়া সবচেয়ে বিশুদ্ধ লবণ যা বিষাক্ত ও দূষিত পদার্থ মুক্ত। এই লবণ হিমালয় পর্বত থেকে তৈরি হয় এবং সেখানে এটি “হোয়াইট গোল্ড” নামে সুপরিচিত। এই লবণের অনন্যতার কারণ হচ্ছে এর গোলাপি বর্ণ যা আয়রন অক্সাইডের উপস্থিতির জন্য হয়ে থাকে। একারণে এ লবণকে “পিংক সল্ট” ও বলা হয়।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">প্রধানত হিমালয়ান সল্ট সোডিয়াম ক্লোরাইড নিয়ে গঠিত। তবে এতে সালফেট, ম্যাগনেসিয়াম, ক্যালসিয়াম, পটাসিয়াম, ফসফরাস, কপার, জিংক, সেলেনিয়াম, আয়োডিন এবং ফ্লোরাইডসহ প্রায় ৮০টির মত উপাদান থাকে। এই লবণের খনিজ উপাদানগুলো আঠালো গঠনে থাকে এবং মানুষের শরীরের কোষে খুব সহজেই শোষিত হতে পারে। খনিজ লবণে সমৃদ্ধ হওয়ায় এই লবণ শরীর ও মনের নিরাময়ে বিস্ময়কর ভাবে কাজ করে। চলুন হিমালয়ান সল্টের স্বাস্থ্য উপকারিতা সম্পর্কে জেনে নিই।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">১। শরীরের তরলের ভারসাম্য রক্ষা করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান পিংক সল্টে বিভিন্ন ধরণের ইলেক্ট্রোলাইট থাকে যা শরীরের আর্দ্রতা নিয়ন্ত্রণ করে। শরীরের কোষগুলোর কাজ সঠিকভাবে সম্পন্ন হওয়ার জন্য শরীরের আর্দ্রতা বজায় থাকা অত্যন্ত প্রয়োজনীয়। এই লবণে উপস্থিত প্রধান ইলেক্ট্রোলাইটগুলো হচ্ছে সোডিয়াম, পটাসিয়াম, ক্যালসিয়াম, ম্যাগনেসিয়াম এবং ক্লোরাইড। এই ইলেক্ট্রোলাইটগুলো পানির চেয়েও দ্রুত শরীরে শোষিত হয়। একটি কাঁচের জারে ১ ইঞ্চি পরিমাণ হিমালয়ান ক্রিস্টাল সল্ট নিন। এর মধ্যে ২-৩ ইঞ্চি পরিমাণ বিশুদ্ধ পানি দিয়ে ঢেকে রাখুন সারারাত। সকালে এই দ্রবণটি থেকে ১ চা চামচ দ্রবণ নিয়ে ১ গ্লাস বিশুদ্ধ পানিতে মিশিয়ে পান করুন। তবে এই দ্রবণটি তৈরি করার সময় ধাতব ঢাকনা বা চামচ ব্যবহার করবেন না।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">২। শরীরকে বিষমুক্ত হতে সাহায্য করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট গোসলের পানিতে ব্যবহার করলে শরীরের কোষগুলো পুনরুজ্জীবিত ও বিষমুক্ত হয়। এই লবণের খনিজ উপাদানগুলো পানিতে স্থানান্তরিত হয়। তাই যখন এই পানি দিয়ে গোসল করা হয় তখন শরীরের কোষ ও রক্তস্রোত থেকে বিষাক্ত পদার্থ বাহির হয়ে যায়।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৩। পরিপাক নালীকে পরিষ্কার করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">প্রাকৃতিকভাবে পরিপাক নালীকে পরিষ্কার হতে সাহায্য করে পিংক সল্ট। এটি জোলাপ হিসেবে কাজ করে এবং পরিপাক তন্ত্রের জমে থাকা টক্সিনকে বর্জ্য পদার্থ হিসেবে বাহির হয়ে যাওয়ার জন্য সাহায্য করে।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৪। শরীরের pH এর ভারসাম্য রক্ষা করে</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">হিমালয়ান সল্ট শরীরের ক্ষারীয় অবস্থা বজায় থাকতে সাহায্য করে। এটি দেহের তরলের হাইড্রোজেন আয়নের মাত্রা নিয়ন্ত্রণ করে। সীসা, মার্কারি ও আর্সেনিকের মত ভারী ধাতু শরীর থেকে বাহির করে দিতে সাহায্য করে।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"padding: 0px; margin: 0px; font-weight: bolder;\">৫। শ্বাসতন্ত্রের রোগ থেকে মুক্তি দেয়</span></p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সাইনুসাইটিস, অ্যাজমা, ব্রংকাইটিস বা অ্যালার্জি থেকে নিরাময়ে সাহায্য করে হিমালয়ান সল্ট। শ্বসনতন্ত্রকে পরিষ্কার হতে ও ক্ষতিকর পদার্থ বাহির হয়ে যেতে সাহায্য করে। এই লবণের অ্যান্টি ইনফ্লামেটরি উপাদান অতিরিক্ত মিউকাসকে নরম ও আলগা হতে সাহায্য করে এবং মিউকোসিলিয়ারি পরিবহণের গতি বৃদ্ধিতে সাহায্য করে। এই লবণের উপাদানগুলো ফুসফুসের গভীরে প্রবেশ করে ক্ষতিগ্রস্থ টিস্যুকে নিরাময়ে সাহায্য করে। গরম পানিতে পিংক সল্ট দিয়ে এর ভাপ নিন।</p><p style=\"padding: 0px; margin-bottom: 1.3em; font-size: medium; color: rgb(0, 0, 0); font-family: &quot;Hind Siliguri&quot;, sans-serif;\">এছাড়াও হিমালয়ান সল্ট দাঁতের স্বাস্থ্যের উন্নতিতে সাহায্য করে, ব্লাড সুগার স্বাভাবিক রাখতে সাহায্য করে, পেশীর সংকোচন প্রতিরোধ করে, ত্বকের প্রদাহ কমতে সাহায্য করে এবং ভালো ঘুম হতে সাহায্য করে।</p>', NULL, '1600', '1500', '1000', 0, NULL, 9992, NULL, '2024-07-16-66967b600335d.jpg', 1, 10, 167, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2024-07-16 07:53:36', '2025-05-25 15:09:23', '1234', NULL);
INSERT INTO `products` (`id`, `author_id`, `user_id`, `brand_id`, `slug`, `title`, `short_description`, `full_description`, `spec`, `regular_price`, `whole_price`, `buying_price`, `dis_type`, `discount_price`, `quantity`, `unit`, `image`, `shipping_charge`, `point`, `reach`, `status`, `is_aproved`, `type`, `download_able`, `download_limit`, `download_expire`, `sheba`, `book`, `isbn`, `edition`, `pages`, `country`, `language`, `book_file`, `refer`, `video`, `video_thumb`, `yvideo`, `created_at`, `updated_at`, `sku`, `prdct_extra_msg`) VALUES
(766, NULL, 1, 314, '550664203173172', 'Peora 18K Gold Plated American Diamond Jodha Akbar Bridal Choker Necklace Traditional Jewellery Set for Women Girls', '<p><br></p>', '<p><span style=\"font-weight: bolder;\">Product details</span></p><p><span style=\"font-weight: bolder;\">Clasp type</span><span style=\"white-space: pre;\">	</span>Lobster Clasp</p><p><span style=\"font-weight: bolder;\">Material type</span><span style=\"white-space: pre;\">	</span>Metal</p><p><span style=\"font-weight: bolder;\">Metal type</span><span style=\"white-space: pre;\">	</span>Alloy</p><p><span style=\"font-weight: bolder;\">Occasion type</span><span style=\"white-space: pre;\">	</span>Wedding</p><p><span style=\"font-weight: bolder;\">Item type name</span><span style=\"white-space: pre;\">	</span>Jewellery Sets</p><p><b>About this item</b></p><p><b>DIMENSIONS:</b> Necklace Length: 25.6 cm X Width: 12 cm; Earrings Length: 10.6 cm X Width: 6.1 cm; Nose Pin Ring-28 cm X 6.2 cm; Haath Panja Length: 15.2 cm X Width: 10.5 cm; Matha Patti Length: 26.2 cm X Width: 11.2 cm; Weight: 570 Grams</p><p><b>PACKAGE CONTAINS:</b> 1 Choker Necklace, 1 Pair of Earrings, 1 MathaPatti Maangtikka, 1 Pair of Hath Panja, 1 Nathiya</p><p><b>MATERIAL:</b> Environmental Brass Alloy with Top Quality Genuine Plating, World-class Craftsmanship, PEORA Collection makes people remember not only the jewellery itself, but also the woman who wears that jewellery.</p><p><b>Perfect Gift for your Loved Ones:</b> Love for jewels never fades away! Jewellery is one of the most spectacular &amp; popular gifts. Perfect gifts for your best friend, girlfriend, wife, mother or for someone you want to show love and can be gifted on occasions like Wedding, Valentines, Birthdays, New Year, Christmas, thanks giving, mother\'s day.</p><p><b>JEWELLERY CARE:</b> keep your jewellery away from chemicals and beauty products that can potentially damage your favourite jewellery. Do not use jewellery cleaner to clean your fashion jewellery and make sure to put on your perfume and lotion first, let it dry, and then put the final touches of your jewellery on.</p><p><b>OUR QUALITY:</b> Every piece here is a product of love of labour. We have tried to mix and match the ethnicity of rich Indian heritage with contemporary style. We work with the primary core principle to achieve customer’s satisfaction by providing quality products and great buying experience as our pleasure lies is in your satisfaction.</p>', NULL, '9495', NULL, '9495', 2, '3513.15', 1, NULL, '2024-10-06-6702685e31b02.jpg', 1, 34610, 48, 1, 1, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-10-06 10:37:18', '2025-05-23 03:47:17', 'PF37BRBLP021B', NULL),
(767, NULL, 1, 314, '281026512391865', 'Medjool dates', '<p>মেডজুল খেজুর একটি প্রাকৃতিকভাবে মিষ্টি এবং রসালো খেজুরের জাত, যা সাইজে বড় এবং সুস্বাদু। এটি উচ্চমানের পটাসিয়াম, ফাইবার, এবং অ্যান্টিঅক্সিডেন্টে ভরপুর, যা স্বাস্থ্যের জন্য উপকারী। মেডজুল খেজুর প্রাকৃতিক শক্তির উৎস হিসেবে ব্যবহৃত হয় এবং প্রতিদিনের খাদ্যতালিকায় যুক্ত করা যেতে পারে।</p>', '<p>মেডজুল খেজুর একটি প্রাকৃতিকভাবে মিষ্টি এবং রসালো খেজুরের জাত, যা সাইজে বড় এবং সুস্বাদু। এটি উচ্চমানের পটাসিয়াম, ফাইবার, এবং অ্যান্টিঅক্সিডেন্টে ভরপুর, যা স্বাস্থ্যের জন্য উপকারী। মেডজুল খেজুর প্রাকৃতিক শক্তির উৎস হিসেবে ব্যবহৃত হয় এবং প্রতিদিনের খাদ্যতালিকায় যুক্ত করা যেতে পারে।</p>', NULL, '11', NULL, NULL, 1, '10', 1111, NULL, '2025-05-04-6816b3799a9a2.jpg', 1, 1, 16, 1, 1, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2025-05-03 18:23:21', '2025-05-30 22:05:14', 'Medjool dates', NULL),
(768, NULL, 1, 314, '394072786600483', 'Ajwa dates', '<p data-start=\"23\" data-end=\"385\" class=\"\">আজওয়া খেজুর এক ধরনের বিশেষ খেজুর, যা মূলত সৌদি আরবের মদীনা শহর থেকে আসে। এই খেজুরটি তার গা dark ় রং এবং মিষ্টি স্বাদের জন্য অত্যন্ত জনপ্রিয়। আজওয়া খেজুরে প্রচুর পরিমাণে পুষ্টি উপাদান থাকে, যেমন—ফাইবার, ভিটামিন, মিনারেল, এবং অ্যান্টিঅক্সিডেন্ট। এটি শরীরের জন্য অনেক উপকারী, যেমন হজম শক্তি বাড়ানো, হৃদযন্ত্রের সুস্থতা বজায় রাখা এবং রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করা।</p><p data-start=\"387\" data-end=\"696\" class=\"\">এই খেজুরটি স্বাস্থ্য সচেতন ব্যক্তিদের কাছে খুবই জনপ্রিয়, কারণ এটি প্রাকৃতিকভাবে মিষ্টি এবং কৃত্রিম চিনির চেয়ে অনেক ভালো বিকল্প। আজওয়া খেজুরে উচ্চ পরিমাণে আয়রন, ক্যালসিয়াম এবং ম্যাগনেসিয়াম থাকে, যা হাড় ও মাংসপেশির জন্য উপকারী। এটি শরীরে শক্তি সরবরাহ করতে সহায়তা করে এবং দ্রুত শক্তি পুনরুদ্ধার করতে সাহায্য করে।</p><p>\r\n\r\n</p><p data-start=\"698\" data-end=\"838\" class=\"\">আজওয়া খেজুরের নিয়মিত সেবন আপনাকে দেহের সব রকমের ভিটামিন ও মিনারেল সরবরাহ করতে পারে এবং এটি হার্ট, কিডনি ও ডাইজেস্টিভ সিস্টেমের জন্যও উপকারী।</p>', '<p data-start=\"23\" data-end=\"385\" class=\"\">আজওয়া খেজুর এক ধরনের বিশেষ খেজুর, যা মূলত সৌদি আরবের মদীনা শহর থেকে আসে। এই খেজুরটি তার গা dark ় রং এবং মিষ্টি স্বাদের জন্য অত্যন্ত জনপ্রিয়। আজওয়া খেজুরে প্রচুর পরিমাণে পুষ্টি উপাদান থাকে, যেমন—ফাইবার, ভিটামিন, মিনারেল, এবং অ্যান্টিঅক্সিডেন্ট। এটি শরীরের জন্য অনেক উপকারী, যেমন হজম শক্তি বাড়ানো, হৃদযন্ত্রের সুস্থতা বজায় রাখা এবং রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করা।</p><p data-start=\"387\" data-end=\"696\" class=\"\">এই খেজুরটি স্বাস্থ্য সচেতন ব্যক্তিদের কাছে খুবই জনপ্রিয়, কারণ এটি প্রাকৃতিকভাবে মিষ্টি এবং কৃত্রিম চিনির চেয়ে অনেক ভালো বিকল্প। আজওয়া খেজুরে উচ্চ পরিমাণে আয়রন, ক্যালসিয়াম এবং ম্যাগনেসিয়াম থাকে, যা হাড় ও মাংসপেশির জন্য উপকারী। এটি শরীরে শক্তি সরবরাহ করতে সহায়তা করে এবং দ্রুত শক্তি পুনরুদ্ধার করতে সাহায্য করে।</p><p>\r\n\r\n</p><p data-start=\"698\" data-end=\"838\" class=\"\">আজওয়া খেজুরের নিয়মিত সেবন আপনাকে দেহের সব রকমের ভিটামিন ও মিনারেল সরবরাহ করতে পারে এবং এটি হার্ট, কিডনি ও ডাইজেস্টিভ সিস্টেমের জন্যও উপকারী।</p>', NULL, '111111', NULL, NULL, 1, '111110', 111, NULL, '2025-05-04-6816b41e32e7e.png', 1, 1111100, 19, 1, 1, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2025-05-03 18:26:06', '2025-05-31 20:31:02', 'ajwa dates', NULL),
(769, NULL, 1, 314, '995814676084946', 'Sukkari Dates', '<p data-start=\"26\" data-end=\"298\" class=\"\">সুক্কারী খেজুর একটি বিশেষ ধরনের খেজুর যা সৌদি আরবের বিখ্যাত খেজুর প্রজাতি। এটি তার মিষ্টি স্বাদ এবং সোনালী-হলুদ রঙের জন্য পরিচিত। সুক্কারী খেজুরের গাঢ় মিষ্টিতা এবং নরম টেক্সচার অনেকেরই পছন্দের। এটি পুষ্টিকর এবং শক্তির উৎকৃষ্ট উৎস, যা শরীরকে দ্রুত শক্তি প্রদান করতে সক্ষম।</p><p data-start=\"300\" data-end=\"605\" class=\"\">সুক্কারী খেজুরে উচ্চ পরিমাণে ফাইবার, ভিটামিন, মিনারেল এবং অ্যান্টিঅক্সিডেন্ট রয়েছে, যা শরীরের রোগ প্রতিরোধ ক্ষমতা বাড়াতে সাহায্য করে। এটি হজম ক্ষমতা উন্নত করে এবং কোষ্ঠকাঠিন্য কমাতে সাহায্য করে। সুক্কারী খেজুরে আয়রন এবং ক্যালসিয়ামও প্রচুর পরিমাণে থাকে, যা রক্ত সঞ্চালন এবং হাড়ের শক্তি বৃদ্ধিতে সহায়তা করে।</p><p>\r\n\r\n</p><p data-start=\"607\" data-end=\"879\" class=\"\">এই খেজুরটি শরীরের শক্তির পুনরুদ্ধারে সহায়ক এবং প্রতিদিনের স্বাস্থ্য সুরক্ষার জন্য খুবই উপকারী। এটি সুস্থ হৃদয় এবং ডাইজেস্টিভ সিস্টেম বজায় রাখতে সাহায্য করে। সুক্কারী খেজুরের মিষ্টি স্বাদ এবং পুষ্টিগুণের জন্য এটি একটি আদর্শ স্বাস্থ্যকর স্ন্যাক্স হিসেবে খাওয়ার জন্য উপযুক্ত।</p>', '<p data-start=\"26\" data-end=\"298\" class=\"\">সুক্কারী খেজুর একটি বিশেষ ধরনের খেজুর যা সৌদি আরবের বিখ্যাত খেজুর প্রজাতি। এটি তার মিষ্টি স্বাদ এবং সোনালী-হলুদ রঙের জন্য পরিচিত। সুক্কারী খেজুরের গাঢ় মিষ্টিতা এবং নরম টেক্সচার অনেকেরই পছন্দের। এটি পুষ্টিকর এবং শক্তির উৎকৃষ্ট উৎস, যা শরীরকে দ্রুত শক্তি প্রদান করতে সক্ষম।</p><p data-start=\"300\" data-end=\"605\" class=\"\">সুক্কারী খেজুরে উচ্চ পরিমাণে ফাইবার, ভিটামিন, মিনারেল এবং অ্যান্টিঅক্সিডেন্ট রয়েছে, যা শরীরের রোগ প্রতিরোধ ক্ষমতা বাড়াতে সাহায্য করে। এটি হজম ক্ষমতা উন্নত করে এবং কোষ্ঠকাঠিন্য কমাতে সাহায্য করে। সুক্কারী খেজুরে আয়রন এবং ক্যালসিয়ামও প্রচুর পরিমাণে থাকে, যা রক্ত সঞ্চালন এবং হাড়ের শক্তি বৃদ্ধিতে সহায়তা করে।</p><p>\r\n\r\n</p><p data-start=\"607\" data-end=\"879\" class=\"\">এই খেজুরটি শরীরের শক্তির পুনরুদ্ধারে সহায়ক এবং প্রতিদিনের স্বাস্থ্য সুরক্ষার জন্য খুবই উপকারী। এটি সুস্থ হৃদয় এবং ডাইজেস্টিভ সিস্টেম বজায় রাখতে সাহায্য করে। সুক্কারী খেজুরের মিষ্টি স্বাদ এবং পুষ্টিগুণের জন্য এটি একটি আদর্শ স্বাস্থ্যকর স্ন্যাক্স হিসেবে খাওয়ার জন্য উপযুক্ত।</p>', NULL, '11111', NULL, NULL, 0, NULL, 111, NULL, '2025-05-04-6816b467a5ae1.webp', 1, 111110, 20, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '2025-05-03 18:27:19', '2025-05-17 23:48:53', 'Sukkari Dates', NULL),
(770, NULL, 330, 314, '489365428672789', 'Mabrum moriom', '<p data-start=\"24\" data-end=\"315\" class=\"\">মাবরুম খেজুর এক ধরনের সুস্বাদু ও পুষ্টিকর খেজুর, যা বিশেষভাবে মধ্যপ্রাচ্য ও উত্তর আফ্রিকার দেশগুলোতে জনপ্রিয়। এই খেজুরটি তার মিষ্টি, নরম এবং রেশমি টেক্সচারের জন্য পরিচিত। মাবরুম খেজুর গা dark ় বাদামী রঙের হয়ে থাকে এবং এটি প্রাকৃতিকভাবে মিষ্টি, যা একে অন্যান্য খেজুরের তুলনায় আলাদা করে তোলে।</p><p data-start=\"317\" data-end=\"650\" class=\"\">মাবরুম খেজুরে প্রচুর পরিমাণে ফাইবার, ভিটামিন, মিনারেল এবং অ্যান্টিঅক্সিডেন্ট রয়েছে, যা শরীরের জন্য অত্যন্ত উপকারী। এটি হজম শক্তি বাড়াতে সাহায্য করে এবং কোষ্ঠকাঠিন্য দূর করতে সাহায্য করে। মাবরুম খেজুরে আয়রন, পটাসিয়াম, ম্যাগনেসিয়াম, এবং ক্যালসিয়ামের মতো প্রয়োজনীয় পুষ্টি উপাদান থাকে, যা শরীরের শক্তি এবং পুষ্টির চাহিদা পূরণ করতে সহায়ক।</p><p>\r\n\r\n</p><p data-start=\"652\" data-end=\"912\" class=\"\">এই খেজুরটি শরীরের রোগ প্রতিরোধ ক্ষমতা বাড়াতে এবং শক্তি সরবরাহ করতে সাহায্য করে। মাবরুম খেজুরের নিয়মিত সেবন হার্টের স্বাস্থ্য, হজম প্রক্রিয়া এবং রক্ত সঞ্চালনকে ভালো রাখে। এটি একটি শক্তির উৎস হিসেবে ভালো বিকল্প এবং স্বাস্থ্যকর স্ন্যাক্স হিসেবে খাওয়ার জন্য আদর্শ।</p>', '<p data-start=\"24\" data-end=\"315\" class=\"\">মাবরুম খেজুর এক ধরনের সুস্বাদু ও পুষ্টিকর খেজুর, যা বিশেষভাবে মধ্যপ্রাচ্য ও উত্তর আফ্রিকার দেশগুলোতে জনপ্রিয়। এই খেজুরটি তার মিষ্টি, নরম এবং রেশমি টেক্সচারের জন্য পরিচিত। মাবরুম খেজুর গা dark ় বাদামী রঙের হয়ে থাকে এবং এটি প্রাকৃতিকভাবে মিষ্টি, যা একে অন্যান্য খেজুরের তুলনায় আলাদা করে তোলে।</p><p data-start=\"317\" data-end=\"650\" class=\"\">মাবরুম খেজুরে প্রচুর পরিমাণে ফাইবার, ভিটামিন, মিনারেল এবং অ্যান্টিঅক্সিডেন্ট রয়েছে, যা শরীরের জন্য অত্যন্ত উপকারী। এটি হজম শক্তি বাড়াতে সাহায্য করে এবং কোষ্ঠকাঠিন্য দূর করতে সাহায্য করে। মাবরুম খেজুরে আয়রন, পটাসিয়াম, ম্যাগনেসিয়াম, এবং ক্যালসিয়ামের মতো প্রয়োজনীয় পুষ্টি উপাদান থাকে, যা শরীরের শক্তি এবং পুষ্টির চাহিদা পূরণ করতে সহায়ক।</p><p>\r\n\r\n</p><p data-start=\"652\" data-end=\"912\" class=\"\">এই খেজুরটি শরীরের রোগ প্রতিরোধ ক্ষমতা বাড়াতে এবং শক্তি সরবরাহ করতে সাহায্য করে। মাবরুম খেজুরের নিয়মিত সেবন হার্টের স্বাস্থ্য, হজম প্রক্রিয়া এবং রক্ত সঞ্চালনকে ভালো রাখে। এটি একটি শক্তির উৎস হিসেবে ভালো বিকল্প এবং স্বাস্থ্যকর স্ন্যাক্স হিসেবে খাওয়ার জন্য আদর্শ।</p>', NULL, '1110.99', NULL, NULL, 0, NULL, 109, NULL, '2025-05-04-6816b550c88b0.webp', 1, 11110, 43, 1, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2025-05-03 18:31:12', '2025-05-30 22:07:28', 'Mabrum moriom', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_attri` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `color_attri`, `name`, `created_at`, `updated_at`) VALUES
(419, 754, NULL, '2024-07-16-66966ee025159.jpg', '2024-07-16 07:00:16', '2024-07-16 07:00:16'),
(420, 755, NULL, '2024-07-16-66966f64be627.jpg', '2024-07-16 07:02:28', '2024-07-16 07:02:28'),
(421, 756, NULL, '2024-07-16-6696741839d29.jpg', '2024-07-16 07:22:32', '2024-07-16 07:22:32'),
(422, 757, NULL, '2024-07-16-6696757bd0977.jpg', '2024-07-16 07:28:27', '2024-07-16 07:28:27'),
(423, 758, NULL, '2024-07-16-6696757bd2081.jpg', '2024-07-16 07:28:27', '2024-07-16 07:28:27'),
(424, 759, NULL, '2024-07-16-6696769376f04.jpg', '2024-07-16 07:33:07', '2024-07-16 07:33:07'),
(425, 760, NULL, '2024-07-16-6696793edf3a4.jpg', '2024-07-16 07:44:30', '2024-07-16 07:44:30'),
(426, 761, NULL, '2024-07-16-669679b486319.jpg', '2024-07-16 07:46:28', '2024-07-16 07:46:28'),
(427, 762, NULL, '2024-07-16-66967a4516813.jpg', '2024-07-16 07:48:53', '2024-07-16 07:48:53'),
(428, 763, NULL, '2024-07-16-66967ae8bb24b.jpg', '2024-07-16 07:51:36', '2024-07-16 07:51:36'),
(429, 764, NULL, '2024-07-16-66967b602801c.jpg', '2024-07-16 07:53:36', '2024-07-16 07:53:36'),
(433, 766, NULL, '2024-10-06-6702685ebd22c.jpg', '2024-10-06 10:37:18', '2024-10-06 10:37:18'),
(434, 766, NULL, '2024-10-06-6702685ec8cd2.jpg', '2024-10-06 10:37:18', '2024-10-06 10:37:18'),
(435, 766, NULL, '2024-10-06-6702685eca7cd.jpg', '2024-10-06 10:37:18', '2024-10-06 10:37:18'),
(436, 766, NULL, '2024-10-06-6702685ecd2fd.jpg', '2024-10-06 10:37:18', '2024-10-06 10:37:18'),
(437, 766, NULL, '2024-10-06-6702685f006e7.jpg', '2024-10-06 10:37:19', '2024-10-06 10:37:19'),
(438, 766, NULL, '2024-10-06-6702685f0c16c.jpg', '2024-10-06 10:37:19', '2024-10-06 10:37:19'),
(439, 767, NULL, '2025-05-04-6816b3799efee.jpg', '2025-05-03 18:23:21', '2025-05-03 18:23:21'),
(440, 768, NULL, '2025-05-04-6816b41e58a33.png', '2025-05-03 18:26:06', '2025-05-03 18:26:06'),
(441, 769, NULL, '2025-05-04-6816b467ca318.webp', '2025-05-03 18:27:19', '2025-05-03 18:27:19'),
(442, 770, NULL, '2025-05-04-6816b550d8f3a.webp', '2025-05-03 18:31:12', '2025-05-03 18:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_category`
--

CREATE TABLE `product_sub_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_category`
--

INSERT INTO `product_sub_category` (`id`, `sub_category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(297, 55, 330, NULL, NULL),
(298, 55, 331, NULL, NULL),
(299, 55, 332, NULL, NULL),
(300, 55, 333, NULL, NULL),
(301, 55, 334, NULL, NULL),
(302, 55, 335, NULL, NULL),
(303, 55, 336, NULL, NULL),
(304, 55, 337, NULL, NULL),
(305, 55, 338, NULL, NULL),
(306, 55, 339, NULL, NULL),
(307, 55, 340, NULL, NULL),
(308, 55, 341, NULL, NULL),
(309, 55, 342, NULL, NULL),
(310, 55, 343, NULL, NULL),
(311, 55, 344, NULL, NULL),
(312, 55, 345, NULL, NULL),
(313, 55, 346, NULL, NULL),
(314, 55, 347, NULL, NULL),
(315, 55, 348, NULL, NULL),
(316, 55, 349, NULL, NULL),
(317, 55, 350, NULL, NULL),
(318, 55, 351, NULL, NULL),
(319, 55, 352, NULL, NULL),
(320, 55, 353, NULL, NULL),
(321, 55, 354, NULL, NULL),
(322, 55, 355, NULL, NULL),
(323, 55, 356, NULL, NULL),
(324, 55, 357, NULL, NULL),
(325, 55, 358, NULL, NULL),
(326, 55, 359, NULL, NULL),
(327, 75, 360, NULL, NULL),
(328, 75, 361, NULL, NULL),
(329, 75, 362, NULL, NULL),
(330, 75, 363, NULL, NULL),
(331, 75, 364, NULL, NULL),
(332, 75, 365, NULL, NULL),
(333, 75, 366, NULL, NULL),
(334, 75, 367, NULL, NULL),
(335, 75, 368, NULL, NULL),
(336, 75, 369, NULL, NULL),
(337, 75, 370, NULL, NULL),
(338, 75, 371, NULL, NULL),
(339, 75, 372, NULL, NULL),
(340, 75, 373, NULL, NULL),
(341, 75, 374, NULL, NULL),
(342, 75, 375, NULL, NULL),
(343, 75, 376, NULL, NULL),
(344, 75, 377, NULL, NULL),
(345, 75, 378, NULL, NULL),
(346, 75, 379, NULL, NULL),
(347, 75, 380, NULL, NULL),
(348, 75, 381, NULL, NULL),
(349, 75, 382, NULL, NULL),
(350, 75, 383, NULL, NULL),
(351, 75, 384, NULL, NULL),
(352, 75, 385, NULL, NULL),
(353, 75, 386, NULL, NULL),
(354, 75, 387, NULL, NULL),
(355, 75, 388, NULL, NULL),
(356, 75, 389, NULL, NULL),
(357, 75, 390, NULL, NULL),
(358, 75, 391, NULL, NULL),
(359, 75, 392, NULL, NULL),
(360, 75, 393, NULL, NULL),
(361, 75, 394, NULL, NULL),
(362, 75, 395, NULL, NULL),
(363, 75, 396, NULL, NULL),
(364, 75, 397, NULL, NULL),
(365, 75, 398, NULL, NULL),
(366, 75, 399, NULL, NULL),
(428, 24, 476, NULL, NULL),
(429, 24, 477, NULL, NULL),
(430, 24, 478, NULL, NULL),
(431, 24, 479, NULL, NULL),
(432, 24, 480, NULL, NULL),
(433, 24, 481, NULL, NULL),
(434, 24, 482, NULL, NULL),
(435, 24, 483, NULL, NULL),
(436, 24, 484, NULL, NULL),
(437, 24, 485, NULL, NULL),
(438, 24, 486, NULL, NULL),
(439, 24, 487, NULL, NULL),
(440, 24, 488, NULL, NULL),
(441, 24, 489, NULL, NULL),
(442, 24, 490, NULL, NULL),
(443, 24, 491, NULL, NULL),
(444, 24, 492, NULL, NULL),
(445, 24, 493, NULL, NULL),
(446, 24, 494, NULL, NULL),
(447, 24, 495, NULL, NULL),
(448, 24, 496, NULL, NULL),
(449, 24, 497, NULL, NULL),
(450, 24, 498, NULL, NULL),
(451, 24, 499, NULL, NULL),
(545, 24, 594, NULL, NULL),
(546, 24, 595, NULL, NULL),
(547, 24, 596, NULL, NULL),
(548, 24, 597, NULL, NULL),
(549, 24, 598, NULL, NULL),
(550, 24, 599, NULL, NULL),
(808, 71, 1056, NULL, NULL),
(809, 24, 600, NULL, NULL),
(810, 9, 601, NULL, NULL),
(811, 9, 602, NULL, NULL),
(812, 9, 603, NULL, NULL),
(813, 9, 604, NULL, NULL),
(814, 9, 605, NULL, NULL),
(815, 9, 607, NULL, NULL),
(816, 9, 608, NULL, NULL),
(818, 55, 610, NULL, NULL),
(819, 72, 611, NULL, NULL),
(823, 24, 612, NULL, NULL),
(824, 24, 614, NULL, NULL),
(825, 24, 616, NULL, NULL),
(827, 9, 609, NULL, NULL),
(828, 9, 617, NULL, NULL),
(829, 9, 618, NULL, NULL),
(830, 97, 620, NULL, NULL),
(831, 98, 621, NULL, NULL),
(833, 99, 622, NULL, NULL),
(835, 98, 623, NULL, NULL),
(837, 15, 624, NULL, NULL),
(838, 15, 625, NULL, NULL),
(839, 15, 627, NULL, NULL),
(840, 15, 628, NULL, NULL),
(841, 15, 629, NULL, NULL),
(842, 3, 630, NULL, NULL),
(847, 98, 634, NULL, NULL),
(849, 98, 633, NULL, NULL),
(850, 98, 632, NULL, NULL),
(851, 98, 631, NULL, NULL),
(852, 102, 635, NULL, NULL),
(854, 103, 636, NULL, NULL),
(855, 104, 637, NULL, NULL),
(857, 105, 638, NULL, NULL),
(858, 105, 639, NULL, NULL),
(859, 105, 640, NULL, NULL),
(860, 105, 641, NULL, NULL),
(861, 106, 642, NULL, NULL),
(862, 106, 643, NULL, NULL),
(863, 105, 644, NULL, NULL),
(864, 105, 645, NULL, NULL),
(865, 105, 646, NULL, NULL),
(866, 105, 647, NULL, NULL),
(867, 105, 648, NULL, NULL),
(868, 105, 649, NULL, NULL),
(869, 105, 650, NULL, NULL),
(870, 102, 651, NULL, NULL),
(871, 102, 652, NULL, NULL),
(872, 102, 653, NULL, NULL),
(882, 105, 663, NULL, NULL),
(883, 2, 662, NULL, NULL),
(884, 2, 661, NULL, NULL),
(885, 3, 660, NULL, NULL),
(887, 2, 658, NULL, NULL),
(888, 2, 657, NULL, NULL),
(889, 14, 656, NULL, NULL),
(890, 14, 655, NULL, NULL),
(891, 11, 654, NULL, NULL),
(892, 107, 672, NULL, NULL),
(893, 107, 673, NULL, NULL),
(894, 109, 659, NULL, NULL),
(895, 2, 674, NULL, NULL),
(896, 113, 682, NULL, NULL),
(897, 113, 683, NULL, NULL),
(898, 105, 684, NULL, NULL),
(899, 114, 686, NULL, NULL),
(900, 113, 698, NULL, NULL),
(901, 115, 699, NULL, NULL),
(902, 115, 700, NULL, NULL),
(904, 116, 702, NULL, NULL),
(905, 118, 751, NULL, NULL),
(906, 118, 752, NULL, NULL),
(907, 119, 753, NULL, NULL),
(908, 120, 753, NULL, NULL),
(909, 119, 754, NULL, NULL),
(910, 120, 755, NULL, NULL),
(911, 121, 756, NULL, NULL),
(912, 120, 757, NULL, NULL),
(913, 120, 758, NULL, NULL),
(914, 120, 766, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `tag_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 4, 815, NULL, NULL),
(2, 6, 821, NULL, NULL),
(3, 6, 823, NULL, NULL),
(4, 6, 824, NULL, NULL),
(5, 7, 952, NULL, NULL),
(6, 7, 953, NULL, NULL),
(7, 7, 958, NULL, NULL),
(8, 3, 614, NULL, NULL),
(9, 3, 615, NULL, NULL),
(10, 8, 365, NULL, NULL),
(11, 8, 619, NULL, NULL),
(12, 10, 620, NULL, NULL),
(13, 11, 621, NULL, NULL),
(14, 12, 621, NULL, NULL),
(15, 12, 622, NULL, NULL),
(16, 12, 623, NULL, NULL),
(17, 11, 623, NULL, NULL),
(18, 13, 623, NULL, NULL),
(19, 14, 624, NULL, NULL),
(20, 15, 624, NULL, NULL),
(21, 15, 625, NULL, NULL),
(22, 14, 625, NULL, NULL),
(23, 15, 626, NULL, NULL),
(24, 14, 626, NULL, NULL),
(25, 15, 627, NULL, NULL),
(26, 14, 627, NULL, NULL),
(27, 15, 628, NULL, NULL),
(28, 14, 628, NULL, NULL),
(29, 15, 629, NULL, NULL),
(30, 14, 629, NULL, NULL),
(31, 16, 630, NULL, NULL),
(32, 17, 630, NULL, NULL),
(33, 13, 631, NULL, NULL),
(34, 12, 631, NULL, NULL),
(35, 11, 631, NULL, NULL),
(36, 13, 632, NULL, NULL),
(37, 12, 632, NULL, NULL),
(38, 11, 632, NULL, NULL),
(39, 13, 633, NULL, NULL),
(40, 12, 633, NULL, NULL),
(41, 11, 633, NULL, NULL),
(42, 13, 634, NULL, NULL),
(43, 12, 634, NULL, NULL),
(44, 11, 634, NULL, NULL),
(45, 13, 621, NULL, NULL),
(46, 18, 635, NULL, NULL),
(47, 19, 635, NULL, NULL),
(74, 43, 642, NULL, NULL),
(75, 44, 642, NULL, NULL),
(76, 45, 642, NULL, NULL),
(77, 46, 642, NULL, NULL),
(78, 47, 642, NULL, NULL),
(79, 46, 643, NULL, NULL),
(80, 48, 643, NULL, NULL),
(81, 49, 643, NULL, NULL),
(82, 50, 643, NULL, NULL),
(83, 51, 643, NULL, NULL),
(84, 29, 644, NULL, NULL),
(85, 28, 644, NULL, NULL),
(86, 52, 644, NULL, NULL),
(87, 53, 644, NULL, NULL),
(88, 53, 645, NULL, NULL),
(89, 52, 645, NULL, NULL),
(90, 29, 645, NULL, NULL),
(91, 28, 645, NULL, NULL),
(92, 38, 646, NULL, NULL),
(93, 37, 646, NULL, NULL),
(94, 54, 646, NULL, NULL),
(95, 55, 646, NULL, NULL),
(96, 38, 647, NULL, NULL),
(97, 37, 647, NULL, NULL),
(98, 56, 647, NULL, NULL),
(99, 57, 647, NULL, NULL),
(100, 58, 647, NULL, NULL),
(101, 59, 647, NULL, NULL),
(102, 38, 648, NULL, NULL),
(103, 37, 648, NULL, NULL),
(104, 60, 648, NULL, NULL),
(105, 61, 648, NULL, NULL),
(106, 62, 648, NULL, NULL),
(107, 38, 649, NULL, NULL),
(108, 37, 649, NULL, NULL),
(109, 63, 649, NULL, NULL),
(110, 64, 649, NULL, NULL),
(111, 38, 650, NULL, NULL),
(112, 37, 650, NULL, NULL),
(113, 65, 650, NULL, NULL),
(114, 66, 650, NULL, NULL),
(197, 102, 663, NULL, NULL),
(198, 101, 663, NULL, NULL),
(199, 100, 663, NULL, NULL),
(200, 99, 663, NULL, NULL),
(201, 98, 663, NULL, NULL),
(202, 36, 663, NULL, NULL),
(203, 29, 663, NULL, NULL),
(204, 28, 663, NULL, NULL),
(205, 103, 663, NULL, NULL),
(206, 60, 659, NULL, NULL),
(207, 103, 682, NULL, NULL),
(209, 13, 719, NULL, NULL),
(210, 101, 723, NULL, NULL),
(211, 102, 726, NULL, NULL),
(212, 102, 727, NULL, NULL),
(214, 105, 731, NULL, NULL),
(215, 105, 732, NULL, NULL),
(216, 109, 738, NULL, NULL),
(217, 108, 739, NULL, NULL),
(218, 106, 740, NULL, NULL),
(219, 107, 741, NULL, NULL),
(220, 113, 734, NULL, NULL),
(221, 114, 733, NULL, NULL),
(222, 112, 735, NULL, NULL),
(223, 111, 736, NULL, NULL),
(224, 110, 737, NULL, NULL),
(225, 120, 742, NULL, NULL),
(226, 117, 743, NULL, NULL),
(227, 116, 744, NULL, NULL),
(228, 118, 745, NULL, NULL),
(229, 119, 746, NULL, NULL),
(230, 115, 747, NULL, NULL),
(231, 122, 748, NULL, NULL),
(232, 121, 749, NULL, NULL),
(233, 123, 750, NULL, NULL),
(234, 124, 751, NULL, NULL),
(235, 124, 752, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_user`
--

CREATE TABLE `product_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `body` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `file2` varchar(255) DEFAULT NULL,
  `file3` varchar(255) DEFAULT NULL,
  `file4` varchar(255) DEFAULT NULL,
  `file5` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(25, 'copy_right_text', '© All Rights Reserved By Modina Village', '2021-04-30 05:44:50', '2025-05-03 18:07:58'),
(26, 'logo', 'logo.png', '2021-04-30 05:44:50', '2024-07-15 16:51:42'),
(27, 'auth_logo', 'auth_logo.webp', '2021-04-30 05:44:50', '2024-07-15 16:53:18'),
(28, 'favicon', 'favicon.png', '2021-04-30 05:44:50', '2024-07-11 12:51:26'),
(31, 'email', 'mahiuddinkhan8085@gmail.com', NULL, '2025-05-03 18:07:58'),
(32, 'shop_commission', '10', NULL, '2024-05-04 05:45:51'),
(33, 'bkash', '01918910312', NULL, '2025-05-03 23:32:08'),
(34, 'nagad', '01918910312', NULL, '2025-05-03 23:32:08'),
(35, 'rocket', '01918910312', NULL, '2025-05-03 23:32:08'),
(36, 'bank_name', 'DBL', NULL, '2024-07-15 17:00:51'),
(37, 'holder_name', 'Elite Design', NULL, '2024-07-15 17:00:51'),
(38, 'bank_account', '776643333333222', NULL, '2024-07-15 17:00:51'),
(39, 'branch_name', 'Borobari', NULL, '2024-07-15 17:00:51'),
(40, 'routing', '2567', NULL, '2024-07-15 17:00:51'),
(41, 'footer_description', 'Modina Village offers a wide variety of organic foods, including fresh dates, grains, and more. Shop sustainably for quality organic products delivered right to your doorstep in Bangladesh.', NULL, '2025-05-03 18:07:58'),
(42, 'facebook', 'https://web.facebook.com/modinavillage', NULL, '2025-05-03 18:07:58'),
(43, 'whatsapp', '8801918910312', NULL, '2025-05-03 18:07:58'),
(44, 'twitter', 'https://web.facebook.com/modinavillage', NULL, '2025-05-03 18:07:58'),
(45, 'linkedin', 'https://web.facebook.com/modinavillage', NULL, '2025-05-03 18:07:58'),
(46, 'instagram', 'https://web.facebook.com/modinavillage', NULL, '2025-05-03 18:07:58'),
(47, 'messanger', 'https://m.me/modinavillage', NULL, '2025-05-03 18:07:58'),
(48, 'youtube', 'https://web.facebook.com/modinavillage', NULL, '2025-05-03 18:07:58'),
(49, 'shipping_charge', '70', NULL, '2025-05-03 18:02:30'),
(50, 'shipping_charge_out_of_range', '130', NULL, '2025-05-03 23:32:08'),
(51, 'is_point', '1', NULL, '2024-04-27 09:20:10'),
(52, 'Default_Point', '10', NULL, '2023-04-14 10:10:15'),
(53, 'Point_rate', '1', NULL, '2024-04-27 09:47:03'),
(54, 'fb_pixel', '<!-- Meta Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'1469368200700627\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=1469368200700627&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Meta Pixel Code -->', NULL, '2025-05-04 00:20:02'),
(59, 'mega_cat', '[\"77\",\"78\",\"79\"]', NULL, '2024-07-16 07:35:16'),
(60, 'sub_cat', '[\"119\"]', NULL, '2024-07-15 17:50:22'),
(61, 'mini_cat', '[null]', NULL, '2024-07-15 17:50:22'),
(62, 'extra_cat', '[null]', NULL, '2024-07-15 17:50:22'),
(64, 'meta_img', 'dd', NULL, NULL),
(65, 'g_bkash', 'true', '2023-02-28 11:00:52', '2023-02-28 11:00:52'),
(66, 'g_nagad', 'true', '2023-02-28 11:00:52', '2023-02-28 11:14:16'),
(67, 'g_rocket', 'true', '2023-02-28 11:00:52', '2024-03-25 03:54:57'),
(68, 'g_bank', 'false', '2023-02-28 11:00:52', '2025-05-03 18:02:30'),
(69, 'g_wallate', 'false', '2023-02-28 11:00:52', '2024-07-11 13:05:52'),
(70, 'g_cod', 'true', '2023-02-28 11:00:52', '2025-05-03 18:02:30'),
(71, 'g_aamar', 'false', '2023-02-28 11:00:52', '2024-08-29 20:44:06'),
(72, 'g_uddok', 'false', '2023-02-28 11:00:52', '2024-05-04 05:17:03'),
(73, 'uapi', NULL, '2023-02-28 11:09:19', '2024-05-04 05:17:03'),
(74, 'astore', NULL, '2023-02-28 11:09:19', '2024-08-29 20:44:06'),
(75, 'akey', NULL, '2023-02-28 11:09:19', '2024-08-29 20:44:06'),
(76, 'amode', '1', '2023-02-28 11:23:07', '2024-08-29 20:44:06'),
(77, 'umode', '1', '2023-02-28 11:23:07', '2024-03-05 01:25:04'),
(78, 'placeholder_one', 'Search by product name', NULL, '2023-03-10 04:38:56'),
(79, 'placeholder_two', 'Search by Vendor', NULL, '2023-03-10 04:38:56'),
(80, 'placeholder_three', 'Search by category', NULL, '2023-03-10 04:38:56'),
(81, 'placeholder_four', 'Search by product', NULL, '2023-03-10 04:38:56'),
(82, 'ubase', NULL, '2023-03-10 04:36:30', '2024-05-04 05:17:03'),
(83, 'min_rec', '50', NULL, '2023-04-13 07:53:07'),
(84, 'min_with', '100', NULL, '2023-04-13 07:53:07'),
(85, 'header_code', NULL, '2024-01-14 01:27:39', '2024-06-08 12:10:50'),
(92, 'mail_config', '0', '2024-01-21 00:49:58', '2025-05-03 18:00:22'),
(93, 'MAIL_DRIVER', 'smtp', '2024-01-21 00:49:58', '2024-01-21 00:49:58'),
(94, 'MAIL_HOST', 'mail.elitedesign.com.bd', '2024-01-21 00:49:58', '2024-07-16 15:40:18'),
(95, 'MAIL_PORT', '465', '2024-01-21 00:49:58', '2024-07-12 08:57:01'),
(96, 'MAIL_USERNAME', 'noreply@elitedesign.com.bd', '2024-01-21 00:49:58', '2024-07-16 15:40:18'),
(97, 'MAIL_PASSWORD', 'Y%)mISTQ]d)V', '2024-01-21 00:49:58', '2024-07-16 15:40:18'),
(98, 'MAIL_ENCRYPTION', 'ssl', '2024-01-21 00:49:58', '2024-01-21 01:31:25'),
(99, 'MAIL_FROM_ADDRESS', 'info@elitedesign.com.bd', '2024-01-21 00:49:58', '2024-07-16 15:40:18'),
(100, 'MAIL_FROM_NAME', 'modinavillage', '2024-01-21 00:49:58', '2025-05-03 18:00:22'),
(101, 'SMS_API_URL', NULL, '2024-01-21 02:18:50', '2024-08-25 09:21:34'),
(102, 'SMS_API_KEY', NULL, '2024-01-21 02:18:50', '2024-08-25 09:21:34'),
(103, 'SMS_API_SENDER_ID', NULL, '2024-01-21 02:18:50', '2024-08-25 09:21:34'),
(104, 'regVerify', 'sms', '2024-01-21 03:13:40', '2024-04-27 09:47:29'),
(105, 'recovrAC', 'emailsms', '2024-01-21 03:13:40', '2024-07-12 08:44:29'),
(106, 'SITE_INFO_ADDRESS', 'Sutrapur, DHaka-1100', '2024-01-21 06:02:39', '2025-05-03 18:07:58'),
(107, 'SITE_INFO_PHONE', '01918-910312', '2024-01-21 06:02:39', '2025-05-03 18:07:58'),
(108, 'SITE_INFO_SUPPORT_MAIL', 'mahiuddinkhan8085@gmail.com', '2024-01-21 06:02:39', '2025-05-03 18:07:58'),
(109, 'MAIN_MENU_STYLE', '1', '2024-01-23 23:56:30', '2024-08-29 20:06:48'),
(110, 'SLIDER_LAYOUT', '1', '2024-01-23 23:56:30', '2024-06-11 19:07:10'),
(111, 'SELLER_STATUS', '0', '2024-01-24 04:03:05', '2024-09-30 16:32:33'),
(112, 'TOP_CAT_STATUS', '1', '2024-01-24 04:11:40', '2024-06-11 18:42:34'),
(113, 'LATEST_PRODUCT_STATUS', '1', '2024-01-24 05:14:03', '2024-06-11 18:47:29'),
(114, 'FEATURE_PRODUCT_STATUS', '1', '2024-01-24 05:14:03', '2024-06-11 18:47:29'),
(115, 'HERO_SLIDER_1', '1', '2024-01-24 05:29:56', '2024-07-16 16:05:19'),
(116, 'HERO_SLIDER_2', '1', '2024-01-24 05:29:56', '2024-07-16 16:05:19'),
(117, 'SLIDER_LAYOUT_STATUS', '1', '2024-01-24 23:21:31', '2024-06-11 18:46:28'),
(118, 'CLASSIFIED_SELL_STATUS', '1', '2024-01-24 23:21:31', '2024-06-11 18:47:29'),
(119, 'SUB_CAT_PRODUCT_STATUS', '0', '2024-01-24 23:21:31', '2024-09-30 16:32:53'),
(120, 'MINI_CAT_PRODUCT_STATUS', '0', '2024-01-24 23:21:31', '2024-06-11 18:48:30'),
(121, 'EXTRA_CAT_PRODUCT_STATUS', '0', '2024-01-24 23:21:31', '2024-06-11 18:48:30'),
(122, 'BRAND_STATUS', '1', '2024-01-24 23:21:32', '2024-06-11 18:47:29'),
(123, 'CATEGORY_SMALL_SUMMERY', '0', '2024-01-24 23:21:32', '2024-06-11 18:48:30'),
(124, 'NEWS_LETTER_STATUS', '1', '2024-01-24 23:21:32', '2024-01-24 23:37:07'),
(125, 'MEGA_CAT_PRODUCT_STATUS', '1', '2024-01-24 23:32:47', '2024-07-15 18:25:32'),
(128, 'GUEST_CHECKOUT', '1', '2024-01-25 06:01:42', '2024-01-25 06:01:54'),
(129, 'NOTICE_STATUS', '0', '2024-01-30 00:15:52', '2025-05-03 21:53:22'),
(130, 'CUSTOM_NOTICE', 'আমাদের এই ওয়েবসাইট এর ডেমো এর মধ্যে কিছু কিছু অপশন কাজ করবে না, ডেমো মুড চালু থাকার কারনে।আমাদের সাথে থাকার জন্য আপনাকে ধন্যবাদ।মনে রাখবেন এলিট ডিজাইন ছাড়া আমাদের অন্য কোন কোম্পানি নেই, এলিট ডিজাইন ছাড়া অন্য কোন পেইজ থেকে আমাদের কোন ডিজাইন কিনে প্রতারিত হলে এর জন্য আমরা কোনভাবেই দায়ি নয়।', '2024-01-30 00:15:52', '2024-07-16 09:17:35'),
(131, 'FLOAT_LIVE_CHAT', '0', '2024-02-04 00:56:51', '2024-06-11 18:49:26'),
(132, 'TOP_HEADER_STYLE', '2', '2024-02-05 09:53:51', '2025-05-03 18:00:39'),
(133, 'CHECKOUT_TYPE', '0', '2024-03-05 01:24:29', '2024-03-05 01:24:29'),
(134, 'shipping_free_above', '100000', '2024-03-05 01:24:29', '2024-07-11 13:09:08'),
(135, 'shipping_range_inside', 'Dhaka', '2024-03-05 01:24:29', '2024-07-11 13:06:59'),
(136, 'body_code', NULL, '2024-03-05 01:27:23', '2024-06-08 12:04:30'),
(137, 'FOOTER_COL_4_HTML', NULL, '2024-03-05 01:27:23', '2024-07-15 17:03:49'),
(138, 'COUNTRY_SERVE', 'Bangladesh', '2024-03-25 04:27:50', '2024-03-25 04:27:50'),
(139, 'CURRENCY_CODE', 'BDT', '2024-03-25 04:27:50', '2024-03-25 04:27:50'),
(140, 'CURRENCY_CODE_MIN', 'Tk', '2024-03-25 04:27:50', '2024-03-25 04:27:50'),
(141, 'CURRENCY_ICON', '৳', '2024-03-25 04:27:50', '2024-03-25 04:27:50'),
(142, 'phone_min_dgt', '11', '2024-03-25 04:27:50', '2024-03-25 04:35:05'),
(143, 'phone_max_dgt', '11', '2024-03-25 04:27:50', '2024-03-25 04:35:05'),
(144, 'STYLE_3_TOP_MENU', NULL, '2024-04-04 00:43:32', '2024-04-04 00:43:32'),
(145, 'STYLE_3_TOP_MENU_BG_COLOR', NULL, '2024-04-04 00:43:32', '2024-04-04 00:43:32'),
(146, 'STYLE_3_TOP_MENU_LINK_COLOR', NULL, '2024-04-04 00:43:32', '2024-04-04 00:43:32'),
(147, 'STYLE_3_TOP_MENU_LINK_HOVER_COLOR', NULL, '2024-04-04 00:43:32', '2024-04-04 00:43:32'),
(148, 'STYLE_3_HEADER_SEARCH_INPUT_BAR_WIDHT', NULL, '2024-04-04 00:43:32', '2024-04-04 00:43:32'),
(149, 'HERO_SLIDER_1_TEXT', NULL, '2024-04-04 00:43:32', '2024-09-30 16:31:42'),
(150, 'TOP_CAT', 'Top Categories', '2024-04-04 00:43:32', '2024-06-11 18:45:01'),
(151, 'PRIMARY_COLOR', '#108e22', '2024-04-15 10:53:45', '2024-08-03 17:32:05'),
(152, 'PRIMARY_BG_TEXT_COLOR', '#e6eaea', '2024-04-15 10:53:45', '2024-07-15 17:54:13'),
(153, 'SECONDARY_COLOR', '#ffffff', '2024-04-15 10:53:45', '2024-07-15 17:53:51'),
(154, 'OPTIONAL_COLOR', '#108e22', '2024-04-15 10:53:45', '2024-07-15 17:52:40'),
(155, 'OPTIONAL_BG_TEXT_COLOR', '#ffffff', '2024-04-15 10:53:45', '2024-07-14 04:03:56'),
(156, 'MAIN_MENU_BG', '#108e22', '2024-04-15 10:53:45', '2024-08-03 17:32:05'),
(157, 'MAIN_MENU_ul_li_color', '#ffffff', '2024-04-15 10:53:45', '2024-07-14 04:03:18'),
(158, 'site_title', 'Modina Village - Organic Food Store | Fresh, Healthy, and Sustainable', '2024-04-27 10:02:31', '2025-05-03 18:05:25'),
(159, 'meta_description', 'Modina Village offers a wide variety of organic foods, including fresh dates, grains, and more. Shop sustainably for quality organic products delivered right to your doorstep in Bangladesh.', '2024-04-27 10:02:31', '2025-05-03 18:05:25'),
(160, 'meta_keywords', 'organic foods, organic products Bangladesh, fresh dates, healthy food, sustainable organic shopping, Modina Village, buy organic online', '2024-04-27 10:02:31', '2025-05-03 18:05:25'),
(161, 'STEEDFAST_STATUS', '1', '2024-06-03 10:06:54', '2024-06-03 10:06:54'),
(162, 'STEEDFAST_API_KEY', '8bhetfahiiruhlgfdrp3lta5a4otekqx', '2024-06-03 10:06:54', '2025-05-03 23:25:36'),
(163, 'STEEDFAST_API_SECRET_KEY', 'a3cnxrd3savjwemgj4k5v3ko', '2024-06-03 10:06:54', '2025-05-03 23:25:36'),
(164, 'sms_config_status', '0', '2024-06-05 19:00:53', '2024-08-25 09:21:23'),
(165, 'BELOW_SLIDER_HTML_CODE_STATUS', '0', '2024-06-08 11:12:50', '2025-05-03 18:03:18'),
(166, 'BELOW_SLIDER_HTML_CODE', 'আমাদের এই ওয়েবসাইট এর ডেমো এর মধ্যে কিছু কিছু অপশন কাজ করবে না, ডেমো মুড চালু থাকার কারনে।আমাদের সাথে থাকার জন্য আপনাকে ধন্যবাদ।মনে রাখবেন এলিট ডিজাইন ছাড়া আমাদের অন্য কোন কোম্পানি নেই, এলিট ডিজাইন ছাড়া অন্য কোন পেইজ থেকে আমাদের কোন ডিজাইন কিনে প্রতারিত হলে এর জন্য আমরা কোনভাবেই দায়ি নয়।', '2024-06-08 11:12:50', '2024-07-16 09:17:35'),
(167, 'global_css', NULL, '2024-06-08 11:58:02', '2024-06-08 11:58:02'),
(168, 'global_js', NULL, '2024-06-08 11:58:02', '2024-06-08 11:58:02'),
(169, 'override_css', NULL, '2024-06-08 11:58:02', '2024-06-08 11:58:02'),
(170, 'android_app', NULL, '2024-06-08 11:58:03', '2024-07-15 17:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `shop_infos`
--

CREATE TABLE `shop_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `selfi` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `routing` varchar(255) DEFAULT NULL,
  `profile` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `commission` decimal(10,0) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `nidback` text DEFAULT NULL,
  `trade` varchar(255) DEFAULT NULL,
  `nogod` int(11) DEFAULT NULL,
  `rocket` int(11) DEFAULT NULL,
  `bkash` int(11) DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_infos`
--

INSERT INTO `shop_infos` (`id`, `user_id`, `is_admin`, `name`, `gmail`, `selfi`, `slug`, `address`, `url`, `bank_account`, `bank_name`, `holder_name`, `branch_name`, `routing`, `profile`, `cover_photo`, `description`, `commission`, `nid`, `nidback`, `trade`, `nogod`, `rocket`, `bkash`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'নিচের শপ তালিকা থেকে শপ সিলেক্ট করুন', 'shop@gmail.com', NULL, '955040528749644', '35/3/1,B,Section-13', 'fffffffff', 'fffffff', 'fffffffffff', 'ffffffffffffff', 'fffffffffffffff', 'ffffffffff', 'p.png', 'cp.png', 'No ffffffffffffff', NULL, 'n.png', NULL, 't.png', NULL, NULL, NULL, NULL, '2024-07-15 12:12:47', '2024-07-15 12:14:11'),
(28, 330, 0, 'Khati Dana', 'khati@gmail.com', NULL, '495661727735281', 'House:35/3-1,B,Section-13,Dhaka', 'fffffffff', 'fffffff', 'fffffffffff', 'ffffffffffffff', 'Phakal Police Lines School & College', '2567', '2024-07-16-66963ed1208a3.png', '2024-07-16-66963f14d4c85.png', 'No Description', 5, '2024-07-16-66963f14d5dd1.png', NULL, '2024-07-16-66963f14d5437.png', NULL, NULL, NULL, NULL, '2024-07-16 03:23:59', '2024-07-16 03:36:20'),
(29, 335, 0, 'null_wait', 'mdrobin678156@gmail.com', NULL, '-1349907455', 'dhaka', NULL, NULL, NULL, NULL, NULL, NULL, 'p.png', 'cp.png', 'No Description', 5, 'n.png', NULL, 't.png', NULL, NULL, NULL, NULL, '2024-07-18 10:24:22', '2024-07-18 10:24:22'),
(30, 336, 0, 'null_wait', 'sidantorr@gmail.com', NULL, '-375264386', 'Nazimuddin Road', NULL, NULL, NULL, NULL, NULL, NULL, 'p.png', 'cp.png', 'No Description', 5, 'n.png', NULL, 't.png', NULL, NULL, NULL, NULL, '2024-08-20 17:07:35', '2024-08-20 17:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `is_pop` int(11) NOT NULL DEFAULT 0,
  `is_sub` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `url`, `status`, `is_feature`, `is_pop`, `is_sub`, `created_at`, `updated_at`) VALUES
(55, '2024-07-16-66967cc693c8f.jpg', 'https://modinavillage.com/product/489365428672789', 1, 0, 0, 0, '2024-07-15 16:37:41', '2025-05-03 21:55:31'),
(57, '2024-07-16-6695bc5d451d3.webp', 'https://www.elitedesign.com.bd', 1, 1, 0, 1, '2024-07-15 18:12:37', '2024-07-15 18:18:37'),
(58, '2024-07-16-6695bc537ee34.webp', 'https://www.elitedesign.com.bd', 1, 1, 0, 1, '2024-07-15 18:13:42', '2024-07-15 18:18:27'),
(59, '2024-07-16-6695bc0094432.webp', 'https://www.facebook.com/official.elitedesign', 1, 1, 0, 1, '2024-07-15 18:17:04', '2024-07-15 18:17:04'),
(60, '2024-07-16-6695bc1ab455a.webp', 'https://www.facebook.com/official.elitedesign', 1, 1, 0, 1, '2024-07-15 18:17:30', '2024-07-15 18:17:30'),
(61, '2024-07-16-6695bc2fd4264.webp', 'https://www.facebook.com/official.elitedesign', 1, 1, 0, 1, '2024-07-15 18:17:51', '2024-07-15 18:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'sohel@finvasoft.com', '2023-09-05 15:20:46', '2023-09-05 15:20:46'),
(2, 'mha.osim@gmail.com', '2024-04-26 11:43:34', '2024-04-26 11:43:34'),
(3, 'mha.osim@gmail.com', '2024-04-26 11:43:42', '2024-04-26 11:43:42'),
(4, 'sidddikkhan2021@gmail.com', '2024-04-26 12:12:24', '2024-04-26 12:12:24'),
(5, 'tasrifulislam99@gmail.com', '2024-04-26 23:28:55', '2024-04-26 23:28:55'),
(6, 'wali_8459@yahoo.com', '2024-04-27 11:01:39', '2024-04-27 11:01:39'),
(7, 'omarfaraque.mtech@gmail.com', '2024-04-30 02:14:17', '2024-04-30 02:14:17'),
(8, 'omarfaraque.mtech@gmail.com', '2024-04-30 02:20:00', '2024-04-30 02:20:00'),
(9, 'mdabulkashem576070@gmail.com', '2024-04-30 11:14:57', '2024-04-30 11:14:57'),
(10, 'mdabulkashem576070@gmail.com', '2024-04-30 11:15:25', '2024-04-30 11:15:25'),
(11, 'nazmul1974@gmail.com', '2024-05-03 22:25:28', '2024-05-03 22:25:28'),
(12, 'mdsafi1984@gmail.com', '2024-05-15 20:01:21', '2024-05-15 20:01:21'),
(13, 'mdsafi1984@gmail.com', '2024-05-15 20:02:56', '2024-05-15 20:02:56'),
(14, 'zahir.trust@gmail.com', '2024-05-15 23:22:26', '2024-05-15 23:22:26'),
(15, 'zahir.trust@gmail.com', '2024-05-15 23:22:35', '2024-05-15 23:22:35'),
(16, 'Riyad2103422@gmail.com', '2024-05-16 01:19:49', '2024-05-16 01:19:49'),
(17, 'mahafugmitthu12@gmail.com', '2024-05-16 01:29:33', '2024-05-16 01:29:33'),
(18, 'mahafugmitthu12@gmail.com', '2024-05-16 01:29:56', '2024-05-16 01:29:56'),
(19, 'emrulkaies100@gmail.com', '2024-05-17 03:54:48', '2024-05-17 03:54:48'),
(20, 'mafrul.shahinur@gmail.com', '2024-05-18 07:01:20', '2024-05-18 07:01:20'),
(21, 'nazmul1974@gmail.com', '2024-05-24 07:51:16', '2024-05-24 07:51:16'),
(22, 'nazmul1974@gmail.com', '2024-05-24 07:51:16', '2024-05-24 07:51:16'),
(23, 'shohelcu11@gmail.com', '2024-06-08 05:46:34', '2024-06-08 05:46:34'),
(24, 'zahir.trust@gmail.com', '2024-06-08 05:59:32', '2024-06-08 05:59:32'),
(25, '2009dhaka@gmail.com', '2024-07-11 15:17:10', '2024-07-11 15:17:10'),
(26, 'jenninkorbd7@gmail.com', '2025-05-04 00:31:39', '2025-05-04 00:31:39'),
(27, 'jenninkorbd7@gmail.com', '2025-05-04 00:31:40', '2025-05-04 00:31:40'),
(28, 'dhobbsr@gmail.com', '2025-05-05 20:06:07', '2025-05-05 20:06:07'),
(29, 'dhobbsr@gmail.com', '2025-05-05 20:06:08', '2025-05-05 20:06:08'),
(30, 'smallrybain@gmail.com', '2025-05-06 03:39:13', '2025-05-06 03:39:13'),
(31, 'smallrybain@gmail.com', '2025-05-06 03:39:14', '2025-05-06 03:39:14'),
(32, 'rsiliyapf@gmail.com', '2025-05-06 19:36:35', '2025-05-06 19:36:35'),
(33, 'tmorrisonq37@gmail.com', '2025-05-08 02:04:15', '2025-05-08 02:04:15'),
(34, 'tmorrisonq37@gmail.com', '2025-05-08 02:04:17', '2025-05-08 02:04:17'),
(35, 'kaetityler@gmail.com', '2025-05-08 19:58:48', '2025-05-08 19:58:48'),
(36, 'kaetityler@gmail.com', '2025-05-08 19:58:50', '2025-05-08 19:58:50'),
(37, 'dorethacarlson994694@yahoo.com', '2025-05-10 23:33:16', '2025-05-10 23:33:16'),
(38, 'dorethacarlson994694@yahoo.com', '2025-05-10 23:33:19', '2025-05-10 23:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `cover_photo`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(119, 77, 'Natural Sundarban Liqiuid Gold Honey', 'natural-sundarban-liqiuid-gold-honey', 'default.png', 1, 0, '2024-07-15 17:21:33', '2024-07-15 17:21:33'),
(120, 77, 'Honey Combo', 'honey-combo', 'default.png', 1, 0, '2024-07-15 17:22:29', '2024-07-15 17:23:14'),
(121, 77, 'Grameen Honey', 'grameen-honey', 'default.png', 1, 0, '2024-07-15 17:23:38', '2024-07-15 17:23:59'),
(122, 80, 'Mustard oil', 'mustard-oil', '2024-07-16-6695c1dee0c1b.png', 1, 1, '2024-07-15 18:42:06', '2024-07-15 18:42:06'),
(123, 80, 'Soybean oil', 'soybean-oil', '2024-07-16-6695c22dd937d.png', 1, 1, '2024-07-15 18:43:25', '2024-07-15 18:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `reply` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unproducts`
--

CREATE TABLE `unproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `refer` int(11) NOT NULL DEFAULT 2,
  `username` varchar(25) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `oauth_id` varchar(255) DEFAULT NULL,
  `oauth_type` varchar(255) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `cancel_attempt` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'default.png',
  `point` int(11) NOT NULL DEFAULT 0,
  `pen_point` int(11) DEFAULT NULL,
  `joining_date` date NOT NULL,
  `joining_month` varchar(15) NOT NULL,
  `joining_year` year(4) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `desig` int(11) DEFAULT NULL,
  `wallate` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `refer`, `username`, `email`, `phone`, `password`, `oauth_id`, `oauth_type`, `is_approved`, `status`, `cancel_attempt`, `avatar`, `point`, `pen_point`, `joining_date`, `joining_month`, `joining_year`, `email_verified_at`, `remember_token`, `desig`, `wallate`, `created_at`, `updated_at`) VALUES
(330, 2, 'Khati Dana', 2, 'khatidana', 'khati@gmail.com', '01775457008', '$2y$10$TlgL6oMcbr9QSuSd3kfiZu7PdU1oZgLoTObYZtZBBN.ICh1tBa5Yq', NULL, NULL, 1, 1, 0, '2024-07-16-66963e5f7f1d7.png', 0, NULL, '2024-07-16', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-16 03:23:59', '2024-07-16 03:34:10'),
(331, 3, 'Nayeem', 2, 'nayeem1364', 'nayeem@gmail.com', '01775457008', '$2y$10$qLODz78qfonlUg9OO9t8x.B0iybHvCzI6WIyxPzEM1CPjMFWLdy4q', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-07-16', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-16 09:10:59', '2024-07-16 09:10:59'),
(332, 3, 'Md Abdul Rashid', 2, 'mdabdulrashid1675', 'info.alhelalenterprise@gmail.com', '01858989392', '$2y$10$bWBwz/P2OOepaDMceIqjU.oh.rdSopR4NuuwxyHSgH5I69gpPNAAe', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-07-16', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-16 15:56:20', '2024-07-16 15:56:29'),
(333, 3, 'shuvo', 2, 'shuvo', 'shuvoctg@gmail.com', '01670397197', '$2y$10$KBHBn2xPzgfr.YKz29d9Ye9.56ZEuesF94dVEk5cvgYo2u/oYnPr.', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-07-16', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-16 17:08:29', '2024-07-16 17:08:29'),
(334, 3, 'Faysal', 2, 'faysal1592', 'faysal@gmail.com', '01400508343', '$2y$10$A7DcoF/r3nsNzeL133I1j.RqLrbG2ol6RFegK.BdMTezJXQswytO2', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-07-17', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-17 08:20:23', '2024-07-17 08:20:23'),
(335, 2, 'robin mdrobin', 2, 'robin', 'mdrobin678156@gmail.com', '01854162055', '$2y$10$AFYW3QRq28xmDORKF.KSau0tYOydzb/l.7LIeVqbzpIe.2FJtUyd6', NULL, NULL, 0, 1, 0, 'default.png', 0, NULL, '2024-07-18', 'July', '2024', NULL, NULL, NULL, 0, '2024-07-18 10:24:22', '2024-07-18 10:24:22'),
(336, 2, 'Sid Antor', 2, 'sidantor', 'sidantorr@gmail.com', '01795830500', '$2y$10$yzx65lW6U6XejF6UdVNTfOYFRjfVimzpSMVZyt3xUpJF1lxW6t7oa', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-08-20', 'August', '2024', NULL, NULL, NULL, 0, '2024-08-20 17:07:35', '2024-08-20 17:08:35'),
(337, 3, 'Imran Hossain', 2, 'imranhossain2910', 'mdimranho33@gmail.com', '01960007758', '$2y$10$WGT6HFzN4R5agSYciLP9POUaP/BRS0Lu9bXx/Nh0HRdSflOyjCPvq', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-08-20', 'August', '2024', NULL, NULL, NULL, 0, '2024-08-20 19:44:00', '2024-08-20 19:44:00'),
(338, 3, 'Tushar Sheikh', 2, 'tusharsheikh8312', 'tushar.mktjnu@gmail.com', '01774405367', '$2y$10$HDtShcvv0CqEhDvzXkhdy.z8jLvvoigGMNSeO3Bx5vgfAIQCliBs.', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-08-25', 'August', '2024', NULL, NULL, NULL, 0, '2024-08-25 09:18:12', '2024-08-25 09:18:30'),
(340, 3, 'phy', 2, 'phy8867', 'ashfaq.foysol2014@gmail.com', '01706672660', '$2y$10$2JMYYa1tlEnrYz224to00ObvoY83XNlys0R.rX/cdxMyVhrR432su', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-09-23', 'September', '2024', NULL, NULL, NULL, 0, '2024-09-23 02:47:49', '2024-09-23 02:47:49'),
(341, 3, 'phy', 2, 'phy8974', 'ashfaqfoysol007@gmail.com', '01726672665', '$2y$10$C7aJc9CTVm5Wzg8n4MIDTe7REJM6md7c3X8SFqvuDtPsT0w9Lf4lO', NULL, NULL, 1, 1, 0, 'default.png', 0, NULL, '2024-09-23', 'September', '2024', NULL, NULL, NULL, 0, '2024-09-23 02:50:24', '2024-09-23 02:50:24'),
(342, 3, 'rana', 2, 'rana7905', 'rana248070@gmail.com', '01913248070', '$2y$10$EbR5jgtavG.JDsvrAQH5lOuah32sfOlmgYrGsPD5vWw8GqfGXrLJi', NULL, NULL, 1, 1, 0, 'default.png', 0, 0, '2024-10-06', 'October', '2024', NULL, NULL, NULL, 0, '2024-10-06 06:31:44', '2024-10-06 07:13:06'),
(344, 3, 'test', 2, 'test5085', 'test1@gmail.com', '01512121212', '$2y$10$ldnxju1Z/0JOLLFfaskVwOCbFbH33ypWdjoIN4hrgII8MMqjOUuEK', NULL, NULL, 1, 1, 0, 'default.png', 0, 10, '2024-11-27', 'November', '2024', NULL, NULL, NULL, 0, '2024-11-27 17:02:15', '2024-11-27 17:04:14'),
(345, 1, 'Mahiuddin', 2, 'mahi', 'm@gmail.com', '01918910312', '$2y$10$F2.jyvaFZe0eMlKXJ6260eA.lWKhvnXozySSpKfN69APevlgXX7ma', NULL, NULL, 1, 1, 0, '2025-05-04-6816fc51d23e9.jpg', 0, NULL, '2025-05-04', 'May', '2025', NULL, NULL, 1, 0, '2025-05-03 23:34:09', '2025-05-03 23:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_accounts`
--

CREATE TABLE `vendor_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `pending_amount` decimal(20,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_accounts`
--

INSERT INTO `vendor_accounts` (`id`, `vendor_id`, `amount`, `pending_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 5657.00, 17537.35, NULL, '2025-05-30 22:05:56'),
(26, 325, 0.00, NULL, '2024-07-14 02:48:07', '2024-07-14 02:48:07'),
(27, 327, 0.00, NULL, '2024-07-15 12:12:47', '2024-07-15 12:12:47'),
(29, 330, 133.00, 32206.88, '2024-07-16 03:23:59', '2025-05-30 22:05:56'),
(30, 335, 0.00, NULL, '2024-07-18 10:24:22', '2024-07-18 10:24:22'),
(31, 336, 0.00, NULL, '2024-08-20 17:07:35', '2024-08-20 17:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 227, 656, '2023-07-02 10:03:25', '2023-07-02 10:03:25'),
(4, 247, 683, '2023-08-23 04:31:22', '2023-08-23 04:31:22'),
(5, 247, 684, '2023-08-23 04:31:25', '2023-08-23 04:31:25'),
(6, 274, 683, '2023-08-27 04:56:38', '2023-08-27 04:56:38'),
(7, 274, 684, '2023-08-27 04:57:28', '2023-08-27 04:57:28'),
(11, 256, 693, '2023-08-27 05:35:06', '2023-08-27 05:35:06'),
(12, 275, 683, '2023-08-27 08:27:42', '2023-08-27 08:27:42'),
(13, 310, 716, '2024-06-02 18:12:51', '2024-06-02 18:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_product_attribute_value_id_foreign` (`attribute_value_id`),
  ADD KEY `attribute_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_values_slug_unique` (`slug`),
  ADD KEY `attribute_values_attributes_id_foreign` (`attributes_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaing_comments`
--
ALTER TABLE `campaing_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaing_comments_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaing_products_campain_id_foreign` (`campaign_id`),
  ADD KEY `campaing_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `cart_infos`
--
ALTER TABLE `cart_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_collection`
--
ALTER TABLE `category_collection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_collection_category_id_foreign` (`category_id`),
  ADD KEY `category_collection_collection_id_foreign` (`collection_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_user_id_foreign` (`user_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `collections_name_unique` (`name`),
  ADD UNIQUE KEY `collections_slug_unique` (`slug`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colors_name_unique` (`name`),
  ADD UNIQUE KEY `colors_slug_unique` (`slug`),
  ADD UNIQUE KEY `colors_code_unique` (`code`);

--
-- Indexes for table `color_product`
--
ALTER TABLE `color_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `color_product_color_id_foreign` (`color_id`),
  ADD KEY `color_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_product_id_foreign` (`product_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_user_user_id_foreign` (`user_id`),
  ADD KEY `coupon_user_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `customer_infos`
--
ALTER TABLE `customer_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_infos_user_id_foreign` (`user_id`);

--
-- Indexes for table `device_ids`
--
ALTER TABLE `device_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_products`
--
ALTER TABLE `download_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `download_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `download_users`
--
ALTER TABLE `download_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `download_users_user_id_foreign` (`user_id`),
  ADD KEY `download_users_product_id_foreign` (`product_id`);

--
-- Indexes for table `download_user_products`
--
ALTER TABLE `download_user_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `download_user_products_user_id_foreign` (`user_id`),
  ADD KEY `download_user_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `extra_mini_categories`
--
ALTER TABLE `extra_mini_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `extra_mini_categories_name_unique` (`name`),
  ADD UNIQUE KEY `extra_mini_categories_slug_unique` (`slug`),
  ADD KEY `extra_mini_categories_mini_category_id_foreign` (`mini_category_id`);

--
-- Indexes for table `extra_mini_category_product`
--
ALTER TABLE `extra_mini_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra_mini_category_product_extra_mini_categories_id_foreign` (`extra_mini_category_id`),
  ADD KEY `extra_mini_category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mini_categories`
--
ALTER TABLE `mini_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mini_categories_name_unique` (`name`),
  ADD UNIQUE KEY `mini_categories_slug_unique` (`slug`),
  ADD KEY `mini_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `mini_category_product`
--
ALTER TABLE `mini_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mini_category_product_product_id_foreign` (`product_id`),
  ADD KEY `mini_category_product_mini_category_id_foreign` (`mini_category_id`);

--
-- Indexes for table `multi_order`
--
ALTER TABLE `multi_order`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partial_payments`
--
ALTER TABLE `partial_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_size_size_id_foreign` (`size_id`),
  ADD KEY `product_size_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sub_category_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `product_sub_category_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_user`
--
ALTER TABLE `product_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_user_user_id_foreign` (`user_id`),
  ADD KEY `product_user_product_id_foreign` (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_infos`
--
ALTER TABLE `shop_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_infos_user_id_foreign` (`user_id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sizes_name_unique` (`name`),
  ADD UNIQUE KEY `sizes_slug_unique` (`slug`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_name_unique` (`name`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `unproducts`
--
ALTER TABLE `unproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unproducts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_accounts_vendor_id_foreign` (`vendor_id`) USING BTREE;

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `attribute_product`
--
ALTER TABLE `attribute_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaing_comments`
--
ALTER TABLE `campaing_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaing_products`
--
ALTER TABLE `campaing_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cart_infos`
--
ALTER TABLE `cart_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `category_collection`
--
ALTER TABLE `category_collection`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `color_product`
--
ALTER TABLE `color_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_infos`
--
ALTER TABLE `customer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- AUTO_INCREMENT for table `device_ids`
--
ALTER TABLE `device_ids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `download_products`
--
ALTER TABLE `download_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `download_users`
--
ALTER TABLE `download_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `download_user_products`
--
ALTER TABLE `download_user_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_mini_categories`
--
ALTER TABLE `extra_mini_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `extra_mini_category_product`
--
ALTER TABLE `extra_mini_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `mini_categories`
--
ALTER TABLE `mini_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `mini_category_product`
--
ALTER TABLE `mini_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `multi_order`
--
ALTER TABLE `multi_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `partial_payments`
--
ALTER TABLE `partial_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=772;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_sub_category`
--
ALTER TABLE `product_sub_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=915;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `product_user`
--
ALTER TABLE `product_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `shop_infos`
--
ALTER TABLE `shop_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `unproducts`
--
ALTER TABLE `unproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `vendor_accounts`
--
ALTER TABLE `vendor_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_product`
--
ALTER TABLE `attribute_product`
  ADD CONSTRAINT `attribute_product_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attributes_id_foreign` FOREIGN KEY (`attributes_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaing_comments`
--
ALTER TABLE `campaing_comments`
  ADD CONSTRAINT `campaing_comments_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaing_products`
--
ALTER TABLE `campaing_products`
  ADD CONSTRAINT `campaing_products_campain_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `campaing_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_collection`
--
ALTER TABLE `category_collection`
  ADD CONSTRAINT `category_collection_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_collection_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `color_product`
--
ALTER TABLE `color_product`
  ADD CONSTRAINT `color_product_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `color_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD CONSTRAINT `coupon_user_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_infos`
--
ALTER TABLE `customer_infos`
  ADD CONSTRAINT `customer_infos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `download_products`
--
ALTER TABLE `download_products`
  ADD CONSTRAINT `download_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `download_users`
--
ALTER TABLE `download_users`
  ADD CONSTRAINT `download_users_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `download_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `download_user_products`
--
ALTER TABLE `download_user_products`
  ADD CONSTRAINT `download_user_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `download_user_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `extra_mini_categories`
--
ALTER TABLE `extra_mini_categories`
  ADD CONSTRAINT `extra_mini_categories_mini_category_id_foreign` FOREIGN KEY (`mini_category_id`) REFERENCES `mini_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `extra_mini_category_product`
--
ALTER TABLE `extra_mini_category_product`
  ADD CONSTRAINT `extra_mini_category_product_extra_mini_categories_id_foreign` FOREIGN KEY (`extra_mini_category_id`) REFERENCES `extra_mini_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `extra_mini_category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mini_category_product`
--
ALTER TABLE `mini_category_product`
  ADD CONSTRAINT `mini_category_product_mini_category_id_foreign` FOREIGN KEY (`mini_category_id`) REFERENCES `mini_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mini_category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `unproducts`
--
ALTER TABLE `unproducts`
  ADD CONSTRAINT `unproducts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
