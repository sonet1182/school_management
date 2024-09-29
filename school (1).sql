-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2024 at 08:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `link`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, '佐藤 恵美', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709877544.jpg', 0, '2024-03-07 23:59:04', '2024-03-08 00:23:12', '2024-03-08 00:23:12'),
(15, 'Banner 2', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709877854.jpg', 0, '2024-03-08 00:04:14', '2024-03-08 00:10:54', '2024-03-08 00:10:54'),
(16, 'Banner 2', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709878774.jpg', 0, '2024-03-08 00:19:34', '2024-03-08 00:20:35', '2024-03-08 00:20:35'),
(17, '佐藤 恵美', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1716125073.PNG', 1, '2024-03-08 00:25:03', '2024-09-24 12:15:42', '2024-09-24 12:15:42'),
(18, '佐藤 恵美', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709879114.jpg', 0, '2024-03-08 00:25:14', '2024-03-08 00:25:19', '2024-03-08 00:25:19'),
(19, 'Mouse Banner', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709911818.png', 0, '2024-03-08 00:25:35', '2024-03-14 01:18:20', '2024-03-14 01:18:20'),
(20, '成田智之', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709879148.png', 0, '2024-03-08 00:25:48', '2024-03-08 00:25:54', '2024-03-08 00:25:54'),
(21, 'fdfdsfsdf', NULL, NULL, 0, '2024-03-08 00:32:08', '2024-03-08 00:46:36', '2024-03-08 00:46:36'),
(22, 'Teddy Beer', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180115.jpg', 1, '2024-03-08 00:46:31', '2024-09-24 12:15:16', NULL),
(23, 'raaarerew c222', 'https://laravel.com/docs/10.x/seeding', NULL, 0, '2024-03-08 09:16:34', '2024-03-08 09:16:46', '2024-03-08 09:16:46'),
(24, 'New Banner', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709911974.jpg', 0, '2024-03-08 09:32:54', '2024-09-24 12:15:49', '2024-09-24 12:15:49'),
(25, 'Family Banner', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1709912000.jpg', 0, '2024-03-08 09:33:20', '2024-09-24 12:16:23', '2024-09-24 12:16:23'),
(26, '佐藤 恵美 with Family', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1710218809.jpg', 1, '2024-03-11 22:46:50', '2024-03-14 01:18:15', '2024-03-14 01:18:15'),
(27, 'Banner One', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1710400807.png', 1, '2024-03-14 01:20:07', '2024-09-24 12:16:47', '2024-09-24 12:16:47'),
(28, 'erfewr', 'ewrfewrewr', 'images/banners/image_1716124999.PNG', 1, '2024-05-19 07:23:19', '2024-09-24 12:16:50', '2024-09-24 12:16:50'),
(29, 'erfewr', 'ewrfewrewr', 'images/banners/image_1716125000.PNG', 1, '2024-05-19 07:23:20', '2024-09-24 12:16:53', '2024-09-24 12:16:53'),
(30, 'adsad', 'sadsadas', 'images/banners/image_1716130530.PNG', 1, '2024-05-19 08:55:31', '2024-09-24 12:16:56', '2024-09-24 12:16:56'),
(31, 'adsad', 'asdsada', NULL, 1, '2024-05-19 08:55:41', '2024-09-24 12:16:58', '2024-09-24 12:16:58'),
(32, 'adsad', 'asdsada', NULL, 1, '2024-05-19 08:55:42', '2024-05-21 07:48:25', '2024-05-21 07:48:25'),
(33, 'New Banner', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180256.jpg', 1, '2024-09-24 12:17:36', '2024-09-24 12:19:07', '2024-09-24 12:19:07'),
(34, 'test', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180270.jpg', 1, '2024-09-24 12:17:50', '2024-09-24 12:19:05', '2024-09-24 12:19:05'),
(35, 'test', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180271.jpg', 1, '2024-09-24 12:17:51', '2024-09-24 12:17:55', '2024-09-24 12:17:55'),
(36, 'Shawn Shikder', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180290.jpg', 1, '2024-09-24 12:18:10', '2024-09-24 12:18:10', NULL),
(37, 'Shawn Shikder', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180291.jpg', 1, '2024-09-24 12:18:11', '2024-09-24 12:18:29', '2024-09-24 12:18:29'),
(38, 'Shawn Shikder', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180291.jpg', 1, '2024-09-24 12:18:12', '2024-09-24 12:18:27', '2024-09-24 12:18:27'),
(39, 'test', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180357.jpg', 1, '2024-09-24 12:19:17', '2024-09-24 17:22:04', '2024-09-24 17:22:04'),
(40, 'Riyadul Amin', 'https://laravel.com/docs/10.x/seeding', 'images/banners/image_1727180367.jpg', 1, '2024-09-24 12:19:27', '2024-09-24 12:19:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Summer Sale', 'summer-sale', NULL, 1, '2024-02-21 10:39:28', '2024-02-23 10:55:52', NULL),
(2, 'Xiomi', 'xiomi', 'images/brands/image_1708533937.jpeg', 1, '2024-02-21 10:45:37', '2024-02-21 10:45:37', NULL),
(3, 'Hot Offer', 'hot-offer', 'images/gallery/members/image_1708535182.jpg', 1, '2024-02-21 11:00:50', '2024-02-23 10:53:53', NULL),
(4, 'fhgfhf', 'fhgfh', 'images/brands/image_1716204274.jpg', 1, '2024-05-20 05:24:35', '2024-05-20 05:24:35', NULL),
(5, 'fddfdsfsd', 'dfdsfds', 'images/brands/image_1719847532.png', 1, '2024-07-01 15:25:32', '2024-07-01 15:25:32', NULL),
(6, 'sakif', 'nokia', 'images/brands/image_1719847558.png', 1, '2024-07-01 15:25:58', '2024-07-01 15:25:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` mediumtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `image`, `url`, `status`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(122, 'ক্যাম্পাস', 'ক্যাম্পাস', NULL, NULL, 0, NULL, '2024-09-24 18:09:52', '2024-09-24 18:09:52', NULL),
(123, 'ভর্তি', 'ভর্তি', NULL, NULL, 0, NULL, '2024-09-24 18:10:07', '2024-09-24 18:10:07', NULL),
(124, 'ক্লাস সমূহ', 'ক্লাস-সমূহ', NULL, NULL, 0, NULL, '2024-09-24 18:10:20', '2024-09-24 18:10:20', NULL),
(125, 'ব্যাবস্থাপনা', 'ব্যাবস্থাপনা', NULL, NULL, 0, NULL, '2024-09-24 18:10:42', '2024-09-24 18:10:42', NULL),
(126, 'একাডেমিক', 'একাডেমিক', NULL, NULL, 0, NULL, '2024-09-24 18:11:02', '2024-09-24 18:11:02', NULL),
(127, 'নোটিশ', 'নোটিশ', NULL, NULL, 0, NULL, '2024-09-24 18:11:19', '2024-09-24 18:11:19', NULL),
(128, 'গ্যালারী', 'গ্যালারী', NULL, NULL, 0, NULL, '2024-09-24 18:11:31', '2024-09-24 18:11:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `parent_id`, `comment`, `created_at`, `updated_at`) VALUES
(10, 31, 25, 0, 'I am shiraj', '2024-08-26 17:34:32', '2024-08-26 17:34:32'),
(11, 31, 25, 0, 'I am sonet', '2024-08-26 17:34:42', '2024-08-26 17:34:42'),
(12, 31, 25, 0, 'I am safwan', '2024-08-26 17:34:58', '2024-08-26 17:34:58'),
(13, 31, 25, 0, 'new Comment', '2024-08-26 17:36:14', '2024-08-26 17:36:14'),
(14, 31, 25, 0, 'New more', '2024-08-26 17:36:19', '2024-08-26 17:36:19'),
(15, 31, 25, 0, 'Much More', '2024-08-26 17:36:26', '2024-08-26 17:36:26'),
(16, 31, 25, 0, 'ffdsfdsf', '2024-08-26 17:50:08', '2024-08-26 17:50:08'),
(17, 31, 25, 0, 'fdsfdsfs', '2024-08-26 17:50:11', '2024-08-26 17:50:11'),
(18, 31, 25, 0, 'asad', '2024-08-26 17:51:43', '2024-08-26 17:51:43'),
(19, 30, 25, 0, 'Nagad Is a trusted organization.', '2024-08-26 18:19:23', '2024-08-26 18:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nihil Course', NULL, NULL),
(2, 'et Course', NULL, NULL),
(3, 'assumenda Course', NULL, NULL),
(4, 'facilis Course', NULL, NULL),
(5, 'quasi Course', NULL, NULL),
(6, 'fugiat Course', NULL, NULL),
(7, 'magnam Course', NULL, NULL),
(8, 'nihil Course', NULL, NULL),
(9, 'qui Course', NULL, NULL),
(10, 'omnis Course', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `details` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Science', NULL, '2024-09-24 16:18:21', '2024-09-24 16:18:21', NULL),
(2, 'Commerce', NULL, '2024-09-24 16:18:28', '2024-09-24 16:18:28', NULL),
(3, 'Arts', NULL, '2024-09-24 16:18:33', '2024-09-24 16:18:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dhaka', 1, 1, '2024-02-24 07:22:46', '2024-02-24 07:22:46', NULL),
(2, 'Tangail', 1, 1, '2024-02-24 07:22:55', '2024-02-24 07:22:55', NULL),
(3, 'Gazipur', 1, 1, '2024-02-24 07:23:12', '2024-02-24 07:23:12', NULL),
(4, 'Cumilla', 1, 1, '2024-02-24 07:23:26', '2024-02-24 07:23:26', NULL),
(5, 'Sylhet', 2, 1, '2024-02-24 07:23:35', '2024-02-24 07:23:35', NULL),
(6, 'Shunamganj', 2, 1, '2024-02-24 07:23:52', '2024-02-24 07:23:52', NULL),
(7, 'Cox\'s Bazar', 5, 1, '2024-02-24 07:24:04', '2024-02-24 07:24:04', NULL),
(8, 'Rangamati', 5, 1, '2024-02-24 07:24:13', '2024-02-24 07:24:13', NULL),
(9, 'Bandarban', 5, 1, '2024-02-24 07:24:20', '2024-02-24 07:24:20', NULL),
(10, 'Rajshahi', 3, 1, '2024-02-24 07:24:31', '2024-02-24 07:24:31', NULL),
(11, 'Bogra', 3, 1, '2024-02-24 07:24:38', '2024-02-24 07:24:38', NULL),
(12, 'Nator', 3, 1, '2024-02-24 07:24:46', '2024-02-24 07:24:46', NULL),
(13, 'Sirajganj', 3, 1, '2024-02-24 07:24:55', '2024-02-24 07:24:55', NULL),
(14, 'Padna', 3, 1, '2024-02-24 07:25:07', '2024-02-24 07:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dhaka', 1, '2024-02-24 07:17:24', '2024-03-07 22:58:50', NULL),
(2, 'Sylhet', 1, '2024-02-24 07:21:32', '2024-02-24 07:21:32', NULL),
(3, 'Rajshahi', 1, '2024-02-24 07:21:41', '2024-02-24 07:21:41', NULL),
(4, 'Barishal', 1, '2024-02-24 07:21:50', '2024-02-24 07:21:50', NULL),
(5, 'Chittagong', 1, '2024-02-24 07:21:58', '2024-02-24 07:22:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `details` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `designation`, `details`, `phone`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Shawn Shikder', 'MBBS', NULL, NULL, 'images/brands/image_1719848718.jpg', 1, '2024-07-01 15:45:18', '2024-07-01 15:45:18', NULL),
(2, 'sakif', 'MBBS', NULL, '01478563258', 'images/brands/image_1719848827.png', 1, '2024-07-01 15:47:07', '2024-07-03 16:04:07', '2024-07-03 16:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `post` text NOT NULL,
  `details` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `post`, `details`, `phone`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Masum Billah', 'CEO', NULL, '01914565237', 'images/employees/image_1719852999.jpg', 1, '2024-07-01 16:56:39', '2024-07-01 16:58:45', NULL),
(2, 'Akash', 'Manager', NULL, '01914565237', 'images/employees/image_1719853044.png', 1, '2024-07-01 16:57:24', '2024-07-03 16:03:56', '2024-07-03 16:03:56');

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
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `group` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `user_id`, `title`, `description`, `group`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 16, 'Card Form', 'Details of Card Form', 3, '2024-08-16 08:03:13', '2024-09-05 09:06:13', NULL),
(8, 10, 'User ID Card Form', NULL, NULL, '2024-08-20 06:55:13', '2024-08-20 06:55:13', NULL),
(9, 17, 'Organization Registration Form', NULL, NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53', NULL),
(10, 16, 'New Member Form October', 'Details', 4, '2024-09-04 09:10:18', '2024-09-04 09:27:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_fields`
--

CREATE TABLE `form_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `field_type` varchar(255) NOT NULL,
  `field_label` varchar(255) NOT NULL,
  `field_options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `form_fields`
--

INSERT INTO `form_fields` (`id`, `form_id`, `field_type`, `field_label`, `field_options`, `created_at`, `updated_at`) VALUES
(68, 8, 'text', 'Name', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(69, 8, 'text', 'Phone', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(70, 8, 'text', 'Blood Group', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(71, 8, 'text', 'Institution', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(72, 8, 'file', 'Image', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(73, 8, 'select', 'Gender', 'Male, Female', '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(74, 8, 'textarea', 'Address', NULL, '2024-08-22 06:40:48', '2024-08-22 06:40:48'),
(75, 9, 'text', 'Name', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(76, 9, 'text', 'Phone', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(77, 9, 'text', 'Blood Group', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(78, 9, 'text', 'Institution', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(79, 9, 'file', 'Image', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(80, 9, 'text', 'Designation', NULL, '2024-08-27 10:01:53', '2024-08-27 10:01:53'),
(100, 10, 'text', 'Name', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(101, 10, 'text', 'Phone', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(102, 10, 'text', 'Blood Group', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(103, 10, 'text', 'Institution', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(104, 10, 'file', 'Image', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(105, 10, 'checkbox', 'Interest', 'Tour, Riding, Reading Book, Content Watching, Debate, Sports', '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(106, 10, 'textarea', 'Address', NULL, '2024-09-04 09:27:57', '2024-09-04 09:27:57'),
(119, 7, 'text', 'Name', NULL, '2024-09-05 09:06:13', '2024-09-05 09:06:13'),
(120, 7, 'text', 'Phone', NULL, '2024-09-05 09:06:13', '2024-09-05 09:06:13'),
(121, 7, 'text', 'Blood Group', NULL, '2024-09-05 09:06:13', '2024-09-05 09:06:13'),
(122, 7, 'text', 'Institution', NULL, '2024-09-05 09:06:13', '2024-09-05 09:06:13'),
(123, 7, 'file', 'Image', NULL, '2024-09-05 09:06:13', '2024-09-05 09:06:13'),
(124, 7, 'radio', 'Gender', 'Male, Female', '2024-09-05 09:06:13', '2024-09-05 09:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `form_inputs`
--

CREATE TABLE `form_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `form_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_hierarchy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `image` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `category` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creator_id` int(11) NOT NULL,
  `members` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`members`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `slug`, `category_hierarchy`, `image`, `details`, `category`, `status`, `creator_id`, `members`, `created_at`, `updated_at`) VALUES
(3, 'Group one added by Leader One', 'Group-one-added-by-Leader-One', '[98,117]', 'images/group/image_1725434282.jpg', '<p>Group one added by Leader One Details<br></p>', 117, 1, 16, NULL, '2024-09-04 07:18:02', '2024-09-04 07:18:02'),
(4, 'Group 2 Added by Leader 1', 'Group-2-Added-by-Leader-1', '[118,119]', 'images/group/image_1725434311.jpg', '<p>Group 2 Added by Leader 1<br></p>', 119, 1, 16, '[28,22]', '2024-09-04 07:18:31', '2024-09-05 09:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `file_type` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `file_directory` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `user_id`, `original_name`, `filename`, `file_type`, `file_size`, `file_extension`, `file_directory`, `created_at`, `updated_at`) VALUES
(115, 1, '1c6d434521b3f481ed36c4fa4ca15a132a70d7ef-500x500.png', '1c6d434521b3f481ed36c4fa4ca15a132a70d7ef-500x500-1727199201.png', 'image/png', '70383', 'png', '/images/products/', '2024-09-24 17:33:21', '2024-09-24 17:33:21'),
(116, 1, '41toVm5laeL._AC_.jpg', '41tovm5laelac-1727199201.jpg', 'image/jpeg', '45635', 'jpg', '/images/products/', '2024-09-24 17:33:21', '2024-09-24 17:33:21'),
(117, 1, '71Dk5NXCHhL._AC_SX695_.jpg', '71dk5nxchhlacsx695-1727199201.jpg', 'image/jpeg', '39183', 'jpg', '/images/products/', '2024-09-24 17:33:21', '2024-09-24 17:33:21'),
(118, 1, '71K-2m0LIvL._AC_SX575_.jpg', '71k-2m0livlacsx575-1727199201.jpg', 'image/jpeg', '56712', 'jpg', '/images/products/', '2024-09-24 17:33:21', '2024-09-24 17:33:21'),
(120, 1, '81afYXgxlYL._AC_SL1500_.jpg', '81afyxgxlylacsl1500-1727199223.jpg', 'image/jpeg', '81692', 'jpg', '/images/products/', '2024-09-24 17:33:43', '2024-09-24 17:33:43'),
(121, 1, '961ef606482f6624dc3e10933c02959574fe5da5-500x500.png', '961ef606482f6624dc3e10933c02959574fe5da5-500x500-1727199223.png', 'image/png', '71432', 'png', '/images/products/', '2024-09-24 17:33:43', '2024-09-24 17:33:43'),
(122, 1, '7197uxUJGBL._AC_SX575_.jpg', '7197uxujgblacsx575-1727199223.jpg', 'image/jpeg', '41480', 'jpg', '/images/products/', '2024-09-24 17:33:43', '2024-09-24 17:33:43'),
(123, 1, 'bca62bfcd1f2edcb86f92411c92d78080791e71a-500x500.png', 'bca62bfcd1f2edcb86f92411c92d78080791e71a-500x500-1727199223.png', 'image/png', '124537', 'png', '/images/products/', '2024-09-24 17:33:43', '2024-09-24 17:33:43'),
(124, 1, 'download.jpeg', 'download-1727199223.jpeg', 'image/jpeg', '54758', 'jpeg', '/images/products/', '2024-09-24 17:33:44', '2024-09-24 17:33:44'),
(125, 1, 'Naviforce-9197-L-Black-Gold-jpg.webp', 'naviforce-9197-l-black-gold-jpg-1727199224.webp', 'image/webp', '36054', 'webp', '/images/products/', '2024-09-24 17:33:44', '2024-09-24 17:33:44'),
(126, 1, 'Naviforce-9197-L-Silver-Green-jpg.webp', 'naviforce-9197-l-silver-green-jpg-1727199224.webp', 'image/webp', '34962', 'webp', '/images/products/', '2024-09-24 17:33:44', '2024-09-24 17:33:44'),
(127, 1, 'Naviforce-9208-L-Brown-Black.webp', 'naviforce-9208-l-brown-black-1727199224.webp', 'image/webp', '34026', 'webp', '/images/products/', '2024-09-24 17:33:44', '2024-09-24 17:33:44');

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `location`, `content`, `created_at`, `updated_at`) VALUES
(5, 'sadadsa', NULL, NULL, '2024-01-01 07:32:54', '2024-01-01 07:32:54');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_31_192226_create_students_table', 1),
(6, '2023_12_31_194452_create_courses_table', 1),
(7, '2024_01_01_090901_create_posts_table', 1),
(8, '2024_01_01_124604_create_menus_table', 1),
(9, '2024_01_01_124615_create_menuitems_table', 1),
(11, '2024_01_01_185840_create_web_properties_table', 3),
(12, '2024_01_13_160721_create_permission_tables', 4),
(13, '2024_01_13_160737_create_products_table', 5),
(14, '2024_02_04_133150_create_categories_table', 6),
(15, '2024_02_13_123758_create_media_table', 7),
(16, '2024_02_21_144644_create_brands_table', 8),
(17, '2024_02_23_150008_create_offers_table', 9),
(18, '2023_06_13_150638_create_divisions_table', 10),
(19, '2023_06_13_150815_create_districts_table', 10),
(20, '2023_06_14_094702_create_thanas_table', 10),
(21, '2024_03_08_050006_create_banners_table', 11),
(22, '2024_03_12_073901_create_product_variants_table', 12),
(23, '2024_03_13_071654_create_promo_codes_table', 13),
(24, '2024_05_19_142241_create_tests_table', 14),
(25, '2024_05_19_153925_create_packages_table', 15),
(26, '2024_05_20_160958_create_receipts_table', 16),
(27, '2024_07_01_213226_create_doctors_table', 17),
(28, '2024_07_01_220444_create_employees_table', 18),
(29, '2024_01_01_165418_create_form_inputs_table', 19),
(30, '2024_08_14_120302_create_forms_table', 19),
(31, '2024_08_14_120404_create_form_fields_table', 19),
(32, '2024_08_14_120410_create_submissions_table', 19),
(33, '2024_08_23_150543_create_notices_table', 20),
(34, '2024_08_26_114558_create_pages_table', 21),
(35, '2024_08_26_180059_create_email_verifications_table', 22),
(37, '2024_08_26_211759_create_comments_table', 23),
(38, '2024_09_04_121234_create_groups_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `body` text DEFAULT NULL,
  `start_from` timestamp NULL DEFAULT NULL,
  `end_to` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `body`, `start_from`, `end_to`, `created_by`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 'New Notice', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই</span></p>', '2024-09-23 18:00:00', '2024-10-30 18:00:00', 1, 1, NULL, '2024-09-24 16:49:02', '2024-09-24 16:49:02'),
(7, 'New Notice Two', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই</span></p>', '2024-09-30 18:00:00', '2024-10-14 18:00:00', 1, 1, NULL, '2024-09-24 16:49:54', '2024-09-24 17:26:39'),
(8, 'New Notice Two', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই</span></p>', '2024-09-30 18:00:00', '2024-10-30 18:00:00', 1, 1, '2024-09-24 16:53:32', '2024-09-24 16:49:54', '2024-09-24 16:53:32'),
(9, 'fgfdgfdg', '<p>fgfgfgfdg</p>', NULL, NULL, 1, 1, '2024-09-24 16:53:49', '2024-09-24 16:53:39', '2024-09-24 16:53:49'),
(10, 'dfsfdsfsdf', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই</span></p>', '2024-09-02 18:00:00', '2024-10-30 18:00:00', 1, 0, '2024-09-24 16:54:52', '2024-09-24 16:54:04', '2024-09-24 16:54:52'),
(11, 'zsfsdsf', '<p>fddsfdsfdsfs</p>', NULL, NULL, 1, 1, '2024-09-24 16:54:49', '2024-09-24 16:54:20', '2024-09-24 16:54:49'),
(12, 'fdafdfdfdsf', '<p>aadasdad</p>', '2024-09-10 18:00:00', '2024-10-29 18:00:00', 1, 1, '2024-09-24 16:54:55', '2024-09-24 16:54:40', '2024-09-24 16:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `start_from` timestamp NULL DEFAULT NULL,
  `end_to` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `slug`, `start_from`, `end_to`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Summer Sale', 'summer-sale', '2024-02-22 23:00:00', '2024-03-21 18:00:00', 'images/offers/image_1708704726.jpg', 1, '2024-02-23 10:12:07', '2024-02-23 10:57:14', NULL),
(2, 'Winter Sale', 'winter-sale', '2024-03-03 12:00:00', '2024-04-30 10:00:00', 'images/offers/image_1708706776.jpg', 1, '2024-02-23 10:46:16', '2024-02-23 10:46:16', NULL),
(3, 'Hot Offer', 'hot-offer', '2024-02-25 18:00:00', '2024-03-28 18:00:00', 'images/offers/image_1708706899.jpg', 1, '2024-02-23 10:48:19', '2024-02-23 12:08:40', NULL),
(4, 'Special Offer', 'special-offer', NULL, NULL, 'images/offers/image_1708707714.jpg', 1, '2024-02-23 11:01:54', '2024-02-23 12:09:26', NULL),
(5, 'Best Deal', 'best-deal', '2024-02-28 18:00:00', '2024-03-26 18:00:00', 'images/offers/image_1708708244.jpg', 1, '2024-02-23 11:10:44', '2024-02-23 12:09:50', NULL),
(6, 'Mega Deals', 'mega-deals', '2024-02-26 18:00:00', '2024-03-27 18:00:00', 'images/offers/image_1708708280.jpg', 1, '2024-02-23 11:11:20', '2024-02-23 11:11:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `test_list` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `test_list`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Package-01', 1200.00, '\"[\\\"1\\\",\\\"7\\\",\\\"28\\\"]\"', '2024-05-20 04:59:27', '2024-05-20 05:16:25', NULL),
(2, 'package-02', 1000.00, '\"[\\\"1\\\",\\\"10\\\",\\\"15\\\",\\\"29\\\",\\\"30\\\"]\"', '2024-05-20 05:16:51', '2024-05-20 09:31:56', NULL),
(3, 'Package-03', 1450.00, '\"[\\\"4\\\",\\\"5\\\",\\\"7\\\"]\"', '2024-05-20 05:17:29', '2024-05-21 07:55:46', NULL),
(4, 'Packa-06', 200.00, '\"[\\\"1\\\",\\\"7\\\",\\\"25\\\"]\"', '2024-05-20 05:19:42', '2024-05-21 07:53:56', NULL),
(5, 'প্যাকেজ ওয়ান', 400.00, '\"[\\\"1\\\",\\\"2\\\",\\\"4\\\"]\"', '2024-06-19 11:11:25', '2024-06-19 11:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `image` mediumtext DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `body`, `image`, `height`, `width`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'About-Us', '<p>About Us Details<br></p>', NULL, NULL, NULL, '2024-08-26 05:57:21', '2024-08-26 05:57:21'),
(2, 'Terms & Condition', 'Terms-Condition', '<p>Terms &amp; Condition Details<br></p>', NULL, NULL, NULL, '2024-08-26 06:11:05', '2024-08-26 06:11:05'),
(4, 'প্রতিষ্ঠানের ইতিহাস', 'প্রতিষ্ঠানের-ইতিহাস', '<span style=\"color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">রাজধানী ঢাকার অদূরে গাজীপুর জেলা। প্রাকৃতিক সৌন্দর্য মন্ডিত সবুজ শ্যামল বেষ্টনী ঘেরা এই জেলার অন্যতম গুরুত্বপূর্ণ অঞ্চল কালিয়াকৈর উপজেলায় অবস্থিত আমাদের শিক্ষা প্রতিষ্ঠান ..........................। কোমলমতি শিশুদের প্রাতিষ্ঠানিক শিক্ষায় শিক্ষিত করার পাশাপাশি তাদেরকে প্রকৃতি প্রেমি, দেশ প্রেমি তথা একজন সু নাগরিক হিসাবে গড়ে তোলার জন্য ২০০৮ খ্রি. প্রতিষ্ঠিত হয় .......... বিদ্যালয়। বিদ্যালয়টি ০১ একর জায়গা নিয়ে প্রতিষ্ঠিত। নিজস্ব বহুতল ভবন ছাড়াও এখানে রয়েছে প্রশস্ত খেলার মাঠ, স্কুল ক্যান্টিন এবং সততা স্টোর। শিক্ষার্থীরা নিয়মিত ক্লাশের ফাকে ফাকে লাইব্রেরীতে জ্ঞানার্জন করে অথবা কমনরুমে ইনডোর খেলাধুলায় ব্যস্ত থাকে। এছাড়া ওয়াক্তিয়া নামাজের জন্য রয়েছে একটি নামাজঘর। একদিকে বিজ্ঞান বিভাগের শিক্ষার্থীরা প্রতিষ্ঠানের বিজ্ঞানাগারে বিভিন্ন বিষয়ে পরীক্ষা নিরীক্ষা করে নিজেদেরকে ভবিষ্যতের জন্য প্রস্তুত করছে, অন্যদিকে সকলের জন্য উন্মুক্ত আইসিটি ডিজিটাল ল্যাবে আধুনিক প্রযুক্তির নানান খুটিনাটি বিষয় নিয়ে কম্পিউটার প্রশিক্ষণের মাধ্যমে সকল শিক্ষার্থী আগামীর পরিবর্তিত বিশ্বের সাথে তাল মিলিয়ে চলার জন্য নিজেদেরকে প্রস্তুত করার সুযোগ পাচ্ছে।</span>', NULL, NULL, NULL, '2024-09-24 12:48:14', '2024-09-24 12:53:30'),
(5, 'প্রধান শিক্ষকের বাণী', 'প্রধান-শিক্ষকের-বাণী', '<div style=\"text-align: center;\"><span style=\"font-weight: bolder;\"><br></span><b style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 20px; text-align: justify;\">মোঃ বোরহান উদ্দিন</b><span style=\"font-weight: bolder;\"><br></span></div><p class=\"card-text\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px; text-align: justify;\">প্রধান শিক্ষক</span></p><p class=\"card-text\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 18px; text-align: justify;\"><br></span></p><p class=\"card-text\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">বিসমিল্লাহির রাহমানির রাহিম</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই আন্তরিক মোবারক বাদ।&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">&nbsp; &nbsp; প্রধান শিক্ষক</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া আলাল সিকাদার উচ্চ বিদ্যালয়</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া, ফুলবাড়ীয়া, কালিয়াকৈর, গাজীপুর।&nbsp;</p><p class=\"card-text\" style=\"text-align: center; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">বিসমিল্লাহির রাহমানির রাহিম</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই আন্তরিক মোবারক বাদ।&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">&nbsp; &nbsp; প্রধান শিক্ষক</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া আলাল সিকাদার উচ্চ বিদ্যালয়</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া, ফুলবাড়ীয়া, কালিয়াকৈর, গাজীপুর।&nbsp;</p>', NULL, NULL, NULL, '2024-09-24 12:59:21', '2024-09-24 12:59:21'),
(6, 'সভাপতির বাণী', 'সভাপতির-বাণী', '<p class=\"card-text\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\">বিসমিল্লাহির রাহমানির রাহিম</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: justify;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ড, ঢাকা জনগণের দোরগোড়ায় শিক্ষা সেবা পৌঁছে দেবার লক্ষ্যে যাবতীয় কার্যাদী সম্পাদনে ডিজিটাল প্রযুক্তি ব্যবহার ও ঢাকা শিক্ষাবোর্ডের অধীন সকল প্রতিষ্ঠানের তথ্য অনলাইনে প্রেরণের ব্যবস্থা নেওয়া হয়েছে জেনে আমি আনন্দিত। ২০০৮ খ্রিঃ প্রতিষ্ঠিত হয়েছিল&nbsp; জাথালিয়া আলাল সিকদার উচ্চ বিদ্যালয় । তখন থেকে প্রতিষ্ঠানটি এ এ্লাকায় শিক্ষা প্রসারে অনন্য ভূমিকা পালন করে চলেছে। উন্নত ও আলোকিত জাতি গঠনে আধুনিক শিক্ষায় শিক্ষিত দক্ষ জনগোষ্ঠী গড়ে তোলার জন্য বিদ্যালয়টি প্রায় ১৫ বছর ব্যাপী পালন করছে মহান দায়িত্ব।</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\"><span style=\"font-size: 1rem;\">আগামীতেও এই বিদ্যালয়ের সাথে সংশ্লিষ্ট বিজ্ঞ শিক্ষকমন্ডলী ও শিক্ষানুরাগী ব্যাক্তিবর্গ তাদের দায়িত্ব যথাযথভাবে পালন করে বিদ্যালয়টির সুনাম অক্ষুন্ন রাখতে সচেষ্ট থাকবেন বলে আমি আশাবাদী। আমি এই বিদ্যালয়টির সার্বিক সাফল্য কামনা করি এবং সংশ্লিষ্ট সকলকে জানাই আন্তরিক মোবারক বাদ।&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">&nbsp; &nbsp; প্রধান শিক্ষক</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া আলাল সিকাদার উচ্চ বিদ্যালয়</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, SolaimanLipiNormal, sans-serif; font-size: 18px; text-align: center;\">জাথালিয়া, ফুলবাড়ীয়া, কালিয়াকৈর, গাজীপুর।&nbsp;</p>', 'images/pages/image_1727183926.jpg', 400, 600, '2024-09-24 13:00:24', '2024-09-24 13:23:46');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(191) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'role', 'web', '2024-01-13 10:26:11', '2024-01-13 10:26:11'),
(2, 'role-create', 'role', 'web', '2024-01-13 10:26:11', '2024-01-13 10:26:11'),
(3, 'role-edit', 'role', 'web', '2024-01-13 10:26:11', '2024-01-13 10:26:11'),
(4, 'role-delete', 'role', 'web', '2024-01-13 10:26:11', '2024-01-13 10:26:11'),
(9, 'admin-dashboard', 'dashboard', 'web', '2024-01-13 17:50:55', '2024-01-13 17:50:55'),
(10, 'user-list', 'user', 'web', NULL, NULL),
(11, 'user-create', 'user', 'web', NULL, NULL),
(12, 'user-edit', 'user', 'web', NULL, NULL),
(13, 'user-delete', 'user', 'web', NULL, NULL),
(14, 'division-list', 'division', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(15, 'division-create', 'division', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(16, 'division-edit', 'division', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(17, 'division-delete', 'division', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(18, 'district-list', 'district', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(19, 'district-create', 'district', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(20, 'district-edit', 'district', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(21, 'district-delete', 'district', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(22, 'thana-list', 'thana', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(23, 'thana-create', 'thana', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(24, 'thana-edit', 'thana', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(25, 'thana-delete', 'thana', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(34, 'category-list', 'category', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(35, 'category-create', 'category', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(36, 'category-edit', 'category', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(37, 'category-delete', 'category', 'web', '2024-02-24 06:03:52', '2024-02-24 06:03:52'),
(38, 'banner-list', 'banner', 'web', '2024-03-07 23:07:35', '2024-03-07 23:07:35'),
(39, 'banner-create', 'banner', 'web', '2024-03-07 23:07:35', '2024-03-07 23:07:35'),
(40, 'banner-edit', 'banner', 'web', '2024-03-07 23:07:35', '2024-03-07 23:07:35'),
(41, 'banner-delete', 'banner', 'web', '2024-03-07 23:07:35', '2024-03-07 23:07:35'),
(42, 'promo-code-list', 'promo-code', 'web', '2024-03-13 01:35:29', '2024-03-13 01:35:29'),
(43, 'promo-code-create', 'promo-code', 'web', '2024-03-13 01:35:29', '2024-03-13 01:35:29'),
(44, 'promo-code-edit', 'promo-code', 'web', '2024-03-13 01:35:29', '2024-03-13 01:35:29'),
(45, 'promo-code-delete', 'promo-code', 'web', '2024-03-13 01:35:29', '2024-03-13 01:35:29'),
(46, 'package-list', 'package', 'web', '2024-05-20 05:02:10', '2024-05-20 05:02:10'),
(47, 'package-create', 'package', 'web', '2024-05-20 05:02:10', '2024-05-20 05:02:10'),
(48, 'package-edit', 'package', 'web', '2024-05-20 05:02:10', '2024-05-20 05:02:10'),
(49, 'package-delete', 'package', 'web', '2024-05-20 05:02:10', '2024-05-20 05:02:10'),
(50, 'receipt-list', 'receipt', 'web', '2024-05-20 06:57:50', '2024-05-20 06:57:50'),
(51, 'receipt-create', 'receipt', 'web', '2024-05-20 06:57:50', '2024-05-20 06:57:50'),
(52, 'receipt-edit', 'receipt', 'web', '2024-05-20 06:57:50', '2024-05-20 06:57:50'),
(53, 'receipt-delete', 'receipt', 'web', '2024-05-20 06:57:51', '2024-05-20 06:57:51'),
(54, 'test-list', 'test', 'web', '2024-05-20 06:57:51', '2024-05-20 06:57:51'),
(55, 'test-create', 'test', 'web', '2024-05-20 06:57:51', '2024-05-20 06:57:51'),
(56, 'test-edit', 'test', 'web', '2024-05-20 06:57:51', '2024-05-20 06:57:51'),
(57, 'test-delete', 'test', 'web', '2024-05-20 06:57:51', '2024-05-20 06:57:51'),
(58, 'form-list', 'form', 'web', '2024-08-16 07:33:31', '2024-08-16 07:33:31'),
(59, 'form-create', 'form', 'web', '2024-08-16 07:33:31', '2024-08-16 07:33:31'),
(60, 'form-edit', 'form', 'web', '2024-08-16 07:33:31', '2024-08-16 07:33:31'),
(61, 'form-delete', 'form', 'web', '2024-08-16 07:33:31', '2024-08-16 07:33:31'),
(62, 'leader-list', 'leader', 'web', '2024-08-16 07:34:27', '2024-08-16 07:34:27'),
(63, 'leader-create', 'leader', 'web', '2024-08-16 07:34:27', '2024-08-16 07:34:27'),
(64, 'leader-edit', 'leader', 'web', '2024-08-16 07:34:27', '2024-08-16 07:34:27'),
(65, 'leader-delete', 'leader', 'web', '2024-08-16 07:34:27', '2024-08-16 07:34:27'),
(66, 'subleader-list', 'subleader', 'web', '2024-08-16 07:34:41', '2024-08-16 07:34:41'),
(67, 'subleader-create', 'subleader', 'web', '2024-08-16 07:34:41', '2024-08-16 07:34:41'),
(68, 'subleader-edit', 'subleader', 'web', '2024-08-16 07:34:41', '2024-08-16 07:34:41'),
(69, 'subleader-delete', 'subleader', 'web', '2024-08-16 07:34:41', '2024-08-16 07:34:41'),
(70, 'post-list', 'post', 'web', '2024-08-16 10:05:51', '2024-08-16 10:05:51'),
(71, 'post-create', 'post', 'web', '2024-08-16 10:05:51', '2024-08-16 10:05:51'),
(72, 'post-edit', 'post', 'web', '2024-08-16 10:05:51', '2024-08-16 10:05:51'),
(73, 'post-delete', 'post', 'web', '2024-08-16 10:05:51', '2024-08-16 10:05:51'),
(74, 'notice-list', 'notice', 'web', '2024-08-23 09:10:58', '2024-08-23 09:10:58'),
(75, 'notice-create', 'notice', 'web', '2024-08-23 09:10:58', '2024-08-23 09:10:58'),
(76, 'notice-edit', 'notice', 'web', '2024-08-23 09:10:58', '2024-08-23 09:10:58'),
(77, 'notice-delete', 'notice', 'web', '2024-08-23 09:10:58', '2024-08-23 09:10:58'),
(78, 'group-list', 'group', 'web', '2024-09-04 06:26:12', '2024-09-04 06:26:12'),
(79, 'group-create', 'group', 'web', '2024-09-04 06:26:12', '2024-09-04 06:26:12'),
(80, 'group-edit', 'group', 'web', '2024-09-04 06:26:12', '2024-09-04 06:26:12'),
(81, 'group-delete', 'group', 'web', '2024-09-04 06:26:12', '2024-09-04 06:26:12'),
(86, 'class-list', 'class', 'web', '2024-09-24 17:46:17', '2024-09-24 17:46:17'),
(87, 'class-create', 'class', 'web', '2024-09-24 17:46:17', '2024-09-24 17:46:17'),
(88, 'class-edit', 'class', 'web', '2024-09-24 17:46:17', '2024-09-24 17:46:17'),
(89, 'class-delete', 'class', 'web', '2024-09-24 17:46:17', '2024-09-24 17:46:17'),
(90, 'department-list', 'department', 'web', '2024-09-24 17:46:42', '2024-09-24 17:46:42'),
(91, 'department-create', 'department', 'web', '2024-09-24 17:46:43', '2024-09-24 17:46:43'),
(92, 'department-edit', 'department', 'web', '2024-09-24 17:46:43', '2024-09-24 17:46:43'),
(93, 'department-delete', 'department', 'web', '2024-09-24 17:46:43', '2024-09-24 17:46:43'),
(94, 'section-list', 'section', 'web', '2024-09-24 17:47:00', '2024-09-24 17:47:00'),
(95, 'section-create', 'section', 'web', '2024-09-24 17:47:00', '2024-09-24 17:47:00'),
(96, 'section-edit', 'section', 'web', '2024-09-24 17:47:00', '2024-09-24 17:47:00'),
(97, 'section-delete', 'section', 'web', '2024-09-24 17:47:00', '2024-09-24 17:47:00'),
(98, 'student-list', 'student', 'web', '2024-09-24 17:47:22', '2024-09-24 17:47:22'),
(99, 'student-create', 'student', 'web', '2024-09-24 17:47:22', '2024-09-24 17:47:22'),
(100, 'student-edit', 'student', 'web', '2024-09-24 17:47:22', '2024-09-24 17:47:22'),
(101, 'student-delete', 'student', 'web', '2024-09-24 17:47:22', '2024-09-24 17:47:22'),
(102, 'teacher-list', 'teacher', 'web', '2024-09-24 17:47:37', '2024-09-24 17:47:37'),
(103, 'teacher-create', 'teacher', 'web', '2024-09-24 17:47:37', '2024-09-24 17:47:37'),
(104, 'teacher-edit', 'teacher', 'web', '2024-09-24 17:47:37', '2024-09-24 17:47:37'),
(105, 'teacher-delete', 'teacher', 'web', '2024-09-24 17:47:37', '2024-09-24 17:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `expires_at`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 10, 'user1@gmail.com_Token', 'a3253f8618736ad0c5d5edcdb66ca6d557e5f45b6fd81572d5e07a7627f8acb9', '[\"*\"]', NULL, NULL, '2024-02-04 03:31:49', '2024-02-04 03:31:49'),
(8, 'App\\Models\\User', 10, 'user1@gmail.com_Token', '8465b6d9fcb442f7db0a9e5a6ddec9ae88d2d723dbe765331fb5583d2166d40a', '[\"*\"]', NULL, '2024-02-04 05:02:22', '2024-02-04 03:35:42', '2024-02-04 05:02:22'),
(9, 'App\\Models\\User', 10, 'user1@gmail.com_Token', 'fcdc65f39532b322d16b6182eaa310ae0cdf0a6dbab85ba4df520575ae15b3ba', '[\"*\"]', NULL, NULL, '2024-02-04 03:36:06', '2024-02-04 03:36:06'),
(10, 'App\\Models\\User', 1, 'sonet@gmail.com_Token', '98fc67fb1d3fa6c437567ac44c6e1ddb3e29f9c7d385ae56b126d9c45f91f159', '[\"*\"]', NULL, NULL, '2024-08-23 13:05:26', '2024-08-23 13:05:26'),
(11, 'App\\Models\\User', 1, 'sonet@gmail.com_Token', 'f322868f5ffd21237b7147bcfc9efe81126341636b7061f98c13319054890c64', '[\"*\"]', NULL, NULL, '2024-08-23 13:26:35', '2024-08-23 13:26:35'),
(12, 'App\\Models\\User', 1, 'sonet@gmail.com_Token', '7848822d49cdcd86e122e014a5cb379265bda63df5802f0438922b39fb2ef137', '[\"*\"]', NULL, NULL, '2024-08-23 14:10:42', '2024-08-23 14:10:42'),
(13, 'App\\Models\\User', 21, 'safwan1182@gmail.com_Token', '7ec63f1c310083bcec6d5cc9787630a8ae7922cc7a794cec61bf6b5bc1b7b6ee', '[\"*\"]', NULL, NULL, '2024-08-23 14:18:09', '2024-08-23 14:18:09'),
(14, 'App\\Models\\User', 22, 'safwan1182@gmail.com_Token', 'bce7c4e7b1c90eb6269af1449351a75e837f6a524a02e57e203eeb0ac3969d4a', '[\"*\"]', NULL, NULL, '2024-08-23 14:18:57', '2024-08-23 14:18:57'),
(15, 'App\\Models\\User', 23, 'sadia@gmail.com_Token', 'c0b6ccc7b28f878cba3f27d3d360398f0311f8aaa4253f8f33aba236ec1265a9', '[\"*\"]', NULL, NULL, '2024-08-23 14:20:28', '2024-08-23 14:20:28'),
(16, 'App\\Models\\User', 23, 'sadia@gmail.com_Token', '3794d2ec886fe14e303834b794f72b2fd7c583f3b2fdd21e2106f498fc5ad071', '[\"*\"]', NULL, NULL, '2024-08-23 14:21:06', '2024-08-23 14:21:06'),
(17, 'App\\Models\\User', 1, 'sonet@gmail.com_Token', 'e06a28db9c67a24ea1f3f01c54b7b8f5f4d6c53748332955bb4b632c262e2a89', '[\"*\"]', NULL, NULL, '2024-08-26 05:28:21', '2024-08-26 05:28:21'),
(18, 'App\\Models\\User', 24, 'shawnshikder1996@gmail.com_Token', '924ef7ca29aaf4da091c627db599e56e0be8fea886db54d2d3b2e76e44114bf5', '[\"*\"]', NULL, NULL, '2024-08-26 13:20:26', '2024-08-26 13:20:26'),
(19, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', '84f0b76f8967b4068fedd17cf801332ec1529e5aa48719a450d2209718427dcb', '[\"*\"]', NULL, NULL, '2024-08-26 13:29:08', '2024-08-26 13:29:08'),
(20, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', '6dcbdb1adda5f3b042f310fdba59e0e4e89925f6a8a1832f8462ee04c99b7020', '[\"*\"]', NULL, NULL, '2024-08-26 13:41:04', '2024-08-26 13:41:04'),
(21, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', '560db9055ca40da16646788d1ccd0dabbcb50def3d3d507bb27ff55035534a48', '[\"*\"]', NULL, NULL, '2024-08-26 13:59:40', '2024-08-26 13:59:40'),
(22, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', '1ccfafeec809098324497fb280ada2c99b5dee893fb8c6e85e91e9d77fad9951', '[\"*\"]', NULL, NULL, '2024-08-26 15:09:22', '2024-08-26 15:09:22'),
(23, 'App\\Models\\User', 1, 'sonet@gmail.com_Token', 'f1daa2b9755f327782a049eec61d32b3b1fe1d4171b41b6eec23707117b95ead', '[\"*\"]', NULL, NULL, '2024-08-26 15:38:27', '2024-08-26 15:38:27'),
(24, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', 'ba9d0d17fe37075e64a058a71e07145921878cf045fc4b3eff2fe8bdffaca3d4', '[\"*\"]', NULL, NULL, '2024-08-26 15:38:48', '2024-08-26 15:38:48'),
(25, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', '8ab3761c9390f5f6aa82181898d68c14657b87030dd86f03f374f1a5c157d9a4', '[\"*\"]', NULL, NULL, '2024-08-27 06:09:58', '2024-08-27 06:09:58'),
(26, 'App\\Models\\User', 25, 'shawnshikder1996@gmail.com_Token', 'a2ffc090f9f51879180fd73398d49f2a3f4af367232423aeff5041242126dd3b', '[\"*\"]', NULL, NULL, '2024-08-27 06:41:46', '2024-08-27 06:41:46'),
(27, 'App\\Models\\User', 28, 'shawnlinkstaff@gmail.com_Token', 'd864cd1eccc2bd73f1d32b2307a035b0a512b4e858eb72b5acc5d44108eba308', '[\"*\"]', NULL, NULL, '2024-08-28 05:17:47', '2024-08-28 05:17:47'),
(28, 'App\\Models\\User', 28, 'shawnlinkstaff@gmail.com_Token', '829314d2a84f280a9ecac9b416e323535833e2cf6a1cac7bd4b094c7790b00ef', '[\"*\"]', NULL, NULL, '2024-09-04 17:46:31', '2024-09-04 17:46:31'),
(29, 'App\\Models\\User', 28, 'shawnlinkstaff@gmail.com_Token', 'c5e73ecc53443c69a736034439de2890fcd690796de05c5c6f627f9a68fba9d6', '[\"*\"]', NULL, NULL, '2024-09-05 08:43:33', '2024-09-05 08:43:33'),
(30, 'App\\Models\\User', 22, 'safwan1182@gmail.com_Token', '5609a8cf5468fcdc60b203bc1701d274d5111e1bc5fc87dc23cda40318f15d54', '[\"*\"]', NULL, NULL, '2024-09-05 09:04:55', '2024-09-05 09:04:55'),
(31, 'App\\Models\\User', 28, 'shawnlinkstaff@gmail.com_Token', 'ab0af429b37ec9e79afad96e3bbc708db5df77ad884a370bd31b2c2331688c2b', '[\"*\"]', NULL, NULL, '2024-09-08 16:41:18', '2024-09-08 16:41:18'),
(32, 'App\\Models\\User', 16, 'leader1@gmail.com_Token', '7c3771c6d2bca7f557a1bf11b36ee366b4274aaf2090a480eb00f6c016371c47', '[\"*\"]', NULL, NULL, '2024-09-11 12:36:30', '2024-09-11 12:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Test post title 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 3, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(2, 'Test post title 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 13, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(3, 'Test post title 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 4, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(4, 'Test post title 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 0, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(5, 'Test post title 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 2, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(6, 'Test post title 6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 1, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(7, 'Test post title 7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 6, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(8, 'Test post title 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 7, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(9, 'Test post title 9', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 8, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(10, 'Test post title 10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 9, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(11, 'Test post title 11', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 10, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(12, 'Test post title 12', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 11, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(13, 'Test post title 13', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 12, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(14, 'Test post title 14', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 14, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(15, 'Test post title 15', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 15, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(16, 'Test post title 16', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 16, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(17, 'Test post title 17', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 17, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(18, 'Test post title 18', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 5, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(19, 'Test post title 19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 1, 18, '2024-01-01 07:04:14', '2024-01-13 13:18:37'),
(20, 'Test post title 20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ratione eius qui', 0, 19, '2024-01-01 07:04:14', '2024-01-13 13:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `type` int(5) DEFAULT 1,
  `group` int(191) DEFAULT NULL,
  `category` varchar(11) DEFAULT NULL,
  `category_hierarchy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`category_hierarchy`)),
  `detail` longtext NOT NULL,
  `meta_keyword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta_keyword`)),
  `like_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`like_list`)),
  `created_by` int(191) DEFAULT NULL,
  `edited_by` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `type`, `group`, `category`, `category_hierarchy`, `detail`, `meta_keyword`, `like_list`, `created_by`, `edited_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'ধোনিকে ভারতের সর্বকালের সেরা দলে দেখেন না কার্তিক', 'ধোনিকে-ভারতের-সর্বকালের-সেরা-দলে-দেখেন-না-কার্তিক', 1, NULL, '119', '[118,119]', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ভারত এখন পর্যন্ত জিতেছে চারটি বিশ্বকাপ—দুটি ওয়ানডেতে, দুটি টি–টোয়েন্টিতে। এর মধ্যে ২০০৭ টি–টোয়েন্টি বিশ্বকাপ এবং ২০১১ ওয়ানডে বিশ্বকাপজয়ী দলের অধিনায়ক ছিলেন মহেন্দ্র সিং ধোনি। ডানহাতি এই উইকেটকিপার–ব্যাটসম্যানের নেতৃত্বে ভারত জিতেছে আইসিসি চ্যাম্পিয়নস ট্রফিও।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">তবে তাঁরই নেতৃত্বে খেলা দিনেশ কার্তিক ভারতের সর্বকালের সেরা দলে ধোনির জায়গা দেখেন না। কার্তিক ভারতের সেরা একাদশে জায়গা দেখেন না ১৯৮৩ বিশ্বকাপজয়ী অধিনায়ক কপিল দেব এবং ভারতীয় ক্রিকেটের নন্দিত অধিনায়ক–ব্যাটসম্যান সৌরভ গাঙ্গুলীকেও।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><img src=\"https://images.prothomalo.com/prothomalo%2Fimport%2Fmedia%2F2017%2F11%2F06%2F8ee4c8f1bc73971e5b48dc55d9503aef-5a001a96bd49a.jpg?rect=147%2C0%2C1350%2C900&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" style=\"width: 100%;\"><br></p>', '[\"Cricket\",\"Dhoni\"]', '[]', 10, 10, '2024-08-16 09:02:28', '2024-08-21 19:12:49', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `type`, `group`, `category`, `category_hierarchy`, `detail`, `meta_keyword`, `like_list`, `created_by`, `edited_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(25, 'বাংলাদেশে ভারত বিরোধিতা বাড়ছে কেন', 'বাংলাদেশে-ভারত-বিরোধিতা-বাড়ছে-কেন', 1, 3, '116', '[98,116]', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">বাংলাদেশে ভারত বিরোধিতা এখন সম্ভবত স্মরণকালের সর্বোচ্চ পর্যায়ে পৌঁছেছে। মহান মুক্তিযুদ্ধের সময় যে দেশ তাদের সীমান্ত খুলে, মানবিক সাহায্য দিয়ে বাংলাদেশিদের জীবন বাঁচিয়েছিল; অস্ত্র, ট্রেনিং ও সামরিক সাহায্য দিয়ে ও বীর মুক্তিযোদ্ধাদের পাশাপাশি যুদ্ধ করে পাকিস্তানি হানাদার বাহিনীর হাত থেকে এ দেশকে মুক্ত করে বাংলাদেশ স্বাধীন করেছিল, আজ ৫৩ বছর পর কেন সে দেশের মানুষের মধ্যে ভারত বিরোধিতা এত প্রবল হয়ে উঠল দুই দেশের আগামী দিনের সম্পর্ক ও পররাষ্ট্রনীতির জন্য, সে উত্তর খোঁজার চেষ্টা জরুরি।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">বাংলাদেশের বেশির ভাগ মানুষ মনে করে, বাংলাদেশের জনগণের ইচ্ছার প্রতিফলনে নয়; বরং সমসাময়িক ভারতের সরকারের সহযোগিতায় বাংলাদেশে শেখ হাসিনা সরকার বিরোধী দল ও মত নিষ্ঠুরভাবে দমনের মাধ্যমে দীর্ঘ সময়, বিশেষ করে ২০১৪ সালের পর থেকে টিকে ছিল।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><img src=\"data:image/webp;base64,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\" data-filename=\"prothomalo-bangla_2024-08-18_utkirots_grafiti_ll.webp\" style=\"width: 100%;\"><br></p>', '[\"Bangladesh\",\"India\"]', '[null,10]', 10, NULL, '2024-08-20 08:27:54', '2024-08-23 08:20:51', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `type`, `group`, `category`, `category_hierarchy`, `detail`, `meta_keyword`, `like_list`, `created_by`, `edited_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, '১৬ বছর কথা বলার সাহস করেননি, ১৬ দিনে সব সমস্যার সমাধান চাচ্ছেন', '১৬-বছর-কথা-বলার-সাহস-করেননি-১৬-দিনে-সব-সমস্যার-সমাধান-চাচ্ছেন', 1, 4, '116', '[98,116]', '<div class=\"story-page-hero RJoJJ\" style=\"cursor: text; margin: var(--space2_4) auto var(--space1_6); position: relative; max-width: 622px; color: rgb(0, 0, 0); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div><div class=\" qt-image-dynamic image3x2 card-image-wrapper JCQpo _8mCoa UUq0z\" style=\"background-position: 50% center; background-repeat: no-repeat; overflow: hidden; position: relative; background-color: var(--fallback-image-bg); padding-top: 414.625px; background-image: url(&quot;/media-placeholder.svg&quot;);\"><figure class=\"qt-figure\" style=\"margin-bottom: 0px; max-width: 100%; padding: 0px; overflow: hidden;\"><picture class=\"qt-image zoom-desktop \" style=\"transition: transform 0.1s ease-out; inset: 0px; height: 414.625px; object-fit: cover; position: absolute; width: 622px;\"><img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-08-21%2Frqwtfa9g%2FUntitled-10.jpg?rect=0%2C0%2C926%2C617&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" data-src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-08-21%2Frqwtfa9g%2FUntitled-10.jpg?rect=0%2C0%2C926%2C617&amp;auto=format%2Ccompress&amp;fmt=webp\" max-dpr=\"2\" type=\"image/webp\" sizes=\"( max-width: 500px ) 98%, ( max-width: 875px ) 48%, 23%\" class=\"qt-image image gm-added gm-loaded gm-observing gm-observing-cb\" data-bg=\"/media-placeholder.svg\" fetchpriority=\"low\" alt=\"আন্দোলনের সময় আহত হওয়া ব্যক্তিদের দেখতে এসে চট্টগ্রাম মেডিকেল কলেজ হাসপাতালে সাংবাদিকদের সঙ্গে কথা বলেন বৈষম্যবিরোধী ছাত্র আন্দোলনের সমন্বয়ক সারজিস আলম। আজ বুধবার দুপুরে \" style=\"margin: 0px; max-width: 100%; padding: 0px; inset: 0px; height: 414.625px; object-fit: cover; position: absolute; width: 622px; background-image: url(&quot;/media-placeholder.svg&quot;);\"></picture></figure></div></div><div class=\"cdKYX\" style=\"--meta-color: var(--light-grey); border-bottom: var(--border1-0_12); color: var(--meta-color); font-size: var(--fs-16); margin: var(--space0_8) 0 0; padding-bottom: var(--space1_0);\"><figcaption class=\"story-element-image-caption custom-gallery-image\">আন্দোলনের সময় আহত হওয়া ব্যক্তিদের দেখতে এসে চট্টগ্রাম মেডিকেল কলেজ হাসপাতালে সাংবাদিকদের সঙ্গে কথা বলেন বৈষম্যবিরোধী ছাত্র আন্দোলনের সমন্বয়ক সারজিস আলম। আজ বুধবার দুপুরে<span class=\"custom-gallery-image _3bj2K SZnJd\" style=\"--title-color: var(--light-grey); color: var(--title-color); font-size: var(--fs-13); font-style: italic; margin-left: var(--space0_8); padding-left: var(--space0_8); position: relative;\">ছবি: সংগৃহীত</span></figcaption></div></div><div class=\"VzzDZ\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div id=\"20e43ffe-39d6-49d2-87d3-ff4b4660d856\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7;\">বৈষম্যবিরোধী ছাত্র আন্দোলনের সমন্বয়ক সারজিস আলম বলেছেন, বিগত ১৬ বছর ধরে যেসব মানুষ কথা বলার সাহস করেননি, ৫৩ বছরে যাঁরা রাস্তায় নামার খুব একটা সাহস করেননি, তাঁরাই অন্তর্বর্তীকালীন সরকার গঠন হওয়ার সঙ্গে সঙ্গে চাচ্ছেন ১৬ দিনের মধ্যে সব সমস্যার সমাধান হয়ে যাক। এই মানুষগুলো তাঁদের ব্যক্তিগত কিংবা গোষ্ঠীগত ছোট উদ্দেশ্য বাস্তবায়নের জন্য রাজপথে নামছেন। সচিবালয় থেকে শুরু করে বিভিন্ন প্রতিষ্ঠান ঘেরাও করছেন।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7;\">বৈষম্যবিরোধী ছাত্র আন্দোলনের কর্মসূচি চলাকালে আহত ব্যক্তিদের দেখতে গিয়ে আজ বুধবার দুপুরে চট্টগ্রাম মেডিকেল কলেজ হাসপাতালে এ কথা বলেন সারজিস আলম। ছাত্র-জনতার গণ-অভ্যুত্থানে শেখ হাসিনা সরকারের পতনের পর দেশের বিভিন্ন জায়গায় আন্দোলন ও বিক্ষোভের পরিপ্রেক্ষিতে তিনি এ কথা বলেন।</p></div></div></div></div></div>', '[]', '[]', 10, NULL, '2024-08-21 18:21:57', '2024-08-23 08:20:48', NULL),
(27, 'শিক্ষাঙ্গনে কাউকে ব্যক্তিগতভাবে অপমানিত করা যাবে না: শিক্ষা উপদেষ্টা', 'শিক্ষাঙ্গনে-কাউকে-ব্যক্তিগতভাবে-অপমানিত-করা-যাবে-না-শিক্ষা-উপদেষ্টা', 1, 4, '119', '[118,119]', '<div class=\"story-page-hero RJoJJ\" style=\"cursor: text; margin: var(--space2_4) auto var(--space1_6); position: relative; max-width: 622px; color: rgb(0, 0, 0); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div><div class=\" qt-image-dynamic image3x2 card-image-wrapper JCQpo _8mCoa UUq0z\" style=\"background-position: 50% center; background-repeat: no-repeat; overflow: hidden; position: relative; background-color: var(--fallback-image-bg); padding-top: 414.625px; background-image: url(&quot;/media-placeholder.svg&quot;);\"><figure class=\"qt-figure\" style=\"margin-bottom: 0px; max-width: 100%; padding: 0px; overflow: hidden;\"><picture class=\"qt-image zoom-desktop \" style=\"transition: transform 0.1s ease-out; inset: 0px; height: 414.625px; object-fit: cover; position: absolute; width: 622px;\"><img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2023-04%2F52c92f08-c2c4-41aa-9c82-39ac01fa93b5%2Fwahid_sir.jpg?rect=64%2C0%2C540%2C360&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" data-src=\"https://images.prothomalo.com/prothomalo-bangla%2F2023-04%2F52c92f08-c2c4-41aa-9c82-39ac01fa93b5%2Fwahid_sir.jpg?rect=64%2C0%2C540%2C360&amp;auto=format%2Ccompress&amp;fmt=webp\" max-dpr=\"2\" type=\"image/webp\" sizes=\"( max-width: 500px ) 98%, ( max-width: 875px ) 48%, 23%\" class=\"qt-image image gm-added gm-loaded gm-observing gm-observing-cb\" data-bg=\"/media-placeholder.svg\" fetchpriority=\"low\" alt=\"ওয়াহিদউদ্দিন মাহমুদ \" style=\"margin: 0px; max-width: 100%; padding: 0px; inset: 0px; height: 414.625px; object-fit: cover; position: absolute; width: 622px; background-image: url(&quot;/media-placeholder.svg&quot;);\"></picture></figure></div></div><div class=\"cdKYX\" style=\"--meta-color: var(--light-grey); border-bottom: var(--border1-0_12); color: var(--meta-color); font-size: var(--fs-16); margin: var(--space0_8) 0 0; padding-bottom: var(--space1_0);\"><figcaption class=\"story-element-image-caption custom-gallery-image\">ওয়াহিদউদ্দিন মাহমুদ<span class=\"custom-gallery-image _3bj2K SZnJd\" style=\"--title-color: var(--light-grey); color: var(--title-color); font-size: var(--fs-13); font-style: italic; margin-left: var(--space0_8); padding-left: var(--space0_8); position: relative;\">ফাইল ছবি: প্রথম আলো</span></figcaption></div></div><div class=\"VzzDZ\" style=\"color: rgb(0, 0, 0); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; font-size: 18px;\"><div id=\"73ee2b6d-7d5f-4710-8ccc-13b3fd97d1cd\"><div class=\"storyCard eyOoS\" style=\"--borderColor: var(--primaryColor); color: var(--black); font-size: var(--fs-13); margin: var(--space2_4) auto 0; max-width: 622px;\"><div class=\"   \r\n                  story-element\" style=\"margin-bottom: var(--space1_6);\"><div class=\"story-element story-element-text\" style=\"margin: 0px auto; max-width: 622px; padding: 0px;\"><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7;\">শিক্ষাঙ্গনে ভদ্রতা রক্ষার ওপর গুরুত্ব আরোপ করেছেন অন্তর্বর্তী সরকারের শিক্ষা উপদেষ্টা ওয়াহিদউদ্দিন মাহমুদ। তিনি বলেন, শিক্ষাঙ্গনে বল প্রয়োগ করা যাবে না এবং কাউকে ব্যক্তিগতভাবে অপমানিত করা যাবে না। যে যত অন্যায় করুক না কেন, নিয়মমাফিক যত দ্রুত পারা যায় ব্যবস্থা নেওয়া হবে।</p><p style=\"font-family: var(--font-2); margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7;\">আজ বুধবার সচিবালয়ে এক সংবাদ ব্রিফিংয়ে এ কথা বলেন উপদেষ্টা ওয়াহিদউদ্দিন মাহমুদ। আগামী বছরের পাঠ্যবইয়ের মলাটে পরিবর্তন আসতে পারে বলে জানিয়েছেন তিনি। এ ছাড়া পরীক্ষা দিয়ে মূল্যায়নের ব্যবস্থা করার পক্ষে তিনি।</p></div></div></div></div></div>', '[]', '[null,10]', 10, NULL, '2024-08-21 18:22:51', '2024-08-23 08:20:45', NULL),
(28, 'টাকা ছাপিয়ে সরকার ও ব্যাংককে মূলধন না দেওয়ার পরামর্শ', 'টাকা-ছাপিয়ে-সরকার-ও-ব্যাংককে-মূলধন-না-দেওয়ার-পরামর্শ', 1, 4, '119', '[118,119]', '<p style=\"margin-bottom: var(--space1_6); color: rgb(18, 18, 18); font-family: var(--font-2); font-size: var(--fs-18); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><img src=\"https://cdx.dhakamail.com/media/images/2024August/450782572_1188821695637509_7658235062810204636_n_20240817_162212138.jpg\" style=\"width: 100%;\"><br></p><p style=\"margin-bottom: var(--space1_6); color: rgb(18, 18, 18); font-family: var(--font-2); font-size: var(--fs-18); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><br></p><p style=\"margin-bottom: var(--space1_6); color: rgb(18, 18, 18); font-family: var(--font-2); font-size: var(--fs-18); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7;\">দেশের চলমান অর্থনীতির সংকট সমাধানে অর্থনীতিবিদ ও আর্থিক খাতের বিশেষজ্ঞদের পরামর্শ নিতে শুরু করেছে সরকার। সরকারের উচ্চপর্যায় থেকে বর্তমান পরিস্থিতিতে করণীয় বিষয়ে পরামর্শ গ্রহণের নির্দেশ দেওয়া হয়। এরপরই বাংলাদেশ ব্যাংক এ ব্যাপারে উদ্যোগ নেয়। গতকাল বৃহস্পতিবার কেন্দ্রীয় ব্যাংকের গভর্নর ও অর্থ মন্ত্রণালয়ের শীর্ষ কর্মকর্তারা প্রথম বৈঠকটি করেছেন অর্থনীতিবিদ ও সাবেক তত্ত্বাবধায়ক সরকারের উপদেষ্টা ওয়াহিদউদ্দিন মাহমুদের সঙ্গে।</p><p style=\"margin-bottom: var(--space1_6); color: rgb(18, 18, 18); font-family: var(--font-2); font-size: var(--fs-18); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7;\">চলমান অর্থনৈতিক সংকটের মধ্যে এমন আলোচনার উদ্যোগ এটাই প্রথম। আগামী সপ্তাহে গবেষণা সংস্থা পলিসি রিসার্চ ইনস্টিটিউটের (পিআরআই) ভাইস চেয়ারম্যান সাদিক আহমেদ ও নির্বাহী পরিচালক আহসান এইচ মনসুরের সঙ্গে আলোচনার সূচি রয়েছে। এর পর সাবেক গভর্নর আতিউর রহমান, সাবেক অর্থসচিব মোহাম্মদ তারেকের সঙ্গে আলোচনার কথা রয়েছে।</p><p style=\"margin-bottom: var(--space1_6); color: rgb(18, 18, 18); font-family: var(--font-2); font-size: var(--fs-18); margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7;\">বাংলাদেশ ব্যাংক বলছে, ধারাবাহিকভাবে গবেষণা সংস্থা সেন্টার ফর পলিসি ডায়ালগ (সিপিডি), সাউথ এশিয়ান নেটওয়ার্ক অন ইকোনমিক মডেলিং বা সানেম ও অর্থনৈতিক বিষয়সংক্রান্ত</p>', '[]', '[10]', 10, 10, '2024-08-21 18:23:54', '2024-08-23 08:12:27', NULL),
(29, 'ইনস্টাগ্রামে মোদিকে ছাড়িয়ে গেলেন শ্রদ্ধা কাপুর', 'ইনস্টাগ্রামে-মোদিকে-ছাড়িয়ে-গেলেন-শ্রদ্ধা-কাপুর', 1, 4, '116', '[98,116]', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">‘স্ত্রী ২’ সিনেমার সাফল্যের জোয়ারে ভাসছেন বলিউড অভিনেত্রী শ্রদ্ধা কাপুর। একদিকে বক্স অফিসে ঝড় তোলা এই ছবির আয়ের অঙ্ক ক্রমেই বেড়ে চলেছে। অন্যদিকে ইনস্টাগ্রামে শ্রদ্ধার ফলোয়ারের সংখ্যা হু হু করে বেড়ে চলেছে।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">ইনস্টাগ্রামে ফলোয়ারের দৌড়ে মোদিকে পেছনে ফেলেছেন শ্রদ্ধা। বর্তমানে এই বলিউড নায়িকার ফলোয়ারের সংখ্যা ৯ কোটি ১৫ লাখ। মোদির ফলোয়ার ৯ কোটি ১৩ লাখ।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\"><img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-08-21%2F1uk7wuio%2Fshraddhakapoor_1723293233_3431554817758035175_296102572.jpg?rect=0%2C0%2C1440%2C960&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" style=\"width: 100%;\"><br></p>', '[]', '[null,25]', 10, NULL, '2024-08-21 18:24:56', '2024-08-26 15:09:33', NULL),
(30, 'নগদে প্রশাসক বসানোর সিদ্ধান্ত, কাল দায়িত্ব নেবে বাংলাদেশ ব্যাংক 258', 'নগদে-প্রশাসক-বসানোর-সিদ্ধান্ত-কাল-দায়িত্ব-নেবে-বাংলাদেশ-ব্যাংক-258', 2, 4, '117', '[98,117]', '<p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">&nbsp;<img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-03%2Fb8e6f54c-d4c1-47fd-80c6-0907a0343b23%2FWhatsApp_Image_2024_03_26_at_12_54.jpg?rect=38%2C0%2C1125%2C750&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" style=\"font-size: var(--fs-18); width: 100%;\"></p><p style=\"margin-bottom: var(--space1_6); font-size: var(--fs-18); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7; color: rgb(18, 18, 18);\">মোবাইলে আর্থিক সেবা ‘নগদ’ পরিচালনায় প্রশাসক নিয়োগ করার সিদ্ধান্ত নিয়েছে বাংলাদেশ ব্যাংক। পাশাপাশি প্রতিষ্ঠানটি পরিচালনায় ছয় কর্মকর্তাকে ‘সহায়ক কর্মকর্তা’ নিয়োগ দেওয়া হয়েছে। কেন্দ্রীয় ব্যাংকের কর্মকর্তারা কাল বৃহস্পতিবার নগদ কার্যালয়ে গিয়ে প্রতিষ্ঠানটির কার্যক্রম বুঝে নেবেন। এর পর থেকে তাঁরাই নগদের কার্যক্রম পরিচালনা করবেন।</p><p style=\"margin-bottom: var(--space1_6); font-size: var(--fs-18); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7; color: rgb(18, 18, 18);\">বাংলাদেশ ব্যাংকের কর্মকর্তারা জানান, প্রশাসক দায়িত্ব নেওয়ার সঙ্গে সঙ্গে আগের পরিচালনা পর্ষদ ও ব্যবস্থাপনা কর্তৃপক্ষ বাতিল হয়ে যাবে। কেন্দ্রীয় ব্যাংক দায়িত্ব নেওয়ার পর প্রতিষ্ঠানটির পুরো নিরীক্ষা করতে হবে। এ কাজ শেষ করতে সময় প্রয়োজন হবে। এই সময়ে প্রতিষ্ঠানটির স্বাভাবিক সেবা চলমান থাকবে। নিরীক্ষা শেষে প্রতিষ্ঠানটির ভাগ্য নির্ধারিত হবে।</p>', '[]', '[1,null,25]', 16, 16, '2024-08-22 06:11:11', '2024-09-04 07:44:07', NULL),
(31, 'যেভাবে ‘অদৃশ্য’ হয় চারতলার সমান উঁচু এই প্রমোদতরি', 'যেভাবে-‘অদৃশ্য’-হয়-চারতলার-সমান-উঁচু-এই-প্রমোদতরি', 2, 4, '121', '[98,116,121]', '<p style=\"margin-bottom: var(--space1_6); font-size: var(--fs-18); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7; color: rgb(18, 18, 18);\"><img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-08-21%2Fa3yk2ylh%2Fgono%20odhikar.jpeg?rect=0%2C53%2C1280%2C853&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" style=\"font-size: var(--fs-18); width: 100%;\"></p><p style=\"margin-bottom: var(--space1_6); font-size: var(--fs-18); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7; color: rgb(18, 18, 18);\">গণ অধিকার পরিষদ বলেছে, গণহত্যায় নেতৃত্ব দেওয়া আওয়ামী লীগ বাংলাদেশে রাজনীতি করতে পারবে না। তাদের নিষিদ্ধ না করে সংখ্যানুপাতিক নির্বাচন মেনে নেওয়া হবে না।</p><p style=\"margin-bottom: var(--space1_6); font-size: var(--fs-18); font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.7; color: rgb(18, 18, 18);\"><span style=\"font-size: var(--fs-18);\">আজ বুধবার ‘ছাত্র-জনতার গণ অভ্যুত্থানকে নস্যাৎ করার ষড়যন্ত্র রুখে দিতে’ আয়োজিত এক অবস্থান কর্মসূচিতে এসব কথা বলেন গণ অধিকার পরিষদের নেতারা। রাজধানীর পল্টনে দলের কেন্দ্রীয় কার্যালয়ের সামনে এই কর্মসূচি পালন করেন তাঁরা।</span></p>', '[\"Politics\",\"Bangladesh\"]', '[1,null,25]', 10, 10, '2024-08-22 06:38:08', '2024-08-27 10:18:05', NULL),
(33, 'পাসওয়ার্ড জানেন শুধু পলক, আইসিটি বিভাগের ফেসবুক-ইউটিউব বন্ধ', 'পাসওয়ার্ড-জানেন-শুধু-পলক-আইসিটি-বিভাগের-ফেসবুক-ইউটিউব-বন্ধ', 2, 3, '116', '[98,116]', '<p><img src=\"https://images.prothomalo.com/prothomalo-bangla%2F2024-08-27%2Fik9hi20l%2Fbef35921-916e-4a96-a3de-5ff4a416be05.jfif?rect=0%2C0%2C1600%2C1067&amp;auto=format%2Ccompress&amp;fmt=webp&amp;format=webp&amp;w=640&amp;dpr=1.0\" style=\"width: 100%;\"></p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">সরকারের তথ্য ও যোগাযোগপ্রযুক্তি (আইসিটি) বিভাগের ফেসবুক পেজ ও ইউটিউব চ্যানেল ৫ আগস্টের পর থেকে বন্ধ রয়েছে। এই পেজ ও চ্যানেলের পাসওয়ার্ড জানেন শুধু সাবেক আইসিটি প্রতিমন্ত্রী জুনাইদ আহ্‌মেদ পলক।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">৫ আগস্ট আওয়ামী লীগ সরকারের পতনের পর সাবেক মন্ত্রী, সংসদ সদস্য ও দলটির নেতা-কর্মীরা আত্মগোপনে চলে যান। ইতিমধ্যে কেউ কেউ গ্রেপ্তারও হয়েছেন। সাবেক প্রতিমন্ত্রী পলক ৬ আগস্ট দেশ ছাড়ার সময় বিমানবন্দরে আটক হন। এরপর ১৪ আগস্ট হত্যা মামলায় তাঁকে গ্রেপ্তার দেখানো হয়।</p><p style=\"font-family: Shurjo, &quot;Siyam Rupali&quot;, Roboto, Arial, Helvetica, monospace; margin-right: 0px; margin-bottom: var(--space1_6); margin-left: 0px; padding: 0px; font-size: var(--fs-18); line-height: 1.7; color: rgb(18, 18, 18);\">৫ আগস্টের পর থেকে বন্ধ আইসিটি বিভাগের ফেসবুক পেজ ও ইউটিউব চ্যানেল। বিষয়টি নিয়ে জানতে চাইলে আইসিটি বিভাগের সচিব মো. সামসুল আরেফিন প্রথম আলোকে বলেন, এগুলো সাবেক প্রতিমন্ত্রী ব্যক্তিগতভাবে চালাতেন। তিনি পাসওয়ার্ড দিয়ে যাননি। তবে তাঁরা পুনরুদ্ধারের চেষ্টা করছেন।</p>', '[]', NULL, 17, 17, '2024-08-27 09:54:55', '2024-08-27 10:00:10', NULL),
(34, 'সিলেটে অস্ত্র জমা দেননি ৩৬ জন, উদ্ধারে নামছে যৌথ বাহিনী', 'সিলেটে-অস্ত্র-জমা-দেননি-৩৬-জন-উদ্ধারে-নামছে-যৌথ-বাহিনী', 2, 3, NULL, NULL, '<article class=\"storyDetailFont custom-a-tag pTagGap dark:text-white\" style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; overflow: hidden; color: rgb(0, 0, 0); font-family: SolaimanLipi, SolaimanLipiNormal, &quot;helvetica neue&quot;, Helvetica, Arial, sans-serif; background-color: rgba(47, 52, 63, 0.01); font-size: 1.2rem !important; line-height: 30px !important; padding-left: 2.5px !important;\"><div style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; width: 826.156px; overflow-x: auto !important; padding-left: 2.5px !important;\"><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-left: 0px;\"><img src=\"https://cdx.dhakamail.com/media/images/2024September/army_20240904_213111410.jpg\" style=\"width: 100%;\"><br></p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-left: 0px;\">সিলেট মহানগরীর ছয়টি থানায় লাইসেন্সধারী আগ্নেয়াস্ত্র নির্ধারিত সময়ের মধ্যেও জমা দেননি অনেকে। যারা আগ্নেয়াস্ত্র জমা দেননি ইতোমধ্যে তাদের তালিকা তৈরি করেছে পুলিশ। মহানগর পুলিশের ছয়টি থানায় ৩৬ জন আগ্নেয়াস্ত্র জমা দেননি। যারা আগ্নেয়াস্ত্র জমা দেননি থানাভিত্তিক তালিকা যৌথ বাহিনীর কাছে পাঠানো হবে। পরে পুলিশের দেওয়া তালিকা অনুসারে অস্ত্র উদ্ধারের জন্য অভিযান চালাবে যৌথ বাহিনী।</p><p style=\"border: 0px solid rgb(229, 231, 235); --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-pan-x: ; --tw-pan-y: ; --tw-pinch-zoom: ; --tw-scroll-snap-strictness: proximity; --tw-gradient-from-position: ; --tw-gradient-via-position: ; --tw-gradient-to-position: ; --tw-ordinal: ; --tw-slashed-zero: ; --tw-numeric-figure: ; --tw-numeric-spacing: ; --tw-numeric-fraction: ; --tw-ring-inset: ; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; --tw-blur: ; --tw-brightness: ; --tw-contrast: ; --tw-grayscale: ; --tw-hue-rotate: ; --tw-invert: ; --tw-saturate: ; --tw-sepia: ; --tw-drop-shadow: ; --tw-backdrop-blur: ; --tw-backdrop-brightness: ; --tw-backdrop-contrast: ; --tw-backdrop-grayscale: ; --tw-backdrop-hue-rotate: ; --tw-backdrop-invert: ; --tw-backdrop-opacity: ; --tw-backdrop-saturate: ; --tw-backdrop-sepia: ; margin-right: 0px; margin-left: 0px;\">পুলিশ সূত্র জানায়, সিলেট মহানগরীতে ২৪৬টি আগ্নেয়াস্ত্রের লাইসেন্স ছিল। এর মধ্যে ১০ জন লাইসেন্স নিলেও তারা অস্ত্র কেনেননি। ব্যাংকের নিরাপত্তায় থাকা কিছু আগ্নেয়াস্ত্র জমা হয়নি। মহানগরীতে রাজনীতিবিদ, ব্যবসায়ীসহ সরকারি-বেসরকারি কর্মকর্তাদের কাছে রক্ষিত জমা যোগ্য ১৯৩টি আগ্নেয়াস্ত্র থাকলেও জমা হয়েছে ১৫৭টি। সবমিলিয়ে ৩৬টি আগ্নেয়াস্ত্র জমা পড়েনি।</p></div></article>', '[]', NULL, 16, 16, '2024-09-04 17:37:15', '2024-09-04 17:55:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `offerprice` double(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `products_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`products_id`)),
  `start_from` timestamp NULL DEFAULT NULL,
  `end_to` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `name`, `code`, `type`, `amount`, `products_id`, `start_from`, `end_to`, `image`, `details`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'New Code', 'ABC123', '1', 10, NULL, '2024-03-02 18:00:00', '2024-04-25 18:00:00', 'images/promocodes/image_1716132881.jpg', NULL, 1, '2024-03-13 01:51:34', '2024-05-19 09:34:41', NULL),
(2, 'New Code Two', 'DEF234', '1', 20, NULL, '2024-03-27 18:00:00', '2024-04-15 18:00:00', 'images/promocodes/image_1710316414.png', NULL, 1, '2024-03-13 01:53:34', '2024-03-13 01:56:20', '2024-03-13 01:56:20'),
(3, 'Eid Offer', 'EID20', '1', 20, NULL, '2024-03-31 18:00:00', '2024-04-14 18:00:00', 'images/promocodes/image_1710337552.jpg', NULL, 0, '2024-03-13 07:41:48', '2024-03-13 07:49:45', NULL),
(4, 'Bkash', 'BKASH10', '1', 10, NULL, '2024-03-12 18:00:00', '2024-03-13 18:00:00', 'images/promocodes/image_1710337470.png', NULL, 0, '2024-03-13 07:44:30', '2024-07-01 15:13:12', '2024-07-01 15:13:12'),
(5, 'Nagad', 'NAGAD15', '1', 15, NULL, '2024-03-12 18:00:00', '2024-03-13 18:00:00', 'images/promocodes/image_1710337589.PNG', NULL, 1, '2024-03-13 07:46:29', '2024-07-01 15:13:10', '2024-07-01 15:13:10'),
(6, 'SPECIAL', 'SP200', '2', 200, NULL, NULL, NULL, 'images/promocodes/image_1710338016.png', NULL, 1, '2024-03-13 07:53:36', '2024-07-01 15:13:06', '2024-07-01 15:13:06'),
(7, 'Bangla', 'Bangla100', '2', 100, NULL, '2024-03-14 18:00:00', '2024-04-14 18:00:00', NULL, NULL, 1, '2024-03-13 08:10:34', '2024-03-13 08:11:39', '2024-03-13 08:11:39'),
(8, 'AKASH', 'AKASH20', '2', 180, NULL, '2024-03-03 18:00:00', '2024-03-20 18:00:00', NULL, NULL, 1, '2024-03-13 08:11:16', '2024-03-13 08:11:36', '2024-03-13 08:11:36'),
(9, 'Bangla', 'BN200', '2', 180, NULL, '2024-03-12 18:00:00', '2024-04-29 18:00:00', NULL, NULL, 1, '2024-03-13 08:12:06', '2024-03-13 08:12:24', NULL),
(10, 'fgfgf', 'ABC123t', '1', 10, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-15 00:55:12', '2024-03-15 00:55:12', NULL),
(11, 'yyyyy', 'yyy', '1', 10, NULL, NULL, NULL, NULL, NULL, 1, '2024-03-15 00:55:22', '2024-03-15 00:55:22', NULL),
(12, '30% off', '30off', '1', 30, NULL, '2024-06-30 18:00:00', '2024-08-29 18:00:00', NULL, NULL, 1, '2024-07-01 15:11:20', '2024-07-01 15:11:20', NULL),
(13, '40%off', 'off40', '1', 40, NULL, NULL, NULL, NULL, NULL, 1, '2024-07-03 10:41:47', '2024-07-03 10:41:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_age` int(11) DEFAULT NULL,
  `patient_phone` varchar(191) DEFAULT NULL,
  `patient_type` varchar(191) DEFAULT NULL,
  `patient_gender` varchar(191) DEFAULT NULL,
  `patient_address` varchar(255) DEFAULT NULL,
  `patient_status` varchar(255) DEFAULT NULL,
  `doctor_id` varchar(255) DEFAULT NULL,
  `doctor_name` varchar(191) DEFAULT NULL,
  `doctor_room` varchar(191) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `needle` float(8,2) DEFAULT NULL,
  `red_tube` float(8,2) DEFAULT NULL,
  `others` float(8,2) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `total_vat` decimal(10,2) NOT NULL,
  `clinic_account` float(8,2) DEFAULT NULL,
  `coupon_discount` float(8,3) DEFAULT NULL,
  `final_price` decimal(10,2) NOT NULL,
  `items` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`items`)),
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `patient_name`, `patient_age`, `patient_phone`, `patient_type`, `patient_gender`, `patient_address`, `patient_status`, `doctor_id`, `doctor_name`, `doctor_room`, `reference`, `needle`, `red_tube`, `others`, `total_price`, `total_vat`, `clinic_account`, `coupon_discount`, `final_price`, `items`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Hasan', 20, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2132.50, 319.88, NULL, NULL, 2452.38, '[{\"item_id\":\"1\",\"type\":\"test\",\"name\":\"CBC\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"100\",\"referenceDiscount\":\"100\",\"doctorCommission\":\"100\",\"payment\":\"900\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03 (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1232.5\"}]', 0, '2024-05-20 10:53:10', '2024-05-21 07:50:16', NULL),
(4, 'Touhidul Haque', 25, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1840.00, 276.00, NULL, NULL, 2116.00, '[{\"item_id\":\"2\",\"type\":\"package\",\"name\":\"package-02 (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"150\",\"referenceDiscount\":\"75\",\"doctorCommission\":\"75\",\"payment\":\"850\"},{\"item_id\":\"2\",\"type\":\"test\",\"name\":\"S. Creatinin\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"360\"},{\"item_id\":\"4\",\"type\":\"test\",\"name\":\"SGPT\\n                                        (500 Tk)\",\"fee\":\"500\",\"totalDiscount\":\"30\",\"patientDiscount\":\"50\",\"referenceDiscount\":\"50\",\"doctorCommission\":\"50\",\"payment\":\"450\"},{\"item_id\":\"7\",\"type\":\"test\",\"name\":\"Blood Test\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"20\",\"referenceDiscount\":\"20\",\"doctorCommission\":\"20\",\"payment\":\"180\"}]', 0, '2024-05-21 06:42:06', '2024-05-21 07:52:14', NULL),
(5, 'Rakib Hasan', 26, NULL, NULL, NULL, 'Tangail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1920.00, 288.00, NULL, NULL, 2208.00, '[{\"item_id\":\"1\",\"type\":\"test\",\"name\":\"CBC\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"100\",\"referenceDiscount\":\"100\",\"doctorCommission\":\"100\",\"payment\":\"900\"},{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01 (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"1020\"}]', 0, '2024-05-21 07:20:46', '2024-05-21 07:52:46', '2024-05-21 07:52:46'),
(6, 'fdsfs', 20, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"25\",\"type\":\"test\",\"name\":\"asdsa\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"}]', 0, '2024-06-19 10:42:21', '2024-06-19 10:42:21', NULL),
(7, 'fdsfs', 25, NULL, NULL, NULL, 'sadsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1295.00, 194.25, NULL, NULL, 1489.25, '[{\"item_id\":\"29\",\"type\":\"test\",\"name\":\"\\u30b5\\u30c8\\u30a6 \\u30a2\\u30b9\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03 (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-06-19 10:42:51', '2024-06-19 10:42:51', NULL),
(8, 'fdsfs', 25, NULL, NULL, NULL, 'sadsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1295.00, 194.25, NULL, NULL, 1489.25, '[{\"item_id\":\"29\",\"type\":\"test\",\"name\":\"\\u30b5\\u30c8\\u30a6 \\u30a2\\u30b9\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03 (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-06-19 10:42:51', '2024-06-19 10:42:51', NULL),
(9, 'Rabada', 31, NULL, NULL, NULL, 'SA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1855.00, 278.25, NULL, NULL, 2133.25, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03 (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-06-19 10:43:39', '2024-06-19 10:43:39', NULL),
(10, 'fdsfs', 20, NULL, NULL, NULL, 'AxzaA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"29\",\"type\":\"test\",\"name\":\"\\u30b5\\u30c8\\u30a6 \\u30a2\\u30b9\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"}]', 0, '2024-06-19 10:59:54', '2024-06-19 10:59:54', NULL),
(11, 'sdadas', 20, NULL, NULL, NULL, 'dfdsfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, NULL, NULL, 966.00, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-06-19 11:02:12', '2024-06-19 11:02:12', NULL),
(12, 'adsadas', 20, NULL, NULL, NULL, 'asdsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, NULL, NULL, 966.00, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-06-19 11:03:17', '2024-06-19 11:03:17', NULL),
(13, 'fdsfs', 20, NULL, NULL, NULL, 'sadasdas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, NULL, NULL, 966.00, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-06-19 11:04:48', '2024-06-19 11:04:48', NULL),
(14, 'asdsadsa', 20, NULL, NULL, NULL, 'sdsafwsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"25\",\"type\":\"test\",\"name\":\"asdsa\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"}]', 0, '2024-06-19 11:09:31', '2024-06-19 11:09:31', NULL),
(15, 'htruyf', 20, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-06-19 11:25:44', '2024-06-19 11:25:44', NULL),
(16, 'fdsfs', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 630.00, 94.50, NULL, NULL, 724.50, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"},{\"item_id\":\"30\",\"type\":\"test\",\"name\":\"\\u4f50\\u85e4 \\u6075\\n                                        (100 Tk)\",\"fee\":\"100\",\"totalDiscount\":\"30\",\"patientDiscount\":\"10\",\"referenceDiscount\":\"10\",\"doctorCommission\":\"10\",\"payment\":\"70\"},{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-06-30 12:05:42', '2024-06-30 12:05:42', NULL),
(17, 'Sonet', 25, NULL, NULL, NULL, 'sdfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1120.00, 168.00, NULL, NULL, 1288.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"},{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-06-30 12:10:00', '2024-06-30 12:10:00', NULL),
(18, 'Safwan', 8, NULL, NULL, NULL, 'ssadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1855.00, 278.25, NULL, NULL, 2133.25, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-06-30 18:12:32', '2024-06-30 18:12:32', NULL),
(19, 'fdsfs', 20, NULL, NULL, NULL, 'fdgfdg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-06-30 18:30:22', '2024-06-30 18:30:22', NULL),
(20, 'htruyf', 22, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1015.00, 152.25, NULL, NULL, 1167.25, '[{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-06-30 18:31:24', '2024-06-30 18:31:24', NULL),
(21, 'fdsfs', 20, NULL, NULL, NULL, 'adsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, NULL, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-01 18:08:31', '2024-07-01 18:08:31', NULL),
(22, 'Sadab', 25, NULL, NULL, NULL, 'dsadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 700.00, 105.00, NULL, 241.500, 563.50, '[{\"item_id\":\"2\",\"type\":\"package\",\"name\":\"package-02\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"150\",\"referenceDiscount\":\"75\",\"doctorCommission\":\"75\",\"payment\":\"700\"}]', 0, '2024-07-01 18:12:24', '2024-07-01 18:12:24', NULL),
(23, 'Spnmet', 52, NULL, NULL, NULL, 'adsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 420.00, 63.00, NULL, NULL, 483.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"0\",\"payment\":\"280\"},{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"30\",\"referenceDiscount\":\"15\",\"doctorCommission\":\"0\",\"payment\":\"140\"}]', 0, '2024-07-02 16:36:06', '2024-07-02 16:36:06', NULL),
(24, 'Dina', 20, NULL, NULL, NULL, 'sadsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 60.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-02 16:41:03', '2024-07-02 16:41:03', NULL),
(25, 'Maruf', 25, NULL, NULL, NULL, 'asdsadsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1200.00, 180.00, 0.00, 552.000, 828.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"1200\"}]', 0, '2024-07-03 15:22:24', '2024-07-03 15:22:24', NULL),
(26, 'rrrr', 25, NULL, NULL, NULL, 'ewewr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, 0.00, NULL, 966.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-03 15:26:49', '2024-07-03 15:26:49', NULL),
(27, 'Safwan Shikder', 22, NULL, NULL, NULL, 'Bogra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 600.00, 90.00, 0.00, 276.000, 414.00, '[{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"200\"},{\"item_id\":\"29\",\"type\":\"test\",\"name\":\"\\u30b5\\u30c8\\u30a6 \\u30a2\\u30b9\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"400\"}]', 0, '2024-07-03 15:28:09', '2024-07-03 15:28:09', NULL),
(28, 'Diponkor Banerjy', 42, NULL, NULL, NULL, 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1450.00, 217.50, 0.00, 667.000, 1000.50, '[{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"1450\"}]', 0, '2024-07-03 15:41:21', '2024-07-03 15:41:21', NULL),
(29, 'Atish Roy', 52, NULL, NULL, NULL, 'dfgfgf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1015.00, 152.25, 0.00, NULL, 1167.25, '[{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-07-03 15:46:41', '2024-07-03 15:46:41', NULL),
(30, 'Shafin', 22, NULL, NULL, NULL, 'adsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1155.00, 173.25, 0.00, NULL, 1328.25, '[{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"30\",\"referenceDiscount\":\"15\",\"doctorCommission\":\"15\",\"payment\":\"140\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-07-03 15:47:37', '2024-07-03 15:47:37', NULL),
(31, 'sadsad', 22, NULL, NULL, NULL, 'adasda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:48:39', '2024-07-03 15:48:39', NULL),
(32, 'Masum', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:51:11', '2024-07-03 15:51:11', NULL),
(33, 'Labonno', 19, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:52:17', '2024-07-03 15:52:17', NULL),
(34, 'Dina', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:53:00', '2024-07-03 15:53:00', NULL),
(35, 'fdsfs', 20, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:53:22', '2024-07-03 15:53:22', NULL),
(36, 'asdsad', 20, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:54:08', '2024-07-03 15:54:08', NULL),
(37, 'fdsfs', 25, NULL, NULL, NULL, 'vvf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:55:33', '2024-07-03 15:55:33', NULL),
(38, 'fdsfs', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:56:46', '2024-07-03 15:56:46', NULL),
(39, 'Dina 64', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 15:58:09', '2024-07-03 15:58:09', NULL),
(40, 'htruyf', 25, NULL, NULL, NULL, 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, 0.00, NULL, 966.00, '[{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-07-03 16:02:11', '2024-07-03 16:02:11', NULL),
(41, 'Dina dfghf', 25, NULL, NULL, NULL, 'zdcdsc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 16:03:07', '2024-07-03 16:03:07', NULL),
(42, 'Asif Iqbal', 60, '1478569875', 'Female', 'Male', 'dfdsfdsf', NULL, NULL, 'Dr. Harun', 'b6', NULL, NULL, NULL, NULL, 1015.00, 152.25, 0.00, 0.000, 1167.25, '[{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-07-03 16:42:03', '2024-07-03 16:42:03', NULL),
(43, 'fdsfs', 25, '85728275875', 'Male', 'Male', 'dfdsfdsf', NULL, NULL, 'fsdfdsfsdf', '25', NULL, NULL, NULL, NULL, 2135.00, 320.25, 0.00, NULL, 2455.25, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"},{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-07-03 17:29:01', '2024-07-03 17:29:01', NULL),
(44, 'fdsfs', 25, '0651465115', 'Female', 'Male', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1400.00, 210.00, 0.00, 644.000, 966.00, '[{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"200\"},{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"0\",\"patientDiscount\":\"0\",\"referenceDiscount\":\"0\",\"doctorCommission\":\"0\",\"payment\":\"1200\"}]', 0, '2024-07-03 18:35:14', '2024-07-03 18:35:14', NULL),
(45, 'fdsfs', 25, '7856', 'Female', 'Male', 'sadsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 18:50:57', '2024-07-03 18:50:57', NULL),
(46, 'fdsfs', 25, '12563', 'Male', 'Female', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 18:56:01', '2024-07-03 18:56:01', NULL),
(47, 'fdsfs', 25, '8765785', 'Male', 'Female', 'fdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 19:04:05', '2024-07-03 19:04:05', NULL),
(48, 'fdsfs', 25, '616511', 'Male', 'Female', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 19:09:48', '2024-07-03 19:09:48', NULL),
(49, 'fdsfs', 20, '52856786', 'Male', 'Female', 'dfdsfdsf sfdsfdsf', NULL, NULL, 'fgsgsg', '20', NULL, NULL, NULL, NULL, 280.00, 42.00, 0.00, NULL, 322.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"}]', 0, '2024-07-03 19:15:34', '2024-07-03 19:15:34', NULL),
(50, 'htruyf', 25, '546513', 'Female', 'Male', 'dfdsfdsf', NULL, NULL, 'dsadsad', '25', NULL, NULL, NULL, NULL, 2660.00, 399.00, 0.00, NULL, 3059.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"},{\"item_id\":\"2\",\"type\":\"package\",\"name\":\"package-02\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"150\",\"referenceDiscount\":\"75\",\"doctorCommission\":\"75\",\"payment\":\"700\"},{\"item_id\":\"29\",\"type\":\"test\",\"name\":\"\\u30b5\\u30c8\\u30a6 \\u30a2\\u30b9\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"},{\"item_id\":\"28\",\"type\":\"test\",\"name\":\"New Test\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"120\",\"referenceDiscount\":\"120\",\"doctorCommission\":\"120\",\"payment\":\"840\"}]', 0, '2024-07-03 19:21:08', '2024-07-03 19:21:08', NULL),
(51, 'htruyf', 20, '7567865', 'Female', 'Female', 'asafadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1470.00, 220.50, 0.00, NULL, 1690.50, '[{\"item_id\":\"17\",\"type\":\"test\",\"name\":\"test\\n                                        (450 Tk)\",\"fee\":\"450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"45\",\"referenceDiscount\":\"45\",\"doctorCommission\":\"45\",\"payment\":\"315\"},{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"30\",\"referenceDiscount\":\"15\",\"doctorCommission\":\"15\",\"payment\":\"140\"},{\"item_id\":\"3\",\"type\":\"package\",\"name\":\"Package-03\\n                                        (1,450 Tk)\",\"fee\":\"1450\",\"totalDiscount\":\"30\",\"patientDiscount\":\"217.5\",\"referenceDiscount\":\"108.75\",\"doctorCommission\":\"108.75\",\"payment\":\"1015\"}]', 0, '2024-07-03 19:27:23', '2024-07-03 19:27:23', NULL),
(52, 'Dina', 20, '657986578', 'Male', 'Female', 'fdfdgfsdgfsdg', NULL, NULL, 'fgfgfsdg', '25', NULL, NULL, NULL, NULL, 1400.00, 210.00, 0.00, NULL, 1610.00, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"},{\"item_id\":\"4\",\"type\":\"package\",\"name\":\"Packa-06\\n                                        (200 Tk)\",\"fee\":\"200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"30\",\"referenceDiscount\":\"15\",\"doctorCommission\":\"15\",\"payment\":\"140\"},{\"item_id\":\"2\",\"type\":\"package\",\"name\":\"package-02\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"150\",\"referenceDiscount\":\"75\",\"doctorCommission\":\"75\",\"payment\":\"700\"},{\"item_id\":\"25\",\"type\":\"test\",\"name\":\"asdsa\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"40\",\"referenceDiscount\":\"40\",\"doctorCommission\":\"40\",\"payment\":\"280\"}]', 0, '2024-07-03 19:29:46', '2024-07-03 19:29:46', NULL),
(53, 'Harun', 25, '01732379393', 'Female', 'Female', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 350.00, 52.50, 0.00, NULL, 402.50, '[{\"item_id\":\"5\",\"type\":\"package\",\"name\":\"\\u09aa\\u09cd\\u09af\\u09be\\u0995\\u09c7\\u099c \\u0993\\u09df\\u09be\\u09a8\\n                                        (400 Tk)\",\"fee\":\"400\",\"totalDiscount\":\"30\",\"patientDiscount\":\"60\",\"referenceDiscount\":\"30\",\"doctorCommission\":\"30\",\"payment\":\"280\"},{\"item_id\":\"30\",\"type\":\"test\",\"name\":\"\\u4f50\\u85e4 \\u6075\\n                                        (100 Tk)\",\"fee\":\"100\",\"totalDiscount\":\"30\",\"patientDiscount\":\"10\",\"referenceDiscount\":\"10\",\"doctorCommission\":\"10\",\"payment\":\"70\"}]', 0, '2024-07-04 10:57:57', '2024-07-04 10:57:57', NULL),
(54, 'Safwan Shikder', 20, '01732379393', 'Old', 'Male', 'dfdsfdsf', NULL, NULL, 'Faruq', '22', NULL, NULL, NULL, NULL, 840.00, 126.00, 0.00, NULL, 966.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-04 12:22:13', '2024-07-04 12:22:13', NULL),
(55, 'Maruf', 25, '01745896321', 'Old', 'Male', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 840.00, 126.00, 0.00, NULL, 1110.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-05 04:10:20', '2024-07-05 04:10:20', NULL),
(56, 'Riyadul', 25, '01478963258', 'New', 'Male', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, 20.00, 20.00, 104.00, 840.00, 126.00, 0.00, NULL, 1090.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-05 04:18:10', '2024-07-05 04:18:10', NULL),
(57, 'fdsfs', 22, '54635345', 'New', 'Female', 'dfdsfdsf', NULL, NULL, NULL, NULL, NULL, 20.00, 20.00, 0.00, 840.00, 126.00, 0.00, NULL, 986.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-05 04:19:55', '2024-07-05 04:19:55', NULL),
(58, 'Tazwar Islam', 32, '01732379393', 'Old', 'Male', 'dfdsfdsf', NULL, NULL, NULL, NULL, 'ref name', 20.00, 0.00, 30.00, 840.00, 126.00, 0.00, NULL, 1016.00, '[{\"item_id\":\"1\",\"type\":\"package\",\"name\":\"Package-01\\n                                        (1,200 Tk)\",\"fee\":\"1200\",\"totalDiscount\":\"30\",\"patientDiscount\":\"180\",\"referenceDiscount\":\"90\",\"doctorCommission\":\"90\",\"payment\":\"840\"}]', 0, '2024-07-05 04:42:42', '2024-07-05 04:42:42', NULL),
(59, 'htruyf', 52, '7896589658', 'New', 'Female', 'dfdsfdsf', NULL, NULL, NULL, '20', NULL, 0.00, 20.00, 0.00, 700.00, 105.00, 0.00, NULL, 825.00, '[{\"item_id\":\"2\",\"type\":\"package\",\"name\":\"package-02\\n                                        (1,000 Tk)\",\"fee\":\"1000\",\"totalDiscount\":\"30\",\"patientDiscount\":\"150\",\"referenceDiscount\":\"75\",\"doctorCommission\":\"75\",\"payment\":\"700\"}]', 0, '2024-07-05 04:43:35', '2024-07-05 04:43:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'web', '2024-01-13 10:31:23', '2024-01-13 10:31:23'),
(4, 'Manager', 'web', '2024-01-13 11:17:32', '2024-01-13 11:17:32'),
(6, 'Sub Admin', 'web', '2024-01-13 13:21:52', '2024-01-13 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(1, 4),
(1, 6),
(2, 3),
(2, 4),
(2, 6),
(3, 3),
(3, 4),
(3, 6),
(4, 3),
(9, 3),
(9, 4),
(9, 6),
(10, 3),
(10, 4),
(10, 6),
(11, 3),
(11, 4),
(11, 6),
(12, 3),
(12, 4),
(12, 6),
(13, 3),
(13, 4),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` int(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `district` varchar(70) DEFAULT NULL,
  `area` varchar(70) DEFAULT NULL,
  `address` varchar(70) DEFAULT NULL,
  `password` varchar(70) NOT NULL,
  `otp` int(6) DEFAULT NULL,
  `access` tinyint(5) NOT NULL DEFAULT 1,
  `verifyToken` varchar(150) DEFAULT NULL,
  `remember_token` varchar(150) DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` int(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Class One', NULL, '2024-09-24 15:43:49', '2024-09-24 15:43:49', NULL),
(2, 'Class Two', NULL, '2024-09-24 15:43:57', '2024-09-24 15:43:57', NULL),
(3, 'Class Three', NULL, '2024-09-24 15:44:03', '2024-09-24 15:44:03', NULL),
(4, 'Class Four', NULL, '2024-09-24 15:44:11', '2024-09-24 15:44:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `form_id` bigint(20) UNSIGNED NOT NULL,
  `submission_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`submission_data`)),
  `card_id` varchar(191) DEFAULT NULL,
  `group_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `user_id`, `form_id`, `submission_data`, `card_id`, `group_id`, `created_at`, `updated_at`) VALUES
(13, 10, 8, '{\"63\":\"Safwan Shikder\",\"64\":\"01745236987\",\"65\":\"AB+\",\"66\":\"Dhaka University\",\"67\":\"images\\/user\\/fields.67_1724302823.jpg\"}', NULL, NULL, '2024-08-22 05:00:23', '2024-08-22 05:00:23'),
(14, 10, 8, '{\"68\":\"Sakhawat Hosen\",\"69\":\"014785236978\",\"70\":\"AB-\",\"71\":\"Dhaka University\",\"72\":\"images\\/user\\/fields.72_1724308931.jpg\",\"73\":\"Male\",\"74\":\"Dhaka\"}', NULL, NULL, '2024-08-22 06:42:12', '2024-08-22 06:42:12'),
(17, 25, 7, '{\"47\":\"Md. Riyadul Amin\",\"48\":\"01732379685\",\"49\":\"A+\",\"50\":\"Dhaka International University\",\"51\":\"images\\/user\\/fields.51_1724751967.jpg\",\"52\":\"Male\"}', '8176', NULL, '2024-08-27 09:46:07', '2024-08-27 09:46:07'),
(18, 25, 9, '{\"75\":\"Riyadul\",\"76\":\"01478523698\",\"77\":\"AB+\",\"78\":\"Dhaka College\",\"79\":\"images\\/user\\/fields.79_1724752970.jpg\",\"80\":\"Student\"}', '5196', NULL, '2024-08-27 10:02:50', '2024-08-27 10:02:50'),
(19, 28, 10, '{\"100\":\"Sabbir Talukder\",\"101\":\"01745896325\",\"102\":\"O+\",\"103\":\"Jagannath University\",\"104\":\"images\\/user\\/fields.104_1725472066.jpg\",\"105\":[\"Tour\",\"Riding\",\"Reading Book\",\"Debate\",\"Sports\"],\"106\":\"Jatrabari, Dhaka\"}', '8956', 4, '2024-09-04 17:47:47', '2024-09-05 06:01:00'),
(20, 22, 10, '{\"100\":\"Safwan Shikder\",\"101\":\"014785698875\",\"102\":\"B+\",\"103\":\"Dhaka University\",\"104\":\"images\\/user\\/fields.104_1725527261.png\",\"105\":[\"Tour\",\"Riding\",\"Reading Book\"],\"106\":\"Dhaka\"}', '7440', 4, '2024-09-05 09:07:42', '2024-09-05 09:08:04');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CBC', 1000.00, 1, '2024-05-19 08:42:27', '2024-05-20 09:22:44', NULL),
(2, 'S. Creatinin', 400.00, 1, '2024-05-19 08:42:48', '2024-05-19 08:42:48', NULL),
(3, 'S. Creatinin', 400.00, 1, '2024-05-19 08:42:48', '2024-05-19 08:53:19', '2024-05-19 08:53:19'),
(4, 'SGPT', 500.00, 1, '2024-05-19 08:54:00', '2024-05-19 08:54:00', NULL),
(5, 'Urine R/E', 400.00, 1, '2024-05-19 08:54:27', '2024-05-19 08:54:27', NULL),
(6, 'Urine R/E', 400.00, 1, '2024-05-19 08:54:27', '2024-05-19 08:54:35', '2024-05-19 08:54:35'),
(7, 'Blood Test', 200.00, 1, '2024-05-19 08:54:41', '2024-05-19 08:59:29', NULL),
(8, 'fdsfds', 200.00, 1, '2024-05-19 08:54:41', '2024-05-19 08:58:50', '2024-05-19 08:58:50'),
(9, 'fdsfds', 200.00, 1, '2024-05-19 08:54:41', '2024-05-19 08:58:54', '2024-05-19 08:58:54'),
(10, '佐藤 恵美', 100.00, 1, '2024-05-19 08:55:06', '2024-05-19 08:55:06', NULL),
(11, '佐藤 恵美', 100.00, 1, '2024-05-19 08:55:07', '2024-05-19 08:58:39', '2024-05-19 08:58:39'),
(12, '佐藤 恵美', 100.00, 1, '2024-05-19 08:55:07', '2024-05-19 08:58:37', '2024-05-19 08:58:37'),
(13, '佐藤 恵美', 100.00, 1, '2024-05-19 08:55:07', '2024-05-19 08:58:43', '2024-05-19 08:58:43'),
(14, '佐藤 恵美', 100.00, 1, '2024-05-19 08:55:07', '2024-05-19 08:58:46', '2024-05-19 08:58:46'),
(15, 'sakif', 250.00, 1, '2024-05-19 08:59:51', '2024-05-19 08:59:51', NULL),
(16, 'test', 450.00, 1, '2024-05-19 09:00:07', '2024-05-19 09:12:26', '2024-05-19 09:12:26'),
(17, 'test', 450.00, 1, '2024-05-19 09:00:07', '2024-05-19 09:00:07', NULL),
(18, 'サトウ アスカ', 300.00, 1, '2024-05-19 09:00:21', '2024-05-19 09:12:35', '2024-05-19 09:12:35'),
(19, 'サトウ アスカ', 300.00, 1, '2024-05-19 09:00:21', '2024-05-19 09:03:56', '2024-05-19 09:03:56'),
(20, 'サトウ アスカ', 300.00, 1, '2024-05-19 09:00:21', '2024-05-19 09:03:50', '2024-05-19 09:03:50'),
(21, '綿野　喜久子', 250.00, 1, '2024-05-19 09:00:39', '2024-05-19 09:04:01', '2024-05-19 09:04:01'),
(22, '綿野　喜久子', 250.00, 1, '2024-05-19 09:00:39', '2024-05-19 09:03:45', '2024-05-19 09:03:45'),
(23, '綿野　喜久子', 250.00, 1, '2024-05-19 09:00:39', '2024-05-19 09:03:40', '2024-05-19 09:03:40'),
(24, '綿野　喜久子', 250.00, 1, '2024-05-19 09:00:39', '2024-05-19 09:03:34', '2024-05-19 09:03:34'),
(25, 'asdsa', 400.00, 1, '2024-05-19 09:04:23', '2024-05-19 09:04:23', NULL),
(26, 'tttt', 20.00, 1, '2024-05-19 09:11:16', '2024-05-19 09:12:20', '2024-05-19 09:12:20'),
(27, 'rty', 150.00, 1, '2024-05-19 09:11:23', '2024-05-19 09:12:23', '2024-05-19 09:12:23'),
(28, 'New Test', 1200.00, 1, '2024-05-19 09:12:45', '2024-06-19 08:50:27', NULL),
(29, 'サトウ アス', 400.00, 1, '2024-05-19 09:21:59', '2024-05-19 09:21:59', NULL),
(30, '佐藤 恵', 100.00, 1, '2024-05-19 09:22:11', '2024-05-19 09:22:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

CREATE TABLE `thanas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `division_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `name`, `division_id`, `district_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Konabari', 1, 3, 1, '2024-02-24 07:29:13', '2024-02-24 07:29:13', NULL),
(2, 'Gazipur Sadar', 1, 3, 1, '2024-02-24 07:29:38', '2024-02-24 07:30:24', NULL),
(3, 'Tangail Sadar', 1, 2, 1, '2024-02-24 07:29:58', '2024-02-24 07:29:58', NULL),
(4, 'Gopalpur', 1, 2, 1, '2024-02-24 07:30:13', '2024-02-24 07:30:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `leader_id` int(191) DEFAULT NULL,
  `reg_leader` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`reg_leader`)),
  `reg_group` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `image`, `leader_id`, `reg_leader`, `reg_group`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'sonet@gmail.com', NULL, NULL, '$2a$12$cRfC7RWKXzpkWYFHOA1s0O87gYwGwgeNuymoLdFQ/es7BbZ8AvS2.', NULL, 'images/profile/image_1727180451.jpeg', NULL, NULL, NULL, '2024-01-13 09:32:28', '2024-09-24 12:20:51'),
(6, 'Test User', 'test@gmail.com', NULL, NULL, '$2y$10$AN/3TCIdMSvZzaCwI8BJ0OzcziAz6hIhMj5.LpSRN.3u4teRQ0KUG', NULL, NULL, NULL, NULL, NULL, '2024-01-13 10:31:23', '2024-01-13 13:09:03'),
(7, 'Safwan', 'safwan@gmail.com', NULL, NULL, '$2y$10$5qwGbj8UK0vHpWP0qNYqNezeB/0S6UIOxRMr2ZKxj5f.RAm7ATTsC', NULL, NULL, NULL, NULL, NULL, '2024-01-13 11:17:14', '2024-01-13 11:17:14'),
(10, 'Shawn Shikder Sonet', 'user1@gmail.com', NULL, NULL, '$2y$10$hKF.5gxEJ4463vyMEiW/r.oYd8xioVzSF3HqnA4lrvxpV.KgisIRG', NULL, 'images/profile/image_1724400978.jpg', NULL, NULL, NULL, '2024-02-04 03:09:09', '2024-08-23 09:00:56'),
(16, 'Leader One', 'leader1@gmail.com', '01732379393', NULL, '$2y$10$umr683.xsnAOfUJGfUFKO.W8VCGatPMqxTfKYI8o1PEfALNUKZigq', NULL, 'images/profile/image_1724307735.jpg', NULL, NULL, NULL, '2024-08-16 07:04:50', '2024-08-22 06:22:15'),
(17, 'Leader Two', 'leader2@gmail.com', '01914565237', NULL, '$2y$10$tHfdhUdaL/BLGMav8jNaXe3ZGauI/eG/.PjBmuLZds69jvZkf86n.', NULL, 'images/leaders/image_1724302537.jpg', NULL, NULL, NULL, '2024-08-22 04:55:37', '2024-08-22 04:55:37'),
(18, 'Sub Leader One', 'subleader1@gmail.com', '01478523698', NULL, '$2y$10$6mLov9won5mAQmlRPkXFZuT5ds3/68br9npDlBxSTOAHHTdti9OHm', NULL, 'images/subleaders/image_1724304237.jpg', NULL, NULL, NULL, '2024-08-22 05:19:46', '2024-08-22 05:23:57'),
(19, 'Leader Three', 'leader3@gmail.com', '01745236987', NULL, '$2y$10$Bty1f5P2h2Cw4a7ujD9WjOQ.CzUPbO3bv4u8BvlCl5ypYAv54uueK', NULL, 'images/profile/image_1724308456.jpg', NULL, NULL, NULL, '2024-08-22 06:34:17', '2024-08-22 06:34:17'),
(22, 'Safwan Shikder', 'safwan1182@gmail.com', '01478563258', NULL, '$2y$10$NR3FDGecdYhrqsMj9FUJbOt.b9DZ0ZeKo.rn0KWsxOLDl3KuPScum', NULL, 'images/profile/image_1725527118.jpg', NULL, '[16]', '[4]', '2024-08-23 14:18:57', '2024-09-05 09:08:04'),
(23, 'Sadia Shikder', 'sadia@gmail.com', '01732348596', NULL, '$2y$10$hCz1fNWnLXkIMBzSQiBQ.uFfiO7KmxUHnEQgQEiRmjw.NQasK2AX2', NULL, NULL, NULL, NULL, NULL, '2024-08-23 14:20:28', '2024-08-23 14:20:28'),
(25, 'Riyadul Amin Shagor', 'shawnshikder1996@gmail.com', '01732345281', NULL, '$2y$10$BbrCcKsvBOLTv5KgHP.ad.sIqBbdbflLO4Y/VK2xB1KjGUFxMhHB.', NULL, 'images/profile/image_1724740220.jpg', NULL, '[16,17]', NULL, '2024-08-26 13:29:08', '2024-08-29 05:50:18'),
(27, 'Sub Leader Two', 'subleader2@gmail.com', '01478523625', NULL, '$2y$10$oPxW6ipo7IOOCKZ8aPIIKek7GCBwtQkQPfUOXWFG4TG2B2wkF1YRW', NULL, 'images/profile/image_1724741884.png', 16, NULL, '[3]', '2024-08-27 06:58:04', '2024-08-27 06:58:04'),
(28, 'Sakib Mahmud', 'shawnlinkstaff@gmail.com', '01954478556', NULL, '$2y$10$15cMBd/8EjqkjDjykJ7ROeXRy49B.LKXPDxQO/cWZr3ktnnc/vB0C', NULL, 'images/profile/image_1725479123.jpg', NULL, '[16]', '[4]', '2024-08-28 05:17:47', '2024-09-05 06:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `web_properties`
--

CREATE TABLE `web_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `style` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_properties`
--

INSERT INTO `web_properties` (`id`, `title`, `type`, `data`, `style`, `image`, `created_at`, `updated_at`) VALUES
(1, 'adsad', 'address', NULL, NULL, NULL, '2024-02-04 06:35:39', '2024-02-04 06:35:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `districts_name_unique` (`name`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_name_unique` (`name`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_verifications_email_unique` (`email`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forms_user_id_foreign` (`user_id`);

--
-- Indexes for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_fields_form_id_foreign` (`form_id`);

--
-- Indexes for table `form_inputs`
--
ALTER TABLE `form_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submissions_user_id_foreign` (`user_id`),
  ADD KEY `submissions_form_id_foreign` (`form_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thanas`
--
ALTER TABLE `thanas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_properties`
--
ALTER TABLE `web_properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form_fields`
--
ALTER TABLE `form_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `form_inputs`
--
ALTER TABLE `form_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `menuitems`
--
ALTER TABLE `menuitems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `thanas`
--
ALTER TABLE `thanas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `web_properties`
--
ALTER TABLE `web_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forms`
--
ALTER TABLE `forms`
  ADD CONSTRAINT `forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `form_fields`
--
ALTER TABLE `form_fields`
  ADD CONSTRAINT `form_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `submissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
