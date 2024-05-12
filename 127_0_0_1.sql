-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 12:29 PM
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
-- Database: `book_review_ap`
--
CREATE DATABASE IF NOT EXISTS `book_review_ap` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book_review_ap`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_09_131534_alter_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('A5xojNmBrveZCJtN73gKPH2c9dIOTYqDvV04688q', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidUtwWndram9nSHhNdVhadnpwS3RXMVE1c21uVnFqTEthTFNDVmNRaiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FjY291bnQvcHJvZmlsZSI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWNjb3VudC9wcm9maWxlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1715264303),
('JHxNgACk9dhL0JCuhbIdbXsisoFVTkIjWbnUikc0', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWDhaZ00zWWZtWU1uTkpVY2xQem1qYks2WUZubVp4cWVQaVZZY3A4MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hY2NvdW50L3Byb2ZpbGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWNjb3VudC9wcm9maWxlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1715270076);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `image`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$12$sWzLyiBC6MFfvphuhaQvjuToAmISr6MvJiX0t991WTtpgBwk.cbaG', 'user', NULL, '2024-05-08 11:24:07', '2024-05-08 11:24:07'),
(2, 'Naim', 'naim@gmail.com', '1715270075.webp', NULL, '$2y$12$5UsGVPCVHv7oI2XxxJojlewdBosMw9Bs4teibaagnYYXorWNGWXpu', 'user', NULL, '2024-05-09 07:11:14', '2024-05-09 11:54:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ecom`
--
CREATE DATABASE IF NOT EXISTS `ecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecom`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hilario Mohr', 'Collin Kozey', 1, '2024-05-08 09:39:41', '2024-05-08 09:39:41'),
(2, 'Ms. Addie Wuckert', 'Dr. Rey Leuschke', 0, '2024-05-08 09:39:41', '2024-05-08 09:39:41'),
(3, 'Breana Champlin MD', 'Trent Rau', 0, '2024-05-08 09:39:41', '2024-05-08 09:39:41'),
(4, 'Dr. Ruth Bernhard', 'Kenyatta Lindgren Jr.', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(5, 'Jean Block', 'Aubree Walter', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(6, 'Hoyt Johnston', 'Malvina Berge', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(7, 'Nico Moen', 'Mrs. Joannie Rosenbaum', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(8, 'Winnifred Hackett', 'Ahmed Bauch', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(9, 'Mr. Green Hyatt', 'Alana Bergnaum V', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(10, 'Olaf Leffler', 'Mr. Adelbert Farrell', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(11, 'Mr. Deangelo Mitchell', 'Gabrielle Romaguera', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(12, 'Dr. Rahsaan Veum', 'Prof. Glennie Cummerata MD', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(13, 'Aditya King Sr.', 'Dr. Rasheed Moen', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(14, 'Westley Williamson', 'Robb Schneider', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(15, 'Salvador Hintz', 'Lora Gusikowski Jr.', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(16, 'Zechariah Kulas', 'Prof. Johann Konopelski', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(17, 'Demarcus D\'Amore', 'Aisha Heathcote', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(18, 'Anjali Sanford IV', 'Dr. Eugene Jerde', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(19, 'Agustina Miller', 'Taya O\'Reilly DVM', 1, '2024-05-08 09:39:42', '2024-05-08 09:39:42'),
(20, 'Marjory Wintheiser MD', 'Amber Gleason', 0, '2024-05-08 09:39:42', '2024-05-08 09:39:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'NULL',
  `status` int(11) NOT NULL DEFAULT 1,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `showHome`, `created_at`, `updated_at`) VALUES
(1, 'Theron Hills', 'Miss Melyna Hammes', 'NULL', 0, 'No', '2024-05-08 09:38:05', '2024-05-08 09:38:05'),
(2, 'Prof. Kobe Armstrong IV', 'Domingo Legros', 'NULL', 0, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(3, 'Dr. Alfreda Stracke', 'Mr. Roman Herzog DVM', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(4, 'Flossie Crona PhD', 'Zetta Pouros', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(5, 'Rossie Kirlin', 'Tamara Leannon', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(6, 'Angeline Hessel', 'Ms. Marisa Roberts IV', 'NULL', 0, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(7, 'Don Ferry', 'Anabel Ortiz', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(8, 'Bernita Dach', 'Prof. Favian Jacobson DDS', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(9, 'Larry Morissette', 'Kaylah Hand', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(10, 'Dr. Maeve Osinski', 'Greta Heidenreich', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(11, 'Bernadine Dare DVM', 'Mrs. Elsie Howe III', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(12, 'Samir Hirthe Jr.', 'Prof. Josefina Turcotte Sr.', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(13, 'Dr. Kaleb Waters I', 'Ari Ward', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(14, 'Leila Runte', 'Merle Heathcote', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(15, 'Meggie Maggio', 'Gwendolyn Dare', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(16, 'Kenna Mueller', 'Torey Kling', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(17, 'Mr. Nicholaus Metz PhD', 'Henry Von', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(18, 'Alvina Stark III', 'Jane Bartoletti', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(19, 'Mrs. Graciela Howell', 'Prof. Shana Krajcik DDS', 'NULL', 0, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(20, 'Jany O\'Hara', 'Alda Jacobi', 'NULL', 0, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(21, 'Sarina Carroll', 'Miss Teresa Powlowski PhD', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(22, 'Mr. Kim D\'Amore', 'Dr. Felicia Renner Sr.', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(23, 'Ms. Sheila Bartell', 'Hattie Rodriguez', 'NULL', 0, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(24, 'Reynold Huel', 'Eden Davis I', 'NULL', 1, 'No', '2024-05-08 09:38:06', '2024-05-08 09:38:06'),
(25, 'Belle Schimmel V', 'Ervin Hettinger DDS', 'NULL', 1, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07'),
(26, 'Dr. Arlo Pacocha', 'Margie Kuhic', 'NULL', 1, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07'),
(27, 'Alfonzo Spinka', 'Golda Kling Jr.', 'NULL', 0, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07'),
(28, 'Dr. June Ullrich', 'Cali Kihn', 'NULL', 1, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07'),
(29, 'Maybelle Schmidt', 'Peter Maggio', 'NULL', 0, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07'),
(30, 'Prof. Viola Herzog IV', 'Maida Ward', 'NULL', 1, 'No', '2024-05-08 09:38:07', '2024-05-08 09:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United States', 'US', NULL, NULL),
(2, 'Canada', 'CA', NULL, NULL),
(3, 'Afghanistan', 'AF', NULL, NULL),
(4, 'Albania', 'AL', NULL, NULL),
(5, 'Algeria', 'DZ', NULL, NULL),
(6, 'American Samoa', 'AS', NULL, NULL),
(7, 'Andorra', 'AD', NULL, NULL),
(8, 'Angola', 'AO', NULL, NULL),
(9, 'Anguilla', 'AI', NULL, NULL),
(10, 'Antarctica', 'AQ', NULL, NULL),
(11, 'Antigua and/or Barbuda', 'AG', NULL, NULL),
(12, 'Argentina', 'AR', NULL, NULL),
(13, 'Armenia', 'AM', NULL, NULL),
(14, 'Aruba', 'AW', NULL, NULL),
(15, 'Australia', 'AU', NULL, NULL),
(16, 'Austria', 'AT', NULL, NULL),
(17, 'Azerbaijan', 'AZ', NULL, NULL),
(18, 'Bahamas', 'BS', NULL, NULL),
(19, 'Bahrain', 'BH', NULL, NULL),
(20, 'Bangladesh', 'BD', NULL, NULL),
(21, 'Barbados', 'BB', NULL, NULL),
(22, 'Belarus', 'BY', NULL, NULL),
(23, 'Belgium', 'BE', NULL, NULL),
(24, 'Belize', 'BZ', NULL, NULL),
(25, 'Benin', 'BJ', NULL, NULL),
(26, 'Bermuda', 'BM', NULL, NULL),
(27, 'Bhutan', 'BT', NULL, NULL),
(28, 'Bolivia', 'BO', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'BA', NULL, NULL),
(30, 'Botswana', 'BW', NULL, NULL),
(31, 'Bouvet Island', 'BV', NULL, NULL),
(32, 'Brazil', 'BR', NULL, NULL),
(33, 'British lndian Ocean Territory', 'IO', NULL, NULL),
(34, 'Brunei Darussalam', 'BN', NULL, NULL),
(35, 'Bulgaria', 'BG', NULL, NULL),
(36, 'Burkina Faso', 'BF', NULL, NULL),
(37, 'Burundi', 'BI', NULL, NULL),
(38, 'Cambodia', 'KH', NULL, NULL),
(39, 'Cameroon', 'CM', NULL, NULL),
(40, 'Cape Verde', 'CV', NULL, NULL),
(41, 'Cayman Islands', 'KY', NULL, NULL),
(42, 'Central African Republic', 'CF', NULL, NULL),
(43, 'Chad', 'TD', NULL, NULL),
(44, 'Chile', 'CL', NULL, NULL),
(45, 'China', 'CN', NULL, NULL),
(46, 'Christmas Island', 'CX', NULL, NULL),
(47, 'Cocos (Keeling) Islands', 'CC', NULL, NULL),
(48, 'Colombia', 'CO', NULL, NULL),
(49, 'Comoros', 'KM', NULL, NULL),
(50, 'Congo', 'CG', NULL, NULL),
(51, 'Cook Islands', 'CK', NULL, NULL),
(52, 'Costa Rica', 'CR', NULL, NULL),
(53, 'Croatia (Hrvatska)', 'HR', NULL, NULL),
(54, 'Cuba', 'CU', NULL, NULL),
(55, 'Cyprus', 'CY', NULL, NULL),
(56, 'Czech Republic', 'CZ', NULL, NULL),
(57, 'Democratic Republic of Congo', 'CD', NULL, NULL),
(58, 'Denmark', 'DK', NULL, NULL),
(59, 'Djibouti', 'DJ', NULL, NULL),
(60, 'Dominica', 'DM', NULL, NULL),
(61, 'Dominican Republic', 'DO', NULL, NULL),
(62, 'East Timor', 'TP', NULL, NULL),
(63, 'Ecudaor', 'EC', NULL, NULL),
(64, 'Egypt', 'EG', NULL, NULL),
(65, 'El Salvador', 'SV', NULL, NULL),
(66, 'Equatorial Guinea', 'GQ', NULL, NULL),
(67, 'Eritrea', 'ER', NULL, NULL),
(68, 'Estonia', 'EE', NULL, NULL),
(69, 'Ethiopia', 'ET', NULL, NULL),
(70, 'Falkland Islands (Malvinas)', 'FK', NULL, NULL),
(71, 'Faroe Islands', 'FO', NULL, NULL),
(72, 'Fiji', 'FJ', NULL, NULL),
(73, 'Finland', 'FI', NULL, NULL),
(74, 'France', 'FR', NULL, NULL),
(75, 'France, Metropolitan', 'FX', NULL, NULL),
(76, 'French Guiana', 'GF', NULL, NULL),
(77, 'French Polynesia', 'PF', NULL, NULL),
(78, 'French Southern Territories', 'TF', NULL, NULL),
(79, 'Gabon', 'GA', NULL, NULL),
(80, 'Gambia', 'GM', NULL, NULL),
(81, 'Georgia', 'GE', NULL, NULL),
(82, 'Germany', 'DE', NULL, NULL),
(83, 'Ghana', 'GH', NULL, NULL),
(84, 'Gibraltar', 'GI', NULL, NULL),
(85, 'Greece', 'GR', NULL, NULL),
(86, 'Greenland', 'GL', NULL, NULL),
(87, 'Grenada', 'GD', NULL, NULL),
(88, 'Guadeloupe', 'GP', NULL, NULL),
(89, 'Guam', 'GU', NULL, NULL),
(90, 'Guatemala', 'GT', NULL, NULL),
(91, 'Guinea', 'GN', NULL, NULL),
(92, 'Guinea-Bissau', 'GW', NULL, NULL),
(93, 'Guyana', 'GY', NULL, NULL),
(94, 'Haiti', 'HT', NULL, NULL),
(95, 'Heard and Mc Donald Islands', 'HM', NULL, NULL),
(96, 'Honduras', 'HN', NULL, NULL),
(97, 'Hong Kong', 'HK', NULL, NULL),
(98, 'Hungary', 'HU', NULL, NULL),
(99, 'Iceland', 'IS', NULL, NULL),
(100, 'India', 'IN', NULL, NULL),
(101, 'Indonesia', 'ID', NULL, NULL),
(102, 'Iran (Islamic Republic of)', 'IR', NULL, NULL),
(103, 'Iraq', 'IQ', NULL, NULL),
(104, 'Ireland', 'IE', NULL, NULL),
(105, 'Israel', 'IL', NULL, NULL),
(106, 'Italy', 'IT', NULL, NULL),
(107, 'Ivory Coast', 'CI', NULL, NULL),
(108, 'Jamaica', 'JM', NULL, NULL),
(109, 'Japan', 'JP', NULL, NULL),
(110, 'Jordan', 'JO', NULL, NULL),
(111, 'Kazakhstan', 'KZ', NULL, NULL),
(112, 'Kenya', 'KE', NULL, NULL),
(113, 'Kiribati', 'KI', NULL, NULL),
(114, 'Korea, Democratic People\'s Republic of', 'KP', NULL, NULL),
(115, 'Korea, Republic of', 'KR', NULL, NULL),
(116, 'Kuwait', 'KW', NULL, NULL),
(117, 'Kyrgyzstan', 'KG', NULL, NULL),
(118, 'Lao People\'s Democratic Republic', 'LA', NULL, NULL),
(119, 'Latvia', 'LV', NULL, NULL),
(120, 'Lebanon', 'LB', NULL, NULL),
(121, 'Lesotho', 'LS', NULL, NULL),
(122, 'Liberia', 'LR', NULL, NULL),
(123, 'Libyan Arab Jamahiriya', 'LY', NULL, NULL),
(124, 'Liechtenstein', 'LI', NULL, NULL),
(125, 'Lithuania', 'LT', NULL, NULL),
(126, 'Luxembourg', 'LU', NULL, NULL),
(127, 'Macau', 'MO', NULL, NULL),
(128, 'Macedonia', 'MK', NULL, NULL),
(129, 'Madagascar', 'MG', NULL, NULL),
(130, 'Malawi', 'MW', NULL, NULL),
(131, 'Malaysia', 'MY', NULL, NULL),
(132, 'Maldives', 'MV', NULL, NULL),
(133, 'Mali', 'ML', NULL, NULL),
(134, 'Malta', 'MT', NULL, NULL),
(135, 'Marshall Islands', 'MH', NULL, NULL),
(136, 'Martinique', 'MQ', NULL, NULL),
(137, 'Mauritania', 'MR', NULL, NULL),
(138, 'Mauritius', 'MU', NULL, NULL),
(139, 'Mayotte', 'TY', NULL, NULL),
(140, 'Mexico', 'MX', NULL, NULL),
(141, 'Micronesia, Federated States of', 'FM', NULL, NULL),
(142, 'Moldova, Republic of', 'MD', NULL, NULL),
(143, 'Monaco', 'MC', NULL, NULL),
(144, 'Mongolia', 'MN', NULL, NULL),
(145, 'Montserrat', 'MS', NULL, NULL),
(146, 'Morocco', 'MA', NULL, NULL),
(147, 'Mozambique', 'MZ', NULL, NULL),
(148, 'Myanmar', 'MM', NULL, NULL),
(149, 'Namibia', 'NA', NULL, NULL),
(150, 'Nauru', 'NR', NULL, NULL),
(151, 'Nepal', 'NP', NULL, NULL),
(152, 'Netherlands', 'NL', NULL, NULL),
(153, 'Netherlands Antilles', 'AN', NULL, NULL),
(154, 'New Caledonia', 'NC', NULL, NULL),
(155, 'New Zealand', 'NZ', NULL, NULL),
(156, 'Nicaragua', 'NI', NULL, NULL),
(157, 'Niger', 'NE', NULL, NULL),
(158, 'Nigeria', 'NG', NULL, NULL),
(159, 'Niue', 'NU', NULL, NULL),
(160, 'Norfork Island', 'NF', NULL, NULL),
(161, 'Northern Mariana Islands', 'MP', NULL, NULL),
(162, 'Norway', 'NO', NULL, NULL),
(163, 'Oman', 'OM', NULL, NULL),
(164, 'Pakistan', 'PK', NULL, NULL),
(165, 'Palau', 'PW', NULL, NULL),
(166, 'Panama', 'PA', NULL, NULL),
(167, 'Papua New Guinea', 'PG', NULL, NULL),
(168, 'Paraguay', 'PY', NULL, NULL),
(169, 'Peru', 'PE', NULL, NULL),
(170, 'Philippines', 'PH', NULL, NULL),
(171, 'Pitcairn', 'PN', NULL, NULL),
(172, 'Poland', 'PL', NULL, NULL),
(173, 'Portugal', 'PT', NULL, NULL),
(174, 'Puerto Rico', 'PR', NULL, NULL),
(175, 'Qatar', 'QA', NULL, NULL),
(176, 'Republic of South Sudan', 'SS', NULL, NULL),
(177, 'Reunion', 'RE', NULL, NULL),
(178, 'Romania', 'RO', NULL, NULL),
(179, 'Russian Federation', 'RU', NULL, NULL),
(180, 'Rwanda', 'RW', NULL, NULL),
(181, 'Saint Kitts and Nevis', 'KN', NULL, NULL),
(182, 'Saint Lucia', 'LC', NULL, NULL),
(183, 'Saint Vincent and the Grenadines', 'VC', NULL, NULL),
(184, 'Samoa', 'WS', NULL, NULL),
(185, 'San Marino', 'SM', NULL, NULL),
(186, 'Sao Tome and Principe', 'ST', NULL, NULL),
(187, 'Saudi Arabia', 'SA', NULL, NULL),
(188, 'Senegal', 'SN', NULL, NULL),
(189, 'Serbia', 'RS', NULL, NULL),
(190, 'Seychelles', 'SC', NULL, NULL),
(191, 'Sierra Leone', 'SL', NULL, NULL),
(192, 'Singapore', 'SG', NULL, NULL),
(193, 'Slovakia', 'SK', NULL, NULL),
(194, 'Slovenia', 'SI', NULL, NULL),
(195, 'Solomon Islands', 'SB', NULL, NULL),
(196, 'Somalia', 'SO', NULL, NULL),
(197, 'South Africa', 'ZA', NULL, NULL),
(198, 'South Georgia South Sandwich Islands', 'GS', NULL, NULL),
(199, 'Spain', 'ES', NULL, NULL),
(200, 'Sri Lanka', 'LK', NULL, NULL),
(201, 'St. Helena', 'SH', NULL, NULL),
(202, 'St. Pierre and Miquelon', 'PM', NULL, NULL),
(203, 'Sudan', 'SD', NULL, NULL),
(204, 'Suriname', 'SR', NULL, NULL),
(205, 'Svalbarn and Jan Mayen Islands', 'SJ', NULL, NULL),
(206, 'Swaziland', 'SZ', NULL, NULL),
(207, 'Sweden', 'SE', NULL, NULL),
(208, 'Switzerland', 'CH', NULL, NULL),
(209, 'Syrian Arab Republic', 'SY', NULL, NULL),
(210, 'Taiwan', 'TW', NULL, NULL),
(211, 'Tajikistan', 'TJ', NULL, NULL),
(212, 'Tanzania, United Republic of', 'TZ', NULL, NULL),
(213, 'Thailand', 'TH', NULL, NULL),
(214, 'Togo', 'TG', NULL, NULL),
(215, 'Tokelau', 'TK', NULL, NULL),
(216, 'Tonga', 'TO', NULL, NULL),
(217, 'Trinidad and Tobago', 'TT', NULL, NULL),
(218, 'Tunisia', 'TN', NULL, NULL),
(219, 'Turkey', 'TR', NULL, NULL),
(220, 'Turkmenistan', 'TM', NULL, NULL),
(221, 'Turks and Caicos Islands', 'TC', NULL, NULL),
(222, 'Tuvalu', 'TV', NULL, NULL),
(223, 'Uganda', 'UG', NULL, NULL),
(224, 'Ukraine', 'UA', NULL, NULL),
(225, 'United Arab Emirates', 'AE', NULL, NULL),
(226, 'United Kingdom', 'GB', NULL, NULL),
(227, 'United States minor outlying islands', 'UM', NULL, NULL),
(228, 'Uruguay', 'UY', NULL, NULL),
(229, 'Uzbekistan', 'UZ', NULL, NULL),
(230, 'Vanuatu', 'VU', NULL, NULL),
(231, 'Vatican City State', 'VA', NULL, NULL),
(232, 'Venezuela', 'VE', NULL, NULL),
(233, 'Vietnam', 'VN', NULL, NULL),
(234, 'Virgin Islands (British)', 'VG', NULL, NULL),
(235, 'Virgin Islands (U.S.)', 'VI', NULL, NULL),
(236, 'Wallis and Futuna Islands', 'WF', NULL, NULL),
(237, 'Western Sahara', 'EH', NULL, NULL),
(238, 'Yemen', 'YE', NULL, NULL),
(239, 'Yugoslavia', 'YU', NULL, NULL),
(240, 'Zaire', 'ZR', NULL, NULL),
(241, 'Zambia', 'ZM', NULL, NULL),
(242, 'Zimbabwe', 'ZW', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_coupons`
--

CREATE TABLE `discount_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_uses` int(11) DEFAULT NULL,
  `max_uses_user` int(11) DEFAULT NULL,
  `type` enum('percent','fixed') NOT NULL DEFAULT 'fixed',
  `discount_amount` double(10,2) NOT NULL,
  `min_amount` double(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `starts_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_28_083836_alter_users_table', 1),
(6, '2023_12_10_074936_create_categories_table', 1),
(7, '2023_12_13_090758_create_temp_images_table', 1),
(8, '2023_12_18_143329_create_sub_categories_table', 1),
(9, '2023_12_21_152735_create_brands_table', 1),
(10, '2023_12_24_072216_create_products_table', 1),
(11, '2023_12_24_072250_create_product_images_table', 1),
(12, '2024_01_01_152154_alter_categories_table', 1),
(13, '2024_01_01_153730_alter_producst_table', 1),
(14, '2024_01_01_161949_alter_sub_categories', 1),
(15, '2024_01_09_093125_alter_products_table', 1),
(16, '2024_03_11_104637_alter_user_table', 1),
(17, '2024_03_16_102723_create_countries_table', 1),
(18, '2024_03_16_113408_create_customer_addresses_table', 1),
(19, '2024_03_21_103244_create_shipping_charges_table', 1),
(20, '2024_03_23_102220_create_discount_coupons_table', 1),
(21, '2024_03_25_135751_create_orders_table', 1),
(22, '2024_03_25_163202_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` double(10,2) NOT NULL,
  `shipping` double(10,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_code_id` bigint(20) UNSIGNED DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `grand_total` double(10,2) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `related_products` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `compare_price` double(10,2) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `track_qty` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  `qty` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `short_description`, `shipping_returns`, `related_products`, `price`, `compare_price`, `category_id`, `sub_category_id`, `brand_id`, `is_featured`, `sku`, `barcode`, `track_qty`, `qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Beau Smitham DDS', 'beau-smitham-dds', NULL, NULL, NULL, NULL, 371.00, NULL, 1, 9, 4, 'Yes', '98399', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(2, 'Prof. Jo Windler', 'prof-jo-windler', NULL, NULL, NULL, NULL, 912.00, NULL, 1, 9, 5, 'Yes', '75081', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(3, 'Ms. Charlene Fay DVM', 'ms-charlene-fay-dvm', NULL, NULL, NULL, NULL, 309.00, NULL, 1, 9, 5, 'Yes', '19350', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(4, 'Dr. Brandon Ullrich DDS', 'dr-brandon-ullrich-dds', NULL, NULL, NULL, NULL, 542.00, NULL, 1, 1, 2, 'Yes', '21864', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(5, 'Korey O\'Hara MD', 'korey-ohara-md', NULL, NULL, NULL, NULL, 357.00, NULL, 1, 9, 4, 'Yes', '43109', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(6, 'Jeffery Powlowski', 'jeffery-powlowski', NULL, NULL, NULL, NULL, 856.00, NULL, 1, 1, 2, 'Yes', '47890', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(7, 'Deon Moore Sr.', 'deon-moore-sr', NULL, NULL, NULL, NULL, 138.00, NULL, 1, 9, 5, 'Yes', '5935', NULL, 'Yes', 10, 1, '2024-05-08 09:40:25', '2024-05-08 09:40:25'),
(8, 'Merl Conn', 'merl-conn', NULL, NULL, NULL, NULL, 557.00, NULL, 1, 9, 4, 'Yes', '54460', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(9, 'Prof. Enoch Heller', 'prof-enoch-heller', NULL, NULL, NULL, NULL, 677.00, NULL, 1, 10, 2, 'Yes', '3780', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(10, 'Dr. Francesca Schaden IV', 'dr-francesca-schaden-iv', NULL, NULL, NULL, NULL, 245.00, NULL, 1, 1, 2, 'Yes', '8332', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(11, 'Fletcher Emmerich', 'fletcher-emmerich', NULL, NULL, NULL, NULL, 206.00, NULL, 1, 10, 3, 'Yes', '95872', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(12, 'Kameron Hermann II', 'kameron-hermann-ii', NULL, NULL, NULL, NULL, 412.00, NULL, 1, 1, 5, 'Yes', '77031', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(13, 'Armando Kuhlman DDS', 'armando-kuhlman-dds', NULL, NULL, NULL, NULL, 805.00, NULL, 1, 9, 1, 'Yes', '30174', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(14, 'Oscar Kerluke', 'oscar-kerluke', NULL, NULL, NULL, NULL, 706.00, NULL, 1, 1, 5, 'Yes', '6910', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(15, 'Nikko Armstrong', 'nikko-armstrong', NULL, NULL, NULL, NULL, 765.00, NULL, 1, 1, 5, 'Yes', '95229', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(16, 'Miss Hilma Torphy V', 'miss-hilma-torphy-v', NULL, NULL, NULL, NULL, 866.00, NULL, 1, 10, 3, 'Yes', '44248', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(17, 'Seth DuBuque', 'seth-dubuque', NULL, NULL, NULL, NULL, 615.00, NULL, 1, 9, 2, 'Yes', '8850', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(18, 'Adrianna Fadel', 'adrianna-fadel', NULL, NULL, NULL, NULL, 366.00, NULL, 1, 1, 1, 'Yes', '23775', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(19, 'Vicenta Nader', 'vicenta-nader', NULL, NULL, NULL, NULL, 996.00, NULL, 1, 1, 4, 'Yes', '28173', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(20, 'Andre Oberbrunner PhD', 'andre-oberbrunner-phd', NULL, NULL, NULL, NULL, 151.00, NULL, 1, 1, 4, 'Yes', '28368', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(21, 'Velma Bernier', 'velma-bernier', NULL, NULL, NULL, NULL, 105.00, NULL, 1, 9, 4, 'Yes', '77687', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(22, 'Zola Abshire', 'zola-abshire', NULL, NULL, NULL, NULL, 878.00, NULL, 1, 10, 4, 'Yes', '41038', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(23, 'Prof. Helmer Ryan MD', 'prof-helmer-ryan-md', NULL, NULL, NULL, NULL, 246.00, NULL, 1, 9, 2, 'Yes', '72129', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(24, 'Sheridan Schuppe', 'sheridan-schuppe', NULL, NULL, NULL, NULL, 351.00, NULL, 1, 1, 2, 'Yes', '93395', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(25, 'Mr. Louvenia Schneider', 'mr-louvenia-schneider', NULL, NULL, NULL, NULL, 176.00, NULL, 1, 10, 5, 'Yes', '97883', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(26, 'Evalyn Grant', 'evalyn-grant', NULL, NULL, NULL, NULL, 296.00, NULL, 1, 9, 1, 'Yes', '24236', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(27, 'Mariana McCullough', 'mariana-mccullough', NULL, NULL, NULL, NULL, 796.00, NULL, 1, 1, 1, 'Yes', '64200', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(28, 'Miss Libby Turcotte III', 'miss-libby-turcotte-iii', NULL, NULL, NULL, NULL, 363.00, NULL, 1, 10, 5, 'Yes', '83938', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(29, 'Pearl Langosh Jr.', 'pearl-langosh-jr', NULL, NULL, NULL, NULL, 85.00, NULL, 1, 9, 2, 'Yes', '47873', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(30, 'Prof. Raul Weimann', 'prof-raul-weimann', NULL, NULL, NULL, NULL, 670.00, NULL, 1, 1, 1, 'Yes', '76428', NULL, 'Yes', 10, 1, '2024-05-08 09:40:26', '2024-05-08 09:40:26'),
(31, 'Jamil Torp', 'jamil-torp', NULL, NULL, NULL, NULL, 127.00, NULL, 1, 9, 4, 'Yes', '58473', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(32, 'Eddie Schumm', 'eddie-schumm', NULL, NULL, NULL, NULL, 127.00, NULL, 1, 9, 1, 'Yes', '74986', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(33, 'Devan Kohler', 'devan-kohler', NULL, NULL, NULL, NULL, 935.00, NULL, 1, 1, 5, 'Yes', '5995', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(34, 'Shyanne Harber', 'shyanne-harber', NULL, NULL, NULL, NULL, 539.00, NULL, 1, 10, 1, 'Yes', '87936', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(35, 'Paolo Swift Sr.', 'paolo-swift-sr', NULL, NULL, NULL, NULL, 361.00, NULL, 1, 9, 3, 'Yes', '70307', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(36, 'Mr. Albin Harris', 'mr-albin-harris', NULL, NULL, NULL, NULL, 353.00, NULL, 1, 1, 3, 'Yes', '83215', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(37, 'Miss Mckayla Schumm', 'miss-mckayla-schumm', NULL, NULL, NULL, NULL, 591.00, NULL, 1, 9, 5, 'Yes', '65588', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(38, 'Chance Fahey', 'chance-fahey', NULL, NULL, NULL, NULL, 400.00, NULL, 1, 9, 1, 'Yes', '70768', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(39, 'Vena Baumbach', 'vena-baumbach', NULL, NULL, NULL, NULL, 538.00, NULL, 1, 1, 1, 'Yes', '87884', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(40, 'Corine Blick', 'corine-blick', NULL, NULL, NULL, NULL, 618.00, NULL, 1, 1, 4, 'Yes', '29742', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(41, 'Hadley Gleason', 'hadley-gleason', NULL, NULL, NULL, NULL, 911.00, NULL, 1, 10, 5, 'Yes', '81735', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(42, 'Agustina Rowe', 'agustina-rowe', NULL, NULL, NULL, NULL, 90.00, NULL, 1, 10, 3, 'Yes', '58540', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(43, 'Ian Schamberger II', 'ian-schamberger-ii', NULL, NULL, NULL, NULL, 998.00, NULL, 1, 10, 5, 'Yes', '82603', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(44, 'Edmund Erdman', 'edmund-erdman', NULL, NULL, NULL, NULL, 634.00, NULL, 1, 9, 5, 'Yes', '17737', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(45, 'Ova Bruen', 'ova-bruen', NULL, NULL, NULL, NULL, 442.00, NULL, 1, 1, 4, 'Yes', '37347', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(46, 'Jaren Feest', 'jaren-feest', NULL, NULL, NULL, NULL, 25.00, NULL, 1, 10, 4, 'Yes', '44198', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(47, 'Dora Ziemann Jr.', 'dora-ziemann-jr', NULL, NULL, NULL, NULL, 110.00, NULL, 1, 10, 4, 'Yes', '63161', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(48, 'Lyric Olson Jr.', 'lyric-olson-jr', NULL, NULL, NULL, NULL, 231.00, NULL, 1, 1, 2, 'Yes', '15649', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(49, 'Sharon Corkery', 'sharon-corkery', NULL, NULL, NULL, NULL, 236.00, NULL, 1, 1, 1, 'Yes', '12785', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(50, 'Jay Jakubowski', 'jay-jakubowski', NULL, NULL, NULL, NULL, 47.00, NULL, 1, 10, 4, 'Yes', '11878', NULL, 'Yes', 10, 1, '2024-05-08 09:40:27', '2024-05-08 09:40:27'),
(51, 'Herminia Jaskolski', 'herminia-jaskolski', NULL, NULL, NULL, NULL, 154.00, NULL, 1, 1, 3, 'Yes', '50821', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(52, 'Tiara Kshlerin', 'tiara-kshlerin', NULL, NULL, NULL, NULL, 371.00, NULL, 1, 9, 4, 'Yes', '81671', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(53, 'Prof. Yesenia Renner MD', 'prof-yesenia-renner-md', NULL, NULL, NULL, NULL, 113.00, NULL, 1, 9, 3, 'Yes', '83795', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(54, 'Reilly Dietrich', 'reilly-dietrich', NULL, NULL, NULL, NULL, 500.00, NULL, 1, 9, 5, 'Yes', '1720', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(55, 'Alva Moore', 'alva-moore', NULL, NULL, NULL, NULL, 39.00, NULL, 1, 10, 5, 'Yes', '94038', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(56, 'Prof. Elenor Mohr I', 'prof-elenor-mohr-i', NULL, NULL, NULL, NULL, 122.00, NULL, 1, 10, 3, 'Yes', '39196', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(57, 'Dr. Cristobal Greenholt', 'dr-cristobal-greenholt', NULL, NULL, NULL, NULL, 322.00, NULL, 1, 9, 3, 'Yes', '27198', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(58, 'Dr. Rafaela Borer', 'dr-rafaela-borer', NULL, NULL, NULL, NULL, 804.00, NULL, 1, 9, 1, 'Yes', '68420', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(59, 'Dr. Sydney Kling', 'dr-sydney-kling', NULL, NULL, NULL, NULL, 628.00, NULL, 1, 10, 2, 'Yes', '84208', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(60, 'Penelope Schuster', 'penelope-schuster', NULL, NULL, NULL, NULL, 678.00, NULL, 1, 10, 1, 'Yes', '45823', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(61, 'Dariana Koss III', 'dariana-koss-iii', NULL, NULL, NULL, NULL, 893.00, NULL, 1, 9, 2, 'Yes', '51329', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(62, 'Chester Rempel', 'chester-rempel', NULL, NULL, NULL, NULL, 341.00, NULL, 1, 9, 1, 'Yes', '76048', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(63, 'Mrs. Serena Wyman Jr.', 'mrs-serena-wyman-jr', NULL, NULL, NULL, NULL, 606.00, NULL, 1, 9, 4, 'Yes', '51370', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(64, 'Camille Metz', 'camille-metz', NULL, NULL, NULL, NULL, 737.00, NULL, 1, 10, 1, 'Yes', '79281', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(65, 'Jimmie Tillman', 'jimmie-tillman', NULL, NULL, NULL, NULL, 905.00, NULL, 1, 10, 1, 'Yes', '66407', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(66, 'Kira Paucek', 'kira-paucek', NULL, NULL, NULL, NULL, 782.00, NULL, 1, 1, 4, 'Yes', '5944', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(67, 'Rod Friesen', 'rod-friesen', NULL, NULL, NULL, NULL, 29.00, NULL, 1, 1, 1, 'Yes', '29796', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(68, 'Prof. Steve McDermott DVM', 'prof-steve-mcdermott-dvm', NULL, NULL, NULL, NULL, 380.00, NULL, 1, 1, 1, 'Yes', '55970', NULL, 'Yes', 10, 1, '2024-05-08 09:40:28', '2024-05-08 09:40:28'),
(69, 'Prof. Jacky Towne', 'prof-jacky-towne', NULL, NULL, NULL, NULL, 803.00, NULL, 1, 1, 3, 'Yes', '93972', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(70, 'Novella Lueilwitz', 'novella-lueilwitz', NULL, NULL, NULL, NULL, 435.00, NULL, 1, 10, 2, 'Yes', '32870', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(71, 'Adell Nader II', 'adell-nader-ii', NULL, NULL, NULL, NULL, 251.00, NULL, 1, 10, 4, 'Yes', '32146', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(72, 'Arjun Brekke', 'arjun-brekke', NULL, NULL, NULL, NULL, 378.00, NULL, 1, 10, 3, 'Yes', '36404', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(73, 'Lois Gorczany III', 'lois-gorczany-iii', NULL, NULL, NULL, NULL, 446.00, NULL, 1, 9, 5, 'Yes', '23504', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(74, 'Zoey Ullrich', 'zoey-ullrich', NULL, NULL, NULL, NULL, 635.00, NULL, 1, 10, 5, 'Yes', '72411', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(75, 'Madalyn Rodriguez', 'madalyn-rodriguez', NULL, NULL, NULL, NULL, 961.00, NULL, 1, 10, 2, 'Yes', '74564', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(76, 'Eunice Blanda V', 'eunice-blanda-v', NULL, NULL, NULL, NULL, 281.00, NULL, 1, 9, 3, 'Yes', '82310', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(77, 'Dr. Ansel Daniel Jr.', 'dr-ansel-daniel-jr', NULL, NULL, NULL, NULL, 428.00, NULL, 1, 10, 5, 'Yes', '13681', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(78, 'Krystal Keeling', 'krystal-keeling', NULL, NULL, NULL, NULL, 648.00, NULL, 1, 9, 3, 'Yes', '97720', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(79, 'Alena Koepp DDS', 'alena-koepp-dds', NULL, NULL, NULL, NULL, 757.00, NULL, 1, 10, 3, 'Yes', '72491', NULL, 'Yes', 10, 1, '2024-05-08 09:40:29', '2024-05-08 09:40:29'),
(80, 'Kaya Batz', 'kaya-batz', NULL, NULL, NULL, NULL, 450.00, NULL, 1, 1, 2, 'Yes', '72019', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(81, 'Loraine Bashirian III', 'loraine-bashirian-iii', NULL, NULL, NULL, NULL, 829.00, NULL, 1, 9, 4, 'Yes', '94096', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(82, 'Astrid Heidenreich V', 'astrid-heidenreich-v', NULL, NULL, NULL, NULL, 734.00, NULL, 1, 9, 4, 'Yes', '1733', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(83, 'Alek Johnson', 'alek-johnson', NULL, NULL, NULL, NULL, 903.00, NULL, 1, 9, 4, 'Yes', '49183', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(84, 'Dewitt Doyle', 'dewitt-doyle', NULL, NULL, NULL, NULL, 215.00, NULL, 1, 1, 3, 'Yes', '55194', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(85, 'Carlos Mayert', 'carlos-mayert', NULL, NULL, NULL, NULL, 412.00, NULL, 1, 9, 5, 'Yes', '10489', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(86, 'Ms. Madonna Walsh PhD', 'ms-madonna-walsh-phd', NULL, NULL, NULL, NULL, 164.00, NULL, 1, 10, 2, 'Yes', '93769', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(87, 'Kathleen Lind II', 'kathleen-lind-ii', NULL, NULL, NULL, NULL, 949.00, NULL, 1, 9, 2, 'Yes', '41386', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(88, 'Ms. Simone Beahan II', 'ms-simone-beahan-ii', NULL, NULL, NULL, NULL, 998.00, NULL, 1, 1, 4, 'Yes', '71330', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(89, 'Mr. Gage Nicolas PhD', 'mr-gage-nicolas-phd', NULL, NULL, NULL, NULL, 644.00, NULL, 1, 9, 5, 'Yes', '15753', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(90, 'Hallie Konopelski', 'hallie-konopelski', NULL, NULL, NULL, NULL, 918.00, NULL, 1, 1, 1, 'Yes', '30465', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(91, 'Dr. Marilie Considine DDS', 'dr-marilie-considine-dds', NULL, NULL, NULL, NULL, 273.00, NULL, 1, 10, 1, 'Yes', '65701', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(92, 'Prof. Breanna Marks', 'prof-breanna-marks', NULL, NULL, NULL, NULL, 378.00, NULL, 1, 9, 5, 'Yes', '57668', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(93, 'Estella Abbott', 'estella-abbott', NULL, NULL, NULL, NULL, 929.00, NULL, 1, 1, 3, 'Yes', '43138', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(94, 'Adolphus Swaniawski', 'adolphus-swaniawski', NULL, NULL, NULL, NULL, 776.00, NULL, 1, 1, 4, 'Yes', '11157', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(95, 'Dr. Monte Ratke DDS', 'dr-monte-ratke-dds', NULL, NULL, NULL, NULL, 744.00, NULL, 1, 1, 2, 'Yes', '75207', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(96, 'Alize King', 'alize-king', NULL, NULL, NULL, NULL, 361.00, NULL, 1, 10, 4, 'Yes', '98928', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(97, 'Mr. Aidan Leuschke Jr.', 'mr-aidan-leuschke-jr', NULL, NULL, NULL, NULL, 353.00, NULL, 1, 10, 4, 'Yes', '21650', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(98, 'Ms. Chasity Hills', 'ms-chasity-hills', NULL, NULL, NULL, NULL, 212.00, NULL, 1, 9, 5, 'Yes', '28276', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(99, 'Graham Kohler', 'graham-kohler', NULL, NULL, NULL, NULL, 412.00, NULL, 1, 1, 4, 'Yes', '87217', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30'),
(100, 'Kobe Gutmann Jr.', 'kobe-gutmann-jr', NULL, NULL, NULL, NULL, 478.00, NULL, 1, 10, 3, 'Yes', '5209', NULL, 'Yes', 10, 1, '2024-05-08 09:40:30', '2024-05-08 09:40:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, '20', 30.00, '2024-05-08 09:41:19', '2024-05-08 09:41:19'),
(2, '225', 20.00, '2024-05-08 09:41:40', '2024-05-08 09:41:40'),
(3, 'rest_of_world', 40.00, '2024-05-08 09:41:48', '2024-05-08 09:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `showHome` enum('Yes','No') NOT NULL DEFAULT 'No',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `status`, `showHome`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Geraldine Renner', 'Nya Hirthe V', 0, 'No', 1, '2024-05-08 09:38:59', '2024-05-08 09:38:59'),
(2, 'Stanley Carter', 'Adam Walter', 0, 'No', 1, '2024-05-08 09:38:59', '2024-05-08 09:38:59'),
(3, 'Daphney Champlin', 'Jaylen Wunsch', 0, 'No', 1, '2024-05-08 09:38:59', '2024-05-08 09:38:59'),
(4, 'Bridget Hill', 'Prof. Susan Wuckert Jr.', 1, 'No', 1, '2024-05-08 09:38:59', '2024-05-08 09:38:59'),
(5, 'Prof. Zoie Corwin', 'Mrs. Yasmine Steuber II', 1, 'No', 1, '2024-05-08 09:38:59', '2024-05-08 09:38:59'),
(6, 'Mose Mann', 'Willard Herzog PhD', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(7, 'Okey Stokes', 'Rex Beatty I', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(8, 'Kyla Okuneva', 'Niko Hamill', 1, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(9, 'Sadye Kovacek', 'Daphney Effertz', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(10, 'Mr. Guillermo Yundt', 'Miss Lori Wiza I', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(11, 'Bernice Bernhard', 'Abdullah Barton IV', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(12, 'Ella Tillman', 'Jarret Howe', 1, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(13, 'Mr. Ed Douglas', 'Monique Lowe', 1, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(14, 'Jan Murazik', 'Damion Smith', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(15, 'Mathilde Graham', 'Ms. Alisha Cruickshank Jr.', 1, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(16, 'Ms. Katrina Crist', 'Albin Dicki', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(17, 'Lenny Quitzon', 'Mr. Pete Hayes', 1, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(18, 'Zachariah Gutmann', 'Madeline Howe', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(19, 'Odell Dickens', 'Doyle Cole PhD', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00'),
(20, 'Thad Thompson III', 'Mrs. Ashley Wolf I', 0, 'No', 1, '2024-05-08 09:39:00', '2024-05-08 09:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `temp_images`
--

CREATE TABLE `temp_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `temp_images`
--

INSERT INTO `temp_images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, '1715176681.jpg', '2024-05-08 09:58:01', '2024-05-08 09:58:01'),
(6, '1715176792.jpg', '2024-05-08 09:59:52', '2024-05-08 09:59:52'),
(7, '1715176919.jpg', '2024-05-08 10:01:59', '2024-05-08 10:01:59'),
(8, '1715177312.jpg', '2024-05-08 10:08:32', '2024-05-08 10:08:32'),
(9, '1715177626.jpg', '2024-05-08 10:13:46', '2024-05-08 10:13:46'),
(10, '1715177669.jpg', '2024-05-08 10:14:29', '2024-05-08 10:14:29'),
(11, '1715177778.jpg', '2024-05-08 10:16:18', '2024-05-08 10:16:18'),
(12, '1715177830.jpg', '2024-05-08 10:17:10', '2024-05-08 10:17:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '01811889072', 2, NULL, '$2y$12$CUA0NeNfbQ0zOJ9z59Ki.eKHHbKX2oQq1VPDFoLv0qWIN7OaCUg1O', NULL, '2024-05-08 09:36:07', '2024-05-08 09:36:07'),
(2, 'Md Naimul Alam', 'naimul@gmail.com', '0544800863', 1, NULL, '$2y$12$Ralgmd0J/C2DYhAfzehb7uvlULy5YRMB3k1llzT8uKePrlqQkCkwa', NULL, '2024-05-08 09:36:36', '2024-05-08 09:36:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_addresses_user_id_foreign` (`user_id`),
  ADD KEY `customer_addresses_country_id_foreign` (`country_id`);

--
-- Indexes for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `temp_images`
--
ALTER TABLE `temp_images`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discount_coupons`
--
ALTER TABLE `discount_coupons`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `temp_images`
--
ALTER TABLE `temp_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD CONSTRAINT `customer_addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customer_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"task\",\"table\":\"customers\"},{\"db\":\"task\",\"table\":\"results\"},{\"db\":\"student\",\"table\":\"results\"},{\"db\":\"student\",\"table\":\"customers\"},{\"db\":\"book_review_ap\",\"table\":\"users\"},{\"db\":\"ecom\",\"table\":\"temp_images\"},{\"db\":\"ecom\",\"table\":\"sub_categories\"},{\"db\":\"ecom\",\"table\":\"categories\"},{\"db\":\"ecom\",\"table\":\"users\"},{\"db\":\"laravel\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('student', 'results', 'score_type');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-12 10:21:20', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"en_GB\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `score_type` varchar(20) DEFAULT NULL,
  `display_data` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD KEY `test` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `test` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
--
-- Database: `task`
--
CREATE DATABASE IF NOT EXISTS `task` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `task`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `firstname`, `lastname`, `email`, `phone`) VALUES
(11, 'Md Naimul', 'Alam', 'naimul@gmail.com', '971544800863'),
(12, 'Sayeda ', 'Reshma', 'reshma@gmail.com', '97154880056');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `score_type` varchar(20) NOT NULL,
  `display_data` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `customer_id`, `score_type`, `display_data`) VALUES
(38, 11, 'time', '00:00:10 SEC'),
(39, 12, 'time', '00:00:10 SEC'),
(40, 11, 'time', '00:00:13 SEC'),
(41, 11, 'count', '4'),
(42, 12, 'count', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
