-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2024 at 04:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_at` varchar(255) NOT NULL DEFAULT '',
  `created_by` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `is_deleted`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Audit Positions', 0, 1, '2024-03-16 20:22:57', '', '2024-03-16 20:30:45', ''),
(2, 'Audit Positions2332', 1, 1, '2024-03-16 20:22:57', '', '2024-03-16 20:28:39', ''),
(3, 'Audit Positions2332', 0, 0, '2024-03-16 20:22:57', '', '2024-03-16 20:28:39', ''),
(4, 'Ancona', 0, 1, '2024-03-16 20:39:01', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `job_description` longtext NOT NULL,
  `requirement` longtext NOT NULL,
  `company_profile` longtext NOT NULL,
  `is_published` int(11) DEFAULT 0,
  `publication` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT 0,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `is_deleted`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Ancona', 0, 1, '2024-03-16 20:45:09', '', '2024-03-16 20:48:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `type` int(11) DEFAULT 1 COMMENT '1. admin 2. technician',
  `profile_img` longtext NOT NULL,
  `is_deleted` int(11) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `type`, `profile_img`, `is_deleted`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Admin', 'admin@abcd.com', '$2y$10$u/Iui6ar9q6Ox4MRkgT.1.cbgCM0AE9zdCAHSGD2SxSJdmp6kf/82', '9999999999', 1, 'admin_profile.jpg', 0, 0, '2023-12-14 18:27:03', 0, '2023-12-14 18:27:03', 0),
(2, 'Carlos', 'carlos@abcd.com', '$2y$10$u/Iui6ar9q6Ox4MRkgT.1.cbgCM0AE9zdCAHSGD2SxSJdmp6kf/82', '9999999999', 1, 'admin_profile.jpg', 0, 0, '2023-12-14 18:27:03', 0, '2023-12-14 18:27:03', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
