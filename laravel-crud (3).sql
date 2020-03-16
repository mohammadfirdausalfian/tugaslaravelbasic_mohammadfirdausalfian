-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 08:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `telpon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'sarjono', '0899911111', 'depok', '2020-03-14 09:50:20', '0000-00-00 00:00:00'),
(2, 'siswanto', '0899898989898', 'sidoarjo', '2020-03-14 09:50:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `id` int(11) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id`, `kode`, `nama`, `semester`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 'm-001', 'matematika dasar', 'ganjil', 1, '2020-03-11 22:09:31', '0000-00-00 00:00:00'),
(2, 'b-001', 'bahasa indonesia', 'ganjil', 2, '2020-03-11 22:09:31', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel_siswa`
--

CREATE TABLE `mapel_siswa` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mapel_siswa`
--

INSERT INTO `mapel_siswa` (`id`, `siswa_id`, `mapel_id`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 13, 1, 80, '2020-03-12 05:46:59', '0000-00-00 00:00:00'),
(2, 13, 2, 85, '2020-03-12 05:46:59', '0000-00-00 00:00:00'),
(4, 21, 2, 65, '2020-03-12 05:47:59', '0000-00-00 00:00:00'),
(6, 9, 1, 60, '2020-03-11 23:14:01', '2020-03-12 06:14:01'),
(7, 9, 2, 60, '2020-03-11 23:23:26', '2020-03-12 06:23:26'),
(8, 11, 1, 55, '2020-03-12 00:11:54', '2020-03-12 07:11:54'),
(9, 11, 2, 70, '2020-03-12 00:12:09', '2020-03-12 07:12:09'),
(10, 10, 1, 98, '2020-03-12 01:36:30', '2020-03-12 08:36:30'),
(11, 10, 2, 90, '2020-03-12 01:36:50', '2020-03-12 08:36:50'),
(15, 8, 2, 90, '2020-03-12 20:29:57', '2020-03-13 03:29:57'),
(16, 8, 1, 75, '2020-03-12 21:50:02', '2020-03-13 04:50:02'),
(17, 14, 1, 80, '2020-03-12 23:56:29', '2020-03-13 06:56:29'),
(18, 14, 2, 70, '2020-03-12 23:56:39', '2020-03-13 06:56:39'),
(19, 23, 1, 100, '2020-03-13 01:15:14', '2020-03-13 08:15:14'),
(20, 23, 2, 100, '2020-03-13 01:15:22', '2020-03-13 08:15:22'),
(21, 24, 1, 80, '2020-03-14 03:01:46', '2020-03-14 10:01:46'),
(22, 24, 2, 60, '2020-03-14 03:18:45', '2020-03-14 10:18:45'),
(23, 25, 1, 75, '2020-03-15 23:18:07', '2020-03-16 06:18:07'),
(24, 25, 2, 75, '2020-03-15 23:18:16', '2020-03-16 06:18:16'),
(25, 26, 1, 81, '2020-03-15 23:21:19', '2020-03-16 06:21:19'),
(26, 26, 2, 83, '2020-03-15 23:21:28', '2020-03-16 06:21:28'),
(27, 27, 1, 90, '2020-03-15 23:21:53', '2020-03-16 06:21:53'),
(28, 27, 2, 94, '2020-03-15 23:22:05', '2020-03-16 06:22:05'),
(29, 28, 1, 87, '2020-03-15 23:22:17', '2020-03-16 06:22:17'),
(30, 28, 2, 79, '2020-03-15 23:22:27', '2020-03-16 06:22:27'),
(31, 29, 1, 90, '2020-03-15 23:22:39', '2020-03-16 06:22:39'),
(32, 29, 2, 69, '2020-03-15 23:22:46', '2020-03-16 06:22:46');

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
(3, '2020_01_29_224956_create_siswa_table', 1);

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
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_depan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `agama`, `alamat`, `avatar`, `created_at`, `updated_at`) VALUES
(24, 9, 'faiz', 'lutfigia', 'P', 'islam', 'sidoarjo', NULL, '2020-03-14 03:01:33', '2020-03-14 03:01:33'),
(25, 10, 'alfa', 'rozy', 'L', 'islam', 'malang', NULL, '2020-03-15 23:17:57', '2020-03-15 23:17:57'),
(26, 11, 'rizki', 'nur', 'L', 'islam', 'malang', NULL, '2020-03-15 23:18:58', '2020-03-15 23:18:58'),
(27, 12, 'cristiano', 'ronaldo', 'L', 'kristen', 'lisbon', NULL, '2020-03-15 23:19:45', '2020-03-15 23:19:45'),
(28, 13, 'budi', 'sudarsono', 'L', 'islam', 'kediri', NULL, '2020-03-15 23:20:17', '2020-03-15 23:20:17'),
(29, 14, 'alexander', 'cristien', 'L', 'kristen', 'jakarta', NULL, '2020-03-15 23:21:06', '2020-03-15 23:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'firdaus', 'mohfirdausalfian@gmail.com', '$2y$10$Yoq6wzjIOcIkWbGy9bpzq.ceCP3NijBiMtSjIIHppOsGOZH9WnGE6', '4s082JBi6WzoNbEAche0q7apiMngc3NDAVhuDVCJReX3NAvI0zSM6h6w0Xvz', '2020-03-11 05:16:58', '2020-03-11 05:16:58'),
(5, 'siswa', 'emon', 'emon@gmail.com', '$2y$10$Hb82TlZZKYEt2wuIeNVtqOuUg48wtmWZdy9MSk/Zp8WsYn7QfJBQm', 'IIhTmVB3luRbc0fDFteqVvz08knKjAJPL9jnlZ6Q8siJlNhkjxgkyWIKvEjz', '2020-03-11 14:13:02', '2020-03-11 14:13:02'),
(6, 'siswa', 'arya', 'arya@gmail.com', '$2y$10$W00IpYxV..bZ53hsOn9TyOC1NfZGEETKTn3EwfCzy8LFtZLQ3dhzC', 'YxOWlOvlEgPncWIjdVJ3ykf9se9Y91pP4soYp1ylWPxdLhwKInWPvi5H72Vg', '2020-03-11 17:11:44', '2020-03-11 17:11:44'),
(7, 'siswa', 'ismed', 'ismed@gmail.com', '$2y$10$xICm..hkZjL5BAhtrtSxF.mavRj8G0R88dKGaMwvt0TkXh/wXIZT2', 'AbtKXd0WydlFizP5jR793iZk5B4AJaZQH5MXMpFfLJAGDwA5bUTiltQ2THa5', '2020-03-11 17:14:36', '2020-03-11 17:14:36'),
(8, 'siswa', 'mohammad', 'firdausalfianyoi@gmail.com', '$2y$10$4mGt6MIKN4I.tLk0Riv76e.8QfWsnqUcVe.F8pEoJ4Gp7/6ka6yYa', 'ODds60bTp1OlQxn12hGAGeXpaLkIjEEPNd2p9pubCA5B50ghy0VfyqdSppFh', '2020-03-13 01:15:02', '2020-03-13 01:15:02'),
(9, 'siswa', 'faiz', 'faiz2006@gmail.com', '$2y$10$jxSbFHLRhoztb4ZUPYlQ2On4zNolppizEO4dEaNqvAQKfGB7sJ7Fi', 'NgIEgZZUoUKSReAmEypl4PEe5fDycnCwS0DqJET6ECNBEwOANLlIeiWZXm9d', '2020-03-14 03:01:33', '2020-03-14 03:01:33'),
(10, 'siswa', 'alfa', 'alfa@gmail.com', '$2y$10$guZ55covCtSekUlBQMjireOb03oSpxF9v.15QfpD5.RbUjMXRvJdi', 'Wbi7k1IXC8USDmUM8lgNYITpI119JdI1URlfVV4ZOtDhGxkffBYKrzKwdDxl', '2020-03-15 23:17:57', '2020-03-15 23:17:57'),
(11, 'siswa', 'rizki', 'rizki@gmail.com', '$2y$10$IAuR2HtnoF/1h5CQ7ih4l.H5KM4BEHDtxl3jrKp9vtF7SmeHRfQgG', 'VpkAx6nEIY5vX6vvLY1kG8tMm2rjfiXjB9Wen1pWb4w35zxHWkQTy73Gpewo', '2020-03-15 23:18:58', '2020-03-15 23:18:58'),
(12, 'siswa', 'cristiano', 'ronaldo@gmail.com', '$2y$10$tyb1UmyDdFkLa0rwHqrYL.baZjOxjRnZ6FfBtSv/oZ.nWT0D0TmMG', 'woJZUXAYcEmgdNecWbf1AlLpb7eRJql4hXBKxdY30OgZGXSpeCXDrpNz1ioG', '2020-03-15 23:19:45', '2020-03-15 23:19:45'),
(13, 'siswa', 'budi', 'sudarsono@gmail.com', '$2y$10$r3iBET5YQlSmXMCD30J2weScNp.95os3Yse9LhmJYg6wkGm7DM3hC', 'NaAuXkv01TPlXwXr3accl8ZzoxMs4Z5eVo30n4a6hTRUNSkfTdfK5t0xiFk3', '2020-03-15 23:20:17', '2020-03-15 23:20:17'),
(14, 'siswa', 'alexander', 'alexander@gmail.com', '$2y$10$zlBlX8JPLRTF6u4.l7SONOiMqoTCwGMiFgMosM96ZH//xlaYQDfUO', 'E3KPnO8gRSWjOqMn2bKBfkcYlpPzW3Fn7g6MZ7CBMbTtYhqAiyFzCL797pR3', '2020-03-15 23:21:06', '2020-03-15 23:21:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
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
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mapel_siswa`
--
ALTER TABLE `mapel_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
