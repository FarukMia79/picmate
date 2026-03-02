-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2026 at 05:08 AM
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
-- Database: `picmate`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/banner/17563226342.png', '#', 1, '2023-10-01 04:16:43', '2025-08-27 19:23:54'),
(2, 1, 'uploads/banner/17563226201.png', '#', 1, '2023-10-01 04:16:58', '2025-08-27 19:23:40'),
(9, 5, 'uploads/banner/1701006127banner-1.webp', '#', 1, '2023-11-26 13:42:07', '2023-11-26 13:42:07'),
(10, 5, 'uploads/banner/1701006171banner-2.jpg', '#', 1, '2023-11-26 13:42:51', '2023-11-26 13:42:51'),
(11, 5, 'uploads/banner/1701006236banner-3.webp', '#', 1, '2023-11-26 13:43:56', '2023-11-26 13:43:56'),
(12, 6, 'uploads/banner/1701006335banner21.jpg', '#', 1, '2023-11-26 13:45:35', '2023-11-26 13:45:35'),
(13, 6, 'uploads/banner/1701154360apple logo.png', '#', 1, '2023-11-26 13:45:46', '2023-11-28 06:52:40'),
(16, 1, 'uploads/banner/17563226684.png', '#', 1, '2025-08-27 19:24:28', '2025-08-27 19:24:28');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2023-11-19 05:25:34'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2023-11-19 05:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Realme', 'realme', NULL, 0, '2023-11-27 07:19:47', '2025-08-17 18:44:39'),
(3, 'Samsung Galaxy', 'samsung-galaxy', NULL, 0, '2023-11-27 07:19:54', '2025-08-17 18:44:43'),
(4, 'Oppo', 'oppo', NULL, 0, '2023-11-27 07:20:19', '2025-08-17 18:44:47'),
(6, 'Infinix', 'infinix', NULL, 0, '2023-11-27 07:23:30', '2025-08-17 18:44:52'),
(7, 'Realme', 'realme', NULL, 0, '2023-11-27 07:23:40', '2025-08-17 18:44:57'),
(8, 'Nokia', 'nokia', NULL, 0, '2023-11-27 07:23:47', '2025-08-17 18:45:02'),
(9, 'Vivo', 'vivo', NULL, 0, '2023-11-27 07:23:54', '2025-08-17 18:44:27'),
(10, 'Itel', 'itel', NULL, 0, '2023-11-27 07:24:02', '2025-08-17 18:44:23'),
(11, 'Apple', 'apple', 'uploads/brand/1701152124-apple-logo.webp', 0, '2023-11-28 06:15:24', '2025-08-17 18:44:19'),
(12, 'Xiaomi Redmi', 'xiaomi-redmi', 'uploads/brand/1701172986-xiaomi-logo.webp', 0, '2023-11-28 12:03:06', '2025-08-17 18:44:12'),
(13, 'HONOR', 'honor', 'uploads/brand/1701498234-honor.webp', 0, '2023-12-02 06:23:55', '2025-08-17 18:44:07'),
(14, 'ONE PLUS', 'one-plus', 'uploads/brand/1701508131-oneplus-nord-n20-se-2.webp', 0, '2023-12-02 09:08:51', '2025-08-17 18:44:03'),
(15, 'I QOO', 'i-qoo', 'uploads/brand/1701943193-og_iqoo_logo.webp', 0, '2023-12-07 09:59:53', '2025-08-17 18:44:00'),
(16, 'OPPO', 'oppo', 'uploads/brand/1701945646-images.webp', 0, '2023-12-07 10:40:46', '2025-08-17 18:43:57'),
(17, 'Rihanu', 'vivo', 'uploads/brand/1755582741-untitled-design-(25).webp', 1, '2023-12-07 10:57:40', '2025-08-19 05:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(3, 'public/uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21'),
(4, 'public/uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21'),
(5, 'public/uploads/campaign/1708589841-company-rating.png', 1, '2024-02-22 08:17:21', '2024-02-22 08:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mens Shopping', 'mens-shopping', 'uploads/category/1706950015-1_alibaba-prince.webp', 'Mens Shopping', '<p>Mens Shopping<br></p>', 0, 0, '2024-02-03 08:46:57', '2025-08-17 03:25:56'),
(2, 0, 'Womens Fashion', 'womens-fashion', 'uploads/category/1706950297-2.webp', 'Womens Fashion', '<p>Womens Fashion<br></p>', 0, 0, '2024-02-03 08:51:38', '2025-08-17 03:25:49'),
(6, 0, 'Gadgets & Electronics', 'gadgets-&-electronics', 'uploads/category/1706950829-6.webp', 'Gadgets', '<p>Gadgets<br></p>', 0, 0, '2024-02-03 09:00:30', '2025-08-17 03:25:41'),
(7, 0, 'Organic Mashla', 'organic-mashla', 'uploads/category/1756357394-5.webp', 'Organic Mashla', NULL, 0, 1, '2024-02-03 09:01:30', '2025-08-28 05:03:15'),
(9, 0, 'বেবি সাপোর্ট সোফা চেয়ার', 'বেবি-সাপোর্ট-সোফা-চেয়ার', 'uploads/category/1755586885-untitled-design-(30).webp', 'বেবি সাপোর্ট সোফা চেয়ার – শিশুর আরামদায়ক সীট | Babughor', '<p>Babughor–এর বেবি সাপোর্ট সোফা চেয়ারে শিশুকে নিরাপদে বসানো যায়। আরামদায়ক, হালকা ও মজবুত, খেলা ও বিশ্রামের জন্য আদর্শ।</p>', 0, 0, '2024-05-31 14:08:47', '2025-08-27 18:12:02'),
(11, 0, 'Nuts & Seeds', 'nuts-&-seeds', 'uploads/category/1756357434-2.webp', 'Nuts & Seeds', NULL, 0, 1, '2024-06-25 07:36:40', '2025-08-28 05:03:54'),
(12, 0, 'Honey', 'honey', 'uploads/category/1756357454-1.webp', 'Honey', '<p>Honey </p>', 0, 1, '2024-08-11 00:45:13', '2025-08-28 05:04:14'),
(13, 0, 'Mustard Oil', 'mustard-oil', 'uploads/category/1756357476-4.webp', 'Mustard Oil', '<p><br></p>', 0, 1, '2024-08-11 00:46:12', '2025-08-28 05:04:37'),
(14, 0, 'Combo Offer', 'combo-offer', 'uploads/category/1756357487-3.webp', 'Combo Offer', '<p>Combo Offer<br></p>', 1, 1, '2024-08-11 00:49:05', '2025-08-28 06:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(32, 'Aqua', '#00FFFF', '1', '2023-11-03 06:04:29', '2023-11-03 09:23:46'),
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2023-11-03 09:53:12'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#ffffff', '1', '2023-11-03 06:18:44', '2023-11-03 06:18:52'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '01790647979', 'hello@picmate.com', '01990150950', 'farukhossain402877@gmail.com', 'Zirani Kashimpur Road, Hatimara, Kashimpur, Gazipur', '#', 1, '2023-01-22 10:35:29', '2026-02-21 06:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', 'u8dq2rufgcfbpgxluvqhw7xet9bsp3re', 'roee6ieqmsd550b7f5yp6lvb', 'https://portal.steadfast.com.bd/api/v1/create_order', 'asdfdsfdsafdsf', '0', '2024-02-06 11:29:46', '2025-08-29 11:22:58'),
(2, 'pathao', '', '', 'https://api-hermes.pathao.com/aladdin', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjYxNzVkOWQyODAwNjk2YzU4Y2E1MmZkMGQ5Y2RiZWRkYTBhN2I5YjU0YTIwNTQxNzVhZTVlZjYwNzg2ZTU1MzU1NzYxM2JhZGZhNjcwMzdmIn0.eyJhdWQiOiI0MTkyIiwianRpIjoiNjE3NWQ5ZDI4MDA2OTZjNThjYTUyZmQwZDljZGJlZGRhMGE3YjliNTRhMjA1NDE3NWFlNWVmNjA3ODZlNTUzNTU3NjEzYmFkZmE2NzAzN2YiLCJpYXQiOjE3MDM0MzY4NDQsIm5iZiI6MTcwMzQzNjg0NCwiZXhwIjoxNzExMjEyODQzLCJzdWIiOiIxNzM5MTIiLCJzY29wZXMiOltdfQ.VARDX-r01cIf0uPE_CFItJ44BfyB8-tD0rmXAt9r-DT545rIDKW97VsMWd2jfghQjbnLY8C-nL5yMOCz759IGT-2ApSOCtND1b1Dp_AahtGVDrqKnYn_ZZrWWfdHQ-OYsxGVpH3Cat3kgVafIDcpJJdTTYmtmESrr3dulGCBS4WuyGpNnBnz5TjGk6d3UD83-RG9Ud37x5hSZBJwXM85xrX3AotCo9MhQti7hmsve8Mf4Z2qJSjJBCDPTrjoKDYNsSWqgVtKCYLv3H2mnXu5Ecsp0bxRdTYLzzVZaqF-B8sYYTOeseASgKuE5XQl1NOOCXBr9gBdEC1FD--lpElgG_FeQwvelhpeQ2yyze806ipkY8wNNqEvm9pC9uJ0n7ZmbSezJUYghC7vfi1iEmDOcB9JQxX9WOFi1VKSSOG-u__SQcYRmtAJ8LrTwL8zDMruL4uYFNGe17F-PuRH8ncp_FZK6Q_xuJY7CcDPwCw3E0_SMnmMU7ND25hoUpNly41j9y2G9UaGovfwD-QosPozAqACdRdyqP6cn3icNPY2kp7sSdKLsUIUOZox5ugfjbYC9wC6fzdYED0U85QDA4nPj0NGDVutTcFdED-Yzmmd-VNJVNI9cALfVDfKrpHlWpQMSeeZ7dc16NA0SrayF5DgQbpYg6CbGskmWTCsgmuWFvw', '0', '2024-02-06 11:29:46', '2024-02-10 12:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Just let us know We will Reach you', 1, '2023-10-04 07:02:30', '2023-11-26 18:58:27'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p><br></p>', 1, '2023-10-04 07:03:00', '2024-01-15 17:41:53'),
(5, 'Return Policy', 'return-policy', 'Return Policy', 'Np Return Policy', 1, '2023-10-04 07:03:42', '2023-11-26 19:00:02'),
(6, 'Terms & Conditions', 'terms-&-conditions', 'Terms & Conditions', '<p>ORDER CONFIRMED AND PAID</p>', 1, '2023-10-04 07:04:05', '2023-11-26 18:59:36'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'GO MOBILE BD', 1, '2023-10-04 07:04:19', '2024-01-15 17:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Application', 'Mobile Application', '01738154732', NULL, NULL, NULL, NULL, 1, '4507', 'public/uploads/default/user.png', '$2y$10$O/YX84euUCyyFSFKyLPwkOga5pZXdPsvCsOqt7eQpAPEMeL.Rj8ti', NULL, 'active', '2023-11-26 13:35:21', '2024-02-06 05:25:23'),
(18, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154731', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5TykOXa89b0ex.l08afOvO6zzI0Mvo1PwHqY9/NlKd3I12eopVFPC', NULL, 'active', '2024-05-27 11:57:33', '2024-05-27 11:57:33'),
(19, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154732', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ECkkJpoBBBw2KcZO7PK0jeLpOzcSn4hsD0qh4xxMhyI62j6SsDO/.', NULL, 'active', '2024-05-27 16:43:04', '2024-05-27 16:43:04'),
(20, 'Rashed Islam', 'Rashed Islam', '01763095059', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tSNW0knSN7vc2HCx96U0AeZA3xZrtBYNbrBq135gW2XEwU1b7rfRC', NULL, 'active', '2024-05-29 19:18:14', '2024-05-29 19:18:14'),
(21, 'Rashed Islam', 'rashed-islam-21', '01763095058', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cnKpmojL7JX3uAqRxJs5XeA1jmbjoEA8iVFhEhI3/2pYfMltzypWu', NULL, 'active', '2024-05-29 19:20:58', '2024-05-29 19:20:58'),
(22, 'Md Ajijul Islam', 'md-ajijul-islam-22', '01988634680', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Pq7rnXsH1o7dP6sne98PS.iuHukei5O96LOkoLAe6D6qDUOcbyyhC', NULL, 'active', '2024-05-29 21:20:24', '2024-05-29 21:20:24'),
(23, 'Jjjhg', 'Jjjhg', '09766876578', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vQRD/Zo/x8UekfzC74t0nuhavZLk61KXMhd89sfIDfKn9Ai4.QJ0m', NULL, 'active', '2024-05-29 22:13:19', '2024-05-29 22:13:19'),
(24, 'Arefin', 'Arefin', '01733055211', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fgIFPVqdhzUYMbAFluYp6O4aqnnkm/6YXwXAf7uT9U4/dPVxYql6G', NULL, 'active', '2024-05-31 01:06:09', '2024-05-31 01:06:09'),
(25, 'hb medul', 'hb-medul-25', '01774364116', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LJhfzNE6539BCC0rB/i6MOuOkR8fTRG9mVVmg0FUmOfmR0xiBhrLS', NULL, 'active', '2024-05-31 14:59:09', '2024-05-31 14:59:09'),
(26, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01774364115', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5RV6ptm4nDjDH2j2NriCwu6qvE1sJ.C5DJWJUAiY/FKnI/y1Ljs4y', NULL, 'active', '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(27, '345', '345', '01903845533', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AyTPno3LSmx9ChzDf98YHOASyS4ucMgGTiE7ydv92nQqonNWD4FOy', NULL, 'active', '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(28, '24323', '24323', '01903823423', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qHBMJZbIdZW5JynLxH./jOF19MA9cFOK0UdbGgWJ9DD.lrv5UAhni', NULL, 'active', '2024-06-03 12:05:42', '2024-06-03 12:05:42'),
(29, 'Shihab Sarker', 'shihab-sarker-29', '01927101320', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$s77j/1kbCsMRcp8KSBTMgumInFMEpYcK4VDeejN0lBdF2aA5DH0Xi', NULL, 'active', '2024-06-04 23:41:01', '2024-06-04 23:41:01'),
(30, 'hb medul', 'hb-medul-30', '01738154733', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tvGJc2nBzR0Nmhslrnu2iusWnt5kzTJznKZTeC0JT1aJs18i73W36', NULL, 'active', '2024-06-05 02:11:58', '2024-06-05 02:11:58'),
(31, 'Raju Ahammed', 'raju-ahammed-31', '01945158892', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vpOkWwtwpCEDdQelxT6w3OQJTNLn8WXwWTG5QX36V3dHS2/BIrHD.', NULL, 'active', '2024-06-23 15:33:46', '2024-06-23 15:33:46'),
(32, 'Md Masudur Rahman', 'Md Masudur Rahman', '01648114141', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r1NEoMs1OaHqXKlANsGi3uxCJaBJ86PiWduZZV1YS.mZyHeIhbDDS', NULL, 'active', '2024-06-25 08:44:24', '2024-06-25 08:44:24'),
(33, 'Md Masudur Rahman', 'Md Masudur Rahman', '01712554769', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nyGFJOpTQUN6YKpH1TutY.H8sADNhyuinSZCWPelInBkUAjXzYK9a', NULL, 'active', '2024-06-25 08:46:04', '2024-06-25 08:46:04'),
(34, 'hth', 'hth', '01753048343', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sz1dsJ1T5Nsn/tzWaDU5RuITf0QNlfOe.WPeM30EHlh/slZZEIY1u', NULL, 'active', '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(35, 'mahedi', 'mahedi', '01711190908', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tt.5j3CRUJH6BuT2LQCkbe3Pls6eV.1JQtFGVV4VRKQ7A9Qp/cFYW', NULL, 'active', '2024-07-11 15:14:01', '2024-07-11 15:14:01'),
(36, 'SUHAG RANA', 'SUHAG RANA', '01919150815', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$84C/DLnSg/jJN2gTkqNU9OT9BbjB3tqjYllItt5mWAqz0ToK8xg4q', NULL, 'active', '2024-07-12 08:11:27', '2024-07-12 08:11:27'),
(37, 'Mahedi', 'mahedi-37', '01892722287', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$o3NFuCcYjWjadhemi8LhT.r.DvhSbc3xBVysw6eBQVBvMygyY4tMm', NULL, 'active', '2024-07-12 18:50:42', '2024-07-12 18:50:42'),
(38, 'Test', 'Test', '09999999994', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fCdDbApThksSQamcxJGXmemHoE2a5TV2VONePwTZOlx574YnuV87e', NULL, 'active', '2024-07-13 05:04:56', '2024-07-13 05:04:56'),
(39, 'Md Shahab Uddin Mahamud', 'Md Shahab Uddin Mahamud', '01310673600', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6hUEGfcAz0ToNf9hlDB4UO2TpQUH/UyNWJe/tcWrptue9IAS93VzG', NULL, 'active', '2024-07-13 11:46:33', '2024-07-13 11:46:33'),
(40, 'Rakib', 'Rakib', '01929603824', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$K77SGeWgf7DLlsy6nD/BaekISqKVa3bCb4Klk2G0xxSOT/5ua4m/y', NULL, 'active', '2024-07-13 13:47:09', '2024-07-13 13:47:09'),
(41, 'Sjdhfh', 'Sjdhfh', '01234567890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vKc0pHd/cylHAYQy2TJMD.iQe7S5K85GtNDEQJ2IacPTmVKHIFcQO', NULL, 'active', '2024-07-13 18:54:32', '2024-07-13 18:54:32'),
(42, 'Shohel', 'shohel-42', '01715475966', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$54SAwAY6pFLKomYQBQNMSOUiNN7IrcQuvToSHM.VIre8HtreI2yZy', NULL, 'active', '2024-07-13 19:24:23', '2024-07-13 19:24:23'),
(43, 'Yeasin', 'Yeasin', '01966395750', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6etVOAqeMYsHba9UfNYYGe7mMuG0TAJK3rkR/vGY6yQjT1tTNx2QG', NULL, 'active', '2024-07-14 03:22:04', '2024-07-14 03:22:04'),
(44, 'Yeasin Sifat', 'yeasin-sifat-44', '1966395750', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2643/YJ8GhoAIiWmuhIZ0OjfOJvo44Wjof3Tt6vEEwAAc9xfuYLM.', NULL, 'active', '2024-07-14 03:24:38', '2024-07-14 03:24:38'),
(45, 'ddkjbfkg', 'ddkjbfkg', '01715473933', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tocXJ6y5tW5500AqMTIjl.ojvCYysYHoLr.n8nvy9jVBabSmLv1du', NULL, 'active', '2024-07-14 03:31:18', '2024-07-14 03:31:18'),
(46, 'Tariqul', 'tariqul-46', '01750483773', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8QCU5EqEwrv7j17HqPiFpuHp6MADe8RBfvdRflNp4lrkYYB/CzeJe', NULL, 'active', '2024-07-14 11:35:31', '2024-07-14 11:35:31'),
(47, 'Hahha', 'Hahha', '01888888888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TUeQnUVuFFdkv3vxsKTxn.3YD2cArGGf.ElN66Bj4R7LuTIDm5HtG', NULL, 'active', '2024-07-14 17:16:54', '2024-07-14 17:16:54'),
(48, 'Aggzs', 'Aggzs', '05326732244', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KWdAXxKzyMwhiMFPpyoWaOAw2RXLpoPyXcEi2XJFUbYW5PQEqxKrC', NULL, 'active', '2024-07-14 23:20:12', '2024-07-14 23:20:12'),
(49, 'Hsgh', 'Hsgh', '01745534555', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EBxYynYNwCvUAbLJa4mC9./vAxqsqoIYBh29yY6/R6Ko0NJDz27eq', NULL, 'active', '2024-07-15 05:41:09', '2024-07-15 05:41:09'),
(50, 'Hhjjj', 'Hhjjj', '01710000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gF0T5ycjjV2cMjjCevWl9urOuAGetNTawgc23E3UaNs9iICqOYoEi', NULL, 'active', '2024-07-15 06:25:55', '2024-07-15 06:25:55'),
(51, 'Demo', 'demo-51', '01710000001', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$uNhdb/CedhdnTfv0S3w/aO23Nxn7LEqbwlMkxSPdn0K3vjXjPGrtS', NULL, 'active', '2024-07-15 16:58:36', '2024-07-15 16:58:36'),
(52, 'Ahmedul', 'ahmedul-52', '01919197077', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4QqnzXpmykpVs0uXSIOUreegSkuMsOXCHQXrM0yXE5UwBviH3vvbG', NULL, 'active', '2024-07-17 06:39:19', '2024-07-17 06:39:19'),
(53, 'Mahedi Hasan', 'mahedi-hasan-53', '01977710908', 'itpratidin.xyz@gmail.com', 'Dhaka', 470, '32/11, Kazlarpar', 1, NULL, 'public/uploads/default/user.png', '$2y$10$Za6bVMiJOFAiY45zS.za/eCPS73YeiT5UA2xchqAOzWMFUAkNHnD6', NULL, 'active', '2024-07-17 06:47:33', '2024-07-17 06:48:34'),
(54, 'Md Tuhin Reza', 'Md Tuhin Reza', '01982688548', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tuqtC.z.nHmv5dyAFgKjyevb8hiVjhGtnOgeeO2/IyP9RpdRBmA22', NULL, 'active', '2024-07-17 08:20:09', '2024-07-17 08:20:09'),
(55, 'Prottoye Abrar', 'Prottoye Abrar', '01754367894', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.Ajplx9CA0btnDs3hSPlGOogLU96uu9Kd3JEu0I72tXJVz8FPhcSO', NULL, 'active', '2024-07-17 08:23:02', '2024-07-17 08:23:02'),
(56, 'Sourov', 'sourov-56', '01938222999', NULL, NULL, NULL, NULL, 1, '2417', 'public/uploads/default/user.png', '$2y$10$qgPaFD5/ptx9gxIZJf4w9.9sV80yVQxofnlylI7PsFfG8kvkwCpjy', NULL, 'active', '2024-07-17 11:25:32', '2024-07-24 16:29:30'),
(57, 'Nayeem Islam', 'Nayeem Islam', '01793526558', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dBt1xZnDiL5Ib29i5CmL5uF.xa8fernv8sqWnGYicJWWgztLkiPom', NULL, 'active', '2024-07-17 15:59:02', '2024-07-17 15:59:02'),
(58, 'Sourov', 'Sourov', '01896085632', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ahqWv0TeLo6i6c9Z4qeOVubQpDg.l506mof9P1hKFgwIq8eoZYEFW', NULL, 'active', '2024-07-24 16:30:36', '2024-07-24 16:30:36'),
(59, 'A', 'A', '01544436753', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i5Lf.RXIx4Cdna3wP0mat.wH/7TPsxQ8i1GZlHz1G2xgPIxtn5V.i', NULL, 'active', '2024-07-26 17:34:27', '2024-07-26 17:34:27'),
(60, '01843777018', '01843777018', '01843777018', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$k1WcUPkUcWXIXKwfg9mX3OJZ9.LO8JAsbISaKFn7QxpJPX/Ta4bi6', NULL, 'active', '2024-07-26 18:31:59', '2024-07-26 18:31:59'),
(61, 'Fff', 'Fff', '01912343434', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OteR7GYTzbeTjcts1QdrQ.Agwh46iJCRJY.LL539iabGq5TzDyF3y', NULL, 'active', '2024-07-26 18:39:59', '2024-07-26 18:39:59'),
(62, 'Fknf', 'Fknf', '01912121212', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$J0hgmLy2STOdVBf4bdnTmOqrYImEBU029wx3k2Yl/YoH8xMxh5EaS', NULL, 'active', '2024-07-26 18:56:34', '2024-07-26 18:56:34'),
(63, 'Rakibul Islam', 'Rakibul Islam', '01922329204', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iiQLDLSHEPTPDhhUQgw6quXs27gAZrNZti0tIymDxWYrmJFoTBMi2', NULL, 'active', '2024-07-27 03:27:14', '2024-07-27 03:27:14'),
(64, 'hj', 'hj', '01773304019', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yT7KLPhV.lbMO6TLgzAckeW77fVx1mxvmMWKWBQB/6fZcv5pgQaTC', NULL, 'active', '2024-07-29 03:38:20', '2024-07-29 03:38:20'),
(65, 'Maniruzzaman dalim', 'Maniruzzaman dalim', '01767753534', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JPu/ZYIuEO1Ss2djJBEUke5Bs2.V/Jm2Y2Kr1pX0YiO3CBTz9Qu7i', NULL, 'active', '2024-07-30 07:09:00', '2024-07-30 07:09:00'),
(66, 'Md Abdul Hamid', 'md-abdul-hamid-66', '01787661482', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MklCiuEhVi1Sy4vRISTkCeMiYeMOhdhtp6RFxEdmyVHpS9hXzXVBm', NULL, 'active', '2024-08-01 08:05:26', '2024-08-01 08:05:26'),
(67, 'মোঃ সোহেল রানা', 'mo-sohel-rana-67', '01824037279', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LeFrvEXZ2SPyjOz5Z9z5Y.hl0fkuXsZKUYpe/ZaTZeITGL.Ecsori', NULL, 'active', '2024-08-01 15:47:38', '2024-08-01 15:47:38'),
(68, 'Jahid', 'Jahid', '01793754284', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lElNI8/bmKhX1mAcPXLpB.0lc3y9GtCii3OvRPxqMORFw4wEKtFAK', NULL, 'active', '2024-08-02 19:17:06', '2024-08-02 19:17:06'),
(69, 'Shemul Chandra Shil', 'Shemul Chandra Shil', '01314440512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DTm4uUXWahwogFc7h2tGt.jszhjt/TGo9HtZMF09XN7zbKey7pQkS', NULL, 'active', '2024-08-03 03:27:56', '2024-08-03 03:27:56'),
(70, 'GOLAM  NAZIMUR  RAHMAN', 'GOLAM  NAZIMUR  RAHMAN', '01111111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$UV0ILA2kNbFO15RTZXOPA.mB4RnMyrEsmldqnogK3Gv3bFj0/Bs0i', NULL, 'active', '2024-08-03 06:47:37', '2024-08-03 06:47:37'),
(71, 'Ayat Islam', 'Ayat Islam', '01615939743', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tB1ngwy3YGRnfpQI5dYB3Ofnhc5T1WAdngUwz5vT9zP.jOtz/yVje', NULL, 'active', '2024-08-03 08:06:01', '2024-08-03 08:06:01'),
(72, 'fdsfgsf', 'fdsfgsf', '01611985322', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hK2nL2ZoJkTr8E8fv0Xkuei8LQbh3qWIMtioHJHf4PBgIxRuGVtOO', NULL, 'active', '2024-08-03 09:37:30', '2024-08-03 09:37:30'),
(73, 'Jabed', 'Jabed', '01833266278', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DuxwEN9mDYxskRaY3oWjU.dT4C7UV0xd2hpovMRZ1d1i.eTwRDQiK', NULL, 'active', '2024-08-03 09:41:07', '2024-08-03 09:41:07'),
(74, 'HRIDOY CHANDRA PAUL', 'HRIDOY CHANDRA PAUL', '01735944765', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PnM6sH6eN3kO6qFzyifTNOByAB8kXASnBFO/hsAsaFHgNSA02OHCS', NULL, 'active', '2024-08-10 11:12:18', '2024-08-10 11:12:18'),
(75, 'Azim Mahabub', 'azim-mahabub-75', '01735944764', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hsACLlpRC.6wy3hXlP8xF.78un2fYBZ6d0wT/eHRJPTziQwgHBcmq', NULL, 'active', '2024-08-10 11:17:41', '2024-08-10 11:17:41'),
(76, 'Mohona', 'Mohona', '01790116655', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GiQY7mN6B4alBQbskTmeK.g3HHSqWboeQPFysQxPIvzuPzkmwBJeW', NULL, 'active', '2024-08-10 18:53:42', '2024-08-10 18:53:42'),
(77, 'rafiqul islam', 'rafiqul islam', '01873218163', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oOhA4qfSFj8wTqePv3gj3uwFjRzl1Zs.kZMGI5YM7Uo/h9u3G6pvS', NULL, 'active', '2024-08-10 20:24:19', '2024-08-10 20:24:19'),
(78, 'rafiqul islam', 'rafiqul islam', '01873218414', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bwJDSyqIXZpkn/EUK0Alcu72uorYoZxIn4KGSnGnZgaBPmLbcolRO', NULL, 'active', '2024-08-10 20:26:47', '2024-08-10 20:26:47'),
(79, 'asdas', 'asdas', '01151515111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$V6dumGqFv2fOlYyh5ABfOeqqRG37lLOjwZOxD6f1lBo5Lp3XMxStG', NULL, 'active', '2024-08-10 22:16:44', '2024-08-10 22:16:44'),
(80, 'Shamsul Haque', 'Shamsul Haque', '01318070890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$YDdg2qoW4c58kpxS0VbowOjULBbAPj4okVyq7sJchx5bKRG3pFwwC', NULL, 'active', '2024-08-11 00:49:14', '2024-08-11 00:49:14'),
(81, 'MD. Amran', 'md-amran-81', '01303424012', 'amran8258@gmail.com', 'Sylhet', 487, '30, Shojon Uporpara', 1, NULL, 'public/uploads/customer/1723356534-pppwebp', '$2y$10$UYhGXtCD50Ae/Zt8R0UxvePtRQPTgA0srMDk7rYaKZwWvc0TDGLgq', NULL, 'active', '2024-08-11 06:07:35', '2024-08-11 06:08:54'),
(82, 'MD Rasel Khan', 'md-rasel-khan-82', '01973427927', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Muol5KutubMs4YtlrLQn3.xSJ.tc7dyZDJzh5RT2D7Zt5Zh2I4cBW', NULL, 'active', '2024-08-11 06:22:20', '2024-08-11 06:22:20'),
(83, 'bKash', 'bKash', '01790357864', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sL7Ip.xbjo0XWuvRu3kYkO97hKQlba6UZny.G3KQ8x5BIKu2Dt4oe', NULL, 'active', '2024-08-11 06:24:02', '2024-08-11 06:24:02'),
(84, 'Shuvo Khan', 'Shuvo Khan', '01741668721', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5C5geIqBKWcQEKSPd.RMjeRxu/DW0C00nfxAf1XjXX3CKvykw..Li', NULL, 'active', '2024-08-11 06:26:57', '2024-08-11 06:26:57'),
(85, 'Hsksk sjnns', 'Hsksk sjnns', '01587720684', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$B/scdo1rDeJy2m43pGmRHuEDZum8QI3HN9NjloT4yKlfJjnNjwcpu', NULL, 'active', '2024-08-11 07:05:18', '2024-08-11 07:05:18'),
(86, 'Md Hafizur Rahman', 'Md Hafizur Rahman', '01716811713', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$g/X3/0GloNG1r7bK/6Wim.Rhl/uVDYI1NA6gaa8yg5PUUA3c2TPjm', NULL, 'active', '2024-08-11 07:53:38', '2024-08-11 07:53:38'),
(87, 'Jdfif,', 'Jdfif,', '01778583865', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$xiCQlf9.51TX5yKHAWQBD.YgjSbIkNzBAsDXe.KQ1UblJJi2la2PS', NULL, 'active', '2024-08-11 08:04:01', '2024-08-11 08:04:01'),
(88, 'MD Nipu', 'MD Nipu', '01630547086', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hAkQbQVgmtLaGYe8Ynj2u.EFP52xyeUgpy.JN8iWg56lI1g21vOhm', NULL, 'active', '2024-08-11 08:31:45', '2024-08-11 08:31:45'),
(89, 'Mm', 'mm-89', '01325589126', NULL, NULL, NULL, NULL, 1, '7904', 'public/uploads/default/user.png', '$2y$10$zYuybr4J8oHLfoab72HDyuKAZdpRg1qDZ11.LswP27ZqYknB8O1Ra', NULL, 'active', '2024-08-11 08:36:50', '2024-08-11 08:37:00'),
(90, 'Rafiqul Islam', 'Rafiqul Islam', '01850636864', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KYz6yeTTjkbCGJC6qjnROu10Z3BO4LT50w6ktSECFExQOHanuzdgq', NULL, 'active', '2024-08-11 09:17:50', '2024-08-11 09:17:50'),
(91, 'Mr Mahedi', 'Mr Mahedi', '01300000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CUiIn10UmNnIDlDjHxc4J.ic09MLr7MPEZxODPOsAq5EPqjoqczNq', NULL, 'active', '2024-08-11 09:33:17', '2024-08-11 09:33:17'),
(92, 'shuvo', 'shuvo-92', '8801741668721', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4L7BYaKcEEb9V5o6vzE/DOVsk88QOAFYuHsLSV0C7tfj578JQbVl6', NULL, 'active', '2024-08-11 10:35:34', '2024-08-11 10:35:34'),
(93, 'Bxxv', 'Bxxv', '01789933917', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$T6m9U9A0ml0WQhpanEwNN.35KYpApZsIFfiKoIj6XQ6HKy17RSOP.', NULL, 'active', '2024-08-11 12:22:27', '2024-08-11 12:22:27'),
(94, 'Sultan', 'Sultan', '01788844813', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NjnCZ0NhkuZ/U7hC51hKvumiCIXt3.s47xzF8X22S5S8NnynRiNCS', NULL, 'active', '2024-08-11 12:40:52', '2024-08-11 12:40:52'),
(95, 'Tedt', 'Tedt', '01788844383', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$UY1kRCjuBLP679Kuv4hMOOCgAJ4IIgpyySTYq7AwL20AXbphSy076', NULL, 'active', '2024-08-11 14:25:15', '2024-08-11 14:25:15'),
(96, 'Santu Salemun', 'Santu Salemun', '01719731777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Rujc7EtBDH82PzQBbvQiaeu4RIArwik9aq3en0F4Dp.ibudQEPWny', NULL, 'active', '2024-08-11 14:37:59', '2024-08-11 14:37:59'),
(97, 'shahinur', 'shahinur', '01611657039', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JjUzgz3ISBdURhl4mlr5L.4GV7U6V..G60jYxr7i3DrA/vrEZFD8O', NULL, 'active', '2024-08-11 15:14:05', '2024-08-11 15:14:05'),
(98, 'Yuan', 'Yuan', '01871414889', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$REMtioJzL9zv/d5WBpxLleQUjI71qvTEcxq8ll8zPNFngJ.h335pi', NULL, 'active', '2024-08-11 16:06:34', '2024-08-11 16:06:34'),
(99, 'rael', 'rael', '01814828285', NULL, NULL, NULL, NULL, 1, '3454', 'public/uploads/default/user.png', '$2y$10$ic/jkbGOYWybfCoSuMiRi.Ac.OgMwqVF0ZTiP.mqI/FCzAUG8Hri2', NULL, 'active', '2024-08-11 16:40:35', '2024-08-11 16:42:57'),
(100, 'nj', 'nj', '01811197854', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hMDAo/Y3pUxIPmxE6YHDDOUeHQGgok/fFnwFCR418/KKM0tMrrClq', NULL, 'active', '2024-08-11 17:14:40', '2024-08-11 17:14:40'),
(101, 'Umar faruq', 'Umar faruq', '01737747871', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sSk1PZwH33nPc3vYVayStuaFSHqTqhPOwQMNrDCDgdztoa6uR4/X2', NULL, 'active', '2024-08-11 17:48:47', '2024-08-11 17:48:47'),
(102, 'ণমত', 'ণমত', '01756523922', NULL, NULL, NULL, NULL, 1, '9637', 'public/uploads/default/user.png', '$2y$10$4/YzM.6xiQZ84SV9XEeOA.MrGsVbNxGqIiW.NbX4TBJrkUj1MGSMO', NULL, 'active', '2024-08-11 19:04:48', '2024-08-11 19:07:02'),
(103, 'Tushar sheikh', 'tushar-sheikh-103', '01774405367', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rByJgzeVXH0au5ajqlwOl.qlAtstJpMhb1nCEOi9ZApqb44qL7AUy', NULL, 'active', '2024-08-12 04:01:25', '2024-08-12 04:01:25'),
(104, 'arif test', 'arif test', '01531426445', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3sVdHZQF6bkiNo5PbrmU2OWrXRmn6vfsVcjHrFXZRhEF4n6d1ngwO', NULL, 'active', '2024-08-12 04:04:49', '2024-08-12 04:04:49'),
(105, 'MD HALIM', 'MD HALIM', '01611111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1f.c2gDkHkXIYfLXTVnlhevA2CIDo95I8IBRtyYesXAOWk3WomMMa', NULL, 'active', '2024-08-12 05:46:09', '2024-08-12 05:46:09'),
(106, 'Ssksjej', 'ssksjej-106', '01733663334', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zsFGFWG2oO/kIZQ7Av1aUeJIY1bnwU1oWD5TjDB9kwH8ReT2CEqEa', NULL, 'active', '2024-08-12 07:37:03', '2024-08-12 07:37:03'),
(107, 'dfaf', 'dfaf', '01723456789', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FkpICMcS7ypJ8KLxMmNS/OS0u/kcs1DgWupjSdcQDFriBS7.rQvme', NULL, 'active', '2024-08-12 08:29:51', '2024-08-12 08:29:51'),
(108, 'Bimol', 'Bimol', '01818152537', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hX7cbhqQzV65qU3Wis.kreIjD358SNg7kC3DhxbxDTJW.8tFj7BC2', NULL, 'active', '2024-08-12 09:23:10', '2024-08-12 09:23:10'),
(109, 'Md Salauddin', 'Md Salauddin', '01617411487', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5TpcM4HEifmr5m0EUFJQvuSyCx.SCYpsoLUs9./Ug2FF/0jE3y63.', NULL, 'active', '2024-08-12 09:45:50', '2024-08-12 09:45:50'),
(110, 'Md Salauddin', 'Md Salauddin', '01617400487', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i/XTtpKnvkA4XtlmZ.iZhOQBu2D5trUoR.Jiher9.UEbe6w/kJSty', NULL, 'active', '2024-08-12 09:47:15', '2024-08-12 09:47:15'),
(111, 'sumon', 'sumon-111', '0123456789', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$EyczZKCTaNET/SdudycqROG5BB8JzBxYonhevAspQ7EVZYJ5fqeuW', NULL, 'active', '2024-08-12 10:01:00', '2024-08-12 10:01:00'),
(112, 'siam', 'siam-112', '01927150438', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cKW3wPoAY/diGjcsda73F.CVWdHKuF21BNht0.GAzEJGa7qF5FfZ6', NULL, 'active', '2024-08-12 11:49:32', '2024-08-12 11:49:32'),
(113, 'ddfdsaf', 'ddfdsaf', '01598524545', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2OkggR1vNbMPtFzEmnxwL.yBeBPW25TFDD.yuvVYSSyPumrP95P4y', NULL, 'active', '2024-08-12 13:08:22', '2024-08-12 13:08:22'),
(114, 'JUWEL MIYA', 'JUWEL MIYA', '01575456856', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kSz8CLfRmX63hzLbNqiPge7AYzdNPvBfCJbLiMUYnlOgUyoC56HES', NULL, 'active', '2024-08-12 13:29:56', '2024-08-12 13:29:56'),
(115, 'j', 'j', '01300000001', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vVLq4TJgsgadwiN9JS8THO/hjdITO78lVQy9Cvom6dVl0dIBXGGGm', NULL, 'active', '2024-08-12 13:36:15', '2024-08-12 13:36:15'),
(116, 'জ্ঞি', 'জ্ঞি', '01740015800', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XIaMqsoYq7SiGXw99v1R.uOOTxaShmWfnbQskEm1Y3wXEn9FPegI.', NULL, 'active', '2024-08-12 14:57:05', '2024-08-12 14:57:05'),
(117, 'JUWEL MIYA', 'jewel-mia-117', '01575456856', 'mohammadjewel4k5@gmail.com', 'Dhaka', 248, 'GOZARIA KHANDA, ITNA,KISHOREGANJSADAR', 1, NULL, 'public/uploads/customer/1723481836-448829167-826867872341675-6771524522266413322-nwebp', '$2y$10$dvuAMlItd/RCF4nCzEqaP.dnLmb9zZ2y0FPpf1TDtqKNiy36GE/K6', NULL, 'active', '2024-08-12 16:56:31', '2024-08-12 16:57:16'),
(118, 'Name', 'adaft-118', '01763770005', 'n@b.com', 'Dhaka', 1, 'Bangladesh', 1, NULL, 'public/uploads/default/user.png', '$2y$10$HzKy.I7z38UcQtxZBD9xF.QDrM1MEwIiS0af2J3tj79/HxqXAWsbu', NULL, 'active', '2024-08-12 17:43:33', '2024-08-12 17:48:58'),
(119, 'মিথুন', 'mithun-119', '01778001396', NULL, NULL, NULL, NULL, 1, '1400', 'public/uploads/default/user.png', '$2y$10$czjQkLzscYCcIXA2Vbidg.3i4FLLbbpiutpW2WVXg2khURYtiCJyS', NULL, 'active', '2024-08-12 18:36:00', '2024-08-14 15:01:09'),
(120, 'Arif', 'Arif', '01845254512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$o.HivI6MM2546QswhVqs/uWw2ewodEVbUNR1zdTIGHVT/9gsSVRXi', NULL, 'active', '2024-08-12 19:36:45', '2024-08-12 19:36:45'),
(121, 'Hhahs', 'Hhahs', '01927272782', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$L3UPWVle3ixOk9PoNj/n1ef8c1vCdQfS2yf68eWQ8LLnQC3AbIozG', NULL, 'active', '2024-08-12 19:40:46', '2024-08-12 19:40:46'),
(122, 'Zahid Hasan', 'zahid-hasan-122', '01722088106', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$21aAASP9tZV4BTV.pFv10emNFL4fvTCi9R8gr7fXN.kr2zi2Bfh5W', NULL, 'active', '2024-08-12 20:08:32', '2024-08-12 20:08:32'),
(123, 'arif islam', 'arif-islam-123', '01551789497', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$VQxiXmveuHSMs9ZSTEGl5.rjHchuO9lXXt.i4C8m.Ok.kwsW0OJKW', NULL, 'active', '2024-08-13 00:01:26', '2024-08-13 00:01:26'),
(124, '01', '01-124', '01859295009', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$J.nfiRIBx8B7kdQ6qLSw7OjBAK0h5RyRyT7iX1gvYzfIjErvVK98u', NULL, 'active', '2024-08-13 00:03:28', '2024-08-13 00:03:28'),
(125, 'হ', 'হ', '01867543212', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3mFMbq9kRMBHWrmHc8IMHOMprMh2YyEnC3Pbt3KQ2VZbugpECTr5e', NULL, 'active', '2024-08-13 03:36:01', '2024-08-13 03:36:01'),
(126, 'Mohammad', 'Mohammad', '01892418565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rutv7WGZS5G.qvmYXQyPcuBGvgQCWVe66seqz8lCAljcDptjMmsYe', NULL, 'active', '2024-08-13 04:44:21', '2024-08-13 04:44:21'),
(127, 'Mehedi Hasan', 'mehedi-hasan-127', '01959595959', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9hGVzHKbo5ki6.sCFefiwOkZv1ZQkWBDZjd3gY5POrvRqKnH6a41G', NULL, 'active', '2024-08-13 06:14:26', '2024-08-13 06:14:26'),
(128, 'Sid Antor', 'Sid Antor', '01795830500', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5GEocizA/CJmfYHWl0wafew0S6fDV6z8AtYNHoU8XmdxhfxKer/HK', NULL, 'active', '2024-08-13 16:20:54', '2024-08-13 16:20:54'),
(129, 'First name * Last name *', 'First name * Last name *', '01314785469', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I4Ag8U93y0i7YnNeuDFONuBL1zLWGS63o8lITX81PVC3.dr9eefVy', NULL, 'active', '2024-08-13 17:01:57', '2024-08-13 17:01:57'),
(130, 'Nbjk', 'Nbjk', '01236527898', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hIt4WP0LiNm6A.wXo8flEu2TwrLCWYscFGFDpbIgSkF8Wc8Z8/i4S', NULL, 'active', '2024-08-13 20:20:14', '2024-08-13 20:20:14'),
(131, 'siyam king', 'siyam king', '00000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6V2CS0uIclxTHhi6yo0o.Otu.yxwpGIncUt4vlykVfWBdUOYoNNxq', NULL, 'active', '2024-08-13 21:27:06', '2024-08-13 21:27:06'),
(132, 'Md sarower', 'Md sarower', '01764793363', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$clHx0rQHBBm6aGjhW4sMbeAGDutaBjucgMmv0cHR.3yDSzulduRLG', NULL, 'active', '2024-08-14 01:25:08', '2024-08-14 01:25:08'),
(133, ',mnskjnkjds', ',mnskjnkjds', '01234567899', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$enGQiOidPeRvKHvngmXMDeO0RF0UW5Nm2.joFR09rHZBQDoTXt0Dm', NULL, 'active', '2024-08-14 05:09:20', '2024-08-14 05:09:20'),
(134, 'Fhff', 'Fhff', '01779612381', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AkzXZWQYFL1P0AsEwLrwF.yIJOXM5RlcjOIWvSDlLskH9aPa0flOO', NULL, 'active', '2024-08-14 05:41:07', '2024-08-14 05:41:07'),
(135, 'গফফ', 'গফফ', '01987251667', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$q48Rlzeiv.RwZ3UBmUQwieTIv6jbxlRz007yJGhXeR..Z7UdHbXs6', NULL, 'active', '2024-08-14 10:19:32', '2024-08-14 10:19:32'),
(136, 'Mehedi', 'mehedi-136', '01935385039', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NcpmpnQPj8aQEch1UelQcupkAAfIYs3Cz9FtlXnL4Yhoj3zOwSmyC', NULL, 'active', '2024-08-14 10:22:53', '2024-08-14 10:22:53'),
(137, 'মো মেহেদী হাসান', 'মো মেহেদী হাসান', '01727444069', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hSV/20r.66UThJZ5qQo3Euwguk23sWEL0Dc8pf.i9CKZYITE4nVwG', NULL, 'active', '2024-08-14 11:05:31', '2024-08-14 11:05:31'),
(138, 'Farhad Reza', 'Farhad Reza', '01789049960', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$g/Ez3Qo4sbfMhKoZ5SJhKuH1R67T7Wqek04hKgEY2ehxjVXH6Zjou', NULL, 'active', '2024-08-14 12:49:33', '2024-08-14 12:49:33'),
(139, 'Lumen SoftTech Limited', 'Lumen SoftTech Limited', '01829317005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AR3DVWAl/XKm8Co0h2jwvOZudHHSnPTGZ7mIH7iVdkZhZjcHH6yna', NULL, 'active', '2024-08-14 13:02:17', '2024-08-14 13:02:17'),
(140, 'Monirul Islam', 'Monirul Islam', '01718715606', NULL, NULL, NULL, NULL, 1, '4701', 'public/uploads/default/user.png', '$2y$10$bu61thEJMEHnILRVSUq96.Zua/d6Lv.XHoq0n5/AoKCdROdzYMXg6', NULL, 'active', '2024-08-14 13:10:01', '2024-08-14 13:11:55'),
(141, 'Hjsj', 'hjsj-141', '01321798629', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DkNOTyVAv9415O25.0LoUeW7vBywxf0seBUUXlCV0JFViURV78wZe', NULL, 'active', '2024-08-14 14:36:29', '2024-08-14 14:36:29'),
(142, 'Bjj', 'bjj-142', '01710021512', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$u34UPNP.3g0gNb2AMl7sm.tGsLgH4PdOUo2Lwp5cTThXb8azPZNbe', NULL, 'active', '2024-08-14 15:53:49', '2024-08-14 15:53:49'),
(143, 'Monir Hossain', 'Monir Hossain', '01710538822', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bYaQyZSeIj8B6M4j.1EMjuUbW02f9EEwzYeaKznkKgDuWKwDkHlyi', NULL, 'active', '2024-08-14 15:57:12', '2024-08-14 15:57:12'),
(144, '01236790765', '01236790765', '01236790765', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ikXJ38zcfE7r9JAZVPfaPOEdAMxR0H8awGRDNmZ74cGqUWs8jGM1i', NULL, 'active', '2024-08-14 16:08:49', '2024-08-14 16:08:49'),
(145, 'Rony', 'rony-145', '01319940388', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PPc.TOAH85QKW/VdWkUOzObkSj8i5g.aWImbN94E9e9ZPetpaKJ.O', NULL, 'active', '2024-08-14 17:12:39', '2024-08-14 17:12:39'),
(146, 'Md Abu Kalam', 'Md Abu Kalam', '01775689495', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6Lp9j4iqrEbEvQ71ZlQCQuGLUKBR6MBS.qZECJX4ufcKbdlPIG.BK', NULL, 'active', '2024-08-14 18:27:18', '2024-08-14 18:27:18'),
(147, 'Cycuf', 'Cycuf', '01616144366', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WgdEk2c2bHoMmkXkCkkpr.HiPzjpzo6UTD5nr3H08DDmRI2o6nH7K', NULL, 'active', '2024-08-14 19:58:27', '2024-08-14 19:58:27'),
(148, 'tom', 'tom-148', '0170000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OKGC0GLlkvobHDKmH2V9IeYFjd16xGly3ElNm.UKlSl8b0/yKdw7.', NULL, 'active', '2024-08-14 20:36:22', '2024-08-14 20:36:22'),
(149, 'Zubraj Hossain', 'Zubraj Hossain', '01814222888', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gOnX.MphrWpU2dTBMrDEDOnklupsqUEII1qk6fWFMYI8mTaA8gjTa', NULL, 'active', '2024-08-15 01:22:20', '2024-08-15 01:22:20'),
(150, 'Toufik Topu', 'Toufik Topu', '01738279812', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4s6lwd0u8/NKfYPpnt6pkujFNrlzmjamP6AZV/VLqAh4ANVUD.gAa', NULL, 'active', '2024-08-15 04:13:58', '2024-08-15 04:13:58'),
(151, 'Sadin Ahamed', 'Sadin Ahamed', '01992649305', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$BObZi3BmPEtUA6BYJS061eo9pSwI2KCUalmm5524xF0JOvbZlxM4G', NULL, 'active', '2024-08-15 04:23:33', '2024-08-15 04:23:33'),
(152, 'xyz', 'xyz', '01777777777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pCkmcChmyLy1zxMeCcmXPOXIr65C5i3ddO2LRL4tcyeS6dBCgOnN2', NULL, 'active', '2024-08-15 04:56:49', '2024-08-15 04:56:49'),
(153, 'MD TOUFIK ALAHE TOPU', 'MD TOUFIK ALAHE TOPU', '01792829214', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aIeM1eVEr86WQksvU9F7f.m52vRDSPelUQND2SA20V84rDl37B4wC', NULL, 'active', '2024-08-15 05:21:13', '2024-08-15 05:21:13'),
(154, 'MD Asib Hasan', 'MD Asib Hasan', '01933932526', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$P3qhkgfQLKtQxrfZA7/sQO4ecjCagW79UB55LpglzjWFSUjSqe9bG', NULL, 'active', '2024-08-15 07:06:00', '2024-08-15 07:06:00'),
(155, 'iiiiiiiiiiiiiiiiiiiiiiii', 'iiiiiiiiiiiiiiiiiiiiiiii', '01684521419', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fEeg4e7j2T2fGMnyYukKz.a2E1BJ60VgMWk3C.dX6W8qAm12L8W/a', NULL, 'active', '2024-08-15 07:27:41', '2024-08-15 07:27:41'),
(156, 'Business Card', 'Business Card', '01685214496', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LhSCHt9SbX4l4OBoWKXjKezOgtv1kW0BYUzgb6CDSOEMDsEY8vdre', NULL, 'active', '2024-08-15 07:28:42', '2024-08-15 07:28:42'),
(157, 'Tamjidul Hasan', 'Tamjidul Hasan', '01926754114', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dTcq5/uzVG9oXtoQ5FAGjeTsqnzR5GMqrMAB5SszaFgiW4.c54/k.', NULL, 'active', '2024-08-15 09:00:32', '2024-08-15 09:00:32'),
(158, 'Papan Biswas', 'Papan Biswas', '01601376775', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aIcrtseWgRTzAuPh4cMwIe6GBNt2k9JvcEX5OLB6K/p27.PegYmzy', NULL, 'active', '2024-08-15 11:18:59', '2024-08-15 11:18:59'),
(159, 'আপেল বড়ুয়া', 'apel-bduza-159', '01858000242', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$L60phqhzZdr7mAQwdCS.FeQElE54lctB.kDFlpvvKupepbn3Wftvy', NULL, 'active', '2024-08-15 17:12:43', '2024-08-15 17:12:43'),
(160, 'দঠদঠ', 'দঠদঠ', '01969411534', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ioRSR9Z2PoeR5R05AbeqEejaLosxFLazxBngwd/wgJLrdZ/lJe/OG', NULL, 'active', '2024-08-16 06:20:10', '2024-08-16 06:20:10'),
(161, 'Hhcd', 'Hhcd', '01884164749', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$L7kNbAprjGO5AMTInKRb6ub3WkgU/nTKTVpv234c25NNzQFNrOH66', NULL, 'active', '2024-08-16 08:44:18', '2024-08-16 08:44:18'),
(162, 'Omar faruk', 'omar-faruk-162', '01893100074', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ibh3ZEzO1BwfHTEHlWwOB.FdzqBpDChYBaGyEnt1z.Srx.MCaw3XG', NULL, 'active', '2024-08-16 08:45:24', '2024-08-16 08:45:24'),
(163, 'XXX', 'XXX', '01000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9syBtptsitNeFA8efAiGyu1h0piL49NG45zaH0JWT51qZB9ko0S0a', NULL, 'active', '2024-08-16 10:01:44', '2024-08-16 10:01:44'),
(164, 'test', 'test', '01997318386', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6y8yLHMwXZ7moLkub9Zb4uiS1rfd0MBqwEhNQcgE5QglfP3Dc5QsS', NULL, 'active', '2024-08-16 10:53:44', '2024-08-16 10:53:44'),
(165, 'Zahid 1', 'Zahid 1', '01712682057', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9H.d0LViEAzMyhL.2IQDM.udi4a4rCqsIUxVijZpHi.Hp1rObgWOu', NULL, 'active', '2024-08-16 15:47:23', '2024-08-16 15:47:23'),
(166, 'Md. Zahidul Hasan', 'md-zahidul-hasan-166', '01958642565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1UVK5u7hay3a8GblXWQp/eGgP8ZDE79xvLZUum7771tbAn4Ok7eOS', NULL, 'active', '2024-08-16 15:48:20', '2024-08-16 15:48:20'),
(167, 'তেস্ত', 'তেস্ত', '01846302262', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$KAWp5DKLvgHayggZzD/VpOnrnvwZm5nMiG6uF5qb1LyVBT9ATQT6q', NULL, 'active', '2024-08-17 11:02:23', '2024-08-17 11:02:23'),
(168, 'gfsdgsfg', 'gfsdgsfg', '01999999952', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$x2kJiorKMoetLPSF2Ww2yun.1WT.gNb3UNgLBy5iU6mo7e91tX4eq', NULL, 'active', '2024-08-17 11:41:24', '2024-08-17 11:41:24'),
(169, 'Test', 'Test', '01766544456', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$C3.4vSD6q6WP9Np71WtGDOEfAmVdJEFBMYql.3wZ9wp7b/DKFfbQq', NULL, 'active', '2024-08-17 18:54:49', '2024-08-17 18:54:49'),
(170, 'Sheba Art', 'Sheba Art', '01883617637', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9gOB/xQ7wjbLtS473/v.cOUWT0BMSW7Q8CaqSyU7L6BSmHha9FaP6', NULL, 'active', '2024-08-18 08:18:56', '2024-08-18 08:18:56'),
(171, 'B', 'b-171', '5', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DXFVrmfiujGuzpTZ5bnzpOf.H7yWGY2WdKhxDiI0hi4vFegMgwag2', NULL, 'active', '2024-08-18 08:56:26', '2024-08-18 08:56:26'),
(172, 'A', 'a-172', '0', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cqfxejGaS.emIJS02p99YewO6t4i9eFhv/jf4tQCuzGLiEtKY9Wbi', NULL, 'active', '2024-08-18 08:57:01', '2024-08-18 08:57:01'),
(173, 'kjhgkhgk', 'kjhgkhgk', '04546546554', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qHUk8un/NgAlqWXjO5SFeOJMqysZWjl6WVgCwm6MJOhUbYIOkAcnq', NULL, 'active', '2024-08-18 16:04:31', '2024-08-18 16:04:31'),
(174, 'Umar faruk', 'Umar faruk', '01764917266', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PO0j4w.DiBwSj9fK9IoYl.9lM04sFNXAvV6I8pfC6yW/6AGexoHz6', NULL, 'active', '2024-08-18 16:54:51', '2024-08-18 16:54:51'),
(175, 'Juju', 'juju-175', '01800000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ba/e4HmTfeZ0mMx37CXDiO6HVSR/RAeDlcUUcwYcEbs1.WjHrBfHK', NULL, 'active', '2024-08-18 17:53:12', '2024-08-18 17:53:12'),
(176, 'Sowrov Mondol', 'Sowrov Mondol', '01777152192', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kIDd5XuR/BJkPA4mOnafWueljvIaFPWBDe6RfIc57RhV./2Y94rQ2', NULL, 'active', '2024-08-19 06:06:35', '2024-08-19 06:06:35'),
(177, 'Sowrov Mondol', 'Sowrov Mondol', '01777152199', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cWFYhuANCSXfXmNfztGL1OR29aclVGACzy7wyhzGanModkwqoP9Zq', NULL, 'active', '2024-08-19 06:23:35', '2024-08-19 06:23:35'),
(178, 'Gias Uddin', 'gias-uddin-178', '01892459218', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$IiUVEdJECbv37y6ZuYnWqeDOf8SLCX5OO6kl5mQq.06foxt596c9q', NULL, 'active', '2024-08-19 06:28:25', '2024-08-19 06:28:25'),
(179, 'Obaydul Islam Russell', 'obaydul-islam-russell-179', '01674025838', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$l5lMeU6JYrYxCDQorrilTu64AHtrySABOPhsDClMbfcJNVGCQTQ3.', NULL, 'active', '2024-08-19 08:23:28', '2024-08-19 08:23:28'),
(180, 'Sid Antor', 'Sid Antor', '01795830000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DERZN4uYzzBC8YdFveHEpOxahKACA.PWDBB7CmjRr0J8/nLleISVu', NULL, 'active', '2024-08-19 10:20:57', '2024-08-19 10:20:57'),
(181, 'Arif', 'arif-181', '01710919019', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Oy4alrYeJbOTAOPJp5NeFetU9Nj/22uzHPnCQVy78TlOELTKbsNoi', NULL, 'active', '2024-08-19 10:32:50', '2024-08-19 10:32:50'),
(182, 'মোঃ শিমুল আলী', 'mo-simul-alee-182', '01786506206', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wcnFWJHeHrV3yVbDW0WOJeBMN.yVEUU9jGVzIM600oD0MaSrQmtWu', NULL, 'active', '2024-08-19 13:25:05', '2024-08-19 13:25:05'),
(183, 'Farabi', 'Farabi', '01871111448', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ikayIM4y2QH.2GIe/tVqRu0IaIGNgf4TXGGjzLQjC543075/H87BO', NULL, 'active', '2024-08-20 04:12:58', '2024-08-20 04:12:58'),
(184, 'Md. Samim Mia', 'Md. Samim Mia', '01740246927', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$0Zyd2NBxbGSX6JgywHF3pu8Qy9W69Zi3/c41uccVwlF5tV0oZ1gDa', NULL, 'active', '2024-08-20 08:16:21', '2024-08-20 08:16:21'),
(185, 'Bvggg', 'Bvggg', '01765886886', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Zq9FsOkUgVWBCTm2LEsDX.Ap7jXwXBAKw7Ac519yuVQWqRASvWQKS', NULL, 'active', '2024-08-20 08:17:46', '2024-08-20 08:17:46'),
(186, 'SALAH UDDIN', 'SALAH UDDIN', '01905057193', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Hd22FbXkb3IuXL67hIflMuvLvx3ZWWtIFs1/h60ZowJ6dcIzOeSLK', NULL, 'active', '2024-08-20 14:33:04', '2024-08-20 14:33:04'),
(187, 'SM anan', 'SM anan', '01722839009', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I5Slefl5KjeiAO4akaqLzuXScLr0bfmreBspRUeftDuvPft9OOIGG', NULL, 'active', '2024-08-21 01:23:16', '2024-08-21 01:23:16'),
(188, '91728373782', '91728373782', '01722837998', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ot6hTWI7Cq/cFeU1sPaVc.3gVQ83ErAZh9lF6B2v4HGqHX.ZL1TEq', NULL, 'active', '2024-08-21 01:25:25', '2024-08-21 01:25:25'),
(189, 'Fardin Mahmud', 'fardin-mahmud-189', '01789083144', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Q7y4yC41HPB4OVXQ6.9d3ewlfEiQNflKmerx2JNf5/xx93hIj86cW', NULL, 'active', '2024-08-21 10:07:49', '2024-08-21 10:07:49'),
(190, 'habib', 'habib', '01748907169', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$l5Up2mn8v8vzzsQdeAO0Ge65T64cQSw6gOjxv4AE90a92F8rZO99q', NULL, 'active', '2025-08-08 12:45:19', '2025-08-08 12:45:19'),
(191, 'admin', 'admin-191', '01706640864', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8EO.ds5Ett/t8SAnpP.44OqCJkEG0.olyNQgRbTjMs4ijkA93UYzu', NULL, 'active', '2025-08-11 19:08:04', '2025-08-11 19:08:04'),
(192, 'admin', 'admin-192', '01706640868', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$j0PIsGDHxBtDbeWQ9emb0erO/QQj.2bv5YlrUH9F65VW1jGpuJM/O', NULL, 'active', '2025-08-11 19:08:51', '2025-08-11 19:08:51'),
(193, 'shihab test', 'shihab test', '01300316854', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5LoDC/cZ8.ha2dK7GTsx2.bFxveyzwp0NjS1sActPUF5CwqNO99XO', NULL, 'active', '2025-08-13 12:25:21', '2025-08-13 12:25:21'),
(194, 'Mizan rahmani', 'Mizan rahmani', '01321928262', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dC7U..TYH9Dj976GuaTk8.bajFfR3lI3gknpZSorl/aKaVGNAa3Y2', NULL, 'active', '2025-08-15 15:32:41', '2025-08-15 15:32:41'),
(195, 'Habibur Rahman', 'Habibur Rahman', '01740931858', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HkalKxEJQKckvL3RQI0JUuWFc0HBvsgfgIHCaWI1l3YjKrHCLpO/S', NULL, 'active', '2025-08-17 18:02:53', '2025-08-17 18:02:53'),
(196, 'MD ABDUR Rahim', 'MD ABDUR Rahim', '01601844214', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mqO96fAFknFR2B97SNPJkONjgROFjK6xjjlSMqq1S69xPX1S8IeNO', NULL, 'active', '2025-08-18 02:20:22', '2025-08-18 02:20:22'),
(197, 'Motin', 'Motin', '01602398331', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TcY.CxySrl9ajBeOvH3K6OlVFkDkPc1eEbEx8KX.0of90upKKEEBy', NULL, 'active', '2025-08-18 07:53:09', '2025-08-18 07:53:09'),
(198, 'রেশমা আক্তার', 'রেশমা আক্তার', '01614860160', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vbLt6.5nmH4lmB5OzEmFpO3p8OrZawjH1q7KdjDg7AtIDmY6/W8Sy', NULL, 'active', '2025-08-18 10:16:14', '2025-08-18 10:16:14'),
(199, 'md.ridoy ridoy', 'md.ridoy ridoy', '01956590891', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$BT1n/kY6vOmkNdbjlnhK7usHExHla8Q8aOehEMI08COAN2ffU/712', NULL, 'active', '2025-08-19 03:33:23', '2025-08-19 03:33:23'),
(200, 'মো:মুরাদ', 'মো:মুরাদ', '01675963257', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$UZUHy6SZRacUtz7SIbPJhe7iSU8jr5oLkm2i.EXAyknxPruUfqmFa', NULL, 'active', '2025-08-19 12:47:32', '2025-08-19 12:47:32'),
(201, 'মোঃহেলাল উদ্দিন', 'মোঃহেলাল উদ্দিন', '01730472043', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H0A92y7Q.qMVpCbD5b9m.uqoHdMwINnuiEE15dNw1HttYrVKe8/fu', NULL, 'active', '2025-08-20 04:18:16', '2025-08-20 04:18:16'),
(202, 'মহিন', 'মহিন', '01604715341', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sA3i9e/H4GBoof96uotguePbVhi4bDaJyRh3jJmLT511yXqgu7KEm', NULL, 'active', '2025-08-20 04:32:25', '2025-08-20 04:32:25'),
(203, 'MD Rashidul islam', 'MD Rashidul islam', '01752224717', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CRz4z/bhYNta5qa79Z8tRO.htvTKMogZ.nWtK7znFgqk1NQJN/5va', NULL, 'active', '2025-08-20 06:45:40', '2025-08-20 06:45:40'),
(204, 'Md Helal Uddin', 'Md Helal Uddin', '01784604061', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$meyVoWm7yKerBtD2ZiC6KOohMdi5WYnES5xYRVU4W4P7x4x9bBM.y', NULL, 'active', '2025-08-20 06:53:09', '2025-08-20 06:53:09'),
(205, 'swapon Kormoker', 'swapon Kormoker', '01710121071', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NDxsfRe7zJNNz7T0.XQ/5OSI0vhQBfkguv0LebQ7Ryf09VGcYNhyW', NULL, 'active', '2025-08-20 09:06:16', '2025-08-20 09:06:16'),
(206, 'Md Mustafigur', 'Md Mustafigur', '01922707407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Sgeq7bRsUPowIR70PRT5qelxD1jnW./eUmyeqtn57LCVPNNywwnkq', NULL, 'active', '2025-08-20 10:50:51', '2025-08-20 10:50:51'),
(207, 'Sree Akhil kumar', 'Sree Akhil kumar', '01756900912', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$GX5IEEG4pGeplnxSbm28Mu9OnIgiFhNSxBOajZMG2FLZF8/RjwB3y', NULL, 'active', '2025-08-20 11:13:59', '2025-08-20 11:13:59'),
(208, 'Abdul Matin Afif', 'Abdul Matin Afif', '01743390586', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iK1BahG0W6X.4LrLd0B.yeBk1jXCFQgTkCbY/VySAuGnTn5Qr0lTe', NULL, 'active', '2025-08-20 17:33:21', '2025-08-20 17:33:21'),
(209, 'Most: Sumaiya Jahan sharmin', 'Most: Sumaiya Jahan sharmin', '01324037284', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pVRUd/pD3r8gmqLTBS5NAOjpkghJOtQM7UZ6d3x004hsz7NxySmlq', NULL, 'active', '2025-08-20 20:15:59', '2025-08-20 20:15:59'),
(210, 'মোঃ জাম্মান আহমদ', 'মোঃ জাম্মান আহমদ', '01794363612', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5DisLcQGX4KT0HESwrm09OiWqRnss4ZjXA/2Ixf0r5JnvBdWb5NOG', NULL, 'active', '2025-08-21 08:15:25', '2025-08-21 08:15:25'),
(211, 'মো মমিনুল', 'মো মমিনুল', '01757475285', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HA69tlxy.N51vrvi8THH4ubM7d0dKywd7tyFmoB.TU5km7ymLvBWu', NULL, 'active', '2025-08-21 10:10:44', '2025-08-21 10:10:44'),
(212, 'মোহাম্মদ শাহিন', 'মোহাম্মদ শাহিন', '01944587969', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sk.q.sR/K2CgzZy.ql8jw.lCh.QgpC9j7Xg7DqIaiMI5uHYwpWIKC', NULL, 'active', '2025-08-21 10:12:26', '2025-08-21 10:12:26'),
(213, 'Sarwar robi', 'Sarwar robi', '01611590514', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cNVwVE5B4PDNIKxaazFx8uh0Bn.deZ/lBi3epdhnfwRDkcZBFvLcC', NULL, 'active', '2025-08-21 10:25:30', '2025-08-21 10:25:30'),
(214, 'আমানুল্লাহ', 'আমানুল্লাহ', '01320305900', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HRej4xMJZphBgNM8VCCK5.nTpQ3Vpbla2dxq6w.Vu4VpD8nTYWu1e', NULL, 'active', '2025-08-21 11:10:59', '2025-08-21 11:10:59'),
(215, 'শামীম', 'শামীম', '01701088886', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$VWLjjjUIQrgwKh0a6lKO8uEi0bzfwVcaLHxr1Fi9aC.mc6yLcyTXG', NULL, 'active', '2025-08-21 14:17:29', '2025-08-21 14:17:29'),
(216, 'সাদিক হাসান', 'সাদিক হাসান', '01315421660', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aabZjNNLk4bNTHFkReS.UOFJzk44Vzajgphg3kwFFmvWAf2AhGc4u', NULL, 'active', '2025-08-21 16:37:13', '2025-08-21 16:37:13'),
(217, 'Ratan Mondal', 'Ratan Mondal', '01733617896', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Tq/CwlGTEY0.tkyUJdtHaeENzsv2MUHxKgbedwM25sQ8RY69CFVK.', NULL, 'active', '2025-08-21 17:19:55', '2025-08-21 17:19:55'),
(218, 'Ripon', 'Ripon', '01721137189', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AboY3gYtlgGOkHpDFnqwS.ubKpBB.hIYhm4k.wf6Zb1pFVu/eFXj6', NULL, 'active', '2025-08-21 17:39:06', '2025-08-21 17:39:06'),
(219, 'Alamgir Hossian', 'Alamgir Hossian', '01772722302', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1Tlh95V7XDQdjlct62LqyOoAAnbakh.QkCh8czHmCLHfE.9FYj59a', NULL, 'active', '2025-08-21 18:19:32', '2025-08-21 18:19:32'),
(220, 'কাবুলুর রহমান', 'কাবুলুর রহমান', '01837200805', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ejJcN2.CKiK.d2DJ9ByNDOQpKjTnwn0khd2t2WfgNrlea4csnfiha', NULL, 'active', '2025-08-21 18:51:16', '2025-08-21 18:51:16'),
(221, 'গোলাপ 4', 'গোলাপ 4', '01771658535', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$T/oEd.sWXWtIEtUGO6KZ4ulnPvyGpiQUwssODPhEIDBrEeOvyTDmW', NULL, 'active', '2025-08-21 19:47:11', '2025-08-21 19:47:11');
INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(222, 'Motin', 'Motin', '01323316383', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5FwFUrRDg780PgSpKmnokO7fnonHccaQehbtK1CD.dSGkiaU9XRSG', NULL, 'active', '2025-08-22 03:11:19', '2025-08-22 03:11:19'),
(223, 'Edris', 'Edris', '01605559574', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FWKv0yl702jCe6EEgXP2H.5Medj5AtjJ0lx9TrH9YadH3DGcOPrxW', NULL, 'active', '2025-08-22 09:16:44', '2025-08-22 09:16:44'),
(224, 'Mb Rabbi Hasan', 'Mb Rabbi Hasan', '01797241844', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$S4ZEZyRekkPf/186iEKUz.qpxy5B6RCPQbDksxe4Rey89n/lqUVeS', NULL, 'active', '2025-08-22 14:30:15', '2025-08-22 14:30:15'),
(225, 'নজরুল ইসলাম', 'নজরুল ইসলাম', '01797068855', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Or.86X8gdIhv2tkS5pUl5efYCacXIy83.y3SzWIs6kTdoPZXxTEOu', NULL, 'active', '2025-08-22 14:32:49', '2025-08-22 14:32:49'),
(226, 'Shahjalal Hossain', 'Shahjalal Hossain', '01611971842', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$w6egzr/LJuCoos9wnhs4KuVxJn2NFlFoF/es/FdbLgx0a56Q8HwPy', NULL, 'active', '2025-08-23 04:42:50', '2025-08-23 04:42:50'),
(227, 'Alamin Alamin', 'Alamin Alamin', '01839123920', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$78mOfHFJoseo.x5ZgZ4JX.6vZk12uiSd6gzwSwLzuSPJeuu2bqq.e', NULL, 'active', '2025-08-23 05:35:07', '2025-08-23 05:35:07'),
(228, 'নাজমুস সাকিব', 'নাজমুস সাকিব', '01884314192', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7mNWfxkdezZ0uoSG56I.6eG0SfCVWyFHmqAOvxwPfuEMr1xmkmNoG', NULL, 'active', '2025-08-23 13:00:58', '2025-08-23 13:00:58'),
(229, 'Md.Sabbir Hossain', 'Md.Sabbir Hossain', '01319328461', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$7SsAylCXCnPQjlBeauvcYe3VawcV4XoN5vHMAWcRqYAq2a6MCKi3y', NULL, 'active', '2025-08-23 13:28:54', '2025-08-23 13:28:54'),
(230, 'Monir', 'Monir', '01828819419', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nO4dEQf6VR/POLtvgvH7rec402trbevOb4hvzAFwyk9scMdt7vOcK', NULL, 'active', '2025-08-23 20:04:50', '2025-08-23 20:04:50'),
(231, 'md rubel', 'md rubel', '01734503097', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ja1vD7o96GYj44xphxNzt.vMNx6VXGMSbQ27VpIoTR1h1oM3fbDte', NULL, 'active', '2025-08-24 06:26:50', '2025-08-24 06:26:50'),
(232, 'Kutub uddin', 'Kutub uddin', '01710039304', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gaWsJa3HcZ1vgaEJARV6HO/kYle67HuewJ.BPivksNgJp/D8dUF3i', NULL, 'active', '2025-08-24 12:18:35', '2025-08-24 12:18:35'),
(233, 'মাহাবুব', 'মাহাবুব', '01622074802', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6.BCTV3Ccp6iCPnNPWiXietRPpCSU2jVdJ7KNuFO7GhHglOygyvCC', NULL, 'active', '2025-08-24 19:30:35', '2025-08-24 19:30:35'),
(234, 'বৃষ্টি তৌফিক', 'বৃষ্টি তৌফিক', '01710153678', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oYE7dyqzm6RkNqF7q6mAi.pDpEpDL48q1x0jPlVW/yrKl96Qm/nGi', NULL, 'active', '2025-08-25 03:42:01', '2025-08-25 03:42:01'),
(235, 'shovo saha', 'shovo saha', '01907593934', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$g5jzg9x6BGJ2bFi5t7N9xedxmdS3SnSd15/M7R2mLLl.WhbhzlsU6', NULL, 'active', '2025-08-25 05:40:38', '2025-08-25 05:40:38'),
(236, 'তারেক রহমান', 'তারেক রহমান', '01715582029', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yShKAQbNWIE39hT81u0YsOLtwxoFqsL8FJTkf7Z6pIVul4Fw6S0JG', NULL, 'active', '2025-08-25 08:36:23', '2025-08-25 08:36:23'),
(237, 'মো:-রামিম মিয়া', 'মো:-রামিম মিয়া', '01834089414', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$BfsTnvfnhTQidFg34jLeEO01MG.TaPolK4agfPmZNztaWXq2OtUXW', NULL, 'active', '2025-08-25 08:56:01', '2025-08-25 08:56:01'),
(238, 'Asad', 'Asad', '01321801869', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kxLV9pMF7CU75ixpKDf8kO8FeP9CSs6/lVSaPs37ZlNUA8QGIkSCe', NULL, 'active', '2025-08-25 13:19:52', '2025-08-25 13:19:52'),
(239, 'Safi Telecom', 'Safi Telecom', '01340726180', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$risvqX/cSvt0jxl54jayGuKYtiCdlVQtzOp31sNLhd8OrE2n7cy.K', NULL, 'active', '2025-08-25 13:54:18', '2025-08-25 13:54:18'),
(240, 'রবেল', 'রবেল', '01792082746', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$C8Ibw8Xl0648FzboBL8eq.6fLG99nZiBMr6fFlL2N/cPPkaqveLVS', NULL, 'active', '2025-08-25 15:18:46', '2025-08-25 15:18:46'),
(241, 'মো: তুহিন', 'মো: তুহিন', '01891863974', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jE10BCJBNrDOEqMqBy4sye2EXz6fEB85fviIhWOylPZdpSb4u38L6', NULL, 'active', '2025-08-25 16:26:51', '2025-08-25 16:26:51'),
(242, 'শাহ আলম মিয়া', 'শাহ আলম মিয়া', '01725577407', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$xqz.Jhlw0mb6nSC2qdCUPek45FlCZIcf3VOyiwIVQe547BiC3kLum', NULL, 'active', '2025-08-25 16:28:44', '2025-08-25 16:28:44'),
(243, 'Belal', 'Belal', '01760719588', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CEQfNgNrajDTehV/xHn/j.oeUMFL6pwFDVz8dX7I6uW5oGd5dGsb2', NULL, 'active', '2025-08-25 17:15:31', '2025-08-25 17:15:31'),
(244, 'Asadul Islam', 'asadul-islam-244', '01933533833', 'kurbanenterprice@gmail.com', 'Dhaka', 557, 'Polashbari, Asuliya, Savar, Dhaka 1344', 1, NULL, 'public/uploads/customer/1756144368-inbound9022056259930708474webp', '$2y$10$FL/e1PkGnl5lN3zmGfJwceqQIt.ziRFqFH1Ot3cOZtH7Qh0UCMs1W', NULL, 'active', '2025-08-25 17:47:06', '2025-08-25 17:52:48'),
(245, 'md.jahid hasan', 'md.jahid hasan', '01618712071', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1tJSjGKfEqwdqXZsvwyZx.4gpEQrHyWP.CrAuxWBZATcFKdPGCgty', NULL, 'active', '2025-08-25 18:39:59', '2025-08-25 18:39:59'),
(246, 'Zobaida Akther', 'Zobaida Akther', '01608974526', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$UmU5eZXzhxxTomDb4hR9D..n/yp1YisnTSz1bbE.oTK1axHCUj59S', NULL, 'active', '2025-08-26 13:05:24', '2025-08-26 13:05:24'),
(247, 'MD Foisal Islam', 'MD Foisal Islam', '01950403031', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1ciepPi6/bYpvQtGygdjMufCPGp24bYcObEmxGUE7OPQCkyc6tcfW', NULL, 'active', '2025-08-31 15:31:32', '2025-08-31 15:31:32'),
(248, 'Parents Food', 'Parents Food', '01902792987', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lb6E0jzcFQNE6aiGFdTvguHSpvHI/K8uA41KdABxBTyPI9X0ben86', NULL, 'active', '2025-09-05 18:56:30', '2025-09-05 18:56:30'),
(249, 'Parents Food', 'Parents Food', '01902111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kVsKcMztyIenE.gYIt/bruAESwTQJSEdlAHn6LkrGhWhwyXgICbga', NULL, 'active', '2025-09-05 18:58:40', '2025-09-05 18:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
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
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'parentsfood | Online Shopping in BD', 'uploads/settings/1756363067-your-paragraph-text-(6).webp', 'uploads/settings/1756359117-untitled-design-(17).webp', 'uploads/settings/1756358644-untitled-design-(16).webp', NULL, '<b>sadf</b>', 1, '2023-01-21 12:01:07', '2025-08-28 06:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(3, 'GTM-WSMRTQB7', 1, '2025-08-13 19:49:03', '2025-08-30 17:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29);

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
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `amount`, `discount`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(219, '48802', 3520, 0, 120, 196, NULL, 6, NULL, NULL, '2025-08-18 02:20:22', '2025-08-18 12:31:48'),
(220, '46692', 2920, 0, 120, 197, NULL, 7, NULL, NULL, '2025-08-18 07:53:09', '2025-08-18 10:34:25'),
(221, '24225', 3520, 0, 120, 198, NULL, 6, NULL, NULL, '2025-08-18 10:16:14', '2025-08-18 12:31:48'),
(222, '20327', 3620, 0, 120, 199, NULL, 6, NULL, NULL, '2025-08-19 03:33:23', '2025-08-19 14:34:21'),
(223, '28552', 3320, 0, 120, 200, NULL, 6, NULL, NULL, '2025-08-19 12:47:32', '2025-08-20 15:04:03'),
(224, '38979', 2220, 0, 120, 201, NULL, 7, NULL, NULL, '2025-08-20 04:18:16', '2025-08-20 07:03:58'),
(225, '25343', 2220, 0, 120, 202, NULL, 4, NULL, NULL, '2025-08-20 04:32:25', '2025-08-20 06:24:27'),
(226, '50967', 2220, 0, 120, 203, NULL, 6, NULL, NULL, '2025-08-20 06:45:40', '2025-08-20 15:04:03'),
(227, '22613', 2920, 0, 120, 204, NULL, 6, NULL, NULL, '2025-08-20 06:53:09', '2025-08-20 15:04:03'),
(228, '23375', 2220, 0, 120, 205, NULL, 6, NULL, NULL, '2025-08-20 09:06:16', '2025-08-20 10:22:01'),
(229, '19817', 2120, 0, 120, 206, NULL, 7, NULL, NULL, '2025-08-20 10:50:51', '2025-08-21 07:01:23'),
(230, '49959', 2920, 0, 120, 207, NULL, 6, NULL, NULL, '2025-08-20 11:13:59', '2025-08-21 12:36:17'),
(231, '46108', 2920, 0, 120, 208, NULL, 6, NULL, NULL, '2025-08-20 17:33:21', '2025-08-21 12:36:17'),
(232, '68917', 12720, 0, 120, 209, NULL, 7, NULL, NULL, '2025-08-20 20:15:59', '2025-08-21 07:13:28'),
(234, '54257', 2120, 0, 120, 210, NULL, 6, NULL, NULL, '2025-08-21 08:15:25', '2025-08-21 12:36:17'),
(235, '92167', 2920, 0, 120, 211, NULL, 6, NULL, NULL, '2025-08-21 10:10:44', '2025-08-21 12:36:17'),
(236, '25317', 2220, 0, 120, 212, NULL, 6, NULL, NULL, '2025-08-21 10:12:26', '2025-08-21 13:14:54'),
(237, '74123', 3620, 0, 120, 213, NULL, 6, NULL, NULL, '2025-08-21 10:25:30', '2025-08-25 07:41:05'),
(238, '13741', 2220, 0, 120, 214, NULL, 6, NULL, NULL, '2025-08-21 11:10:59', '2025-08-21 13:50:21'),
(239, '61303', 3620, 0, 120, 215, NULL, 7, NULL, NULL, '2025-08-21 14:17:29', '2025-08-21 15:42:13'),
(240, '27798', 2220, 0, 120, 216, NULL, 6, NULL, NULL, '2025-08-21 16:37:13', '2025-08-22 11:19:19'),
(241, '69649', 2920, 0, 120, 217, NULL, 7, NULL, NULL, '2025-08-21 17:19:55', '2025-08-25 07:41:53'),
(242, '93937', 2120, 0, 120, 218, NULL, 6, NULL, NULL, '2025-08-21 17:39:06', '2025-08-22 11:19:19'),
(243, '55247', 2920, 0, 120, 219, NULL, 6, NULL, NULL, '2025-08-21 18:19:32', '2025-08-22 05:22:55'),
(244, '16694', 2120, 0, 120, 220, NULL, 7, NULL, NULL, '2025-08-21 18:51:16', '2025-08-25 07:41:40'),
(245, '79035', 3620, 0, 120, 221, NULL, 6, NULL, NULL, '2025-08-21 19:47:11', '2025-08-22 11:19:19'),
(246, '20792', 2220, 0, 120, 222, NULL, 6, NULL, NULL, '2025-08-22 03:11:19', '2025-08-25 07:40:48'),
(247, '72299', 4120, 0, 120, 223, NULL, 6, NULL, NULL, '2025-08-22 09:16:44', '2025-08-23 12:28:54'),
(248, '35292', 2220, 0, 120, 224, NULL, 6, NULL, NULL, '2025-08-22 14:30:15', '2025-08-25 07:41:13'),
(249, '14651', 2220, 0, 120, 225, NULL, 6, NULL, NULL, '2025-08-22 14:32:49', '2025-08-23 12:28:54'),
(250, '76761', 2920, 0, 120, 226, NULL, 6, NULL, NULL, '2025-08-23 04:42:50', '2025-08-23 12:28:54'),
(251, '39428', 2920, 0, 120, 227, NULL, 1, NULL, NULL, '2025-08-23 05:35:07', '2025-08-23 05:35:07'),
(252, '13046', 2120, 0, 120, 228, NULL, 1, NULL, NULL, '2025-08-23 13:00:58', '2025-08-23 13:00:58'),
(253, '89012', 3320, 0, 120, 229, NULL, 6, NULL, NULL, '2025-08-23 13:28:54', '2025-08-24 14:59:31'),
(254, '46690', 2220, 0, 120, 230, NULL, 7, NULL, NULL, '2025-08-23 20:04:50', '2025-08-24 14:40:04'),
(255, '35589', 3520, 0, 120, 231, NULL, 6, NULL, NULL, '2025-08-24 06:26:50', '2025-08-24 14:59:20'),
(256, '68372', 2120, 0, 120, 232, NULL, 6, NULL, NULL, '2025-08-24 12:18:35', '2025-08-24 14:59:09'),
(257, '96490', 3620, 0, 120, 233, NULL, 1, NULL, NULL, '2025-08-24 19:30:35', '2025-08-24 19:30:35'),
(258, '39628', 3620, 0, 120, 234, NULL, 6, NULL, NULL, '2025-08-25 03:42:01', '2025-08-25 17:45:38'),
(259, '52413', 2220, 0, 120, 235, NULL, 6, NULL, NULL, '2025-08-25 05:40:38', '2025-08-25 17:45:38'),
(260, '37082', 4120, 0, 120, 236, NULL, 7, NULL, NULL, '2025-08-25 08:36:23', '2025-08-25 10:06:09'),
(261, '19486', 4120, 0, 120, 236, NULL, 1, NULL, NULL, '2025-08-25 08:36:32', '2025-08-25 08:36:32'),
(262, '42797', 2920, 0, 120, 237, NULL, 6, NULL, NULL, '2025-08-25 08:56:01', '2025-08-25 17:45:38'),
(263, '89153', 2220, 0, 120, 238, NULL, 1, NULL, NULL, '2025-08-25 13:19:52', '2025-08-25 13:19:52'),
(264, '62208', 2920, 0, 120, 239, NULL, 1, NULL, NULL, '2025-08-25 13:54:18', '2025-08-25 13:54:18'),
(265, '46027', 2070, 0, 70, 240, NULL, 1, NULL, NULL, '2025-08-25 15:18:46', '2025-08-25 15:18:46'),
(266, '49398', 3620, 0, 120, 241, NULL, 7, NULL, NULL, '2025-08-25 16:26:51', '2025-08-26 05:11:11'),
(267, '80300', 4320, 0, 120, 242, NULL, 6, NULL, NULL, '2025-08-25 16:28:44', '2025-08-26 12:32:05'),
(268, '50325', 2920, 0, 120, 243, NULL, 6, NULL, NULL, '2025-08-25 17:15:31', '2025-08-26 12:32:05'),
(269, '60093', 5370, 0, 70, 191, NULL, 1, NULL, NULL, '2025-08-25 17:37:18', '2025-08-25 17:37:18'),
(270, '22311', 3620, 0, 120, 245, NULL, 7, NULL, NULL, '2025-08-25 18:39:59', '2025-08-26 04:56:10'),
(271, '25068', 2120, 0, 120, 246, NULL, 7, NULL, NULL, '2025-08-26 13:05:24', '2025-08-26 14:09:24'),
(272, '78884', 3670, 0, 70, 191, NULL, 1, NULL, NULL, '2025-08-28 19:36:48', '2025-08-28 19:36:48'),
(273, '25035', 1570, 0, 70, 247, NULL, 1, NULL, NULL, '2025-08-31 15:31:32', '2025-08-31 15:31:32'),
(274, '28590', 820, 0, 70, 248, NULL, 1, NULL, NULL, '2025-09-05 18:56:30', '2025-09-05 18:56:30'),
(275, '55021', 1270, 0, 70, 249, NULL, 1, NULL, NULL, '2025-09-05 18:58:40', '2025-09-05 18:58:40'),
(276, '33888', 1570, 0, 70, 247, NULL, 1, NULL, NULL, '2025-09-13 16:46:05', '2025-09-13 16:46:05'),
(277, '25589', 1570, 0, 70, 247, NULL, 1, NULL, NULL, '2025-09-13 16:47:56', '2025-09-13 16:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(255, 219, 172, '৬০১ MS মডেল পিঙ্ক কালার', 2300, 3400, 0, NULL, NULL, 1, '2025-08-18 02:20:22', '2025-08-18 02:20:22'),
(256, 220, 159, '৫০১ মডেল ব্লু কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-18 07:53:09', '2025-08-18 07:53:09'),
(257, 221, 172, '৬০১ MS মডেল পিঙ্ক কালার', 2300, 3400, 0, NULL, NULL, 1, '2025-08-18 10:16:14', '2025-08-18 10:16:14'),
(258, 222, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-19 03:33:23', '2025-08-19 03:33:23'),
(259, 223, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-19 12:47:32', '2025-08-19 12:47:32'),
(260, 224, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-20 04:18:16', '2025-08-20 04:18:16'),
(261, 225, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-20 04:32:25', '2025-08-20 04:32:25'),
(262, 226, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-20 06:45:40', '2025-08-20 06:45:40'),
(263, 227, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-20 06:53:09', '2025-08-20 06:53:09'),
(264, 223, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 2600, NULL, NULL, 2, '2025-08-20 06:58:08', '2025-08-20 06:58:08'),
(265, 223, 163, 'S-15 মডেল পিঙ্ক কালার', 2200, 3200, 0, NULL, NULL, 1, '2025-08-20 06:59:29', '2025-08-20 06:59:29'),
(266, 228, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-20 09:06:17', '2025-08-20 09:06:17'),
(267, 229, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-20 10:50:51', '2025-08-20 10:50:51'),
(268, 230, 159, '৫০১ মডেল ব্লু কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-20 11:13:59', '2025-08-20 11:13:59'),
(269, 231, 159, '৫০১ মডেল ব্লু কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-20 17:33:21', '2025-08-20 17:33:21'),
(270, 232, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 6, '2025-08-20 20:15:59', '2025-08-20 20:15:59'),
(272, 234, 168, '৭৩৩  মডেল ব্লু কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-21 08:15:25', '2025-08-21 08:15:25'),
(273, 235, 159, '৫০১ মডেল ব্লু কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-21 10:10:44', '2025-08-21 10:10:44'),
(274, 236, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-21 10:12:27', '2025-08-21 10:12:27'),
(275, 237, 162, '৬০১ মডেল ব্লু কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-21 10:25:30', '2025-08-21 10:25:30'),
(276, 238, 170, '৭৩০  মডেল ব্লু কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-21 11:10:59', '2025-08-21 11:10:59'),
(277, 239, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-21 14:17:29', '2025-08-21 14:17:29'),
(278, 240, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-21 16:37:13', '2025-08-21 16:37:13'),
(279, 241, 166, '১১৮ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-21 17:19:55', '2025-08-21 17:19:55'),
(280, 242, 168, '৭৩৩  মডেল ব্লু কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-21 17:39:06', '2025-08-21 17:39:06'),
(281, 243, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-21 18:19:32', '2025-08-21 18:19:32'),
(282, 244, 168, '৭৩৩  মডেল ব্লু কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-21 18:51:16', '2025-08-21 18:51:16'),
(283, 245, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-21 19:47:11', '2025-08-21 19:47:11'),
(284, 246, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-22 03:11:19', '2025-08-22 03:11:19'),
(285, 247, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 2, '2025-08-22 09:16:44', '2025-08-22 09:16:44'),
(286, 248, 170, '৭৩০  মডেল ব্লু কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-22 14:30:15', '2025-08-22 14:30:15'),
(287, 249, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-22 14:32:49', '2025-08-22 14:32:49'),
(288, 250, 159, '৫০১ মডেল ব্লু কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-23 04:42:50', '2025-08-23 04:42:50'),
(289, 251, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-23 05:35:07', '2025-08-23 05:35:07'),
(290, 252, 168, '৭৩৩  মডেল ব্লু কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-23 13:00:58', '2025-08-23 13:00:58'),
(291, 253, 164, 'S-15 মডেল ব্লু কালার', 2200, 3200, 0, NULL, NULL, 1, '2025-08-23 13:28:54', '2025-08-23 13:28:54'),
(292, 254, 170, '৭৩০  মডেল ব্লু কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-23 20:04:50', '2025-08-23 20:04:50'),
(293, 255, 172, '৬০১ MS মডেল পিঙ্ক কালার', 2300, 3400, 0, NULL, NULL, 1, '2025-08-24 06:26:51', '2025-08-24 06:26:51'),
(294, 256, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-24 12:18:35', '2025-08-24 12:18:35'),
(295, 257, 162, '৬০১ মডেল ব্লু কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-24 19:30:35', '2025-08-24 19:30:35'),
(296, 258, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-25 03:42:01', '2025-08-25 03:42:01'),
(297, 259, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-25 05:40:38', '2025-08-25 05:40:38'),
(298, 260, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 2, '2025-08-25 08:36:23', '2025-08-25 08:36:23'),
(299, 261, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 2, '2025-08-25 08:36:32', '2025-08-25 08:36:32'),
(300, 262, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-25 08:56:01', '2025-08-25 08:56:01'),
(301, 263, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-25 13:19:54', '2025-08-25 13:19:54'),
(302, 264, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-25 13:54:18', '2025-08-25 13:54:18'),
(303, 265, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-25 15:18:46', '2025-08-25 15:18:46'),
(304, 266, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-25 16:26:51', '2025-08-25 16:26:51'),
(305, 267, 170, '৭৩০  মডেল ব্লু কালার', 1400, 2100, 0, NULL, NULL, 2, '2025-08-25 16:28:44', '2025-08-25 16:28:44'),
(306, 268, 160, '৫০১ মডেল পিঙ্ক কালার', 2000, 2800, 0, NULL, NULL, 1, '2025-08-25 17:15:31', '2025-08-25 17:15:31'),
(307, 269, 169, '৭৩০ মডেল পিঙ্ক কালার', 1400, 2100, 0, NULL, NULL, 1, '2025-08-25 17:37:18', '2025-08-25 17:37:18'),
(308, 269, 163, 'S-15 মডেল পিঙ্ক কালার', 2200, 3200, 0, NULL, NULL, 1, '2025-08-25 17:37:18', '2025-08-25 17:37:18'),
(309, 270, 161, '৬০১ মডেল পিঙ্ক কালার', 2000, 3500, 0, NULL, NULL, 1, '2025-08-25 18:39:59', '2025-08-25 18:39:59'),
(310, 271, 167, '৭৩৩ মডেল পিঙ্ক কালার', 1200, 2000, 0, NULL, NULL, 1, '2025-08-26 13:05:24', '2025-08-26 13:05:24'),
(311, 272, 173, 'Chia Seeds- 2 kg ( চিয়া সিড )', 950, 1200, 0, NULL, NULL, 3, '2025-08-28 19:36:48', '2025-08-28 19:36:48'),
(312, 273, 169, 'কাঠবাদাম (Almond) – 1KG', 1200, 1500, 0, NULL, NULL, 1, '2025-08-31 15:31:32', '2025-08-31 15:31:32'),
(313, 274, 170, 'Moringa Powder (মরিঙ্গা পাউডার) – 450gm', 500, 750, 0, NULL, NULL, 1, '2025-09-05 18:56:30', '2025-09-05 18:56:30'),
(314, 275, 172, 'লিচু ফুলের মধু ২ কেজি (Litchi Flower Honey 2kg)', 2300, 1200, 0, NULL, NULL, 1, '2025-09-05 18:58:40', '2025-09-05 18:58:40'),
(315, 276, 169, 'কাঠবাদাম (Almond) – 1KG', 1200, 1500, 0, NULL, NULL, 1, '2025-09-13 16:46:05', '2025-09-13 16:46:05'),
(316, 277, 169, 'কাঠবাদাম (Almond) – 1KG', 1200, 1500, 0, NULL, NULL, 1, '2025-09-13 16:47:56', '2025-09-13 16:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(4, 'On Hold', 'on-hold', '1', '2023-08-15 11:31:45', '2023-08-15 11:31:45'),
(5, 'In Courier', 'in-courier', '1', '2023-08-15 11:31:56', '2023-08-21 05:45:54'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(7, 'Cancelled', 'cancelled', '1', '2023-08-21 05:46:15', '2023-08-21 05:46:15');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(218, 219, 196, 3520, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-18 02:20:22', '2025-08-18 02:20:22'),
(219, 220, 197, 2870, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-18 07:53:09', '2025-08-18 07:53:09'),
(220, 221, 198, 3470, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-18 10:16:14', '2025-08-18 10:16:14'),
(221, 222, 199, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-19 03:33:23', '2025-08-19 03:33:23'),
(222, 223, 200, 3270, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-19 12:47:32', '2025-08-20 06:59:29'),
(223, 224, 201, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 04:18:16', '2025-08-20 04:18:16'),
(224, 225, 202, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 04:32:25', '2025-08-20 04:32:25'),
(225, 226, 203, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 06:45:40', '2025-08-20 06:45:40'),
(226, 227, 204, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 06:53:09', '2025-08-20 06:53:09'),
(227, 228, 205, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 09:06:16', '2025-08-20 09:06:16'),
(228, 229, 206, 2070, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 10:50:51', '2025-08-20 10:50:51'),
(229, 230, 207, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 11:13:59', '2025-08-20 11:13:59'),
(230, 231, 208, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 17:33:21', '2025-08-20 17:33:21'),
(231, 232, 209, 12670, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-20 20:15:59', '2025-08-20 20:15:59'),
(233, 234, 210, 2070, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 08:15:25', '2025-08-21 08:15:25'),
(234, 235, 211, 2870, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 10:10:44', '2025-08-21 10:10:44'),
(235, 236, 212, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 10:12:26', '2025-08-21 10:12:26'),
(236, 237, 213, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 10:25:30', '2025-08-21 10:25:30'),
(237, 238, 214, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 11:10:59', '2025-08-21 11:10:59'),
(238, 239, 215, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 14:17:29', '2025-08-21 14:17:29'),
(239, 240, 216, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 16:37:13', '2025-08-21 16:37:13'),
(240, 241, 217, 2870, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 17:19:55', '2025-08-21 17:19:55'),
(241, 242, 218, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 17:39:06', '2025-08-21 17:39:06'),
(242, 243, 219, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 18:19:32', '2025-08-21 18:19:32'),
(243, 244, 220, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 18:51:16', '2025-08-21 18:51:16'),
(244, 245, 221, 3570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-21 19:47:11', '2025-08-21 19:47:11'),
(245, 246, 222, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-22 03:11:19', '2025-08-22 03:11:19'),
(246, 247, 223, 4120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-22 09:16:44', '2025-08-22 09:16:44'),
(247, 248, 224, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-22 14:30:15', '2025-08-22 14:30:15'),
(248, 249, 225, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-22 14:32:49', '2025-08-22 14:32:49'),
(249, 250, 226, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-23 04:42:50', '2025-08-23 04:42:50'),
(250, 251, 227, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-23 05:35:07', '2025-08-23 05:35:07'),
(251, 252, 228, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-23 13:00:58', '2025-08-23 13:00:58'),
(252, 253, 229, 3320, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-23 13:28:54', '2025-08-23 13:28:54'),
(253, 254, 230, 2170, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-23 20:04:50', '2025-08-23 20:04:50'),
(254, 255, 231, 3470, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-24 06:26:51', '2025-08-24 06:26:51'),
(255, 256, 232, 2120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-24 12:18:35', '2025-08-24 14:56:37'),
(256, 257, 233, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-24 19:30:35', '2025-08-24 19:30:35'),
(257, 258, 234, 3570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 03:42:01', '2025-08-25 03:42:01'),
(258, 259, 235, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 05:40:38', '2025-08-25 05:40:38'),
(259, 260, 236, 4120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 08:36:23', '2025-08-25 08:36:23'),
(260, 261, 236, 4120, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 08:36:32', '2025-08-25 08:36:32'),
(261, 262, 237, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 08:56:01', '2025-08-25 08:56:01'),
(262, 263, 238, 2220, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 13:19:54', '2025-08-25 13:19:54'),
(263, 264, 239, 2920, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 13:54:18', '2025-08-25 13:54:18'),
(264, 265, 240, 2070, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 15:18:46', '2025-08-25 15:18:46'),
(265, 266, 241, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 16:26:51', '2025-08-25 16:26:51'),
(266, 267, 242, 4270, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 16:28:44', '2025-08-25 16:28:44'),
(267, 268, 243, 2870, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 17:15:31', '2025-08-25 17:15:31'),
(268, 269, 191, 5370, NULL, NULL, 'bkash', 'pending', '2025-08-25 17:37:18', '2025-08-25 17:37:18'),
(269, 270, 245, 3620, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-25 18:39:59', '2025-08-25 18:39:59'),
(270, 271, 246, 2070, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-26 13:05:24', '2025-08-26 13:05:24'),
(271, 272, 191, 3670, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-28 19:36:48', '2025-08-28 19:36:48'),
(272, 273, 247, 1570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-08-31 15:31:32', '2025-08-31 15:31:32'),
(273, 274, 248, 820, NULL, NULL, 'Cash On Delivery', 'pending', '2025-09-05 18:56:30', '2025-09-05 18:56:30'),
(274, 275, 249, 1270, NULL, NULL, 'Cash On Delivery', 'pending', '2025-09-05 18:58:40', '2025-09-05 18:58:40'),
(275, 276, 247, 1570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-09-13 16:46:05', '2025-09-13 16:46:05'),
(276, 277, 247, 1570, NULL, NULL, 'Cash On Delivery', 'pending', '2025-09-13 16:47:56', '2025-09-13 16:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', 'C7MNfvn3jhMEFqFI4TdnYUe5tc', '1NnVYeRbCzv0FUV8gOycidcPV5ZEmyK8u8wIvM0rRztavTlIerfN', '+8801915-045574', 'Fr);2u[5W8C', 'https://tokenized.pay.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 0, '2024-02-06 11:29:46', '2025-08-29 11:22:30'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://ecom.websolutionit.com/payment-success', 'https://ecom.websolutionit.com/payment-cancel', 'NOK', 1, '2024-02-06 11:29:46', '2024-02-08 12:34:35');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'web', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'web', NULL, NULL),
(10, 'permission-create', 'web', NULL, NULL),
(11, 'setting-delete', 'web', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'web', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'web', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'web', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'web', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'web', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'web', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'web', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'web', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'web', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'web', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'web', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'web', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'web', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'web', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'web', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'web', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'web', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'web', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'web', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'web', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'web', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'web', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'web', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'web', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'web', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'web', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'web', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'web', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'web', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'web', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'web', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'web', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'web', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'web', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'web', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'web', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'web', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'web', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'web', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'web', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'web', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'web', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'web', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'web', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'web', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'web', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'web', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'web', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'web', '2024-01-31 10:52:00', '2024-01-31 10:52:00');

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
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 132, 35, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(11, 132, 52, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(12, 132, 62, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(13, 133, 62, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(14, 134, 35, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(15, 134, 52, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(16, 134, 63, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(17, 137, 35, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(18, 137, 54, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(19, 138, 35, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(20, 138, 36, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(21, 138, 39, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(22, 139, 32, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(23, 139, 36, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(24, 139, 39, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(25, 140, 35, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(26, 140, 39, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(27, 141, 32, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(28, 141, 35, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(30, 153, 44, '2025-08-08 17:38:22', '2025-08-08 17:38:22'),
(31, 153, 52, '2025-08-08 17:38:22', '2025-08-08 17:38:22'),
(32, 154, 44, '2025-08-15 16:30:57', '2025-08-15 16:30:57'),
(33, 154, 52, '2025-08-15 16:30:57', '2025-08-15 16:30:57'),
(34, 155, 44, '2025-08-15 16:32:29', '2025-08-15 16:32:29'),
(35, 156, 35, '2025-08-15 17:06:35', '2025-08-15 17:06:35'),
(36, 182, 32, '2026-02-21 06:23:57', '2026-02-21 06:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'uploads/product/1706962659-6.webp', 1, '2024-02-03 12:17:39', '2024-02-03 12:17:39'),
(7, 'uploads/product/1706962760-1.webp', 5, '2024-02-03 12:19:20', '2024-02-03 12:19:20'),
(8, 'uploads/product/1706962864-2.webp', 2, '2024-02-03 12:21:04', '2024-02-03 12:21:04'),
(9, 'uploads/product/1706962961-3.webp', 3, '2024-02-03 12:22:41', '2024-02-03 12:22:41'),
(10, 'uploads/product/1706963054-4.webp', 4, '2024-02-03 12:24:14', '2024-02-03 12:24:14'),
(11, 'uploads/product/1706963304-5.webp', 6, '2024-02-03 12:28:24', '2024-02-03 12:28:24'),
(13, 'uploads/product/1706963666-968d4e20278e2db6759a2d2a44231f4c.jpg_750x750.jpg_.webp', 7, '2024-02-03 12:34:26', '2024-02-03 12:34:26'),
(15, 'uploads/product/1706963947-7.webp', 9, '2024-02-03 12:39:07', '2024-02-03 12:39:07'),
(16, 'uploads/product/1706964217-6.webp', 8, '2024-02-03 12:43:37', '2024-02-03 12:43:37'),
(17, 'uploads/product/1706964324-8.webp', 10, '2024-02-03 12:45:24', '2024-02-03 12:45:24'),
(18, 'uploads/product/1706964552-9.webp', 11, '2024-02-03 12:49:12', '2024-02-03 12:49:12'),
(19, 'uploads/product/1706964708-10.webp', 12, '2024-02-03 12:51:48', '2024-02-03 12:51:48'),
(20, 'uploads/product/1706965822-11.webp', 13, '2024-02-03 13:10:22', '2024-02-03 13:10:22'),
(21, 'uploads/product/1706966045-12.webp', 14, '2024-02-03 13:14:05', '2024-02-03 13:14:05'),
(22, 'uploads/product/1707038734-13.webp', 15, '2024-02-04 09:25:34', '2024-02-04 09:25:34'),
(23, 'uploads/product/1707039090-15.webp', 16, '2024-02-04 09:31:30', '2024-02-04 09:31:30'),
(24, 'uploads/product/1707039226-16.webp', 17, '2024-02-04 09:33:46', '2024-02-04 09:33:46'),
(25, 'uploads/product/1707039619-17.webp', 18, '2024-02-04 09:40:19', '2024-02-04 09:40:19'),
(26, 'uploads/product/1707039878-18.webp', 19, '2024-02-04 09:44:38', '2024-02-04 09:44:38'),
(27, 'uploads/product/1707040029-19.webp', 20, '2024-02-04 09:47:09', '2024-02-04 09:47:09'),
(28, 'uploads/product/1707040152-20.webp', 21, '2024-02-04 09:49:12', '2024-02-04 09:49:12'),
(29, 'uploads/product/1707040552-21.webp', 22, '2024-02-04 09:55:52', '2024-02-04 09:55:52'),
(30, 'uploads/product/1707040912-22.webp', 23, '2024-02-04 10:01:52', '2024-02-04 10:01:52'),
(31, 'uploads/product/1707041003-23.webp', 24, '2024-02-04 10:03:23', '2024-02-04 10:03:23'),
(32, 'uploads/product/1707041229-24.webp', 25, '2024-02-04 10:07:09', '2024-02-04 10:07:09'),
(33, 'uploads/product/1707041724-25.webp', 26, '2024-02-04 10:15:24', '2024-02-04 10:15:24'),
(34, 'uploads/product/1707041854-26.webp', 27, '2024-02-04 10:17:34', '2024-02-04 10:17:34'),
(35, 'uploads/product/1707042066-27.webp', 28, '2024-02-04 10:21:06', '2024-02-04 10:21:06'),
(36, 'uploads/product/1707042304-28.webp', 29, '2024-02-04 10:25:04', '2024-02-04 10:25:04'),
(37, 'uploads/product/1707042443-29.webp', 30, '2024-02-04 10:27:23', '2024-02-04 10:27:23'),
(38, 'uploads/product/1707042740-30.webp', 31, '2024-02-04 10:32:20', '2024-02-04 10:32:20'),
(39, 'uploads/product/1707042930-31.webp', 32, '2024-02-04 10:35:30', '2024-02-04 10:35:30'),
(40, 'uploads/product/1707043100-32.webp', 33, '2024-02-04 10:38:20', '2024-02-04 10:38:20'),
(41, 'uploads/product/1707043310-33.webp', 34, '2024-02-04 10:41:50', '2024-02-04 10:41:50'),
(42, 'uploads/product/1707044037-34.webp', 35, '2024-02-04 10:53:57', '2024-02-04 10:53:57'),
(43, 'uploads/product/1707044326-35.webp', 36, '2024-02-04 10:58:46', '2024-02-04 10:58:46'),
(44, 'uploads/product/1707044444-36.webp', 37, '2024-02-04 11:00:44', '2024-02-04 11:00:44'),
(45, 'uploads/product/1707045047-38.webp', 38, '2024-02-04 11:10:47', '2024-02-04 11:10:47'),
(46, 'uploads/product/1707045273-39.webp', 39, '2024-02-04 11:14:33', '2024-02-04 11:14:33'),
(47, 'uploads/product/1707045380-40.webp', 40, '2024-02-04 11:16:20', '2024-02-04 11:16:20'),
(48, 'uploads/product/1707045468-41.webp', 41, '2024-02-04 11:17:48', '2024-02-04 11:17:48'),
(49, 'uploads/product/1707045572-42.webp', 42, '2024-02-04 11:19:32', '2024-02-04 11:19:32'),
(50, 'uploads/product/1707045885-43.webp', 43, '2024-02-04 11:24:45', '2024-02-04 11:24:45'),
(51, 'uploads/product/1707046613-44.webp', 44, '2024-02-04 11:36:53', '2024-02-04 11:36:53'),
(52, 'uploads/product/1707046712-45.webp', 45, '2024-02-04 11:38:32', '2024-02-04 11:38:32'),
(54, 'uploads/product/1707046820-46.webp', 46, '2024-02-04 11:40:20', '2024-02-04 11:40:20'),
(55, 'uploads/product/1707047083-47.webp', 47, '2024-02-04 11:44:43', '2024-02-04 11:44:43'),
(56, 'uploads/product/1707047786-48.webp', 48, '2024-02-04 11:56:26', '2024-02-04 11:56:26'),
(57, 'uploads/product/1707048052-49.webp', 49, '2024-02-04 12:00:52', '2024-02-04 12:00:52'),
(58, 'uploads/product/1707048207-50.webp', 50, '2024-02-04 12:03:27', '2024-02-04 12:03:27'),
(59, 'uploads/product/1707048433-51.webp', 51, '2024-02-04 12:07:13', '2024-02-04 12:07:13'),
(60, 'uploads/product/1707048546-52.webp', 52, '2024-02-04 12:09:06', '2024-02-04 12:09:06'),
(61, 'uploads/product/1707049682-53.webp', 53, '2024-02-04 12:28:02', '2024-02-04 12:28:02'),
(62, 'uploads/product/1707049786-54.webp', 54, '2024-02-04 12:29:46', '2024-02-04 12:29:46'),
(63, 'uploads/product/1707049880-55.webp', 55, '2024-02-04 12:31:20', '2024-02-04 12:31:20'),
(64, 'uploads/product/1707050041-56.webp', 56, '2024-02-04 12:34:01', '2024-02-04 12:34:01'),
(65, 'uploads/product/1707050315-57.webp', 57, '2024-02-04 12:38:35', '2024-02-04 12:38:35'),
(66, 'uploads/product/1707050396-58.webp', 58, '2024-02-04 12:39:56', '2024-02-04 12:39:56'),
(67, 'uploads/product/1707051081-59.webp', 59, '2024-02-04 12:51:21', '2024-02-04 12:51:21'),
(68, 'uploads/product/1707051138-60.webp', 60, '2024-02-04 12:52:18', '2024-02-04 12:52:18'),
(69, 'uploads/product/1707051335-61.webp', 61, '2024-02-04 12:55:35', '2024-02-04 12:55:35'),
(70, 'uploads/product/1707051439-2600.webp', 62, '2024-02-04 12:57:19', '2024-02-04 12:57:19'),
(71, 'uploads/product/1707051518-62.webp', 63, '2024-02-04 12:58:38', '2024-02-04 12:58:38'),
(72, 'uploads/product/1707051601-2600.webp', 64, '2024-02-04 13:00:01', '2024-02-04 13:00:01'),
(73, 'uploads/product/1707051745-64.webp', 65, '2024-02-04 13:02:25', '2024-02-04 13:02:25'),
(74, 'uploads/product/1707051825-65.webp', 66, '2024-02-04 13:03:45', '2024-02-04 13:03:45'),
(75, 'uploads/product/1707051903-66.webp', 67, '2024-02-04 13:05:03', '2024-02-04 13:05:03'),
(76, 'uploads/product/1707052031-67.webp', 68, '2024-02-04 13:07:11', '2024-02-04 13:07:11'),
(77, 'uploads/product/1707052255-68.webp', 69, '2024-02-04 13:10:55', '2024-02-04 13:10:55'),
(78, 'uploads/product/1707052394-69.webp', 70, '2024-02-04 13:13:14', '2024-02-04 13:13:14'),
(79, 'uploads/product/1707052463-70.webp', 71, '2024-02-04 13:14:23', '2024-02-04 13:14:23'),
(80, 'uploads/product/1707052527-71.webp', 72, '2024-02-04 13:15:27', '2024-02-04 13:15:27'),
(81, 'uploads/product/1707121724-d6569c95ead8324c63ae8bedbf74482e.jpg_750x750.jpg_.webp', 73, '2024-02-05 08:28:44', '2024-02-05 08:28:44'),
(82, 'uploads/product/1707121894-2d5383f5aa9746aa1137749da10c6264.jpg_750x750.jpg_.webp', 74, '2024-02-05 08:31:34', '2024-02-05 08:31:34'),
(83, 'uploads/product/1707122306-25266ca63761fc3f5059ab87a0d0310b.jpg_750x750.jpg_.webp', 75, '2024-02-05 08:38:26', '2024-02-05 08:38:26'),
(84, 'uploads/product/1707122812-a10cb862f1da4a430e8fbc8769ce69b3.jpg_750x750.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(85, 'uploads/product/1707122812-27955ce3c5c10b44c501b03e125e3c82.jpg_100x100.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(86, 'uploads/product/1707123191-51ba6689f5e3c9b392f7d131c6d7d702.jpg_750x750.jpg_.webp', 77, '2024-02-05 08:53:11', '2024-02-05 08:53:11'),
(87, 'uploads/product/1707123566-29761a41e32e3962864f83dfe825edea.jpg_750x750.jpg_.webp', 78, '2024-02-05 08:59:26', '2024-02-05 08:59:26'),
(88, 'uploads/product/1707123836-e519b1103c328de72f70335f758cc7cd.jpg_750x750.jpg_.webp', 79, '2024-02-05 09:03:56', '2024-02-05 09:03:56'),
(89, 'uploads/product/1707125239-b999bd7cd26d3238698ee071a6e64e40.jpg_750x750.jpg_.webp', 80, '2024-02-05 09:27:19', '2024-02-05 09:27:19'),
(90, 'uploads/product/1707126177-3fc61e6a6dda2bb78245b5573e1d1562.jpg_750x750.jpg_.webp', 81, '2024-02-05 09:42:57', '2024-02-05 09:42:57'),
(91, 'uploads/product/1707126250-cff152bdb02947791234e7f71346bf57.jpg_750x750.jpg_.webp', 82, '2024-02-05 09:44:10', '2024-02-05 09:44:10'),
(92, 'uploads/product/1707126327-d4fe1c51cab0d824c68a3c46d702e571.jpg_750x750.jpg_.webp', 83, '2024-02-05 09:45:27', '2024-02-05 09:45:27'),
(93, 'uploads/product/1707126418-05b0495ff024378b04e4a22aecb8f43c.jpg_750x750.jpg_.webp', 84, '2024-02-05 09:46:58', '2024-02-05 09:46:58'),
(94, 'uploads/product/1707126922-1.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(95, 'uploads/product/1707126922-2.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(96, 'uploads/product/1707127008-3.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(97, 'uploads/product/1707127008-4.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(98, 'uploads/product/1707127090-6.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(99, 'uploads/product/1707127090-5.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(100, 'uploads/product/1707127168-7.webp', 88, '2024-02-05 09:59:28', '2024-02-05 09:59:28'),
(102, 'uploads/product/1707127293-9.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(103, 'uploads/product/1707127293-8.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(104, 'uploads/product/1707127376-10.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(105, 'uploads/product/1707127376-11.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(106, 'uploads/product/1707127468-12.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(107, 'uploads/product/1707127468-13.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(108, 'uploads/product/1707127637-14.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(109, 'uploads/product/1707127637-15.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(110, 'uploads/product/1707128083-17.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(111, 'uploads/product/1707128083-16.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(112, 'uploads/product/1707128240-18.webp', 94, '2024-02-05 10:17:20', '2024-02-05 10:17:20'),
(113, 'uploads/product/1707128311-20.webp', 95, '2024-02-05 10:18:31', '2024-02-05 10:18:31'),
(114, 'uploads/product/1707128450-21.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(115, 'uploads/product/1707128450-22.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(116, 'uploads/product/1707129607-23.webp', 97, '2024-02-05 10:40:07', '2024-02-05 10:40:07'),
(117, 'uploads/product/1707129715-24.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(118, 'uploads/product/1707129715-25.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(119, 'uploads/product/1707129849-27.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(120, 'uploads/product/1707129849-26.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(121, 'uploads/product/1707129943-28.webp', 100, '2024-02-05 10:45:43', '2024-02-05 10:45:43'),
(122, 'uploads/product/1707130323-29.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(123, 'uploads/product/1707130323-30.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(124, 'uploads/product/1707130655-32.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(125, 'uploads/product/1707130655-31.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(126, 'uploads/product/1707130655-30.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(129, 'uploads/product/1707130828-33.webp', 103, '2024-02-05 11:00:28', '2024-02-05 11:00:28'),
(130, 'uploads/product/1707130918-35.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(131, 'uploads/product/1707130918-36.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(132, 'uploads/product/1707130970-37.webp', 105, '2024-02-05 11:02:50', '2024-02-05 11:02:50'),
(133, 'uploads/product/1707131067-40.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(134, 'uploads/product/1707131067-41.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(135, 'uploads/product/1707131163-43.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(136, 'uploads/product/1707131163-44.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(137, 'uploads/product/1707131163-42.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(138, 'uploads/product/1707131330-46.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(139, 'uploads/product/1707131330-45.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(140, 'uploads/product/1707131417-47.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(141, 'uploads/product/1707131417-48.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(142, 'uploads/product/1707131602-49.webp', 110, '2024-02-05 11:13:22', '2024-02-05 11:13:22'),
(143, 'uploads/product/1707131817-51.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(144, 'uploads/product/1707131817-50.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(145, 'uploads/product/1707131989-52.webp', 112, '2024-02-05 11:19:49', '2024-02-05 11:19:49'),
(146, 'uploads/product/1707132059-53.webp', 113, '2024-02-05 11:20:59', '2024-02-05 11:20:59'),
(147, 'uploads/product/1707132129-54.webp', 114, '2024-02-05 11:22:09', '2024-02-05 11:22:09'),
(148, 'uploads/product/1707132190-55.webp', 115, '2024-02-05 11:23:10', '2024-02-05 11:23:10'),
(149, 'uploads/product/1707132238-56.webp', 116, '2024-02-05 11:23:58', '2024-02-05 11:23:58'),
(150, 'uploads/product/1707132375-57.webp', 117, '2024-02-05 11:26:15', '2024-02-05 11:26:15'),
(151, 'uploads/product/1707132432-58.webp', 118, '2024-02-05 11:27:12', '2024-02-05 11:27:12'),
(152, 'uploads/product/1707132490-56.webp', 119, '2024-02-05 11:28:10', '2024-02-05 11:28:10'),
(153, 'uploads/product/1707132556-59.webp', 120, '2024-02-05 11:29:16', '2024-02-05 11:29:16'),
(154, 'uploads/product/1707132653-60.webp', 121, '2024-02-05 11:30:53', '2024-02-05 11:30:53'),
(155, 'uploads/product/1707132761-61.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(156, 'uploads/product/1707132761-62.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(157, 'uploads/product/1707132761-63.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(158, 'uploads/product/1707133147-65.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(159, 'uploads/product/1707133147-64.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(160, 'uploads/product/1707138026-30.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(161, 'uploads/product/1707138026-31.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(162, 'uploads/product/1707138126-32.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(163, 'uploads/product/1707138126-33.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(164, 'uploads/product/1707138242-34.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(165, 'uploads/product/1707138242-35.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(166, 'uploads/product/1707138312-36.webp', 127, '2024-02-05 13:05:12', '2024-02-05 13:05:12'),
(167, 'uploads/product/1707138402-37.webp', 128, '2024-02-05 13:06:42', '2024-02-05 13:06:42'),
(168, 'uploads/product/1707138541-38.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(169, 'uploads/product/1707138541-39.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(170, 'uploads/product/1707138666-40.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(171, 'uploads/product/1707138666-41.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(172, 'uploads/product/1707138666-42.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(173, 'uploads/product/1709230194-9b42afe8-c27f-421c-9700-0629f4eaded9.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(174, 'uploads/product/1709230194-ada5b601-ea98-4b23-b700-ed548178d053.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(175, 'uploads/product/1709230194-16f00008-489a-4a9e-bb1f-cf520def58f7.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(176, 'uploads/product/1709230194-e346f2e6-6562-4c6b-b78f-8f550b30978b.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(178, 'uploads/product/1717143634-augrbeuws7mbzzznhqeh6426dgmvdubx8nh8kbfo.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(179, 'uploads/product/1717143634-xdgl4vbpzjpyedh8ki8nfienjgq0mtjzvslpiy8b.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(180, 'uploads/product/1717143634-unjqq3ctt8zoun2mxd7axkc4ekjktkxtmxvpsqkh.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(181, 'uploads/product/1717143634-o8b7nks7yjpfxeak1dyq2etsxvp0xbs5ssktv4om.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(182, 'uploads/product/1717143634-yacjpxkyyguzyflbzhzcy8asjqymyeown2kn9dfy.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(183, 'uploads/product/1717143634-wwsw5lgvpkmbkqlnb2djmoby6lywvrr7c0wo2vb5.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(184, 'uploads/product/1717144826-mupn63ybrq0wqdxk4hwfasinrc6kdbbwn8ezmxhi.webp', 133, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(185, 'uploads/product/1717145111-0vcrati9i3yk88re1bze6cfo9eu5fanjnzrrl9nc.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(186, 'uploads/product/1717145111-tu9rmqxguc1gcaehosss7ozdyvyhbhiylloe2opf.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(187, 'uploads/product/1717145111-5xik6q1tuk60ffi7ao1mahfseyswofhkapwztfn9.webp', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(188, 'uploads/product/1717145111-buciivdqytpvh6mbvtsmayw1prpmism78o3grfx7.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(189, 'uploads/product/1717145111-s5youdbdcy7j2dde1mfdyrokees8vxc37kwvuech.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(190, 'uploads/product/1717145265-qprvisrlm0b217fp0wgalukpilbm200rw5lfwazd.jpg', 135, '2024-05-31 14:47:45', '2024-05-31 14:47:45'),
(191, 'uploads/product/1717145442-hinhzbakb2hrupbr97iacj485bribzcqkqg43jft.jpg', 136, '2024-05-31 14:50:42', '2024-05-31 14:50:42'),
(192, 'uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(193, 'uploads/product/1717145718-h6kt4q5uiv4szh9gfc8xm645nyt1lz6au717r6wp.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(194, 'uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(195, 'uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(196, 'uploads/product/1717145718-zhtnqlutu1anf3vip00txwdtpvbvqs7lwx7hftmv.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(197, 'uploads/product/1717145718-xorysftrxqcpgnfyk35b1zersezacyylrahac9im.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(198, 'uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(199, 'uploads/product/1719154173-623a232298259_800x800.jpg', 138, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(200, 'uploads/product/1719301202-64fc1dd61301c_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(201, 'uploads/product/1719301202-64fc1dd62ece3_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(202, 'uploads/product/1719301736-64fc1e5b03d2c_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(203, 'uploads/product/1719301736-64fc1e5ad36c4_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(204, 'uploads/product/1719302457-62023d2973570_800x800.jpg', 141, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(205, 'uploads/product/1719304902-juhor-120gb-ssd-.jpg', 142, '2024-06-25 08:41:42', '2024-06-25 08:41:42'),
(206, 'uploads/product/1719471346-622132aba8a87_180x180.jpg', 143, '2024-06-27 06:55:46', '2024-06-27 06:55:46'),
(207, 'uploads/product/1719471432-62024116873f4_180x180.jpg', 144, '2024-06-27 06:57:12', '2024-06-27 06:57:12'),
(208, 'uploads/product/1719471544-62023db59b26c_180x180.jpg', 145, '2024-06-27 06:59:04', '2024-06-27 06:59:04'),
(209, 'uploads/product/1719471691-6200d104ea168_180x180.jpg', 146, '2024-06-27 07:01:31', '2024-06-27 07:01:31'),
(210, 'uploads/product/1719472418-6200c175130ca_180x180.jpg', 147, '2024-06-27 07:13:38', '2024-06-27 07:13:38'),
(211, 'uploads/product/1719472759-6200c20f4299e_180x180.jpg', 148, '2024-06-27 07:19:19', '2024-06-27 07:19:19'),
(212, 'uploads/product/1723336677-demo-fashion-(23).png', 149, '2024-08-11 00:37:57', '2024-08-11 00:37:57'),
(213, 'uploads/product/1723336762-dummy-products-(14).jpg', 150, '2024-08-11 00:39:22', '2024-08-11 00:39:22'),
(214, 'uploads/product/1723336830-demo-product-watch-(3).jpg', 151, '2024-08-11 00:40:30', '2024-08-11 00:40:30'),
(215, 'uploads/product/1723336923-ebb11b1676825580.jpg', 152, '2024-08-11 00:42:03', '2024-08-11 00:42:03'),
(216, 'uploads/product/1723336923-ebb11c1676825580.jpg', 152, '2024-08-11 00:42:03', '2024-08-11 00:42:03'),
(219, 'uploads/product/1754674702-501-blue.jpg', 153, '2025-08-08 17:38:22', '2025-08-08 17:38:22'),
(220, 'uploads/product/1755275457-untitled-(800-x-800-px)-(4).png', 154, '2025-08-15 16:30:57', '2025-08-15 16:30:57'),
(221, 'uploads/product/1755275549-untitled-(800-x-800-px)-(39).png', 155, '2025-08-15 16:32:29', '2025-08-15 16:32:29'),
(222, 'uploads/product/1755277595-1733207088.jpeg', 156, '2025-08-15 17:06:35', '2025-08-15 17:06:35'),
(223, 'uploads/product/1755345750-1755277595-1733207088.jpeg', 157, '2025-08-16 12:02:30', '2025-08-16 12:02:30'),
(224, 'uploads/product/1755345824-bkash.png', 158, '2025-08-16 12:03:44', '2025-08-16 12:03:44'),
(241, 'uploads/product/1756375751-untitled-design-(19).png', 174, '2025-08-28 10:09:11', '2025-08-28 10:09:11'),
(242, 'uploads/product/1756376238-untitled-design-(19).png', 173, '2025-08-28 10:17:18', '2025-08-28 10:17:18'),
(243, 'uploads/product/1756460914-2.png', 172, '2025-08-29 09:48:34', '2025-08-29 09:48:34'),
(244, 'uploads/product/1756461373-3.png', 171, '2025-08-29 09:56:13', '2025-08-29 09:56:13'),
(246, 'uploads/product/1756461914-5.png', 170, '2025-08-29 10:05:14', '2025-08-29 10:05:14'),
(247, 'uploads/product/1756462339-6.png', 169, '2025-08-29 10:12:19', '2025-08-29 10:12:19'),
(248, 'uploads/product/1756462704-8.png', 168, '2025-08-29 10:18:24', '2025-08-29 10:18:24'),
(249, 'uploads/product/1756463141-9.png', 167, '2025-08-29 10:25:41', '2025-08-29 10:25:41'),
(250, 'uploads/product/1756463283-10.png', 166, '2025-08-29 10:28:03', '2025-08-29 10:28:03'),
(251, 'uploads/product/1756463524-11.png', 165, '2025-08-29 10:32:04', '2025-08-29 10:32:04'),
(252, 'uploads/product/1756463786-12.png', 164, '2025-08-29 10:36:26', '2025-08-29 10:36:26'),
(253, 'uploads/product/1756463992-13.png', 163, '2025-08-29 10:39:52', '2025-08-29 10:39:52'),
(254, 'uploads/product/1756464141-14.png', 162, '2025-08-29 10:42:21', '2025-08-29 10:42:21'),
(255, 'uploads/product/1756464985-1.png', 161, '2025-08-29 10:56:25', '2025-08-29 10:56:25'),
(256, 'uploads/product/1756466141-1.png', 160, '2025-08-29 11:15:41', '2025-08-29 11:15:41'),
(257, 'uploads/product/1756466296-2.png', 159, '2025-08-29 11:18:16', '2025-08-29 11:18:16'),
(258, 'uploads/product/1756565226-2.png', 175, '2025-08-30 14:47:06', '2025-08-30 14:47:06'),
(259, 'uploads/product/1756565385-2.png', 176, '2025-08-30 14:49:45', '2025-08-30 14:49:45'),
(260, 'uploads/product/1756643789-untitled-design-(24).png', 177, '2025-08-31 12:36:29', '2025-08-31 12:36:29'),
(261, 'uploads/product/1756653645-untitled-design-(25).png', 178, '2025-08-31 15:20:45', '2025-08-31 15:20:45'),
(262, 'uploads/product/1756654439-5.png', 179, '2025-08-31 15:33:59', '2025-08-31 15:33:59'),
(263, 'uploads/product/1756654733-6.png', 180, '2025-08-31 15:38:53', '2025-08-31 15:38:53'),
(264, 'uploads/product/1756654930-7.png', 181, '2025-08-31 15:42:10', '2025-08-31 15:42:10'),
(265, 'uploads/product/1771655037-1752691147-4e8dd128d7daf669bccb27eb469cd65e.png', 182, '2026-02-21 06:23:57', '2026-02-21 06:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(159, 'খেজুরের চাটনি (khejur Chutney) 250GM', 'খেজুরের-চাটনি-(khejur-chutney)-250gm-174', 14, 0, NULL, NULL, 'P0154', 150, 330, 290, 1000, NULL, NULL, '<p style=\"outline: none; margin-block: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(71, 71, 71); font-family: Poppins;\">খেজুরের চাটনি</p><p data-start=\"218\" data-end=\"419\">গর্ভবতী মায়েদের জন্য উপযুক্ত, খেজুরের এই আচার প্রাকৃতিকভাবে টক, ঝাল ও মিষ্টির সমন্বয় করে তৈরি। বাজারের ভিনেগার যুক্ত বা কম মানের আচার এড়িয়ে, এই আচার খেলে মা এবং শিশুর স্বাস্থ্য দুটোই সুরক্ষিত থাকে।</p><h3 data-start=\"421\" data-end=\"433\">উপকরণ:</h3><p data-start=\"434\" data-end=\"537\">বড়ই, খেজুর, পেস্তা, কাজুবাদাম, কাঠবাদাম, তেতুল, সরিষার তেল, আদা, ফন, মধু এবং অন্যান্য প্রাকৃতিক মসলা</p><h3 data-start=\"539\" data-end=\"569\">স্বাস্থ্য ও কার্যকারিতা:</h3><p style=\"outline: none; margin-block: 0px; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(71, 71, 71); font-family: Poppins;\">\r\n\r\n\r\n\r\n</p><ul data-start=\"570\" data-end=\"755\">\r\n<li data-start=\"570\" data-end=\"597\">\r\n<p data-start=\"572\" data-end=\"597\">খাবারের রুচি বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"598\" data-end=\"632\">\r\n<p data-start=\"600\" data-end=\"632\">শরীরের শক্তি ও উদ্দীপনা যোগায়</p>\r\n</li>\r\n<li data-start=\"633\" data-end=\"667\">\r\n<p data-start=\"635\" data-end=\"667\">রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"668\" data-end=\"691\">\r\n<p data-start=\"670\" data-end=\"691\">ত্বককে উজ্জ্বল রাখে</p>\r\n</li>\r\n<li data-start=\"692\" data-end=\"716\">\r\n<p data-start=\"694\" data-end=\"716\">মন ও দেহকে সতেজ রাখে</p>\r\n</li>\r\n<li data-start=\"717\" data-end=\"734\">\r\n<p data-start=\"719\" data-end=\"734\">হার মজবুত করে</p>\r\n</li>\r\n<li data-start=\"735\" data-end=\"755\">\r\n<p data-start=\"737\" data-end=\"755\">ভালো ঘুমে সহায়ক</p></li></ul>', NULL, 1, 0, NULL, 1, '2025-08-17 18:01:56', '2025-08-29 13:45:42'),
(160, 'ত্বীন ফল ( premium dried fig) – 1 kg', 'ত্বীন-ফল-(-premium-dried-fig)-–-1-kg-174', 14, 0, NULL, NULL, 'P0160', 2000, 2290, 2090, 1000, NULL, NULL, '<h2 data-start=\"111\" data-end=\"155\">ত্বীন ফল (Fig) – সুস্বাদু ও পুষ্টিকর</h2>\r\n<p data-start=\"157\" data-end=\"346\">ত্বীন ফল, যাকে ইংরেজিতে Fig বলা হয়, একটি প্রাচীনকাল থেকে চাষকৃত সুস্বাদু এবং পুষ্টিকর ফল। এটি সাধারণত ছোট, মিষ্টি এবং সরস, বাইরের রঙ সবুজ, বেগুনি বা কালো এবং অভ্যন্তরীণ অংশ গোলাপী বা লাল।</p>\r\n<h3 data-start=\"348\" data-end=\"364\">পুষ্টিগুণ:</h3>\r\n<ul data-start=\"365\" data-end=\"601\">\r\n<li data-start=\"365\" data-end=\"419\">\r\n<p data-start=\"367\" data-end=\"419\">ফাইবারে সমৃদ্ধ, হজম ও অন্ত্রের স্বাস্থ্য ভালো রাখে</p>\r\n</li>\r\n<li data-start=\"420\" data-end=\"486\">\r\n<p data-start=\"422\" data-end=\"486\">ভিটামিন এ ও ভিটামিন কে সমৃদ্ধ, দৃষ্টিশক্তি ও হাড়ের জন্য উপকারী</p>\r\n</li>\r\n<li data-start=\"487\" data-end=\"540\">\r\n<p data-start=\"489\" data-end=\"540\">পটাসিয়াম, ম্যাগনেসিয়াম ও ক্যালসিয়াম সরবরাহ করে</p>\r\n</li>\r\n<li data-start=\"541\" data-end=\"601\">\r\n<p data-start=\"543\" data-end=\"601\">শক্তিশালী অ্যান্টিঅক্সিডেন্ট, রোগ প্রতিরোধ ক্ষমতা বাড়ায়</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"603\" data-end=\"617\">ব্যবহার:</h3>\r\n<ul data-start=\"618\" data-end=\"730\">\r\n<li data-start=\"618\" data-end=\"668\">\r\n<p data-start=\"620\" data-end=\"668\">তাজা খাওয়া যেতে পারে বা শুকিয়ে সংরক্ষণ করা যায়</p>\r\n</li>\r\n<li data-start=\"669\" data-end=\"730\">\r\n<p data-start=\"671\" data-end=\"730\">স্ন্যাক্স, সালাদ, ডেজার্ট ও বিভিন্ন রেসিপিতে ব্যবহারযোগ্য</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"732\" data-end=\"802\">ত্বীন ফল কেবল সুস্বাদু নয়, এটি প্রাকৃতিকভাবে স্বাস্থ্য রক্ষায় সহায়ক।</p>', NULL, 1, 0, NULL, 1, '2025-08-17 18:07:24', '2025-08-29 11:15:41'),
(161, 'সুপারফুড কম্বো – (Superfood Combo)', 'সুপারফুড-কম্বো-–-(superfood-combo)-174', 14, 0, NULL, NULL, 'P0161', 800, 1500, 999, 1000, NULL, NULL, '<h3 data-start=\"286\" data-end=\"313\">সুপারফুড কম্বো – (Superfood Combo) <br></h3><p>চিয়া সিড, মরিঙ্গা পাউডার, বিটরুট পাউডার, মধু</p><h3 data-start=\"286\" data-end=\"313\">চিয়া সিডের উপকারিতা:</h3>\r\n<ul data-start=\"314\" data-end=\"669\">\r\n<li data-start=\"314\" data-end=\"358\">\r\n<p data-start=\"316\" data-end=\"358\">হৃদরোগের ঝুঁকি ও ক্ষতিকর কোলেস্টেরল কমায়</p>\r\n</li>\r\n<li data-start=\"359\" data-end=\"383\">\r\n<p data-start=\"361\" data-end=\"383\">ওজন নিয়ন্ত্রণে সহায়ক</p>\r\n</li>\r\n<li data-start=\"384\" data-end=\"418\">\r\n<p data-start=\"386\" data-end=\"418\">রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"419\" data-end=\"447\">\r\n<p data-start=\"421\" data-end=\"447\">শক্তি ও কর্মক্ষমতা বাড়ায়</p>\r\n</li>\r\n<li data-start=\"448\" data-end=\"479\">\r\n<p data-start=\"450\" data-end=\"479\">ব্লাড সুগার নিয়ন্ত্রণে রাখে</p>\r\n</li>\r\n<li data-start=\"480\" data-end=\"516\">\r\n<p data-start=\"482\" data-end=\"516\">হাড় ও দাঁতের স্বাস্থ্য রক্ষা করে</p>\r\n</li>\r\n<li data-start=\"517\" data-end=\"569\">\r\n<p data-start=\"519\" data-end=\"569\">মলাশয় পরিষ্কার করে ও কোলন ক্যান্সারের ঝুঁকি কমায়</p>\r\n</li>\r\n<li data-start=\"570\" data-end=\"598\">\r\n<p data-start=\"572\" data-end=\"598\">শরীর থেকে টক্সিন বের করে</p>\r\n</li>\r\n<li data-start=\"599\" data-end=\"638\">\r\n<p data-start=\"601\" data-end=\"638\">প্রদাহ কমায় ও ভালো ঘুমে সাহায্য করে</p>\r\n</li>\r\n<li data-start=\"639\" data-end=\"669\">\r\n<p data-start=\"641\" data-end=\"669\">ত্বক, চুল ও নখ সুন্দর রাখে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"671\" data-end=\"691\">মধুর উপকারিতা:</h3>\r\n<ul data-start=\"692\" data-end=\"1005\">\r\n<li data-start=\"692\" data-end=\"717\">\r\n<p data-start=\"694\" data-end=\"717\">তাৎক্ষণিক শক্তি যোগায়</p>\r\n</li>\r\n<li data-start=\"718\" data-end=\"748\">\r\n<p data-start=\"720\" data-end=\"748\">রক্তশূন্যতা দূর করতে সহায়ক</p>\r\n</li>\r\n<li data-start=\"749\" data-end=\"792\">\r\n<p data-start=\"751\" data-end=\"792\">হজমশক্তি বৃদ্ধি করে ও কোষ্ঠকাঠিন্য কমায়</p>\r\n</li>\r\n<li data-start=\"793\" data-end=\"867\">\r\n<p data-start=\"795\" data-end=\"867\">অ্যান্টি-অক্সিডেন্ট ও অ্যান্টি-ভাইরাল উপাদান রোগ প্রতিরোধ ক্ষমতা বাড়ায়</p>\r\n</li>\r\n<li data-start=\"868\" data-end=\"914\">\r\n<p data-start=\"870\" data-end=\"914\">মুখগহ্বর, হাড় ও দাঁতের স্বাস্থ্য রক্ষা করে</p>\r\n</li>\r\n<li data-start=\"915\" data-end=\"950\">\r\n<p data-start=\"917\" data-end=\"950\">ব্রণ, একনি ও ত্বকের সমস্যা কমায়</p>\r\n</li>\r\n<li data-start=\"951\" data-end=\"1005\">\r\n<p data-start=\"953\" data-end=\"1005\">উচ্চ রক্তচাপ নিয়ন্ত্রণ ও হৃদ্য স্বাস্থ্য রক্ষা করে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1007\" data-end=\"1048\">বিটরুট পাউডারের স্বাস্থ্য উপকারিতা:</h3>\r\n<ul data-start=\"1049\" data-end=\"1528\">\r\n<li data-start=\"1049\" data-end=\"1104\">\r\n<p data-start=\"1051\" data-end=\"1104\">নাইট্রেট রক্তনালী প্রসারিত করে, হৃদরোগের ঝুঁকি কমায়</p>\r\n</li>\r\n<li data-start=\"1105\" data-end=\"1152\">\r\n<p data-start=\"1107\" data-end=\"1152\">ব্যায়ামের সময় শরীরের অক্সিজেন সরবরাহ বাড়ায়</p>\r\n</li>\r\n<li data-start=\"1153\" data-end=\"1204\">\r\n<p data-start=\"1155\" data-end=\"1204\">অ্যান্টিঅক্সিডেন্ট ও বেটালেইন কোষ সুরক্ষিত রাখে</p>\r\n</li>\r\n<li data-start=\"1205\" data-end=\"1249\">\r\n<p data-start=\"1207\" data-end=\"1249\">আয়রন ও ফোলেট লোহিত রক্তকণিকা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"1250\" data-end=\"1302\">\r\n<p data-start=\"1252\" data-end=\"1302\">ফাইবার অন্ত্র সক্রিয় রাখে, কোষ্ঠকাঠিন্য দূর করে</p>\r\n</li>\r\n<li data-start=\"1303\" data-end=\"1353\">\r\n<p data-start=\"1305\" data-end=\"1353\">কম ক্যালোরি ও উচ্চ ফাইবার ক্ষুধা নিয়ন্ত্রণ করে</p>\r\n</li>\r\n<li data-start=\"1354\" data-end=\"1394\">\r\n<p data-start=\"1356\" data-end=\"1394\">লিভার ডিটক্স ও কার্যকারিতা উন্নত করে</p>\r\n</li>\r\n<li data-start=\"1395\" data-end=\"1438\">\r\n<p data-start=\"1397\" data-end=\"1438\">রক্তপ্রবাহ বাড়িয়ে স্মৃতিশক্তি উন্নত করে</p>\r\n</li>\r\n<li data-start=\"1439\" data-end=\"1487\">\r\n<p data-start=\"1441\" data-end=\"1487\">ভিটামিন সি ও অ্যান্টিঅক্সিডেন্ট বলিরেখা কমায়</p>\r\n</li>\r\n<li data-start=\"1488\" data-end=\"1528\">\r\n<p data-start=\"1490\" data-end=\"1528\">ফ্রি র‍্যাডিকাল থেকে কোষকে রক্ষা করে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1530\" data-end=\"1569\">মরিঙ্গা পাউডারের প্রধান উপকারিতা:</h3>\r\n<ul data-start=\"1570\" data-end=\"1847\">\r\n<li data-start=\"1570\" data-end=\"1604\">\r\n<p data-start=\"1572\" data-end=\"1604\">রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"1605\" data-end=\"1647\">\r\n<p data-start=\"1607\" data-end=\"1647\">শরীরকে উদ্দীপিত করে ও ক্লান্তি দূর করে</p>\r\n</li>\r\n<li data-start=\"1648\" data-end=\"1681\">\r\n<p data-start=\"1650\" data-end=\"1681\">রক্তে শর্করা নিয়ন্ত্রণে সহায়ক</p>\r\n</li>\r\n<li data-start=\"1682\" data-end=\"1706\">\r\n<p data-start=\"1684\" data-end=\"1706\">হাড় ও দাঁত মজবুত করে</p>\r\n</li>\r\n<li data-start=\"1707\" data-end=\"1747\">\r\n<p data-start=\"1709\" data-end=\"1747\">হজমশক্তি উন্নত করে ও শরীর ডিটক্স করে</p>\r\n</li>\r\n<li data-start=\"1748\" data-end=\"1774\">\r\n<p data-start=\"1750\" data-end=\"1774\">দৃষ্টিশক্তি বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"1775\" data-end=\"1805\">\r\n<p data-start=\"1777\" data-end=\"1805\">ত্বককে উজ্জ্বল ও সতেজ রাখে</p>\r\n</li>\r\n<li data-start=\"1806\" data-end=\"1847\">\r\n<p data-start=\"1808\" data-end=\"1847\">এন্টি-ক্যান্সার এজেন্ট হিসেবে কাজ করে</p></li></ul>', NULL, 1, 0, NULL, 1, '2025-08-17 18:09:59', '2025-08-29 10:56:25'),
(162, 'কাজু বাদাম/Cashew Nuts Medium Size 1kg', 'কাজু-বাদাম-cashew-nuts-medium-size-1kg-174', 14, 0, NULL, NULL, 'P0162', 1750, 2100, 1990, 1000, NULL, NULL, '<p data-start=\"188\" data-end=\"374\"><strong data-start=\"188\" data-end=\"216\">কাজু বাদাম (Cashew Nuts)</strong> হলো প্রাকৃতিক ও সুস্বাদু বাদাম, যা দৈনন্দিন খাদ্যাভ্যাসে পুষ্টি ও শক্তি যোগ করতে সাহায্য করে। ১ কেজি প্যাকেজে পাওয়া যায়, যা পরিবারের জন্য একেবারেই উপযুক্ত।</p>\r\n<h3 data-start=\"805\" data-end=\"830\">স্বাস্থ্য উপকারিতা:</h3>\r\n<ol data-start=\"831\" data-end=\"1056\">\r\n<li data-start=\"831\" data-end=\"874\">\r\n<p data-start=\"834\" data-end=\"874\">স্মৃতিশক্তি ও মানসিক দক্ষতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"875\" data-end=\"918\">\r\n<p data-start=\"878\" data-end=\"918\">হৃদরোগ ও উচ্চ রক্তচাপ প্রতিরোধে সহায়ক</p>\r\n</li>\r\n<li data-start=\"919\" data-end=\"969\">\r\n<p data-start=\"922\" data-end=\"969\">হজম প্রক্রিয়া উন্নত করে এবং কোষ্ঠকাঠিন্য কমায়</p>\r\n</li>\r\n<li data-start=\"970\" data-end=\"1013\">\r\n<p data-start=\"973\" data-end=\"1013\">ত্বকের স্বাস্থ্য ও উজ্জ্বলতা বজায় রাখে</p>\r\n</li>\r\n<li data-start=\"1014\" data-end=\"1056\">\r\n<p data-start=\"1017\" data-end=\"1056\">শরীরের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n</ol>\r\n<h3 data-start=\"1058\" data-end=\"1082\">ব্যবহার ও সংরক্ষণ:</h3>\r\n<ul data-start=\"1083\" data-end=\"1225\">\r\n<li data-start=\"1083\" data-end=\"1119\">\r\n<p data-start=\"1085\" data-end=\"1119\">সরাসরি স্ন্যাক হিসেবে খেতে পারেন</p>\r\n</li>\r\n<li data-start=\"1120\" data-end=\"1175\">\r\n<p data-start=\"1122\" data-end=\"1175\">সালাদ, সিরিয়াল, ডেজার্ট বা বেকিংয়ে ব্যবহার করা যায়</p>\r\n</li>\r\n<li data-start=\"1176\" data-end=\"1225\">\r\n<p data-start=\"1178\" data-end=\"1225\">শীতল, শুকনো এবং ঢেকে রাখা পাত্রে সংরক্ষণ করুন</p></li></ul>', NULL, 1, 0, NULL, 1, '2025-08-17 18:31:15', '2025-08-29 10:42:21'),
(163, 'আখরোট/Walnut ১০০০ গ্রাম', 'আখরোট-walnut-১০০০-গ্রাম-174', 14, 0, NULL, NULL, 'P0163', 1600, 2000, 1800, 1000, NULL, NULL, '<p data-start=\"184\" data-end=\"373\"><strong data-start=\"184\" data-end=\"202\">আখরোট (Walnut)</strong> হলো এক প্রাকৃতিক, স্বাস্থ্যসম্মত এবং সুস্বাদু বাদাম, যা দৈনন্দিন খাদ্যাভ্যাসে পুষ্টির চাহিদা পূরণে সাহায্য করে। ১০০০ গ্রাম প্যাকেজে পাওয়া যায়, যা পরিবারের জন্য উপযুক্ত।</p>\r\n<h3 data-start=\"782\" data-end=\"807\">স্বাস্থ্য উপকারিতা:</h3>\r\n<ol data-start=\"808\" data-end=\"1045\">\r\n<li data-start=\"808\" data-end=\"850\">\r\n<p data-start=\"811\" data-end=\"850\">স্মৃতিশক্তি ও মানসিক দক্ষতা উন্নত করে</p>\r\n</li>\r\n<li data-start=\"851\" data-end=\"890\">\r\n<p data-start=\"854\" data-end=\"890\">হৃদরোগ ও উচ্চ রক্তচাপের ঝুঁকি কমায়</p>\r\n</li>\r\n<li data-start=\"891\" data-end=\"953\">\r\n<p data-start=\"894\" data-end=\"953\">হজম প্রক্রিয়া উন্নত করে এবং কোষ্ঠকাঠিন্য প্রতিরোধে সহায়ক</p>\r\n</li>\r\n<li data-start=\"954\" data-end=\"1002\">\r\n<p data-start=\"957\" data-end=\"1002\">ত্বকের উজ্জ্বলতা ও স্বাস্থ্যের জন্য কার্যকর</p>\r\n</li>\r\n<li data-start=\"1003\" data-end=\"1045\">\r\n<p data-start=\"1006\" data-end=\"1045\">শরীরের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n</ol>\r\n<h3 data-start=\"1047\" data-end=\"1071\">ব্যবহার ও সংরক্ষণ:</h3>\r\n<ul data-start=\"1072\" data-end=\"1215\">\r\n<li data-start=\"1072\" data-end=\"1108\">\r\n<p data-start=\"1074\" data-end=\"1108\">সরাসরি স্ন্যাক হিসেবে খেতে পারেন</p>\r\n</li>\r\n<li data-start=\"1109\" data-end=\"1165\">\r\n<p data-start=\"1111\" data-end=\"1165\">সালাদ, সিরিয়াল, ডেজার্ট বা বেকিংয়ে ব্যবহার করা যায়</p>\r\n</li>\r\n<li data-start=\"1166\" data-end=\"1215\">\r\n<p data-start=\"1168\" data-end=\"1215\">শীতল, শুকনো এবং ঢেকে রাখা পাত্রে সংরক্ষণ করুন</p></li></ul>', NULL, 0, 0, NULL, 1, '2025-08-17 18:34:53', '2025-08-29 10:39:52'),
(164, 'Deshi Mustard Oil/দেশি সরিষার তেল (৫ লিটার)', 'deshi-mustard-oil-দেশি-সরিষার-তেল-(৫-লিটার)-174', 14, 0, NULL, NULL, 'P0164', 1200, 1800, 1550, 1000, NULL, NULL, '<p><strong data-start=\"215\" data-end=\"254\">দেশি সরিষার তেল (Deshi Mustard Oil)</strong> হলো এক প্রাকৃতিক, খাঁটি এবং সুস্বাদু তেল, যা রান্নার স্বাদ বাড়ানোর পাশাপাশি স্বাস্থ্যকর খাদ্যাভ্যাস নিশ্চিত করে। এটি ৫ লিটার আকারে, পরিবারে দৈনন্দিন রান্নায় ব্যবহার উপযোগী।<br></p><h3 data-start=\"840\" data-end=\"858\">ব্যবহারবিধি:</h3><ul data-start=\"859\" data-end=\"1005\">\r\n<li data-start=\"859\" data-end=\"929\">\r\n<p data-start=\"861\" data-end=\"929\">দৈনন্দিন রান্নায়: ভাজা, কারি, সবজি, ডাল বা মাছ/মাংসের জন্য উপযুক্ত</p>\r\n</li>\r\n<li data-start=\"930\" data-end=\"1005\">\r\n<p data-start=\"932\" data-end=\"1005\">ত্বক ও চুলের যত্নে: প্রাকৃতিক আর্দ্রতা ও পুষ্টি যোগাতে ব্যবহার করা যায়</p>\r\n</li>\r\n</ul><h3 data-start=\"1007\" data-end=\"1046\">কেন Parents Food দেশি সরিষার তেল?</h3><ul data-start=\"1047\" data-end=\"1169\">\r\n<li data-start=\"1047\" data-end=\"1090\">\r\n<p data-start=\"1049\" data-end=\"1090\">খাঁটি ও প্রাকৃতিক, কোনো রাসায়নিক মুক্ত</p>\r\n</li>\r\n<li data-start=\"1091\" data-end=\"1131\">\r\n<p data-start=\"1093\" data-end=\"1131\">পরিবারে দৈনন্দিন রান্নার জন্য উপযোগী</p>\r\n</li>\r\n<li data-start=\"1132\" data-end=\"1169\">\r\n<p data-start=\"1134\" data-end=\"1169\">স্বাদ ও স্বাস্থ্য দুইই বজায় রাখে</p>\r\n</li>\r\n</ul><p>\r\n\r\n\r\n\r\n</p><p data-start=\"1171\" data-end=\"1273\"><strong data-start=\"1174\" data-end=\"1271\">প্রাকৃতিক স্বাদের স্বাস্থ্যকর রান্নার জন্য এখনই কিনুন Parents Food দেশি সরিষার তেল (৫ লিটার)।</strong></p>', NULL, 1, 0, NULL, 1, '2025-08-17 18:41:41', '2025-08-29 10:36:26'),
(165, 'অর্জুন হার্ট কেয়ার – (Arjun Powder) 500GM', 'অর্জুন-হার্ট-কেয়ার-–-(arjun-powder)-500gm-174', 14, 0, NULL, NULL, 'P0165', 500, 1200, 690, 1000, NULL, NULL, '<p data-start=\"221\" data-end=\"488\"><strong data-start=\"221\" data-end=\"252\">অর্জুন গুড়া (Arjun Powder)</strong> অর্জুন গাছের ছাল থেকে তৈরি প্রাকৃতিক গুঁড়ো, যা বহু শতাব্দী ধরে হার্ট এবং শরীরের অন্যান্য গুরুত্বপূর্ণ অঙ্গের সুস্থতার জন্য ব্যবহৃত হয়ে আসছে। এটি একটি শক্তিশালী হের্বাল সাপ্লিমেন্ট, যা প্রাকৃতিকভাবে শরীরকে শক্তি ও সুরক্ষা প্রদান করে।</p>\r\n<h3 data-start=\"490\" data-end=\"517\">প্রধান বৈশিষ্ট্যসমূহ:</h3>\r\n<ul data-start=\"518\" data-end=\"1011\">\r\n<li data-start=\"518\" data-end=\"585\">\r\n<p data-start=\"520\" data-end=\"585\"><strong data-start=\"520\" data-end=\"548\">শতভাগ খাঁটি ও প্রাকৃতিক:</strong> কোনো কেমিক্যাল বা প্রিজারভেটিভ নেই</p>\r\n</li>\r\n<li data-start=\"586\" data-end=\"691\">\r\n<p data-start=\"588\" data-end=\"691\"><strong data-start=\"588\" data-end=\"615\">হৃদরোগ প্রতিরোধে সহায়ক:</strong> অর্জুন গুড়া হৃদপিণ্ডের কার্যক্ষমতা বৃদ্ধি করে, রক্তচাপ নিয়ন্ত্রণে সহায়ক</p>\r\n</li>\r\n<li data-start=\"692\" data-end=\"762\">\r\n<p data-start=\"694\" data-end=\"762\"><strong data-start=\"694\" data-end=\"724\">হজম ও লিভারের জন্য উপকারী:</strong> পেট ও লিভারের কার্যক্ষমতা উন্নত করে</p>\r\n</li>\r\n<li data-start=\"763\" data-end=\"858\">\r\n<p data-start=\"765\" data-end=\"858\"><strong data-start=\"765\" data-end=\"797\">অ্যাজমা ও শ্বাসকষ্টে সহায়ক:</strong> শ্বাসনালীকে সুস্থ রাখে এবং ফুসফুসের কার্যক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"859\" data-end=\"935\">\r\n<p data-start=\"861\" data-end=\"935\"><strong data-start=\"861\" data-end=\"878\">ত্বকের যত্নে:</strong> অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ, ত্বককে সুস্থ ও উজ্জ্বল রাখে</p>\r\n</li>\r\n<li data-start=\"936\" data-end=\"1011\">\r\n<p data-start=\"938\" data-end=\"1011\"><strong data-start=\"938\" data-end=\"969\">ক্যান্সার প্রতিরোধে সহায়ক:</strong> শরীরকে ফ্রি র‍্যাডিক্যাল থেকে রক্ষা করে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1013\" data-end=\"1031\">ব্যবহারবিধি:</h3>\r\n<ul data-start=\"1032\" data-end=\"1244\">\r\n<li data-start=\"1032\" data-end=\"1119\">\r\n<p data-start=\"1034\" data-end=\"1119\">এক চা চামচ অর্জুন গুড়া গরম পানির সঙ্গে মিশিয়ে খাওয়া যেতে পারে</p>\r\n</li>\r\n<li data-start=\"1120\" data-end=\"1184\">\r\n<p data-start=\"1122\" data-end=\"1184\">&nbsp;অন্যান্য হেলদি ড্রিঙ্কে মিশিয়ে নিতে পারেন</p>\r\n</li>\r\n<li data-start=\"1185\" data-end=\"1244\">\r\n<p data-start=\"1187\" data-end=\"1244\">কারি বা হের্বাল ডিশে যোগ করা সম্ভব</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1246\" data-end=\"1282\">কেন Parents Food অর্জুন গুড়া?</h3>\r\n<ul data-start=\"1283\" data-end=\"1442\">\r\n<li data-start=\"1283\" data-end=\"1312\">\r\n<p data-start=\"1285\" data-end=\"1312\">খাঁটি, প্রাকৃতিক ও নিরাপদ</p>\r\n</li>\r\n<li data-start=\"1313\" data-end=\"1370\">\r\n<p data-start=\"1315\" data-end=\"1370\">হার্ট ও শরীরের অন্যান্য অঙ্গের সুস্থতা রক্ষায় কার্যকর</p>\r\n</li>\r\n<li data-start=\"1371\" data-end=\"1442\">\r\n<p data-start=\"1373\" data-end=\"1442\">দৈনন্দিন স্বাস্থ্যের জন্য সহজলভ্য এবং বহুমুখী ব্যবহারের জন্য উপযোগী</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1444\" data-end=\"1539\">🌟 <strong data-start=\"1447\" data-end=\"1537\">প্রাকৃতিক উপায়ে হৃদ্য স্বাস্থ্য রক্ষার জন্য আজই অর্ডার করুন Parents Food অর্জুন গুড়া।</strong></p>', NULL, 1, 0, NULL, 1, '2025-08-17 18:49:47', '2025-08-29 10:32:04'),
(166, 'কালোজিরা (Kalojira) – 500G', 'কালোজিরা-(kalojira)-–-500g-174', 14, 0, NULL, NULL, 'P0166', 300, 700, 490, 1000, NULL, NULL, '<h2 data-start=\"117\" data-end=\"178\">Parents Food কালোজিরা – প্রাকৃতিক সুস্থতার গোপন রহস্য</h2>\r\n<p data-start=\"180\" data-end=\"405\"><strong data-start=\"180\" data-end=\"205\">কালোজিরা (Black Seed)</strong> প্রাকৃতিকভাবে সুস্থ থাকার জন্য একটি অসাধারণ উপাদান, যা হাজার বছরের বেশি সময় ধরে বিভিন্ন সংস্কৃতিতে ব্যবহৃত হয়ে আসছে। ছোট কালো বীজগুলোতে আছে প্রচুর পুষ্টি ও ঔষধি গুণ, যা শরীরের জন্য অত্যন্ত উপকারী।</p>\r\n<h3 data-start=\"407\" data-end=\"434\">প্রধান বৈশিষ্ট্যসমূহ:</h3>\r\n<ul data-start=\"435\" data-end=\"834\">\r\n<li data-start=\"435\" data-end=\"502\">\r\n<p data-start=\"437\" data-end=\"502\"><strong data-start=\"437\" data-end=\"465\">শতভাগ খাঁটি ও প্রাকৃতিক:</strong> কোনো কেমিক্যাল বা প্রিজারভেটিভ নেই</p>\r\n</li>\r\n<li data-start=\"503\" data-end=\"589\">\r\n<p data-start=\"505\" data-end=\"589\"><strong data-start=\"505\" data-end=\"524\">উচ্চ পুষ্টিমান:</strong> প্রোটিন, ফাইবার, অ্যান্টিঅক্সিডেন্ট ও স্বাস্থ্যকর চর্বি সমৃদ্ধ</p>\r\n</li>\r\n<li data-start=\"590\" data-end=\"658\">\r\n<p data-start=\"592\" data-end=\"658\"><strong data-start=\"592\" data-end=\"610\">ইমিউন বুস্টার:</strong> থাইমোকুইনোন উপাদান রোগ প্রতিরোধ ক্ষমতা বাড়ায়</p>\r\n</li>\r\n<li data-start=\"659\" data-end=\"755\">\r\n<p data-start=\"661\" data-end=\"755\"><strong data-start=\"661\" data-end=\"684\">অ্যান্টিঅক্সিডেন্ট:</strong> কোষকে ফ্রি র‍্যাডিক্যাল থেকে রক্ষা করে এবং বার্ধক্যজনিত প্রভাব কমায়</p>\r\n</li>\r\n<li data-start=\"756\" data-end=\"834\">\r\n<p data-start=\"758\" data-end=\"834\"><strong data-start=\"758\" data-end=\"778\">বহুমুখী ব্যবহার:</strong> রান্না, সালাদ, পেস্ট্রি, চা বা পানীয়ে ব্যবহার উপযোগী</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"836\" data-end=\"870\">পুষ্টিগুণ (প্রতি ১০০ গ্রাম):</h3>\r\n<ul data-start=\"871\" data-end=\"1058\">\r\n<li data-start=\"871\" data-end=\"888\">\r\n<p data-start=\"873\" data-end=\"888\">ক্যালোরি: ৩৪৫</p>\r\n</li>\r\n<li data-start=\"889\" data-end=\"910\">\r\n<p data-start=\"891\" data-end=\"910\">প্রোটিন: ২২ গ্রাম</p>\r\n</li>\r\n<li data-start=\"911\" data-end=\"931\">\r\n<p data-start=\"913\" data-end=\"931\">ফাইবার: ১৭ গ্রাম</p>\r\n</li>\r\n<li data-start=\"932\" data-end=\"980\">\r\n<p data-start=\"934\" data-end=\"980\">চর্বি: ১৫ গ্রাম (স্বাস্থ্যকর ফ্যাটি এসিড সহ)</p>\r\n</li>\r\n<li data-start=\"981\" data-end=\"1009\">\r\n<p data-start=\"983\" data-end=\"1009\">কার্বোহাইড্রেট: ৪৪ গ্রাম</p>\r\n</li>\r\n<li data-start=\"1010\" data-end=\"1058\">\r\n<p data-start=\"1012\" data-end=\"1058\">অ্যান্টিঅক্সিডেন্ট: উচ্চ মাত্রায় থাইমোকুইনোন</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1060\" data-end=\"1085\">স্বাস্থ্য উপকারিতা:</h3>\r\n<ol data-start=\"1086\" data-end=\"1257\">\r\n<li data-start=\"1086\" data-end=\"1114\">\r\n<p data-start=\"1089\" data-end=\"1114\">হৃদরোগ প্রতিরোধে সহায়তা</p>\r\n</li>\r\n<li data-start=\"1115\" data-end=\"1146\">\r\n<p data-start=\"1118\" data-end=\"1146\">রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি</p>\r\n</li>\r\n<li data-start=\"1147\" data-end=\"1184\">\r\n<p data-start=\"1150\" data-end=\"1184\">চুল ও ত্বকের স্বাস্থ্য উন্নত করে</p>\r\n</li>\r\n<li data-start=\"1185\" data-end=\"1213\">\r\n<p data-start=\"1188\" data-end=\"1213\">হজম প্রক্রিয়া উন্নত করে</p>\r\n</li>\r\n<li data-start=\"1214\" data-end=\"1257\">\r\n<p data-start=\"1217\" data-end=\"1257\">রক্তে শর্করার মাত্রা নিয়ন্ত্রণে সহায়ক</p>\r\n</li>\r\n</ol>\r\n<h3 data-start=\"1259\" data-end=\"1277\">ব্যবহারবিধি:</h3>\r\n<ul data-start=\"1278\" data-end=\"1422\">\r\n<li data-start=\"1278\" data-end=\"1328\">\r\n<p data-start=\"1280\" data-end=\"1328\">রান্নায়: ভাত, সালাদ, পনির বা মিষ্টিতে ব্যবহার</p>\r\n</li>\r\n<li data-start=\"1329\" data-end=\"1379\">\r\n<p data-start=\"1331\" data-end=\"1379\">তেল হিসেবে: সরাসরি খাওয়া বা চুল ও ত্বকে প্রয়োগ</p>\r\n</li>\r\n<li data-start=\"1380\" data-end=\"1422\">\r\n<p data-start=\"1382\" data-end=\"1422\">চা বা পানীয়ে: প্রাকৃতিক ডিটক্স হিসেবে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1424\" data-end=\"1456\">কেন Parents Food কালোজিরা?</h3>\r\n<ul data-start=\"1457\" data-end=\"1580\">\r\n<li data-start=\"1457\" data-end=\"1478\">\r\n<p data-start=\"1459\" data-end=\"1478\">খাঁটি ও প্রাকৃতিক</p>\r\n</li>\r\n<li data-start=\"1479\" data-end=\"1516\">\r\n<p data-start=\"1481\" data-end=\"1516\">স্বাস্থ্যকর জীবনযাপনের জন্য আদর্শ</p>\r\n</li>\r\n<li data-start=\"1517\" data-end=\"1580\">\r\n<p data-start=\"1519\" data-end=\"1580\">বহুমুখী ব্যবহার: রান্না, স্বাস্থ্যসেবা, স্কিন ও হেয়ার কেয়ার</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1582\" data-end=\"1682\">🌟 <strong data-start=\"1585\" data-end=\"1680\">আজই অর্ডার করুন এবং প্রাকৃতিকভাবে আপনার স্বাস্থ্যকে সমৃদ্ধ করুন Parents Food কালোজিরা দিয়ে।</strong></p>', NULL, 1, 0, NULL, 1, '2025-08-17 18:52:22', '2025-08-29 10:28:03'),
(167, 'প্রিমিয়াম ঘি (Ghee) – 1KG', 'প্রিমিয়াম-ঘি-(ghee)-–-1kg-174', 14, 0, NULL, NULL, 'P0167', 1500, 2300, 1990, 1000, NULL, NULL, '<div class=\"description tab-content details-action-box\" id=\"description\" style=\"margin: 22px 0px 0px 12px; padding: 15px; border: 0px; background: rgb(241, 241, 241); border-radius: 5px;\"><h2 data-start=\"143\" data-end=\"193\">🧈 খাঁটি গরুর দুধ থেকে তৈরি ঘি – Parents Food</h2><p data-start=\"195\" data-end=\"427\">খাঁটি গরুর দুধ থেকে তৈরি <strong data-start=\"220\" data-end=\"239\">Parents Food ঘি</strong> আপনার প্রতিদিনের রান্না ও খাবারে যোগ করবে বিশেষ স্বাদ ও পুষ্টিগুণ। এটি সম্পূর্ণ প্রাকৃতিক এবং কোনো কৃত্রিম উপাদান ছাড়া তৈরি, যা আপনার নিত্যদিনের খাবারের স্বাদ ও পুষ্টি বৃদ্ধিতে সহায়ক।</p><h3 data-start=\"429\" data-end=\"448\">ঘির উপকারিতা:</h3><ol data-start=\"449\" data-end=\"1001\">\r\n<li data-start=\"449\" data-end=\"511\">\r\n<p data-start=\"452\" data-end=\"511\">হজম প্রক্রিয়া উন্নত করে এবং অন্ত্রের স্বাস্থ্য রক্ষা করে</p>\r\n</li>\r\n<li data-start=\"512\" data-end=\"564\">\r\n<p data-start=\"515\" data-end=\"564\">ত্বকের আর্দ্রতা ধরে রাখে ও উজ্জ্বলতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"565\" data-end=\"626\">\r\n<p data-start=\"568\" data-end=\"626\">শরীরকে তাৎক্ষণিক শক্তি ও দীর্ঘস্থায়ী এনার্জি প্রদান করে</p>\r\n</li>\r\n<li data-start=\"627\" data-end=\"684\">\r\n<p data-start=\"630\" data-end=\"684\">ভিটামিন এ, ডি, ই, এবং কে রোগ প্রতিরোধ ক্ষমতা বাড়ায়</p>\r\n</li>\r\n<li data-start=\"685\" data-end=\"729\">\r\n<p data-start=\"688\" data-end=\"729\">পরিমিত পরিমাণে সেবন হার্টের জন্য উপকারী</p>\r\n</li>\r\n<li data-start=\"730\" data-end=\"789\">\r\n<p data-start=\"733\" data-end=\"789\">স্বাস্থ্যকর ফ্যাট মস্তিষ্কের কার্যক্ষমতা বাড়াতে সহায়ক</p>\r\n</li>\r\n<li data-start=\"790\" data-end=\"838\">\r\n<p data-start=\"793\" data-end=\"838\">জয়েন্টের প্রদাহ কমায় ও ব্যথা উপশমে সহায়ক</p>\r\n</li>\r\n<li data-start=\"839\" data-end=\"887\">\r\n<p data-start=\"842\" data-end=\"887\">মেটাবলিজম বৃদ্ধি করে ওজন নিয়ন্ত্রণে সহায়ক</p>\r\n</li>\r\n<li data-start=\"888\" data-end=\"958\">\r\n<p data-start=\"891\" data-end=\"958\">অ্যান্টিঅক্সিডেন্টে সমৃদ্ধ, শরীর থেকে টক্সিন বের করতে সাহায্য করে</p>\r\n</li>\r\n<li data-start=\"959\" data-end=\"1001\">\r\n<p data-start=\"963\" data-end=\"1001\">যে কোনো খাবারের স্বাদ ও গন্ধ বাড়ায়</p>\r\n</li>\r\n</ol><h3 data-start=\"1003\" data-end=\"1035\">কেন Parents Food ঘি অনন্য?</h3><ul data-start=\"1036\" data-end=\"1266\">\r\n<li data-start=\"1036\" data-end=\"1064\">\r\n<p data-start=\"1038\" data-end=\"1064\">খাঁটি গরুর দুধ থেকে তৈরি</p>\r\n</li>\r\n<li data-start=\"1065\" data-end=\"1098\">\r\n<p data-start=\"1067\" data-end=\"1098\">আসল স্বাদ ও পুষ্টি বজায় রাখে</p>\r\n</li>\r\n<li data-start=\"1099\" data-end=\"1129\">\r\n<p data-start=\"1101\" data-end=\"1129\">খাবারে যোগ করে বাড়তি স্বাদ</p>\r\n</li>\r\n<li data-start=\"1130\" data-end=\"1165\">\r\n<p data-start=\"1132\" data-end=\"1165\">ভিটামিন এ, ডি, ই, এবং কে সমৃদ্ধ</p>\r\n</li>\r\n<li data-start=\"1166\" data-end=\"1193\">\r\n<p data-start=\"1168\" data-end=\"1193\">মান ও বিশুদ্ধতা নিশ্চিত</p>\r\n</li>\r\n<li data-start=\"1194\" data-end=\"1223\">\r\n<p data-start=\"1196\" data-end=\"1223\">কোনো রাসায়নিক উপাদান নেই</p>\r\n</li>\r\n<li data-start=\"1224\" data-end=\"1266\">\r\n<p data-start=\"1226\" data-end=\"1266\">রান্না, ভাজা ও মিষ্টিতে ব্যবহার উপযোগী</p>\r\n</li>\r\n</ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1268\" data-end=\"1360\">🌟 <strong data-start=\"1271\" data-end=\"1358\">Parents Food ঘি – প্রাকৃতিক, স্বাস্থ্যকর ও সুস্বাদু আপনার প্রতিদিনের খাবারের সঙ্গী।</strong></p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"></p></div><div class=\"tab-content details-action-box\" id=\"writeReview\" style=\"margin: 20px 0px 0px 12px; padding: 30px 15px; border: 0px; border-radius: 5px; color: rgb(33, 37, 41); font-family: Roboto, sans-serif;\"><div class=\"container\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 12px; border: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; width: 853.987px; max-width: 1380px;\"><div class=\"row\" style=\"margin: 0px -12px; padding: 0px; border: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0;\"><div class=\"col-sm-12\" style=\"margin: 0px; padding: 0px 12px; border: 0px; width: 853.987px;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(221, 221, 221); border-left-color: initial; border-image: initial; display: flex;\"><div class=\"title\" style=\"margin: 0px; padding: 0px; border: 0px; flex: 1 1 auto;\"></div></div></div></div></div></div>', NULL, 1, 0, NULL, 1, '2025-08-17 18:55:18', '2025-08-29 10:25:41'),
(168, 'হানি নাটস ( Honey Nuts )', 'হানি-নাটস-(-honey-nuts-)-174', 14, 0, NULL, NULL, 'P0168', 700, 1500, 1200, 1000, NULL, NULL, '<div class=\"description tab-content details-action-box\" id=\"description\" style=\"margin: 22px 0px 0px 12px; padding: 15px; border: 0px; background: rgb(241, 241, 241); border-radius: 5px;\"><p data-start=\"227\" data-end=\"510\"><strong data-start=\"227\" data-end=\"242\">মধুময় বাদাম</strong> হলো এক প্রাকৃতিক, স্বাস্থ্যকর এবং সুস্বাদু খাবার, যা প্রতিদিনের স্ন্যাকিং-এর জন্য আদর্শ। খাঁটি মধুর সুমিষ্টতা এবং প্রিমিয়াম মানের বাদামের পুষ্টিগুণ একত্রিত করে তৈরি করা হয়েছে এই অনন্য স্ন্যাক। এটি শুধু মুখরোচক নয়, বরং স্বাস্থ্যকর জীবনযাত্রার অংশ হিসেবেও অসাধারণ।</p><h3 data-start=\"512\" data-end=\"539\">প্রধান বৈশিষ্ট্যসমূহ:</h3><ul data-start=\"540\" data-end=\"812\">\r\n<li data-start=\"540\" data-end=\"605\">\r\n<p data-start=\"542\" data-end=\"605\"><strong data-start=\"542\" data-end=\"561\">শতভাগ প্রাকৃতিক</strong> – কোনো কৃত্রিম সংযোজন বা প্রিজারভেটিভ নেই</p>\r\n</li>\r\n<li data-start=\"606\" data-end=\"669\">\r\n<p data-start=\"608\" data-end=\"669\"><strong data-start=\"608\" data-end=\"631\">সুমিষ্ট মধুর মিশ্রণ</strong> – প্রতিটি বাদাম মোড়ানো খাঁটি মধুতে</p>\r\n</li>\r\n<li data-start=\"670\" data-end=\"757\">\r\n<p data-start=\"672\" data-end=\"757\"><strong data-start=\"672\" data-end=\"690\">উচ্চ পুষ্টিগুণ</strong> – প্রোটিন, ফাইবার, স্বাস্থ্যকর চর্বি ও অ্যান্টিঅক্সিডেন্টে ভরপুর</p>\r\n</li>\r\n<li data-start=\"758\" data-end=\"812\">\r\n<p data-start=\"760\" data-end=\"812\"><strong data-start=\"760\" data-end=\"790\">নিরামিষভোজী ও গ্লুটেনমুক্ত</strong> – সকলের জন্য নিরাপদ</p>\r\n</li>\r\n</ul><h3 data-start=\"814\" data-end=\"839\">স্বাস্থ্য উপকারিতা:</h3><ul data-start=\"840\" data-end=\"985\">\r\n<li data-start=\"840\" data-end=\"867\">\r\n<p data-start=\"842\" data-end=\"867\">হৃদরোগ প্রতিরোধে সহায়ক</p>\r\n</li>\r\n<li data-start=\"868\" data-end=\"904\">\r\n<p data-start=\"870\" data-end=\"904\">দীর্ঘ সময় ধরে এনার্জি বজায় রাখে</p>\r\n</li>\r\n<li data-start=\"905\" data-end=\"954\">\r\n<p data-start=\"907\" data-end=\"954\">অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ, বয়সজনিত ঝুঁকি কমায়</p>\r\n</li>\r\n<li data-start=\"955\" data-end=\"985\">\r\n<p data-start=\"957\" data-end=\"985\">ওজন নিয়ন্ত্রণে সাহায্য করে</p>\r\n</li>\r\n</ul><h3 data-start=\"987\" data-end=\"1011\">ব্যবহার ও সংরক্ষণ:</h3><ul data-start=\"1012\" data-end=\"1191\">\r\n<li data-start=\"1012\" data-end=\"1048\">\r\n<p data-start=\"1014\" data-end=\"1048\">সরাসরি স্ন্যাক হিসেবে খেতে পারেন</p>\r\n</li>\r\n<li data-start=\"1049\" data-end=\"1113\">\r\n<p data-start=\"1051\" data-end=\"1113\">দই, সালাদ, ওটস বা স্মুদি বোলের সঙ্গে মিশিয়ে উপভোগ করতে পারেন</p>\r\n</li>\r\n<li data-start=\"1114\" data-end=\"1154\">\r\n<p data-start=\"1116\" data-end=\"1154\">আউটডোর ট্রিপ বা টিফিনের জন্য উপযুক্ত</p>\r\n</li>\r\n<li data-start=\"1155\" data-end=\"1191\">\r\n<p data-start=\"1157\" data-end=\"1191\">শীতল ও শুষ্ক স্থানে সংরক্ষণ করুন</p>\r\n</li>\r\n</ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1193\" data-end=\"1263\">🌟 <strong data-start=\"1196\" data-end=\"1261\">মধুময় বাদাম – সুস্বাদু ও স্বাস্থ্যকর স্ন্যাকের পারফেক্ট পছন্দ</strong></p><p style=\"color: rgb(0, 0, 0); font-family: Roboto, sans-serif; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"></p></div><div class=\"tab-content details-action-box\" id=\"writeReview\" style=\"margin: 20px 0px 0px 12px; padding: 30px 15px; border: 0px; border-radius: 5px; color: rgb(33, 37, 41); font-family: Roboto, sans-serif;\"><div class=\"container\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px 12px; border: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; width: 853.987px; max-width: 1380px;\"><div class=\"row\" style=\"margin: 0px -12px; padding: 0px; border: 0px; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0;\"><div class=\"col-sm-12\" style=\"margin: 0px; padding: 0px 12px; border: 0px; width: 853.987px;\"><div class=\"section-head\" style=\"margin: 0px; padding: 0px 0px 10px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(221, 221, 221); border-left-color: initial; border-image: initial; display: flex;\"><div class=\"title\" style=\"margin: 0px; padding: 0px; border: 0px; flex: 1 1 auto;\"></div></div></div></div></div></div>', NULL, 1, 0, NULL, 1, '2025-08-17 18:56:34', '2025-08-29 10:18:24'),
(169, 'কাঠবাদাম (Almond) – 1KG', 'কাঠবাদাম-(almond)-–-1kg-174', 14, 0, NULL, NULL, 'P0169', 1200, 1800, 1500, 1000, NULL, NULL, '<h3 data-start=\"135\" data-end=\"203\">কাঠ বাদাম – Parents Food এর পক্ষ থেকে প্রিমিয়াম মানের নিশ্চয়তা</h3>\r\n<p data-start=\"205\" data-end=\"446\">কাঠ বাদাম একটি জনপ্রিয় এবং স্বাস্থ্যকর খাবার। এতে থাকা স্বাস্থ্যকর ফ্যাট শরীরের জন্য উপকারী এবং নিয়মিত খেলে এটি পুষ্টির চাহিদা পূরণ করে। <strong data-start=\"344\" data-end=\"360\">Parents Food</strong> এর প্রিমিয়াম কাঠ বাদাম সম্পূর্ণ প্রাকৃতিক এবং সর্বোচ্চ গুণগত মানের নিশ্চয়তা দেয়।</p>\r\n<h4 data-start=\"448\" data-end=\"481\">কেন আমাদের কাঠ বাদাম সেরা?</h4>\r\n<ul data-start=\"482\" data-end=\"653\">\r\n<li data-start=\"482\" data-end=\"524\">\r\n<p data-start=\"484\" data-end=\"524\">ধুলোবালি, পোকামাকড় ও ভাঙা বাদাম মুক্ত</p>\r\n</li>\r\n<li data-start=\"525\" data-end=\"560\">\r\n<p data-start=\"527\" data-end=\"560\">বিশ্বস্ত উৎস থেকে সংগ্রহ করা হয়</p>\r\n</li>\r\n<li data-start=\"561\" data-end=\"598\">\r\n<p data-start=\"563\" data-end=\"598\">বাছাইকৃত বাদাম প্যাকেটজাত করা হয়</p>\r\n</li>\r\n<li data-start=\"599\" data-end=\"653\">\r\n<p data-start=\"601\" data-end=\"653\">ভিটামিন ও খনিজ সমৃদ্ধ, যা শরীরের জন্য গুরুত্বপূর্ণ</p>\r\n</li>\r\n</ul>\r\n<h4 data-start=\"655\" data-end=\"704\">কাঠ বাদামের পুষ্টিগুণ ও স্বাস্থ্য উপকারিতা</h4>\r\n<ul data-start=\"705\" data-end=\"1248\">\r\n<li data-start=\"705\" data-end=\"777\">\r\n<p data-start=\"707\" data-end=\"777\">এতে রয়েছে ক্যালসিয়াম, পটাসিয়াম, ম্যাগনেসিয়াম, ফসফরাস ও ভিটামিন ই</p>\r\n</li>\r\n<li data-start=\"778\" data-end=\"853\">\r\n<p data-start=\"780\" data-end=\"853\">স্মৃতিশক্তি ও মানসিক দক্ষতার উন্নতি ঘটায়, বিশেষ করে শিশুদের জন্য উপকারী</p>\r\n</li>\r\n<li data-start=\"854\" data-end=\"922\">\r\n<p data-start=\"856\" data-end=\"922\">খারাপ কোলেস্টেরল কমাতে ও হার্ট অ্যাটাকের ঝুঁকি কমাতে সাহায্য করে</p>\r\n</li>\r\n<li data-start=\"923\" data-end=\"966\">\r\n<p data-start=\"925\" data-end=\"966\">ম্যাগনেসিয়াম উচ্চ রক্তচাপ কমাতে সহায়ক</p>\r\n</li>\r\n<li data-start=\"967\" data-end=\"1022\">\r\n<p data-start=\"969\" data-end=\"1022\">খাদ্যআঁশ হজমশক্তি উন্নতি করে ও কোষ্ঠকাঠিন্য দূর করে</p>\r\n</li>\r\n<li data-start=\"1023\" data-end=\"1079\">\r\n<p data-start=\"1025\" data-end=\"1079\">ক্ষুধা কমাতে সাহায্য করে, ফলে ওজন নিয়ন্ত্রণ সহজ হয়</p>\r\n</li>\r\n<li data-start=\"1080\" data-end=\"1149\">\r\n<p data-start=\"1082\" data-end=\"1149\">স্বাস্থ্যকর ফ্যাট ও অ্যান্টিঅক্সিডেন্ট হার্টের সুস্থতা বজায় রাখে</p>\r\n</li>\r\n<li data-start=\"1150\" data-end=\"1185\">\r\n<p data-start=\"1152\" data-end=\"1185\">রক্তের গ্লুকোজ নিয়ন্ত্রণে রাখে</p>\r\n</li>\r\n<li data-start=\"1186\" data-end=\"1248\">\r\n<p data-start=\"1188\" data-end=\"1248\">ভিটামিন ই ও অ্যান্টিঅক্সিডেন্ট ত্বকের উজ্জ্বলতা বজায় রাখে</p>\r\n</li>\r\n</ul>\r\n<h4 data-start=\"1250\" data-end=\"1274\">ব্যবহার ও সংরক্ষণ</h4>\r\n<ul data-start=\"1275\" data-end=\"1437\">\r\n<li data-start=\"1275\" data-end=\"1344\">\r\n<p data-start=\"1277\" data-end=\"1344\">সরাসরি স্ন্যাক হিসেবে খেতে পারেন অথবা ডেজার্টে ব্যবহার করতে পারেন</p>\r\n</li>\r\n<li data-start=\"1345\" data-end=\"1396\">\r\n<p data-start=\"1347\" data-end=\"1396\">সালাদ, সিরিয়াল এবং বেকিংয়ে যোগ করে নিতে পারেন</p>\r\n</li>\r\n<li data-start=\"1397\" data-end=\"1437\">\r\n<p data-start=\"1399\" data-end=\"1437\">শীতল ও শুষ্ক স্থানে সংরক্ষণ করতে হবে</p></li></ul>', NULL, 1, 0, NULL, 1, '2025-08-17 18:58:14', '2025-08-29 10:12:19'),
(170, 'Moringa Powder (মরিঙ্গা পাউডার) – 450gm', 'moringa-powder-(মরিঙ্গা-পাউডার)-–-450gm-174', 14, 0, NULL, NULL, 'P0170', 500, 850, 750, 1000, NULL, NULL, '<h2 data-start=\"176\" data-end=\"233\"><b>মরিঙ্গা পাউডার – স্বাস্থ্য ও পুষ্টির এক অনন্য উৎস</b></h2>\r\n<p data-start=\"235\" data-end=\"568\"><strong data-start=\"235\" data-end=\"270\">মরিঙ্গা পাউডার (Moringa Powder)</strong> পৃথিবীর অন্যতম পুষ্টিকর ও সুপারফুড হিসেবে পরিচিত। এটি মরিঙ্গা ওলিফেরা গাছের পাতা থেকে তৈরি, যা বহু শতাব্দী ধরে ভেষজ চিকিৎসায় ব্যবহৃত হয়ে আসছে। প্রাকৃতিক ভিটামিন, খনিজ, প্রোটিন, ফাইবার ও অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ এই সুপারফুড শরীরকে ভিতর থেকে সুস্থ রাখে, শক্তি জোগায় এবং রোগ প্রতিরোধ ক্ষমতা বাড়ায়।</p>\r\n<h3 data-start=\"570\" data-end=\"611\">✅ মরিঙ্গা পাউডারের প্রধান উপকারিতা:</h3>\r\n<ul data-start=\"612\" data-end=\"984\">\r\n<li data-start=\"612\" data-end=\"646\">\r\n<p data-start=\"614\" data-end=\"646\">রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে</p>\r\n</li>\r\n<li data-start=\"647\" data-end=\"689\">\r\n<p data-start=\"649\" data-end=\"689\">শরীরকে উদ্দীপিত করে ও ক্লান্তি দূর করে</p>\r\n</li>\r\n<li data-start=\"690\" data-end=\"749\">\r\n<p data-start=\"692\" data-end=\"749\">রক্তে শর্করা নিয়ন্ত্রণ করে (ডায়াবেটিস নিয়ন্ত্রণে সহায়ক)</p>\r\n</li>\r\n<li data-start=\"750\" data-end=\"803\">\r\n<p data-start=\"752\" data-end=\"803\">হাড় ও দাঁত মজবুত করে (ক্যালসিয়াম ও ফসফরাস সমৃদ্ধ)</p>\r\n</li>\r\n<li data-start=\"804\" data-end=\"844\">\r\n<p data-start=\"806\" data-end=\"844\">হজমশক্তি উন্নত করে ও শরীর ডিটক্স করে</p>\r\n</li>\r\n<li data-start=\"845\" data-end=\"890\">\r\n<p data-start=\"847\" data-end=\"890\">দৃষ্টিশক্তি বৃদ্ধি করে (ভিটামিন এ সমৃদ্ধ)</p>\r\n</li>\r\n<li data-start=\"891\" data-end=\"942\">\r\n<p data-start=\"893\" data-end=\"942\">ত্বককে উজ্জ্বল, সতেজ ও বার্ধক্য প্রতিরোধে সহায়ক</p>\r\n</li>\r\n<li data-start=\"943\" data-end=\"984\">\r\n<p data-start=\"945\" data-end=\"984\">এন্টি-ক্যান্সার এজেন্ট হিসেবে কাজ করে</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"986\" data-end=\"1021\">✅ পুষ্টিগুণ (প্রতি ১০ গ্রাম):</h3>\r\n<ul data-start=\"1022\" data-end=\"1150\">\r\n<li data-start=\"1022\" data-end=\"1044\">\r\n<p data-start=\"1024\" data-end=\"1044\">প্রোটিন: ২.৫ গ্রাম</p>\r\n</li>\r\n<li data-start=\"1045\" data-end=\"1064\">\r\n<p data-start=\"1047\" data-end=\"1064\">ভিটামিন A, C, E</p>\r\n</li>\r\n<li data-start=\"1065\" data-end=\"1095\">\r\n<p data-start=\"1067\" data-end=\"1095\">ক্যালসিয়াম, আয়রন, পটাসিয়াম</p>\r\n</li>\r\n<li data-start=\"1096\" data-end=\"1127\">\r\n<p data-start=\"1098\" data-end=\"1127\">অ্যান্টিঅক্সিডেন্ট ও ফাইবার</p>\r\n</li>\r\n<li data-start=\"1128\" data-end=\"1150\">\r\n<p data-start=\"1130\" data-end=\"1150\">ক্যালোরি: মাত্র ৩০</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1152\" data-end=\"1172\">✅ ব্যবহারবিধি:</h3>\r\n<ul data-start=\"1173\" data-end=\"1342\">\r\n<li data-start=\"1173\" data-end=\"1222\">\r\n<p data-start=\"1175\" data-end=\"1222\"><strong data-start=\"1175\" data-end=\"1192\">স্মুদি ও জুসে</strong> – ১ চা চামচ মিশিয়ে পান করুন</p>\r\n</li>\r\n<li data-start=\"1223\" data-end=\"1278\">\r\n<p data-start=\"1225\" data-end=\"1278\"><strong data-start=\"1225\" data-end=\"1236\">রান্নায়</strong> – স্যুপ, সালাদ বা কারিতে যোগ করতে পারেন</p>\r\n</li>\r\n<li data-start=\"1279\" data-end=\"1342\">\r\n<p data-start=\"1281\" data-end=\"1342\"><strong data-start=\"1281\" data-end=\"1295\">গরম পানিতে</strong> – সকালে ১ চা চামচ মিশিয়ে খেলে শরীর ডিটক্স হয়</p>\r\n</li>\r\n</ul>\r\n<h3 data-start=\"1344\" data-end=\"1378\">✅ কেন আমাদের মরিঙ্গা পাউডার?</h3>\r\n<ul data-start=\"1379\" data-end=\"1511\">\r\n<li data-start=\"1379\" data-end=\"1405\">\r\n<p data-start=\"1381\" data-end=\"1405\">১০০% খাঁটি ও প্রাকৃতিক</p>\r\n</li>\r\n<li data-start=\"1406\" data-end=\"1454\">\r\n<p data-start=\"1408\" data-end=\"1454\">কোনো কৃত্রিম রং, ফ্লেভার বা প্রিজারভেটিভ নেই</p>\r\n</li>\r\n<li data-start=\"1455\" data-end=\"1511\">\r\n<p data-start=\"1457\" data-end=\"1511\">পরিবেশবান্ধব প্রসেসিং ও উচ্চমানের পাতা থেকে প্রস্তুত</p></li></ul>', NULL, 1, 0, NULL, 1, '2025-08-17 18:59:26', '2025-08-29 10:05:14'),
(171, 'বিটরুট পাউডার (Beetroot Powder) 500GM', 'বিটরুট-পাউডার-(beetroot-powder)-500gm-174', 14, 0, NULL, NULL, 'P0171', 600, 1300, 1000, 1000, NULL, NULL, '<p data-pm-slice=\"0 0 []\">বিটরুট পাউডার তৈরি হয় সম্পূর্ণ প্রাকৃতিক বিট বা বিটরুট থেকে। এতে বিটের সব পুষ্টিগুণ অক্ষুণ্ণ থাকে, যা সহজেই বিভিন্ন খাবার, স্মুদি, জুস, স্যুপ বা সালাদে যোগ করা যায়। ভিটামিন সি, আয়রন, ক্যালসিয়াম, অ্যান্টিঅক্সিডেন্ট এবং প্রাকৃতিক নাইট্রেট সমৃদ্ধ এই বিটরুট পাউডার স্বাস্থ্য রক্ষার জন্য এক অসাধারণ উপাদান।</p><p></p><p>✅কেন বিটরুট পাউডার স্বাস্থ্যকর? </p><p>বিটরুট পাউডার (Beetroot Powder) আজকাল স্বাস্থ্য সচেতন ব্যক্তিদের মধ্যে বেশ জনপ্রিয় হয়ে উঠেছে। বিটরুট পাউডার হল বিটের শুকনো এবং গুঁড়া করা রূপ, যা শরীরের জন্য উপকারী বিভিন্ন পুষ্টিগুণে সমৃদ্ধ। এতে রয়েছে ভিটামিন সি, আয়রন, ক্যালসিয়াম, অ্যান্টিঅক্সিডেন্ট এবং প্রাকৃতিক নাইট্রেট যা আমাদের শারীরিক স্বাস্থ্য রক্ষায় সহায়ক। এই প্রাকৃতিক উপাদানগুলো রক্ত পরিশুদ্ধকরণ থেকে শুরু করে শক্তি বৃদ্ধিতে গুরুত্বপূর্ণ ভূমিকা পালন করে। সুস্বাদু এবং স্বাস্থ্যকর হওয়ায়, বিটরুট পাউডার খাবারে যোগ করার মাধ্যমে শরীরের জন্য নানা রকম উপকার পাওয়া যায়।</p><p></p><p>✅বিটরুট পাউডারের স্বাস্থ্য উপকারিতা :</p><p>1. নাইট্রেট রক্তনালী প্রসারিত করে, হৃদরোগের ঝুঁকি কমায়</p><p>2. ব্যায়ামের সময় শরীরের অক্সিজেন সরবরাহ বাড়ায়</p><p>3. অ্যান্টিঅক্সিডেন্ট ও বেটালেইন কোষ সুরক্ষিত রাখে</p><p>4. আয়রন ও ফোলেট লোহিত রক্তকণিকা বৃদ্ধি করে</p><p>5. ফাইবার অন্ত্র সক্রিয় রাখে, কোষ্ঠকাঠিন্য দূর করে</p><p>6. কম ক্যালোরি ও উচ্চ ফাইবার ক্ষুধা নিয়ন্ত্রণ করে</p><p>7. টক্সিন বের করে লিভারের কার্যকারিতা উন্নত করে</p><p>8. রক্তপ্রবাহ বাড়িয়ে স্মৃতিশক্তি উন্নত করে</p><p>9. ভিটামিন সি ও অ্যান্টিঅক্সিডেন্ট বলিরেখা কমায়</p><p>10. ফ্রি র‍্যাডিকাল থেকে কোষকে রক্ষা করে</p><p>✅ খাওয়ার নিয়ম:</p><p></p><p>1. প্রতিদিন ১–২ চা চামচ বিটরুট পাউডার খাওয়া নিরাপদ</p><p>2. সকালে বা ব্যায়ামের আগে খেলে সর্বাধিক উপকার পাওয়া যায়</p><p>3. স্মুদি, জুস, সালাদ বা যেকোনো খাবারে সহজে মিশিয়ে খাওয়া যায়</p>', NULL, 0, 0, NULL, 1, '2025-08-18 01:57:16', '2025-08-29 09:56:13'),
(172, 'লিচু ফুলের মধু ২ কেজি (Litchi Flower Honey 2kg)', 'লিচু-ফুলের-মধু-২-কেজি-(litchi-flower-honey-2kg)-176', 12, 0, NULL, NULL, 'P0172', 2300, 1800, 1200, 1000, NULL, NULL, '<p data-start=\"152\" data-end=\"432\">লিচু ফুলের মধু তার অনন্য স্বাদ, ঘ্রাণ ও অসাধারণ পুষ্টিগুণের জন্য বিশেষভাবে পরিচিত। মার্চ ও এপ্রিল মাসে সংগ্রহ করা এই মধুতে অন্যান্য ফুলের মধুর তুলনায় স্বাদ ও গন্ধ কিছুটা বেশি থাকে। ছোট শিশু থেকে শুরু করে বৃদ্ধ মা–বাবা, পরিবারের সবার জন্য এটি হতে পারে এক অনন্য স্বাস্থ্যকর উপহার।</p>\r\n<h4 data-start=\"434\" data-end=\"468\">✅ লিচু ফুলের মধুর উপকারিতা:</h4>\r\n<ul data-start=\"469\" data-end=\"936\">\r\n<li data-start=\"469\" data-end=\"534\">\r\n<p data-start=\"471\" data-end=\"534\">শরীরে তাৎক্ষণিক শক্তির যোগান দেয় (গ্লুকোজ ও ফ্রুক্টোজ সমৃদ্ধ)</p>\r\n</li>\r\n<li data-start=\"535\" data-end=\"583\">\r\n<p data-start=\"537\" data-end=\"583\">আয়রনের কারণে রক্তশূন্যতা দূর করতে সহায়তা করে</p>\r\n</li>\r\n<li data-start=\"584\" data-end=\"634\">\r\n<p data-start=\"586\" data-end=\"634\">রাতে ঘুমের আগে এক চা চামচ মধু খেলে ভালো ঘুম হয়</p>\r\n</li>\r\n<li data-start=\"635\" data-end=\"681\">\r\n<p data-start=\"637\" data-end=\"681\">হজমশক্তি বৃদ্ধি করে ও কোষ্ঠকাঠিন্য দূর করে</p>\r\n</li>\r\n<li data-start=\"682\" data-end=\"756\">\r\n<p data-start=\"684\" data-end=\"756\">অ্যান্টি-অক্সিডেন্ট ও অ্যান্টি-ভাইরাল উপাদান রোগ প্রতিরোধ ক্ষমতা বাড়ায়</p>\r\n</li>\r\n<li data-start=\"757\" data-end=\"811\">\r\n<p data-start=\"759\" data-end=\"811\">মুখগহ্বরের স্বাস্থ্য রক্ষা ও হাড়–দাঁতের গঠনে সহায়ক</p>\r\n</li>\r\n<li data-start=\"812\" data-end=\"867\">\r\n<p data-start=\"814\" data-end=\"867\">ব্রণ, একনি, একজিমা ও ত্বকের সমস্যা দূর করতে কার্যকর</p>\r\n</li>\r\n<li data-start=\"868\" data-end=\"936\">\r\n<p data-start=\"870\" data-end=\"936\">উচ্চ রক্তচাপ নিয়ন্ত্রণ ও হৃদপিণ্ডের স্বাস্থ্য রক্ষায় ভূমিকা রাখে</p>\r\n</li>\r\n</ul>\r\n<h4 data-start=\"938\" data-end=\"973\">✅ লিচু ফুলের মধুর পুষ্টিগুণ:</h4>\r\n<ul data-start=\"974\" data-end=\"1162\">\r\n<li data-start=\"974\" data-end=\"996\">\r\n<p data-start=\"976\" data-end=\"996\"><strong data-start=\"976\" data-end=\"990\">ফ্রুক্টোজ:</strong> ৪৮%</p>\r\n</li>\r\n<li data-start=\"997\" data-end=\"1017\">\r\n<p data-start=\"999\" data-end=\"1017\"><strong data-start=\"999\" data-end=\"1011\">গ্লুকোজ:</strong> ২৮%</p>\r\n</li>\r\n<li data-start=\"1018\" data-end=\"1035\">\r\n<p data-start=\"1020\" data-end=\"1035\"><strong data-start=\"1020\" data-end=\"1029\">পানি:</strong> ২৪%</p>\r\n</li>\r\n<li data-start=\"1036\" data-end=\"1106\">\r\n<p data-start=\"1038\" data-end=\"1106\">ভিটামিন বি-১, বি-২, বি-৩, বি-৪, বি-৬, সি, ই, কে ও ক্যারোটিন সমৃদ্ধ</p>\r\n</li>\r\n<li data-start=\"1107\" data-end=\"1162\">\r\n<p data-start=\"1109\" data-end=\"1162\">প্রোটিন, খনিজ লবণ, অ্যামিনো অ্যাসিড ও এনজাইম সমৃদ্ধ</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"1164\" data-end=\"1299\">&nbsp;স্বাদ, ঘ্রাণ ও পুষ্টিগুণে অনন্য এই লিচু ফুলের মধু শুধু সুস্বাদুই নয়, বরং শরীর ও ত্বকের জন্য এক পরিপূর্ণ প্রাকৃতিক স্বাস্থ্যসমাধান।</p>', NULL, 1, 0, NULL, 1, '2025-08-18 02:00:37', '2025-08-30 14:56:44');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(173, 'Chia Seeds- 2 kg ( চিয়া সিড )', 'chia-seeds--2-kg-(-চিয়া-সিড-)-174', 14, 0, NULL, NULL, 'P0173', 950, 1900, 1200, 1000, NULL, NULL, '<h3 data-start=\"138\" data-end=\"177\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\">চিয়া সিড হলো সুপারফুড। এতে দুধের চেয়ে ৫ গুণ বেশি ক্যালসিয়াম, কমলার চেয়ে ৭ গুণ বেশি ভিটামিন সি, আর স্যামন মাছের চেয়ে ৮ গুণ বেশি ওমেগা-৩ থাকে। জানুন চিয়া সিডের উপকারিতা, পুষ্টিগুণ ও খাওয়ার নিয়ম।<br></p></h3><h2 data-start=\"515\" data-end=\"532\" style=\"margin-top: 0px; margin-bottom: 15px; line-height: 1.2; color: rgb(0, 0, 0); font-size: 18px; font-family: Poppins, sans-serif; border-bottom: 1px solid rgb(221, 221, 221); padding-bottom: 10px;\"><b>চিয়া সিড কী?</b><br><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">চিয়া বীজ (Chia Seeds) হচ্ছে&nbsp;</span><span data-start=\"562\" data-end=\"582\" style=\"font-family: Roboto, sans-serif; font-size: 14px; font-weight: 600;\">Salvia Hispanica</span><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;নামক মিন্ট প্রজাতির উদ্ভিদের বীজ। এটি মূলত&nbsp;</span><span data-start=\"626\" data-end=\"669\" style=\"font-family: Roboto, sans-serif; font-size: 14px; font-weight: 600;\">মেক্সিকো ও মধ্য আমেরিকার মরুভূমি অঞ্চলে</span><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">&nbsp;জন্মায়। প্রাচীন অ্যাজটেক জাতি এটি নিয়মিত খেত। ছোট কালো দানার মতো দেখতে এই বীজে প্রচুর পুষ্টি উপাদান রয়েছে। প্রতি ১০০ গ্রাম চিয়া সিডে থাকে প্রায়&nbsp;</span><span data-start=\"820\" data-end=\"836\" style=\"font-family: Roboto, sans-serif; font-size: 14px; font-weight: 600;\">৪৮৬ ক্যালোরি</span><span style=\"font-family: Roboto, sans-serif; font-size: 14px;\">।</span></h2><h2 data-start=\"846\" data-end=\"879\" style=\"margin-top: 0px; margin-bottom: 15px; line-height: 1.2; color: rgb(0, 0, 0); font-size: 18px; font-family: Poppins, sans-serif; border-bottom: 1px solid rgb(221, 221, 221); padding-bottom: 10px;\"><br><b>চিয়া সিডের অসাধারণ উপকারিতা</b></h2><h3 data-start=\"138\" data-end=\"177\"><p data-start=\"533\" data-end=\"778\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\"></p><p data-start=\"881\" data-end=\"1288\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\">✅ হৃদরোগের ঝুঁকি ও ক্ষতিকর কোলেস্টেরল কমায়।<br data-start=\"924\" data-end=\"927\">✅ ওজন কমাতে সাহায্য করে।<br data-start=\"951\" data-end=\"954\">✅ রোগ প্রতিরোধ ক্ষমতা বাড়ায়।<br data-start=\"984\" data-end=\"987\">✅ শক্তি ও কর্মক্ষমতা বৃদ্ধি করে।<br data-start=\"1019\" data-end=\"1022\">✅ ব্লাড সুগার নিয়ন্ত্রণে রাখে (ডায়াবেটিস নিয়ন্ত্রণে সহায়ক)।<br data-start=\"1084\" data-end=\"1087\">✅ হাড় ও দাঁতের স্বাস্থ্য রক্ষা করে।<br data-start=\"1122\" data-end=\"1125\">✅ মলাশয় পরিষ্কার করে ও কোলন ক্যান্সারের ঝুঁকি কমায়।<br data-start=\"1177\" data-end=\"1180\">✅ শরীর থেকে টক্সিন বের করে দেয়।<br data-start=\"1211\" data-end=\"1214\">✅ প্রদাহ কমায় ও ভাল ঘুম হতে সাহায্য করে।<br data-start=\"1254\" data-end=\"1257\">✅ ত্বক, চুল ও নখ সুন্দর রাখে।<br><br></p><p data-start=\"881\" data-end=\"1288\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">চিয়া সিডের ক্যালোরি পরিমাপ<br><br></span></p><p data-start=\"881\" data-end=\"1288\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\">চিয়া সিডের উপকারিতা হয়তো বলে শেষ করা যাবে না। তো এবার চলুন, চিয়া সীডের ক্যালোরি পরিমাপ করি। ১০গ্রাম, ১০০গ্রাম ও ১০০০গ্রাম চিয়া সিডে কি পরিমাণ ক্যালোরি থাকে তা জানুন। এবং আমাদের দৈনন্দিন জীবনের সবচেয়ে বেশি প্রোটিন সমৃদ্ধ সিদ্ধ ডিমের সাথে তুলনা করি, ডিমের থেকে ৩ গুণ বেশি প্রোটিন থাকে চিয়া সিডে।<br><br></p><p data-start=\"881\" data-end=\"1288\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"font-weight: bolder;\">চিয়া সিড খাওয়ার নিয়ম<br><br></span></p><p data-start=\"881\" data-end=\"1288\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); padding: 0px; font-family: Roboto, sans-serif; font-size: 14px;\">এক গ্লাস পানিতে দুই চামচ চিয়া সিড, একটু মধু ও একটু লবণ মিশিয়ে সহজেই সরবত বানিয়ে খেতে পারেন চিয়া সিড। চাইলে ওটস, পুডিং, জুস, স্মুথি ইত্যাদির সঙ্গে মিশিয়েও খেয়ে নেয়া যায়। এ ছাড়া কেউ চাইলে টকদই, রান্না করা সবজি বা সালাদের ওপরে ছড়িয়েও খেতে পারেন। স্বাভাবিক পানি কিংবা হালকা কুসুম গরম পানিতে ২০ থেকে ৩০ মিনিট ভিজিয়ে রাখবেন চিয়া সিড। এরপর সকালে খালি পেটে খেতে পারেন। আবার ঘুমানোর আগেও এটি খাওয়া যায়।</p></h3>', NULL, 0, 0, NULL, 1, '2025-08-19 05:54:21', '2025-08-28 10:30:41'),
(174, 'Chia Seeds- ( চিয়া সিড ) ১ কেজি', 'chia-seeds--(-চিয়া-সিড-)-১-কেজি-174', 11, 0, NULL, 17, 'P0174', 220, 990, 690, 1000, NULL, NULL, 'চিয়া সিড হলো সুপারফুড। এতে দুধের চেয়ে ৫ গুণ বেশি ক্যালসিয়াম, কমলার চেয়ে ৭ গুণ বেশি ভিটামিন সি, আর স্যামন মাছের চেয়ে ৮ গুণ বেশি ওমেগা-৩ থাকে। জানুন চিয়া সিডের উপকারিতা, পুষ্টিগুণ ও খাওয়ার নিয়ম।<br><h2 data-start=\"515\" data-end=\"532\">চিয়া সিড কী?</h2>\r\n<p data-start=\"533\" data-end=\"778\">চিয়া বীজ (Chia Seeds) হচ্ছে <strong data-start=\"562\" data-end=\"582\">Salvia Hispanica</strong> নামক মিন্ট প্রজাতির উদ্ভিদের বীজ। এটি মূলত <strong data-start=\"626\" data-end=\"669\">মেক্সিকো ও মধ্য আমেরিকার মরুভূমি অঞ্চলে</strong> জন্মায়। প্রাচীন অ্যাজটেক জাতি এটি নিয়মিত খেত। ছোট কালো দানার মতো দেখতে এই বীজে প্রচুর পুষ্টি উপাদান রয়েছে। প্রতি ১০০ গ্রাম চিয়া সিডে থাকে প্রায় <strong data-start=\"820\" data-end=\"836\">৪৮৬ ক্যালোরি</strong>।<br></p><h2 data-start=\"846\" data-end=\"879\">চিয়া সিডের অসাধারণ উপকারিতা</h2><p data-start=\"533\" data-end=\"778\">\r\n</p><p data-start=\"881\" data-end=\"1288\">✅ হৃদরোগের ঝুঁকি ও ক্ষতিকর কোলেস্টেরল কমায়।<br data-start=\"924\" data-end=\"927\">\r\n✅ ওজন কমাতে সাহায্য করে।<br data-start=\"951\" data-end=\"954\">\r\n✅ রোগ প্রতিরোধ ক্ষমতা বাড়ায়।<br data-start=\"984\" data-end=\"987\">\r\n✅ শক্তি ও কর্মক্ষমতা বৃদ্ধি করে।<br data-start=\"1019\" data-end=\"1022\">\r\n✅ ব্লাড সুগার নিয়ন্ত্রণে রাখে (ডায়াবেটিস নিয়ন্ত্রণে সহায়ক)।<br data-start=\"1084\" data-end=\"1087\">\r\n✅ হাড় ও দাঁতের স্বাস্থ্য রক্ষা করে।<br data-start=\"1122\" data-end=\"1125\">\r\n✅ মলাশয় পরিষ্কার করে ও কোলন ক্যান্সারের ঝুঁকি কমায়।<br data-start=\"1177\" data-end=\"1180\">\r\n✅ শরীর থেকে টক্সিন বের করে দেয়।<br data-start=\"1211\" data-end=\"1214\">\r\n✅ প্রদাহ কমায় ও ভাল ঘুম হতে সাহায্য করে।<br data-start=\"1254\" data-end=\"1257\">\r\n✅ ত্বক, চুল ও নখ সুন্দর রাখে।<br></p><p data-start=\"881\" data-end=\"1288\"><b>চিয়া সিডের ক্যালোরি পরিমাপ</b></p><p data-start=\"881\" data-end=\"1288\">চিয়া সিডের উপকারিতা হয়তো বলে শেষ করা যাবে না। তো এবার চলুন, চিয়া সীডের ক্যালোরি পরিমাপ করি। ১০গ্রাম, ১০০গ্রাম ও ১০০০গ্রাম চিয়া সিডে কি পরিমাণ ক্যালোরি থাকে তা জানুন। এবং আমাদের দৈনন্দিন জীবনের সবচেয়ে বেশি প্রোটিন সমৃদ্ধ সিদ্ধ ডিমের সাথে তুলনা করি, ডিমের থেকে ৩ গুণ বেশি প্রোটিন থাকে চিয়া সিডে।<br></p><p data-start=\"881\" data-end=\"1288\"><b style=\"background-color: rgb(255, 255, 255);\">চিয়া সিড খাওয়ার নিয়ম</b></p><p data-start=\"881\" data-end=\"1288\">এক গ্লাস পানিতে দুই চামচ চিয়া সিড, একটু মধু ও একটু লবণ মিশিয়ে সহজেই সরবত বানিয়ে খেতে পারেন চিয়া সিড। চাইলে ওটস, পুডিং, জুস, স্মুথি ইত্যাদির সঙ্গে মিশিয়েও খেয়ে নেয়া যায়। এ ছাড়া কেউ চাইলে টকদই, রান্না করা সবজি বা সালাদের ওপরে ছড়িয়েও খেতে পারেন। স্বাভাবিক পানি কিংবা হালকা কুসুম গরম পানিতে ২০ থেকে ৩০ মিনিট ভিজিয়ে রাখবেন চিয়া সিড। এরপর সকালে খালি পেটে খেতে পারেন। আবার ঘুমানোর আগেও এটি খাওয়া যায়।</p>', NULL, 1, 0, NULL, 1, '2025-08-19 06:00:32', '2025-08-28 10:11:49'),
(175, 'সরিষা ফুলের মধু ২ কেজি (Mustard Flower Honey 2kg)', 'সরিষা-ফুলের-মধু-২-কেজি-(mustard-flower-honey-2kg)-176', 12, 0, NULL, NULL, 'P0175', 800, 1200, 1000, 10, NULL, NULL, '<p><span style=\"font-family: SolaimanLipi, Arial, sans-serif; font-size: 18px;\">সরিষা ফুলের মধু প্রকৃতির এক অনন্য সৃষ্টি যা স্বাস্থ্য ও স্বাদের এক অসাধারণ মিশ্রণ। সরিষা ফুল থেকে সংগৃহীত এই মধুতে রয়েছে প্রাকৃতিকভাবে সমৃদ্ধ পুষ্টিগুণ, যা শরীরের প্রতিরোধ ক্ষমতা বাড়াতে সাহায্য করে। সরিষা ফুলের মধু হলো বাংলাদেশে এখনকার সবচেয়ে বেশি চাষ হওয়া একটি মধু। কারণ এটা সহজলভ্য এবং খরচও কম। তবে এই মধুর ঘ্রাণ একটু তীব্র হয়, মুখে দিলেই সরিষা ফুলের ঘ্রাণ আসে, এবং সোনালি রং এর হয় এই মধু।</span></p><h2 class=\"elementor-heading-title elementor-size-default\" style=\"margin-top: 0px; margin-bottom: 0px; line-height: 1; color: rgb(36, 36, 36); font-size: 24px; font-variant: inherit; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-family: SolaimanLipi, Arial, sans-serif !important;\">সরিষা ফুলের মধুর উপকারিতা গুলো হলো:<br><br></h2><div class=\"elementor-element elementor-element-0578624 elementor-widget elementor-widget-heading\" data-id=\"0578624\" data-element_type=\"widget\" data-widget_type=\"heading.default\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; align-self: auto; flex: 0 1 auto; order: 0; place-content: normal; align-items: normal; flex-flow: row; gap: 20px; position: relative; --widgets-spacing: 20px 20px; --widgets-spacing-row: 20px; --widgets-spacing-column: 20px; min-width: 0px; margin-block-end: 0px; --kit-widget-spacing: 0px; max-width: 100%;\"><div class=\"elementor-widget-container\" style=\"margin: -11px 0px 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; transition: background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s, transform 0.4s; height: 24px;\"><h2 class=\"elementor-heading-title elementor-size-default\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant: inherit; font-stretch: inherit; line-height: 1; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(36, 36, 36); font-family: SolaimanLipi, Arial, sans-serif !important;\"><br></h2></div></div><div class=\"elementor-element elementor-element-f26770a color-scheme-inherit text-left elementor-widget elementor-widget-text-editor\" data-id=\"f26770a\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: 20px; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; --flex-direction: initial; --flex-wrap: initial; --justify-content: initial; --align-items: initial; --align-content: initial; --gap: initial; --flex-basis: initial; --flex-grow: initial; --flex-shrink: initial; --order: initial; --align-self: initial; align-self: auto; flex: 0 1 auto; order: 0; place-content: normal flex-start; align-items: normal; flex-flow: row; gap: 20px; position: relative; --widgets-spacing: 20px 20px; --widgets-spacing-row: 20px; --widgets-spacing-column: 20px; --text-align: left; --content-align: flex-start; --wd-align: flex-start; min-width: 0px; margin-block-end: 0px; display: flex; --kit-widget-spacing: 0px; max-width: 100%;\"><div class=\"elementor-widget-container\" style=\"margin: -7px 0px 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; transition: background 0.3s, border 0.3s, border-radius 0.3s, box-shadow 0.3s, transform 0.4s; width: 830px; columns: inherit; column-gap: inherit; height: 440px;\"><ol style=\"font-family: inherit; font-size: 18px; font-style: inherit; font-variant: inherit; font-weight: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 17px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px;\"><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"font-family: inherit; font-style: inherit; font-variant: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ইমিউন সিস্টেম শক্তিশালী করে:</span><span style=\"font-family: inherit; font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">&nbsp;এতে রয়েছে প্রাকৃতিক অ্যান্টিব্যাকটেরিয়াল উপাদান, যা শরীরকে রোগ থেকে সুরক্ষা দেয়।</span></li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ত্বকের যত্ন:</span>&nbsp;সরিষা ফুলের মধু ত্বকের আর্দ্রতা বজায় রাখতে এবং অ্যালার্জি প্রতিরোধে সাহায্য করে।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">হজম প্রক্রিয়া উন্নত করে:</span>&nbsp;এটি হজমশক্তি বৃদ্ধিতে কার্যকর ভূমিকা রাখে এবং পেটের সমস্যার সমাধানে সহায়ক।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শারীরিক শক্তি বৃদ্ধি:</span>&nbsp;মধু তাৎক্ষণিকভাবে শক্তি যোগায় এবং ক্লান্তি দূর করে।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সরিষা ফুলের মধুর ঝাঁজ ভাব কাশি, সর্দি ইত্যাদি সমস্যা নিরাময় করে। নিয়মিত এই মধু খেলে অথবা বুকে মাখা হলে তা ঠাণ্ডার সমস্যা দূর করে দেয়।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">হজমশক্তি বৃদ্ধির জন্য সরিষা ফুলের মধু খাওয়া হয়। খালি পেটে এই মধু খেলে তা পেটের মধ্যে থাকা গ্যাসগুলো বের করে দেয় এবং হজমে সাহায্যে করে।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সরিষা ফুলের মধুর অ্যান্টিঅক্সিডেন্টগুলো রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সরিষা ফুলের মধুর সাথে কালোজিরা মিশিয়ে খেলে তা রক্তনালির বিভিন্ন সমস্যা দূর করে। এবং রক্ত চলাচলের উন্নতি হয় এবং দেহের সকল কোষ সচল থাকে।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শরীলের ক্ষত নিরাময়ের জন্য নিয়মিত সরিষা ফুলের মধু খাওয়া হয়।</li><li style=\"margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">নিয়মিত সরিষা ফুলের মধু খেলে শরীলের ব্লাড সুগার নিয়ন্ত্রণেও সাহায্য করে।<br></li></ol><p style=\"font-family: inherit; font-size: 18px; font-style: inherit; font-variant: inherit; font-weight: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></p><p style=\"font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\"><b>কিভাবে সরিষা ফুলের মধু ব্যবহার করবেন?</b></span></font></p><p style=\"font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">প্রতিদিন সকালে এক চামচ মধু খেলে স্বাস্থ্য ভালো থাকে।</span></font></p><p style=\"font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">চায়ের সাথে বা গরম পানির সাথে মিশিয়ে পান করা যায়।</span></font></p><p style=\"font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">ত্বকের যত্নে সরাসরি ব্যবহার করা যেতে পারে।</span></font></p><p style=\"font-variant-alternates: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-position: inherit; font-variant-emoji: inherit; margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></p></div></div>', NULL, 0, 0, NULL, 1, '2025-08-30 14:47:06', '2025-08-30 14:49:59'),
(176, 'কালোজিরা ফুলের মধু (Premium Blackseed Flower Honey) – 1KG', 'কালোজিরা-ফুলের-মধু-(premium-blackseed-flower-honey)-–-1kg-176', 12, 0, NULL, NULL, 'P0176', 800, 1550, 1250, 10, NULL, NULL, '<p>কালোজিরা ফুলের মধু সাধারণত রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করতে, ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে, হজম শক্তি বৃদ্ধি সহ ত্বকের সৌন্দর্য বৃদ্ধিতে, এবং ওজন কমাতে কার্যকরী ভূমিকা রাখে।</p><p>1. কালোজিরা ফুলের মধুর উপকারিতা গুলো হলো:</p><p>2. কালোজিরা ফুলের মধু রক্তশূন্যতা ও কোষ্ঠকাঠিন্য দূর করতে সাহায্য করে।</p><p>3. কালোজিরা ফুলের মধু ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে বিশেষ ভূমিকা রাখে।</p><p>4. ত্বকের সৌন্দর্য বৃদ্ধির জন্যও কালোজিরা ফুলের মধু খাওয়া হয়।</p><p>5. নিয়মিত কালোজিরা ফুলের মধু খেলে হজম শক্তি বৃদ্ধি ও রোগ প্রতিরোধ ক্ষমতা বাড়ে।</p><p>6. ওজন কমানোর জন্যও কালোজিরা ফুলের মধু খাওয়া হয়।</p>', NULL, 0, 0, NULL, 1, '2025-08-30 14:49:45', '2025-08-30 14:49:45'),
(177, 'Himalayan Pink Salt- হিমালয়ান পিংক সল্ট গুড়া', 'himalayan-pink-salt--হিমালয়ান-পিংক-সল্ট-গুড়া-177', 7, 0, NULL, NULL, 'P0177', 250, 690, 499, 100, NULL, NULL, '<p>হিমালয়ান পিংক সল্ট বিশ্বের অন্যতম প্রাকৃতিক ও স্বাস্থ্যকর লবণ। হিমালয়ান পিংক সল্ট হিমালয় পর্বতের গভীর থেকে পাওয়া যায়। এটি লক্ষ লক্ষ বছর ধরে পৃথিবীর ভূগর্ভে জমে থাকা খনিজ পদার্থের সমৃদ্ধ একটি প্রাকৃতিক লবণ। এতে ৮৪টিরও বেশি খনিজ পদার্থ রয়েছে, যেমন আয়রন, ম্যাগনেসিয়াম, পটাশিয়াম ইত্যাদি।</p><p>বর্তমান সময়ে স্বাস্থ্য সচেতনদের মাঝে পিংক সল্ট একটি জনপ্রিয় নাম। এটি প্রাকৃতিক এবং বিশুদ্ধ লবণের অন্যতম শ্রেষ্ঠ উৎস হিসেবে বিবেচিত হয়। সাধারণ সাদা লবণের চেয়ে পিংক সল্টের পুষ্টিগুণ অনেক বেশি এবং এটি বিভিন্ন স্বাস্থ্যের সমস্যার সমাধানেও কার্যকর।<br></p><p>বৈশিষ্ট্য:</p><ol><li>সম্পূর্ণ প্রাকৃতিক ও অর্গানিক, কোনো কৃত্রিম রাসায়নিক নেই</li><li>অনন্য পিংক রঙ ও সুনির্দিষ্ট গন্ধ খাবারে আনে নতুন স্বাদ</li><li>সাধারণ লবণের তুলনায় কম প্রক্রিয়াজাত এবং খনিজে সমৃদ্ধ</li></ol><p><br><br>উপকারিতা:</p><p>✅ রক্তচাপ নিয়ন্ত্রণে সহায়ক – সঠিক সোডিয়াম লেভেল বজায় রাখে</p><p>✅ হজমশক্তি উন্নত করে – পাকস্থলীর অ্যাসিড বৃদ্ধি করে খাবার হজমে সাহায্য করে</p><p>✅ ডিটক্সিফিকেশন – শরীরের টক্সিন দূর করে অঙ্গপ্রত্যঙ্গকে সুস্থ রাখে</p><p>✅ ত্বকের যত্নে কার্যকর – প্রাকৃতিক স্ক্রাব হিসেবে মৃত কোষ পরিষ্কার ও প্রদাহ কমায়</p><p>✅ শ্বাস প্রশ্বাসের স্বাস্থ্যে সহায়ক – হাঁপানি ও অ্যালার্জির উপসর্গ কমায়</p><p>✅ ওজন কমাতে সাহায্য করে – মেটাবলিজম বাড়িয়ে ফ্যাট বার্নে সহায়ক</p><p>✅ ঘুম ভালো করে – স্নায়ুতন্ত্র শান্ত করে গভীর ঘুমে সহায়ক</p><p>✅ আর্থ্রাইটিস ও ব্যথা উপশমে কার্যকর</p><p>✅ শরীরের PH ব্যালেন্স বজায় রাখে</p><p>৮০টিরও বেশি মিনারেল ও ট্রেস উপাদান সমৃদ্ধ (পটাসিয়াম, ম্যাগনেসিয়াম, ক্যালসিয়াম, আয়রন ইত্যাদি)<br><br></p><p>ব্যবহার:</p><ol><li>রান্নায়: সাধারণ লবণের পরিবর্তে ব্যবহার করুন, যেকোনো খাবারের স্বাদ বাড়াবে।</li><li>পানীয়তে: গরম পানিতে বা চায়ে এক চিমটি মিশিয়ে পান করুন, ডিটক্সিফিকেশনে সহায়ক।</li><li>ত্বকের যত্নে: স্ক্রাব হিসেবে ব্যবহার করে ত্বক উজ্জ্বল ও পরিষ্কার রাখুন।</li></ol><p><br></p>', NULL, 0, 0, NULL, 1, '2025-08-31 12:36:29', '2025-08-31 12:36:29'),
(178, 'Kochi Bel Gura – কচি বেল গুড়া 300GM', 'kochi-bel-gura-–-কচি-বেল-গুড়া-300gm-178', 7, 0, NULL, NULL, 'P0178', 360, 850, 499, 20, NULL, NULL, '<p data-start=\"206\" data-end=\"464\">এই গরমে এক গ্লাস ঠান্ডা <strong data-start=\"230\" data-end=\"244\">বেলের শরবত</strong> নিমেষেই শরীর-মন ঠান্ডা করে দেয়। শুধু সতেজতাই নয়, বেল কিন্তু ভরপুর <strong data-start=\"311\" data-end=\"333\">পুষ্টিগুণেও সমৃদ্ধ</strong>। এতে আছে ভিটামিন সি, ভিটামিন এ, ক্যালসিয়াম, ফসফরাস, পটাশিয়ামসহ নানান খনিজ উপাদান যা আমাদের সুস্থ রাখতে গুরুত্বপূর্ণ ভূমিকা রাখে।</p><h3 data-start=\"466\" data-end=\"507\">🔹 প্রতি ১০০ গ্রাম বেলের পুষ্টিমান:</h3><p>\r\n\r\n</p><ul data-start=\"508\" data-end=\"809\">\r\n<li data-start=\"508\" data-end=\"542\">\r\n<p data-start=\"510\" data-end=\"542\">খাদ্যশক্তি: <strong data-start=\"522\" data-end=\"540\">৮৭ কিলোক্যালরি</strong></p>\r\n</li>\r\n<li data-start=\"543\" data-end=\"571\">\r\n<p data-start=\"545\" data-end=\"571\">জলীয় অংশ: <strong data-start=\"555\" data-end=\"569\">৭৭.৫ গ্রাম</strong></p>\r\n</li>\r\n<li data-start=\"572\" data-end=\"598\">\r\n<p data-start=\"574\" data-end=\"598\">শর্করা: <strong data-start=\"582\" data-end=\"596\">১৮.৮ গ্রাম</strong></p>\r\n</li>\r\n<li data-start=\"599\" data-end=\"622\">\r\n<p data-start=\"601\" data-end=\"622\">আমিষ: <strong data-start=\"607\" data-end=\"620\">২.৬ গ্রাম</strong></p>\r\n</li>\r\n<li data-start=\"623\" data-end=\"647\">\r\n<p data-start=\"625\" data-end=\"647\">চর্বি: <strong data-start=\"632\" data-end=\"645\">০.২ গ্রাম</strong></p>\r\n</li>\r\n<li data-start=\"648\" data-end=\"679\">\r\n<p data-start=\"650\" data-end=\"679\">ক্যালসিয়াম: <strong data-start=\"662\" data-end=\"677\">৩৮ মি.গ্রা.</strong></p>\r\n</li>\r\n<li data-start=\"680\" data-end=\"706\">\r\n<p data-start=\"682\" data-end=\"706\">লোহা: <strong data-start=\"688\" data-end=\"704\">০.৬ মি.গ্রা.</strong></p>\r\n</li>\r\n<li data-start=\"707\" data-end=\"742\">\r\n<p data-start=\"709\" data-end=\"742\">ভিটামিন বি-১: <strong data-start=\"723\" data-end=\"740\">০.০৩ মি.গ্রা.</strong></p>\r\n</li>\r\n<li data-start=\"743\" data-end=\"778\">\r\n<p data-start=\"745\" data-end=\"778\">ভিটামিন বি-২: <strong data-start=\"759\" data-end=\"776\">০.০২ মি.গ্রা.</strong></p>\r\n</li>\r\n<li data-start=\"779\" data-end=\"809\">\r\n<p data-start=\"781\" data-end=\"809\">ভিটামিন সি: <strong data-start=\"793\" data-end=\"807\">৯ মি.গ্রা.<br><br><br></strong></p></li></ul><p></p><ol></ol><p></p><p><b>উপকারিতা:</b></p><p>✅ <strong data-start=\"853\" data-end=\"878\">আলসার সারাতে কার্যকর:</strong> কচি বেল শুকিয়ে বেল শুট বানিয়ে বার্লির সাথে খেলে আলসার দ্রুত সারে।<br data-start=\"944\" data-end=\"947\">\r\n✅ <strong data-start=\"949\" data-end=\"970\">ক্লান্তি দূর করে:</strong> গরমে বেলের শরবত খেলে শরীর ঠান্ডা থাকে এবং ক্লান্তি কেটে যায়।<br data-start=\"1031\" data-end=\"1034\">\r\n✅ <strong data-start=\"1036\" data-end=\"1058\">চোখের যত্নে সহায়ক:</strong> বেলের ভিটামিন এ চোখের ভেতর ও বাইরের অঙ্গকে পুষ্টি যোগায়।<br data-start=\"1115\" data-end=\"1118\">\r\n✅ <strong data-start=\"1120\" data-end=\"1148\">ডায়রিয়া ও আমাশয়ে উপকারী:</strong> কাঁচা বেল নিয়মিত খেলে দীর্ঘমেয়াদি ডায়রিয়া ও আমাশয় সারে।<br data-start=\"1204\" data-end=\"1207\">\r\n✅ <strong data-start=\"1209\" data-end=\"1228\">হজমশক্তি বাড়ায়:</strong> বেলের শাঁস পাকস্থলীর জন্য উপকারী এবং কোষ্ঠকাঠিন্য দূর করে।<br data-start=\"1287\" data-end=\"1290\">\r\n✅ <strong data-start=\"1292\" data-end=\"1313\">ত্বকের জন্য ভালো:</strong> বেলের ফাইবার ব্রণ কমাতে সাহায্য করে।<br data-start=\"1350\" data-end=\"1353\">\r\n✅ <strong data-start=\"1355\" data-end=\"1385\">পাইলস রোগীদের জন্য উপকারী।</strong><br data-start=\"1385\" data-end=\"1388\">\r\n✅ <strong data-start=\"1390\" data-end=\"1435\">ভিটামিন সি গ্রীষ্মকালীন রোগবালাই দূর করে।</strong><br data-start=\"1435\" data-end=\"1438\">\r\n✅ <strong data-start=\"1440\" data-end=\"1459\">জন্ডিসে উপকারী:</strong> বেল ও গোলমরিচ মিশিয়ে শরবত খেলে জন্ডিসে উপকার মেলে।<br data-start=\"1510\" data-end=\"1513\">\r\n✅ <strong data-start=\"1515\" data-end=\"1544\">ক্যানসার প্রতিরোধে সহায়ক:</strong> নিয়মিত বেল খেলে কোলন ক্যানসারের ঝুঁকি কমে।<br data-start=\"1587\" data-end=\"1590\">\r\n✅ <strong data-start=\"1592\" data-end=\"1615\">সর্দি-জ্বরে উপকারী:</strong> বেলপাতার রস সর্দি ও জ্বরের উপসর্গ কমায়।<br><br><br></p>', NULL, 0, 0, NULL, 1, '2025-08-31 15:20:45', '2025-08-31 15:20:45'),
(179, 'Alu Bokhara । আলু বখারা -500gm', 'alu-bokhara-।-আলু-বখারা--500gm-179', 7, 0, NULL, NULL, 'P0179', 500, 850, 690, 10, NULL, NULL, '<p><span style=\"color: rgb(109, 109, 109); font-family: &quot;Source Sans Pro&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: medium;\">রসে ভরপুর এই ফলটি খেতে যেমন সুস্বাদু, তেমনি পুষ্টিগুণে ঠাসা। কী নেই এতে! প্রোটিন, মিনারেল এবং আয়রণ সমৃদ্ধ প্লাম নানা ভাবে শরীর, ত্বক এবং চুলের উন্নতি ঘটায়। এখানেই শেষ নয়, হিন্দি বলয়ে আলু বোখরা নামে পরিচিত এই ফলটিতে রয়েছে ভিটামিন- এ, ভিটামিন- সি এবং ডায়াটারি ফাইবার, যা শরীরে প্রয়োজনীয় অ্যান্টি-অক্সিডেন্টের সরবরাহ বজায় রাখে। শরীর ভাল রাখতে দরকার পরে কার্বোহাইড্রেট, প্রোটিন এবং পেন্টোথেনিক অ্যাসিডের। আর এই সবকটি উপাদানই মজুত রয়েছে এই ফলটিতে। তাহলে বুঝতেই পারছেন তো আকারে ছোট হলেও কার্য়কারিতার দিক থেকে কিন্তু একবারে প্রথম সারিতে রাখতেই হবে আলু বোখরা।</span></p>', NULL, 0, 0, NULL, 1, '2025-08-31 15:33:59', '2025-08-31 15:33:59'),
(180, 'ইসবগুলের ভূসি (Isubgul Bhusi) – 250G', 'ইসবগুলের-ভূসি-(isubgul-bhusi)-–-250g-180', 11, 0, NULL, NULL, 'P0180', 500, 850, 700, 20, NULL, NULL, '<p><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px;\">ইসবগুলের ভূসি</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: SolaimanLipi, Arial, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px;\">&nbsp;(Psyllium Husk) হল এক অত্যন্ত কার্যকরী প্রাকৃতিক ফাইবার, যা পেটের সুস্বাস্থ্য এবং হজম প্রক্রিয়াকে উন্নত করার জন্য ব্যবহৃত হয়। এটি গাছের বীজের খোসা থেকে তৈরি, যা পানির সঙ্গে মিশে গেলে জেলির মতো আকার নেয়, ফলে আপনার অন্ত্রের গতি সহজ ও স্বাভাবিক রাখে। ইসবগুলের ভূসি পেটের জন্য উপকারী এবং নিয়মিত ব্যবহারে শরীরকে সঠিক ভারসাম্যে রাখতে সহায়তা করে।<br></span></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">স্বাস্থ্য উপকারিতা:</span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">✅ হজমে সহায়ক – কোষ্ঠকাঠিন্য দূর করে, গ্যাস ও অম্বল কমায়।</span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">✅ কোলেস্টেরল নিয়ন্ত্রণে সহায়ক – খারাপ কোলেস্টেরল কমিয়ে হৃদরোগের ঝুঁকি হ্রাস করে।</span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">✅ ডায়াবেটিস নিয়ন্ত্রণে উপকারী – রক্তের শর্করা নিয়ন্ত্রণে রাখে।</span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">✅ ওজন কমাতে সহায়ক – ফাইবার ক্ষুধা কমায়, অতিরিক্ত ক্যালোরি গ্রহণ রোধ করে।</span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px;\"></span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">✅ শরীরকে ডিটক্সিফাই করে – অন্ত্র পরিষ্কার করে টক্সিন দূর করে।<br><br></span></font></p><p><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">ব্যবহারবিধি:</span></font></p><ol><li><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">এক গ্লাস পানিতে ১-২ চা চামচ ইসবগুলের ভূসি মিশিয়ে খেয়ে নিন।</span></font></li><li><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">দই, স্মুদি বা ওটমিলের সাথে মিশিয়ে খাওয়া যায়।</span></font></li><li><font face=\"SolaimanLipi, Arial, sans-serif\"><span style=\"font-size: 18px;\">রাতে খাবারের পর বা সকালে খালি পেটে খেলে সবচেয়ে ভালো ফল মেলে।</span></font></li></ol>', NULL, 0, 0, NULL, 1, '2025-08-31 15:38:53', '2025-08-31 15:38:53'),
(181, 'কালোজিরা তেল (Black Seed Oil) – 1KG', 'কালোজিরা-তেল-(black-seed-oil)-–-1kg-181', 13, 0, NULL, NULL, 'P0181', 1400, 2200, 1800, 20, NULL, NULL, '<p>Black seed oil, extracted from the seeds of the Nigella Sativa plant, has been used for centuries in traditional medicine across the Middle East, South Asia, and Africa. Rich in thymoquinone, a powerful antioxidant and anti-inflammatory compound, black seed oil is valued for supporting immune health, aiding digestion, promoting clearer skin, and strengthening hair.&nbsp;</p><p>Key Benefits:</p><p>Rich in thymoquinone, it boosts the body’s natural defenses.</p><p>Helps reduce inflammation and joint discomfort.</p><p>Nourishes skin, promotes hair growth, and combats dryness.</p><p>Aids in digestion and alleviates bloating.</p><p>Supports healthy cholesterol levels and blood pressure.</p>', NULL, 0, 0, NULL, 1, '2025-08-31 15:42:10', '2025-08-31 15:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 1, 14, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 133, 6, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(21, 133, 7, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(22, 133, 8, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(23, 133, 9, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(24, 133, 10, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(25, 139, 6, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(26, 139, 7, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(27, 139, 9, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(28, 139, 10, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(29, 140, 6, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(30, 140, 7, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(31, 140, 8, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(32, 140, 9, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(33, 141, 6, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(34, 141, 7, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(35, 141, 8, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(36, 141, 9, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(45, 182, 7, '2026-02-21 06:23:57', '2026-02-21 06:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Omor Faruk', 'N / A', '5', 'Nice product,,,', 75, 13, 'active', '2024-02-05 08:49:50', '2024-02-19 07:02:29'),
(2, 'Samiul Alom', 'N / A', '5', 'nice product', 123, 11, 'pending', '2024-02-10 08:00:20', '2024-02-10 08:00:20'),
(3, 'Samiul Alom', 'N / A', '5', 'nice product', 99, 11, 'pending', '2024-02-10 09:33:38', '2024-02-10 09:33:38'),
(4, 'Hjsj', 'N / A', '5', 'How', 138, 141, 'pending', '2024-08-14 14:37:12', '2024-08-14 14:37:12'),
(5, 'Juju', 'N / A', '5', 'Darun product', 138, 175, 'pending', '2024-08-18 17:55:42', '2024-08-18 17:55:42');

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
(1, 'Admin', 'web', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Editor', 'web', '2023-01-19 06:41:33', '2023-01-19 06:41:33'),
(4, 'Salesman', 'web', '2023-01-19 06:42:28', '2023-01-19 06:42:28');

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
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 4),
(6, 1),
(6, 4),
(7, 1),
(7, 3),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(218, 219, 196, 'MD ABDUR Rahim', '01601844214', 'Uthura bazar Bhaluka mymensingh', 'ঢাকার বাহিরে  120 টাকা', '2025-08-18 02:20:22', '2025-08-18 02:20:22'),
(219, 220, 197, 'Motin', '01602398331', 'থানা জলঢাকা জেলা নীলফামারী', 'ঢাকার বাহিরে  120 টাকা', '2025-08-18 07:53:09', '2025-08-18 10:34:25'),
(220, 221, 198, 'রেশমা আক্তার', '01614860160', 'জেলা লক্ষীপুর থানা কমলনগর গ্রাম করুনানগর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-18 10:16:14', '2025-08-18 10:33:50'),
(221, 222, 199, 'md.ridoy', '01956590891', 'Munshiganj Sadar, Rikabi Bazar, Mirapara.', 'ঢাকার বাহিরে  120 টাকা', '2025-08-19 03:33:23', '2025-08-19 04:52:03'),
(222, 223, 200, 'মো:মুরাদ-8 CAKA-S15-SS-PRO-PINK-4400 TK', '01675963257', 'যাএাবাড়ী শহিদ ফারুক সড়ক টনি টাওয়ার', 'ঢাকার বাহিরে  120 টাকা', '2025-08-19 12:47:32', '2025-08-20 07:02:25'),
(223, 224, 201, 'মোঃহেলাল উদ্দিন', '01730472043', 'ঠাকুরগাঁও, রাণীশংকৈল, নেকমরদ, ফুটানি টাউন', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 04:18:16', '2025-08-20 04:18:16'),
(224, 225, 202, 'মহিন', '01604715341', 'খাগড়াছড়ি পানছড়ি lowgan bazar', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 04:32:25', '2025-08-20 06:24:27'),
(225, 226, 203, 'MD Rashidul islam', '01752224717', 'Taltoli,morgi bazer. Thalihati ,sreepur , Gazipur', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 06:45:40', '2025-08-20 06:45:40'),
(226, 227, 204, 'Md Helal Uddin', '01784604061', 'Thakurgaon, ranisonkail, nekmord,futanitwon', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 06:53:09', '2025-08-20 06:53:09'),
(227, 228, 205, 'swapon Kormoker', '01710121071', 'লাগুলিয়া,মুক্তাগাছা, ময়মনসিংহ', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 09:06:16', '2025-08-20 10:22:01'),
(228, 229, 206, 'Md Mustafigur', '01922707407', 'গ্যাম  ডিগ্রিচর জেলা নড়াইল থানা লোহাগড়া', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 10:50:51', '2025-08-21 07:01:23'),
(229, 230, 207, 'Sree Akhil kumar----poient delivery-2900 tk', '01756900912', 'Stead fast point Chuadanga  sador hub', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 11:13:59', '2025-08-21 07:05:56'),
(230, 231, 208, 'Abdul Matin Afif---2900 tk', '01743390586', 'dutma sadar ,তাহিরপুর, সুনামগঞ্জ', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 17:33:21', '2025-08-21 07:09:56'),
(231, 232, 209, 'Most: Sumaiya Jahan sharmin', '01324037284', 'Nilfamari.. kisorgonj.... magura dorjipara', 'ঢাকার বাহিরে  120 টাকা', '2025-08-20 20:15:59', '2025-08-21 07:13:28'),
(233, 234, 210, 'মোঃ জাম্মান আহমদ', '01794363612', 'মইয়ারচর বড়বাড়ি, রোড নং ২, ৩৯নং ওয়ার্ড, সিলেট সিটি কর্পোরেশন সিলেট।', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 08:15:25', '2025-08-21 10:09:43'),
(234, 235, 211, 'মো মমিনুল', '01757475285', 'মানিকপুর, মুন্সিগঞ্জ সদর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 10:10:44', '2025-08-21 12:17:55'),
(235, 236, 212, 'মোহাম্মদ শাহিন', '01944587969', 'রংপুর সিটি কর্পোরেশন ৭ নং ওয়ার্ড চড়ারহাট  মহানগর রংপুর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 10:12:26', '2025-08-21 10:12:26'),
(236, 237, 213, 'Sarwar robi', '01611590514', 'Masua,nayapara,katiadi,kishoreganj', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 10:25:30', '2025-08-21 10:25:30'),
(237, 238, 214, 'আমানুল্লাহ', '01320305900', 'পিরোজপুর ভান্ডারিয়া nodmulla', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 11:10:59', '2025-08-21 13:17:26'),
(238, 239, 215, 'শামীম', '01701088886', 'সিলেট সদর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 14:17:29', '2025-08-21 14:17:29'),
(239, 240, 216, 'সাদিক হাসান', '01315421660', 'থানা বালুকা জেলা ময়মসিংহের ঠিকানা স্কয়ার মাস্টার বাড়ি  কেয়ার এইডি হাসপাতালে', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 16:37:13', '2025-08-22 05:02:16'),
(240, 241, 217, 'Ratan Mondal', '01733617896', 'Sayesthabad,Barishal sadar,Barishal.', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 17:19:55', '2025-08-25 07:41:53'),
(241, 242, 218, 'Ripon', '01721137189', 'রুপসি  রূপগঞ্জ  নারায়ণগঞ্জ রিয়াজ নেতার বাড়ির সামনে', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 17:39:06', '2025-08-21 17:39:06'),
(242, 243, 219, 'Alamgir Hossian', '01772722302', 'Kishoreganj Mithamoin Thana Mithamoin', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 18:19:32', '2025-08-21 18:19:32'),
(243, 244, 220, 'কাবুলুর রহমান', '01837200805', 'মেসার্স জান্নাতুল মেডিকেল হল, সাধুরব্রীজ,রাজৈর,মাদারীপুর।', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 18:51:16', '2025-08-21 18:51:16'),
(244, 245, 221, 'গোলাপ 4', '01771658535', 'sohagdol Nesarabad,, পরে নেছারাবাদ পিরোজপুর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-21 19:47:11', '2025-08-22 06:16:02'),
(245, 246, 222, 'Motin', '01323316383', 'বেড়া', 'ঢাকার বাহিরে  120 টাকা', '2025-08-22 03:11:19', '2025-08-25 07:40:17'),
(246, 247, 223, 'Edris', '01605559574', 'Bitgar  bramonbaria.  Nobinagar', 'ঢাকার বাহিরে  120 টাকা', '2025-08-22 09:16:44', '2025-08-22 09:16:44'),
(247, 248, 224, 'Mb Rabbi Hasan', '01797241844', 'Naogaon. Dhamirhat. Dhamirhat. Amaitara', 'ঢাকার বাহিরে  120 টাকা', '2025-08-22 14:30:15', '2025-08-25 07:39:42'),
(248, 249, 225, 'নজরুল ইসলাম', '01797068855', 'জেলা :ঝিনাইদহ থানা:মহেশপুর  গ্রাম:ফতেপুর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-22 14:32:49', '2025-08-22 14:32:49'),
(249, 250, 226, 'Shahjalal Hossain', '01611971842', 'Kushtia, Daulotpur, Mothurapur', 'ঢাকার বাহিরে  120 টাকা', '2025-08-23 04:42:50', '2025-08-23 04:42:50'),
(250, 251, 227, 'Alamin Alamin', '01839123920', 'যশোর ঝিকরগাছা থানা ঝিকরগাছা বাজারের', 'ঢাকার বাহিরে  120 টাকা', '2025-08-23 05:35:07', '2025-08-23 05:35:07'),
(251, 252, 228, 'নাজমুস সাকিব', '01884314192', 'গ্রাম জালশুকা বালিয়াপাড়া,থানা গাংনী জেলা মেহেরপুর', 'ঢাকার বাহিরে  120 টাকা', '2025-08-23 13:00:58', '2025-08-23 13:00:58'),
(252, 253, 229, 'Md.Sabbir Hossain', '01319328461', 'Kustha, EB,asan nogor master mor', 'ঢাকার বাহিরে  120 টাকা', '2025-08-23 13:28:54', '2025-08-24 05:47:46'),
(253, 254, 230, 'Monir', '01828819419', 'Mirbag notun Rasta', 'ঢাকার বাহিরে  120 টাকা', '2025-08-23 20:04:50', '2025-08-24 14:40:04'),
(254, 255, 231, 'md rubel', '01734503097', 'middle badda Adarsh Nagar Arju Goli Suman Villa', 'ঢাকার বাহিরে  120 টাকা', '2025-08-24 06:26:50', '2025-08-24 14:39:33'),
(255, 256, 232, 'Kutub uddin', '01710039304', 'Habibpur madrasha point/ haspaltal point jagannathpur, sunamganj', 'ঢাকার বাহিরে  120 টাকা', '2025-08-24 12:18:35', '2025-08-24 14:48:23'),
(256, 257, 233, 'মাহাবুব', '01622074802', 'জেলা কক্স বাজার থানা মহেশ খালি ইউনিয়ন মাতার বাড়ি বাংলা বাজার', 'ঢাকার বাহিরে  120 টাকা', '2025-08-24 19:30:35', '2025-08-24 19:30:35'),
(257, 258, 234, 'বৃষ্টি তৌফিক-3600 tk', '01710153678', 'শেরপুর সদর পুরাতন গরুর হাটি', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 03:42:01', '2025-08-25 07:21:12'),
(258, 259, 235, 'shovo saha', '01907593934', 'Comilla jela daudkandi thana daudkandi bajar', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 05:40:38', '2025-08-25 05:40:38'),
(259, 260, 236, 'তারেক রহমান', '01715582029', 'মৌলভীবাজার জেলা,  কুলাউড়া থানা, হাজীপুর ইউনিয়ন, পীরের বাজার', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 08:36:23', '2025-08-25 08:36:23'),
(260, 261, 236, 'তারেক রহমান', '01715582029', 'মৌলভীবাজার জেলা,  কুলাউড়া থানা, হাজীপুর ইউনিয়ন, পীরের বাজার', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 08:36:32', '2025-08-25 08:36:32'),
(261, 262, 237, 'মো:-রামিম মিয়া', '01834089414', 'গ্রাম শিবপাশা থানা আজমিরীগঞ্জ জেলা হবিগঞ্জ', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 08:56:01', '2025-08-25 08:56:01'),
(262, 263, 238, 'Asad', '01321801869', 'Rangpur,dhap,chikli vata', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 13:19:53', '2025-08-25 13:19:53'),
(263, 264, 239, 'Safi Telecom', '01340726180', 'গোদাগাড়ী', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 13:54:18', '2025-08-25 13:54:18'),
(264, 265, 240, 'রবেল', '01792082746', 'জেলা শরিয়ত পুর থানা গোসারই হাট', 'ঢাকার ভিতরে 70 টাকা', '2025-08-25 15:18:46', '2025-08-25 15:18:46'),
(265, 266, 241, 'মো: তুহিন', '01891863974', 'রংপুর পৌরসভা', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 16:26:51', '2025-08-25 16:26:51'),
(266, 267, 242, 'শাহ আলম মিয়া', '01725577407', 'ইবাহিম পুড় বেলাবো নরসী্্দী', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 16:28:44', '2025-08-26 05:07:53'),
(267, 268, 243, 'Belal', '01760719588', 'House 12 Road 03 Block E Kalwalapara mirpur 1 Dhaka 1216', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 17:15:31', '2025-08-26 04:59:35'),
(268, 269, 191, 'Nazmul Hossain', '01706640864', 'brahmanbaria', 'ঢাকার ভিতরে 70 টাকা', '2025-08-25 17:37:18', '2025-08-25 17:37:18'),
(269, 270, 245, 'md.jahid hasan', '01618712071', 'গ্রাম: মহেন্দ্রপুর, পোস্ট অফিস :হিরনপুর ;থানা :পূর্বধলা ; জেলা :নেত্রকোনা', 'ঢাকার বাহিরে  120 টাকা', '2025-08-25 18:39:59', '2025-08-25 18:39:59'),
(270, 271, 246, 'Zobaida Akther', '01608974526', 'uttor canpara uttar Khan', 'ঢাকার বাহিরে  120 টাকা', '2025-08-26 13:05:24', '2025-08-26 14:09:24'),
(271, 272, 191, 'Nazmul Hossain', '01706640864', 'brahmanbaria', 'ঢাকার ভিতরে 70 টাকা', '2025-08-28 19:36:48', '2025-08-28 19:36:48'),
(272, 273, 247, 'MD Foisal Islam', '01950403031', 'NakalPara Tajgaon', 'ঢাকার ভিতরে 70 টাকা', '2025-08-31 15:31:32', '2025-08-31 15:31:32'),
(273, 274, 248, 'Parents Food', '01902792987', 'sddd', 'ঢাকার ভিতরে 70 টাকা', '2025-09-05 18:56:30', '2025-09-05 18:56:30'),
(274, 275, 249, 'Parents Food', '01902111111', '.bvxc', 'ঢাকার ভিতরে 70 টাকা', '2025-09-05 18:58:40', '2025-09-05 18:58:40'),
(275, 276, 247, 'MD Foisal Islam', '01950403031', 'Tajgaon', 'ঢাকার ভিতরে 70 টাকা', '2025-09-13 16:46:05', '2025-09-13 16:46:05'),
(276, 277, 247, 'MD Foisal Islam', '01950403031', 'Tajgaon', 'ঢাকার ভিতরে 70 টাকা', '2025-09-13 16:47:56', '2025-09-13 16:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে 70 টাকা', 70, '1', '2023-08-04 10:34:54', '2025-08-17 16:34:22'),
(2, 'ঢাকার বাহিরে  110 টাকা', 110, '1', '2023-08-04 10:35:57', '2025-08-29 11:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '25', '1', '2024-02-05 09:39:19', '2024-02-05 09:39:19'),
(12, '2 KG', '1', '2024-02-05 09:39:25', '2025-08-28 09:46:37'),
(13, '1 KG', '1', '2024-02-05 09:39:30', '2025-08-28 09:42:47'),
(14, '500 GM', '1', '2024-02-05 09:39:34', '2025-08-28 09:42:30'),
(15, '300 GM', '1', '2024-02-05 09:39:39', '2025-08-28 09:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://msg.elitbuzz-bd.com/smsapi', 'C200817461dd7a25cf3924.89247796', '8809612472619', '1', '1', '0', '1', '2024-02-06 11:29:46', '2024-02-10 04:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/parentsfood', '#f78345', 1, '2023-02-12 11:32:20', '2025-08-29 11:20:17'),
(3, 'Official Mail', 'fab fa-google', 'emerx@gmail com', '#c53302', 1, '2023-02-14 03:29:41', '2024-05-27 12:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'T-Shirt', 't-shirt', 1, NULL, 'T-Shirt', '<p>T-Shirt<br></p>', 0, '2024-06-01 13:55:48', '2025-08-28 05:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Mizan', 'admin@babughor.com', NULL, '$2y$10$yTmYb.vr82OrQcNJZow/sO7Jig/YXBZxGN4K5XwHVFtKjhaDfuJ1.', '7qsocnjFCWEd2N8fLvCSlad0SM5jq8wHqwy90X1jRvEGUVs0e2kYgQCSGU00', 'public/uploads/users/1755503379-518270428_122175502424501960_5838009424193667178_n.webp', 1, '2025-08-18 07:49:39', '2025-08-18 07:49:39'),
(10, 'Hardik Savani', 'admin@gmail.com', NULL, '$2y$10$AQVUKZAQVyaRqMsfMzg95OSD8rbBTss/LEmMUn/bgw7i8ARWbYnzi', 'cgYgDY4TEYqjx4aRFUqLeCAsu2NHGxOHYCVqFv7HcZF6TzfUn7UaZbGafpQu', 'default.png', 1, '2026-02-21 06:13:14', '2026-02-21 06:13:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
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
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
