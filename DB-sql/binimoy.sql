-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2019 at 10:51 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binimoy`
--

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
(3, '2019_08_27_071528_create_roles_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2019-08-26 21:14:14', '2019-08-27 02:13:11'),
(2, 'Executive One', '2019-08-26 21:14:14', '2019-08-27 02:13:11'),
(3, 'Executive two', '2019-08-26 21:14:14', '2019-08-27 02:13:11'),
(4, 'Executive three', '2019-08-26 21:14:14', '2019-08-27 02:13:11'),
(5, 'Executive four', '2019-08-26 21:14:14', '2019-08-27 02:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `pro_img`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$GRXj1htnDe56F47FCzwMvuul0ovWxZGdrENyXdABgt1abO6T3fKsS', 'default.png', 'Lxo9ksJNkifTRWp35vNMpV6el8eZQ8RG3bPLQLfC4uoVPDJxBqCWqqdTdlUn', '2019-08-27 03:08:24', '2019-08-27 03:08:24'),
(2, 2, 'Demo Executive One', 'executive.one@gmail.com', NULL, '$2y$10$wacpGqWdyU5.wgIXu236VO1SeMS8cSjg4OMqVQIM4Gw1S/E9tUYQK', 'default.png', 'dyG5z1NiTKqhxnwzGXDYTa4J0ufcrYZsC0iRPgLPbGUfybvi4TIhEr6y1Qpe', '2019-08-27 03:41:29', '2019-08-27 03:41:29'),
(3, 3, 'Demo Executive Two', 'executive.two@gmail.com', NULL, '$2y$10$wacpGqWdyU5.wgIXu236VO1SeMS8cSjg4OMqVQIM4Gw1S/E9tUYQK', 'default.png', 'i7CPpZq8KZkjWsIpbDPl9PRoH5DS3SDCJnUUJucB4B2KoPVX0dFzTHo5f1ki', '2019-08-27 03:41:29', '2019-08-27 03:41:29'),
(4, 4, 'Demo Executive Three', 'executive.three@gmail.com', NULL, '$2y$10$wacpGqWdyU5.wgIXu236VO1SeMS8cSjg4OMqVQIM4Gw1S/E9tUYQK', 'default.png', '1IgNyZ7ibBTf71X5zGIUr5qhajDVAfkspH7cpSPCTavgv6kUgdtvSJFK0swX', '2019-08-27 03:41:29', '2019-08-27 03:41:29'),
(5, 5, 'Demo Executive Four', 'executive.four@gmail.com', NULL, '$2y$10$wacpGqWdyU5.wgIXu236VO1SeMS8cSjg4OMqVQIM4Gw1S/E9tUYQK', 'default.png', 'PMU9Ni7HxoEqOzmhjoauuPkzojW6MEEYv8LbOlseKHCtYU228GImJsOK4sTp', '2019-08-27 03:41:29', '2019-08-27 03:41:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
