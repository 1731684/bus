-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2018 at 01:52 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smh`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admins_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('admin','superadmin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `profile` enum('active','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admins_id`, `email`, `contact`, `address`, `password`, `image`, `user_type`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', NULL, NULL, '$2y$10$Fjyh4ldaUbFATXGfNAN/KubxKJHy4Ax9Up1d8LZJ6FlxXVDkOEdSq', NULL, 'admin', 'offline', NULL, NULL),
(2, 'admin00@gmail.com', NULL, NULL, '$2y$10$bDY6x2jL6opAv4lY8lUnqubzkm38iKJaaL7N.D14COBBYDl5DpYYa', NULL, 'superadmin', 'offline', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blogs_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `posted_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookings_id` int(10) UNSIGNED NOT NULL,
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `guests_id` int(10) UNSIGNED NOT NULL,
  `buses_id` int(10) UNSIGNED NOT NULL,
  `seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `profile` enum('confirmed','cancelled','pending') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookings_id`, `travellers_id`, `guests_id`, `buses_id`, `seat`, `price`, `profile`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '22', 12000, 'confirmed', '2018-08-23 04:41:05', '2018-08-23 04:41:05'),
(2, 2, 1, 2, NULL, 1500, 'confirmed', '2018-08-23 05:59:53', '2018-08-24 05:59:35'),
(3, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:01:05', '2018-09-05 00:01:05'),
(4, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:03:45', '2018-09-05 00:03:45'),
(5, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:04:15', '2018-09-05 00:04:15'),
(6, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:06:04', '2018-09-05 00:06:04'),
(7, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:06:47', '2018-09-05 00:06:47'),
(8, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:07:28', '2018-09-05 00:07:28'),
(9, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:07:49', '2018-09-05 00:07:49'),
(10, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:08:59', '2018-09-05 00:08:59'),
(11, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:10:45', '2018-09-05 00:10:45'),
(12, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:11:27', '2018-09-05 00:11:27'),
(13, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:11:36', '2018-09-05 00:11:36'),
(14, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:12:11', '2018-09-05 00:12:11'),
(15, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:14:07', '2018-09-05 00:14:07'),
(16, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:15:53', '2018-09-05 00:15:53'),
(17, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:17:50', '2018-09-05 00:17:50'),
(18, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:19:26', '2018-09-05 00:19:26'),
(19, 1, 1, 1, NULL, NULL, 'pending', '2018-09-05 00:22:18', '2018-09-05 00:22:18'),
(20, 1, 1, 1, '1C,2D,5F', NULL, 'pending', '2018-09-05 02:28:46', '2018-09-05 02:28:46'),
(21, 1, 1, 1, '1C,2D,5F', NULL, 'pending', '2018-09-05 02:34:27', '2018-09-05 02:34:27'),
(22, 1, 1, 1, '5F', NULL, 'pending', '2018-09-05 06:34:44', '2018-09-05 06:34:44'),
(23, 1, 1, 1, '5F', NULL, 'pending', '2018-09-05 06:36:54', '2018-09-05 06:36:54'),
(24, 1, 1, 1, '5F', NULL, 'pending', '2018-09-05 06:37:15', '2018-09-05 06:37:15'),
(25, 1, 1, 1, '5F', NULL, 'pending', '2018-09-05 06:38:23', '2018-09-05 06:38:23'),
(26, 1, 1, 1, '5F', NULL, 'pending', '2018-09-05 06:39:15', '2018-09-05 06:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `buses_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billbook_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `routes_id` int(10) UNSIGNED NOT NULL,
  `bustypes_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat_layout` longtext COLLATE utf8mb4_unicode_ci,
  `front_layout` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` enum('active','hold') COLLATE utf8mb4_unicode_ci DEFAULT 'hold',
  `registered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`buses_id`, `title`, `billbook_no`, `vehicle_no`, `vendors_id`, `routes_id`, `bustypes_id`, `image`, `seat_layout`, `front_layout`, `driver1`, `driver2`, `contact1`, `contact2`, `staff1`, `staff2`, `contact3`, `contact4`, `profile`, `registered_date`, `created_at`, `updated_at`) VALUES
(1, 'Mahakali Yatayat', '121221', 'Bha.2.Kha 1212', 1, 3, 1, NULL, '[{\"style\":\"position: relative;\",\"name\":\"11B\"},{\"style\":\"position: relative;\",\"name\":\"1C\"},{\"style\":\"position: relative;\",\"name\":\"2D\"},{\"style\":\"position: relative;\",\"name\":\"5F\"},{\"style\":\"position: relative; left: -360px; top: 85px;\",\"name\":\"G\"}]', '[{\"style\":\"position: relative; left: -986px; top: 83px;\",\"name\":\"Entry\"},{\"style\":\"position: relative; left: -732px; top: -63px;\",\"name\":\"Driver\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hold', NULL, NULL, '2018-09-05 02:25:59'),
(2, 'Bagmati Yatayat', '121221', 'Bha.2.Kha 1212', 1, 1, 2, NULL, '[{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"}]', '[{\"style\":\"position: relative;\",\"name\":\"Entry\"},{\"style\":\"position: relative;\",\"name\":\"Driver\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-03 05:48:05'),
(3, 'Kaligandaki Yatayat', '121221', 'Bha.2.Kha 1212', 1, 4, 1, NULL, '[{\"style\":\"position: relative;\",\"name\":\"Laborum Aperiam nulla corrupti proident dolores laborum Quo lorem provident fugiat ipsa culpa pariatur Et et officiis eveniet\"},{\"style\":\"position: relative;\",\"name\":\"Elit laboris saepe rerum quam officia accusamus pariatur Ducimus nostrud architecto non esse ex in nulla ad sequi rerum repellendus\"},{\"style\":\"position: relative;\",\"name\":\"Aut in ea est excepturi aliqua Obcaecati veritatis eius aliqua Blanditiis accusantium eligendi perspiciatis incididunt voluptate\"},{\"style\":\"position: relative;\",\"name\":\"Sint dolor laboris deleniti exercitation esse dicta voluptas eaque aliquip accusamus et est molestiae neque dolor sed\"},{\"style\":\"position: relative;\",\"name\":\"In voluptas sint exercitation eius voluptas reprehenderit praesentium reprehenderit impedit et ex aut\"},{\"style\":\"position: relative;\",\"name\":\"Neque esse incididunt accusantium et sint aut anim ad officia aperiam veniam reprehenderit proident eos eveniet\"},{\"style\":\"position: relative;\",\"name\":\"Quia earum qui facere iure minus sit dolore atque perspiciatis sit vel eaque sit harum et\"},{\"style\":\"position: relative;\",\"name\":\"Voluptas aut atque aute in Nam elit est in est nostrum quia et dolore\"},{\"style\":\"position: relative;\",\"name\":\"Ipsum consequatur iure mollitia autem eos tempora molestiae quo commodi nihil corporis fuga Non in possimus aliquip\"},{\"style\":\"position: relative;\",\"name\":\"Repellendus Ratione ut laborum Quibusdam dicta officia natus qui ullam sit dolorem ut at consequatur officia recusandae Eum alias nobis\"},{\"style\":\"position: relative;\",\"name\":\"Eligendi dolores nemo qui eiusmod est corporis molestiae non fuga Ipsa corporis officia sit velit\"},{\"style\":\"position: relative;\",\"name\":\"Ea aliquip non quibusdam sunt\"},{\"style\":\"position: relative;\",\"name\":\"Facilis deleniti enim Nam excepturi eveniet magna deserunt\"},{\"style\":\"position: relative;\",\"name\":\"A et nulla ut vel aute molestiae quasi autem officiis duis voluptate ad in\"},{\"style\":\"position: relative;\",\"name\":\"Elit et accusamus ut tempore fugit aut aut labore voluptas iste assumenda do\"},{\"style\":\"position: relative;\",\"name\":\"Dolore sint voluptate deleniti alias ab vero dolor soluta molestiae sunt quasi incidunt voluptates temporibus recusandae Dolores temporibus voluptate aliqua\"},{\"style\":\"position: relative;\",\"name\":\"Nisi laboriosam quia officia explicabo Est dolor est vel ex quis ipsum debitis dolorem corrupti eu autem fugiat mollit aliquip\"},{\"style\":\"position: relative;\",\"name\":\"Quibusdam id veritatis aliquid aut velit id elit animi et facilis inventore sint maxime aliqua Rerum magnam obcaecati vitae molestias\"},{\"style\":\"position: relative;\",\"name\":\"Delectus rerum repellendus Dignissimos quas reprehenderit placeat cum et consequatur harum odit\"},{\"style\":\"position: relative;\",\"name\":\"Dolor nemo voluptate commodo ipsum porro\"}]', '[{\"style\":\"position: relative;\",\"name\":\"Est praesentium consectetur consequatur est consequatur Id pariatur Incididunt enim non velit ab corporis sed laboriosam aliquam\"},{\"style\":\"position: relative;\",\"name\":\"Voluptas placeat ullamco est omnis illo voluptate quibusdam cupidatat delectus quia distinctio Illum in occaecat suscipit\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hold', NULL, NULL, '2018-09-03 04:45:54'),
(4, 'Sutra Yatayat', '12122', 'Bha.2.Kha 1212', 1, 4, 2, 'b5rLNBZQcy0xob0Z.jpg', '[{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"},{\"style\":\"position: relative;\",\"name\":\"\"}]', '[{\"style\":\"position: relative;\",\"name\":\"Entry\"},{\"style\":\"position: relative;\",\"name\":\"Driver\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-07 05:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `bustypes`
--

CREATE TABLE `bustypes` (
  `bustypes_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bustypes`
--

INSERT INTO `bustypes` (`bustypes_id`, `title`, `image`, `seat`, `created_at`, `updated_at`) VALUES
(1, 'AC', NULL, NULL, NULL, NULL),
(2, 'Hice', NULL, NULL, NULL, NULL),
(3, 'Delauxe', NULL, NULL, NULL, NULL),
(4, 'Metro', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `feedbacks_id` int(10) UNSIGNED NOT NULL,
  `fname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`feedbacks_id`, `fname`, `lname`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'bhattasuraj76@gmail.com', '131313133', 'This is all of it ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `f_a_qs`
--

CREATE TABLE `f_a_qs` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `question` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_a_qs`
--

INSERT INTO `f_a_qs` (`faq_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Rerum modi sapiente quo culpa sed?', 'lorammsdfasdfasd', '2018-09-07 05:21:50', '2018-09-07 05:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `galleries_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guests_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guests_id`, `name`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'None', 'None', NULL, NULL),
(2, 'Guests', '9848126204', NULL, NULL),
(3, 'Judith Gordon', 'Inventore itaque do quod impedit in quis velit est', '2018-08-30 02:26:45', '2018-08-30 02:26:45'),
(4, 'Judith Gordon', 'Inventore itaque do quod impedit in quis velit est', '2018-08-30 02:28:48', '2018-08-30 02:28:48'),
(5, 'Judith Gordon', 'Inventore itaque do quod impedit in quis velit est', '2018-08-30 02:30:05', '2018-08-30 02:30:05'),
(6, 'Judith Gordon', 'Inventore itaque do quod impedit in quis velit est', '2018-08-30 02:30:21', '2018-08-30 02:30:21'),
(7, 'Dorothy Joyner', 'Reprehenderit aliquip odio laboris laborum aut qui laboris cillum ducimus et et exercitationem provident delectus dicta sed quis et provident', '2018-08-30 02:30:46', '2018-08-30 02:30:46'),
(8, 'Dorothy Joyner', 'Reprehenderit aliquip odio laboris laborum aut qui laboris cillum ducimus et et exercitationem provident delectus dicta sed quis et provident', '2018-08-30 02:31:34', '2018-08-30 02:31:34'),
(9, 'Alexis Wong', 'Autem eos accusamus tempor perspiciatis est aliquip totam iste odit magna officia eos magnam corporis sunt elit pariatur', '2018-09-06 00:23:00', '2018-09-06 00:23:00'),
(10, 'Cadman Williamson', 'Et quaerat incididunt duis ea fugit dignissimos ut omnis quos blanditiis tempora ullamco sunt reprehenderit qui quia rerum proident praesentium', '2018-09-07 05:14:18', '2018-09-07 05:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menus_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_08_05_085258_create_banners_table', 1),
(2, '2018_08_06_083312_create_users_table', 1),
(3, '2018_08_08_051948_create_galleries_table', 1),
(4, '2018_08_08_062232_create_blogs_table', 1),
(5, '2018_08_08_084459_create_menus_table', 1),
(6, '2018_08_09_054031_create_teams_table', 1),
(7, '2018_08_10_081743_create_testimonials_table', 1),
(8, '2018_08_10_081905_create_feedbacks_table', 1),
(9, '2018_08_10_082100_create_whyus_table', 1),
(10, '2018_08_14_064206_create_bustypes_table', 1),
(11, '2018_08_15_053623_create_vendors_table', 1),
(12, '2018_08_15_055206_create_travellers_table', 1),
(13, '2018_08_15_083633_create_admins_table', 1),
(14, '2018_08_16_063127_create_routes_table', 1),
(15, '2018_08_16_081548_create_buses_table', 1),
(16, '2018_08_16_121721_create_guests_table', 1),
(17, '2018_08_16_121858_create_bookings_table', 1),
(18, '2018_08_17_094418_create_schedules_table', 2),
(27, '2018_08_28_103721_create_f_a_qs_table', 3),
(28, '2018_08_28_103856_create_t_n_cs_table', 3),
(29, '2018_09_04_074303_create_passengers_table', 4),
(30, '2018_09_06_073129_create_whoweares_table', 4),
(31, '2018_09_06_073516_create_whatweoffers_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passengers_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buses_id` int(10) UNSIGNED NOT NULL,
  `bookings_id` int(10) UNSIGNED NOT NULL,
  `schedules_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `routes_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_cover` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`routes_id`, `title`, `from`, `to`, `city_cover`, `created_at`, `updated_at`) VALUES
(1, 'Kathmandu-Kanchanpur', 'Kathmandu', 'Kanchanpur', NULL, NULL, NULL),
(2, 'Kathmandu-Dadeldhura', 'Kathmandu', 'Dadeldhura', NULL, NULL, NULL),
(3, 'Kathmandu-Jhapa', 'Kathmandu', 'Jhapa', NULL, NULL, NULL),
(4, 'Kathmandu-Saptari', 'Kathmandu', 'Saptari', NULL, NULL, NULL),
(22, NULL, NULL, NULL, '[{\"style\":\"position: relative; left: 175px; top: 14px;\"},{\"style\":\"position: relative; left: 307px; top: 0px;\"},{\"style\":\"position: relative; left: 320px; top: 0px;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"},{\"style\":\"position: relative;\"}]', '2018-08-31 01:56:49', '2018-08-31 01:56:49'),
(23, NULL, NULL, NULL, NULL, '2018-08-31 02:29:45', '2018-08-31 02:29:45'),
(24, NULL, NULL, NULL, NULL, '2018-08-31 02:30:14', '2018-08-31 02:30:14'),
(25, NULL, NULL, NULL, NULL, '2018-08-31 02:30:48', '2018-08-31 02:30:48'),
(26, NULL, NULL, NULL, NULL, '2018-08-31 02:31:05', '2018-08-31 02:31:05'),
(27, NULL, NULL, NULL, NULL, '2018-08-31 02:31:50', '2018-08-31 02:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `schedules_id` int(10) UNSIGNED NOT NULL,
  `buses_id` int(10) UNSIGNED NOT NULL,
  `departure_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departure_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shift` enum('day','night','none') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`schedules_id`, `buses_id`, `departure_date`, `departure_time`, `arrival_date`, `arrival_time`, `ticket_price`, `shift`, `created_at`, `updated_at`) VALUES
(1, 3, '2018-01-31', '04:05', '2018-02-02', '13:00', '1200', 'night', '2018-08-21 00:00:24', '2018-08-21 00:00:24'),
(3, 1, '2018-03-03', '02:01', '2018-01-04', '13:00', '1200', 'day', '2018-08-21 00:01:58', '2018-08-21 00:01:58'),
(4, 1, '2018-03-31', '01:56', '2018-01-31', '13:59', '2000', 'night', '2018-08-21 00:02:28', '2018-08-21 00:02:28'),
(7, 1, '2018/8/23', '10:30 pm', '2019/8/20', '13:00 pm', '1500', 'day', '2018-08-23 04:58:47', '2018-08-23 04:58:47'),
(8, 3, '08/26/2018', '12:00 pm', '21-09-2018', '13:00 pm', '1500', 'night', '2018-08-23 05:57:58', '2018-08-23 05:57:58'),
(9, 2, '2018/8/29', '12:00 pm', '2019/8/20', '13:00 pm', '1500', 'day', '2018-08-29 00:50:13', '2018-08-29 00:50:13'),
(10, 3, '08/26/2018', '12:00 pm', '2018/08/16', '13:00 pm', '1500', 'day', '2018-08-30 00:48:53', '2018-08-30 00:48:53'),
(12, 1, '08/26/2018', '12:00 pm', '2018/08/16', '13:00 pm', '15000', 'night', '2018-09-06 00:19:25', '2018-09-07 05:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teams_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `testimonials_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`testimonials_id`, `name`, `post`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Felicia Morrison', 'nn', '6ryYEtGGBRUB1DcN.htm', 'mnnnnn', '2018-09-07 05:27:36', '2018-09-07 05:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `travellers`
--

CREATE TABLE `travellers` (
  `travellers_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travellers`
--

INSERT INTO `travellers` (`travellers_id`, `name`, `email`, `password`, `image`, `address`, `contact`, `profile`, `created_at`, `updated_at`) VALUES
(1, NULL, 'none', '$2y$10$/XDHt.d1Y/n1RXeWIjgqKeVfo.lCqJD80OlOeAL0lZ44CjFvCyu1e', NULL, NULL, NULL, 'offline', NULL, NULL),
(2, 'Joshua', 'traveller@gmail.com', '$2y$10$RMGxVwqE21cwXePwn3giLOvdicEq/3vyhVU94tGfBj9W4oho4QhiS', NULL, '12122', '1232123321', 'offline', NULL, '2018-09-07 05:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `t_n_cs`
--

CREATE TABLE `t_n_cs` (
  `tnc_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` enum('admin','traveller','vendor') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'traveller',
  `verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('verified','hold','','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `email`, `password`, `user_type`, `verification_code`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin00@gmail.com', '$2y$10$4oTSdm4haEobEPh1/5jFY.rrIHSFFIz8IgYbkyGxR9FQJofxB6/Cu', 'admin', '', 'verified', NULL, NULL, NULL),
(2, 'admin@gmail.com', '$2y$10$GExGvUH1pjlouOwCkHfHk.EgvTVj7PCt31heJE8x1zHTBY.H1hY.e', 'admin', '', 'verified', 'OE9yTORciF8CDCa1Wy5t81ui9YcX17Jl8JKojf1Pa91FRHZcUEvIRbqffNtv', NULL, NULL),
(3, 'vendor@gmail.com', '$2y$10$/lhFKkbwiEhEMcD6FK.B5OTpIt8Huvo2somZGaKJaYV2mzVGlAHAq', 'vendor', '', 'verified', '7tl84Mu4cLSHUv1yc4H2nCwdaYQFb4AgHsiiWI3IS4lPCYzVyEUOg496fTDG', NULL, NULL),
(4, 'traveller@gmail.com', '$2y$10$/JHPaJYHkAk/4XXKN2LX1.l6qOscIbOnWCIJJwObQZnNkzObowaai', 'traveller', '', 'verified', 'f0bEH8lK6axveLPLdXlG48gxAOmf734Bk263pDELECdlwxsMtp5YwvTNIrOX', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendors_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` enum('online','offline') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendors_id`, `name`, `email`, `password`, `image`, `address`, `contact`, `profile`, `created_at`, `updated_at`) VALUES
(1, 'Joshua bb', 'vendor@gmail.com', '$2y$10$MalW4fEFrCLk2ApAiJpMMO9lnclo.8HKMtwoS3KCmJKgrnlpfCpKq', 'z8RiaBqRjCojOPl7.jpg', '121212', '1232123321', 'offline', NULL, '2018-09-07 05:14:42'),
(2, NULL, 'gomyvypoze@mailinator.net', 'Pa$$w0rd!', NULL, NULL, NULL, 'online', '2018-08-27 01:50:19', '2018-08-27 01:50:19'),
(3, NULL, 'nyleh@mailinator.net', '$2y$10$EGu2kZTpmcaSEDaxglbrs.u1UywX.JaqqmIvDvkjet1ktcmlgOaXq', NULL, NULL, NULL, 'online', '2018-08-27 02:01:22', '2018-08-27 02:01:22'),
(4, NULL, 'fidowyp@mailinator.net', '$2y$10$llvb2.BXWjgA3r5iSP9QSO2BoYD8C6cK909T5I6cOzK20f.HFsGDu', NULL, NULL, NULL, 'online', '2018-08-27 02:06:41', '2018-08-27 02:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `whatweoffers`
--

CREATE TABLE `whatweoffers` (
  `whatweoffer_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whatweoffers`
--

INSERT INTO `whatweoffers` (`whatweoffer_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nulla illo aut minima beatae?', 'USL9sYKTsCCCqa4S_group.PNG', '\r\n	Tempor est officiis numquam et explicabo Reprehenderit perferendis suscipit nemo maxime earum pariatur Numquam maiores eum sapiente et officia earumTempor est officiis numquam et explicabo Reprehenderit perferendis suscipit nemo maxime earum pariatur Numquam maiores eum sapiente et officia earum\r\n', '2018-09-07 05:38:35', '2018-09-07 05:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `whoweares`
--

CREATE TABLE `whoweares` (
  `whoweare_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whoweares`
--

INSERT INTO `whoweares` (`whoweare_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Nulla illo aut minima beatae?', '5E65ZTKuiMxXcb2o_group.PNG', 'this is us', '2018-09-07 05:52:54', '2018-09-07 05:52:54'),
(3, 'Nulla illo aut minima beatae?', 'q4crtUBlnTnk7wv0_Capture.PNG', 'Nulla illo aut minima beatae?Nulla illo aut minima beatae?Nulla illo aut minima beatae?', '2018-09-07 05:53:46', '2018-09-07 05:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `whyus`
--

CREATE TABLE `whyus` (
  `whyus_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whyus`
--

INSERT INTO `whyus` (`whyus_id`, `title`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Nulla illo aut minima beatae?', 'epqR2atHO82ypnE2_group.PNG', '\r\n	Tempor est officiis numquam et explicabo Reprehenderit perferendis suscipit nemo maxime earum pariatur Numquam maiores eum sapiente et officia earum\r\n', '2018-09-07 05:36:59', '2018-09-07 05:36:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admins_id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blogs_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookings_id`),
  ADD KEY `bookings_travellers_id_foreign` (`travellers_id`),
  ADD KEY `bookings_guests_id_foreign` (`guests_id`),
  ADD KEY `bookings_buses_id_foreign` (`buses_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`buses_id`),
  ADD KEY `buses_vendors_id_foreign` (`vendors_id`),
  ADD KEY `buses_routes_id_foreign` (`routes_id`),
  ADD KEY `buses_bustypes_id_foreign` (`bustypes_id`);

--
-- Indexes for table `bustypes`
--
ALTER TABLE `bustypes`
  ADD PRIMARY KEY (`bustypes_id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`feedbacks_id`);

--
-- Indexes for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`galleries_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guests_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menus_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passengers_id`),
  ADD KEY `passengers_buses_id_foreign` (`buses_id`),
  ADD KEY `passengers_bookings_id_foreign` (`bookings_id`),
  ADD KEY `passengers_schedules_id_foreign` (`schedules_id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`routes_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`schedules_id`),
  ADD KEY `schedules_buses_id_foreign` (`buses_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teams_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`testimonials_id`);

--
-- Indexes for table `travellers`
--
ALTER TABLE `travellers`
  ADD PRIMARY KEY (`travellers_id`),
  ADD UNIQUE KEY `travellers_email_unique` (`email`);

--
-- Indexes for table `t_n_cs`
--
ALTER TABLE `t_n_cs`
  ADD PRIMARY KEY (`tnc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendors_id`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `whatweoffers`
--
ALTER TABLE `whatweoffers`
  ADD PRIMARY KEY (`whatweoffer_id`);

--
-- Indexes for table `whoweares`
--
ALTER TABLE `whoweares`
  ADD PRIMARY KEY (`whoweare_id`);

--
-- Indexes for table `whyus`
--
ALTER TABLE `whyus`
  ADD PRIMARY KEY (`whyus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admins_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blogs_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookings_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `buses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bustypes`
--
ALTER TABLE `bustypes`
  MODIFY `bustypes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `feedbacks_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `f_a_qs`
--
ALTER TABLE `f_a_qs`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `galleries_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guests_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passengers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `routes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `schedules_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teams_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `testimonials_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travellers`
--
ALTER TABLE `travellers`
  MODIFY `travellers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_n_cs`
--
ALTER TABLE `t_n_cs`
  MODIFY `tnc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendors_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `whatweoffers`
--
ALTER TABLE `whatweoffers`
  MODIFY `whatweoffer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whoweares`
--
ALTER TABLE `whoweares`
  MODIFY `whoweare_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `whyus`
--
ALTER TABLE `whyus`
  MODIFY `whyus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_buses_id_foreign` FOREIGN KEY (`buses_id`) REFERENCES `buses` (`buses_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_guests_id_foreign` FOREIGN KEY (`guests_id`) REFERENCES `guests` (`guests_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_travellers_id_foreign` FOREIGN KEY (`travellers_id`) REFERENCES `travellers` (`travellers_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `buses_bustypes_id_foreign` FOREIGN KEY (`bustypes_id`) REFERENCES `bustypes` (`bustypes_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buses_routes_id_foreign` FOREIGN KEY (`routes_id`) REFERENCES `routes` (`routes_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buses_vendors_id_foreign` FOREIGN KEY (`vendors_id`) REFERENCES `vendors` (`vendors_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passengers`
--
ALTER TABLE `passengers`
  ADD CONSTRAINT `passengers_bookings_id_foreign` FOREIGN KEY (`bookings_id`) REFERENCES `bookings` (`bookings_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `passengers_buses_id_foreign` FOREIGN KEY (`buses_id`) REFERENCES `buses` (`buses_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `passengers_schedules_id_foreign` FOREIGN KEY (`schedules_id`) REFERENCES `schedules` (`schedules_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_buses_id_foreign` FOREIGN KEY (`buses_id`) REFERENCES `buses` (`buses_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
