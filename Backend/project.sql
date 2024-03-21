-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 04:20 PM
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
(1, 'Audit Positions', 1, 1, '2024-03-16 20:22:57', '', '2024-03-18 20:23:16', ''),
(2, 'Audit Positions2332', 1, 1, '2024-03-16 20:22:57', '', '2024-03-16 20:28:39', ''),
(3, 'Audit Positions2332', 0, 0, '2024-03-16 20:22:57', '', '2024-03-16 20:28:39', ''),
(4, 'Ancona', 1, 1, '2024-03-16 20:39:01', '', '2024-03-20 14:13:51', ''),
(5, 'Positions in Claims1', 1, 1, '2024-03-18 20:23:16', '', '2024-03-20 20:31:38', ''),
(6, 'India', 1, 1, '2024-03-20 20:31:38', '', '2024-03-20 20:31:38', ''),
(7, 'India2', 1, 1, '2024-03-20 20:31:38', '', '2024-03-20 20:31:38', ''),
(8, 'Test', 1, 1, '2024-03-20 20:31:38', '', '2024-03-20 20:31:38', ''),
(9, 'India24', 1, 1, '2024-03-20 20:31:38', '', '2024-03-20 20:52:33', ''),
(10, 'india', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(11, 'india india', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(12, 'injsdu', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(13, 'india', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(14, 'jh', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(15, 'khiu', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(16, 'sjhsi', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(17, 'shdhsdd', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(18, 'phiguy', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(19, 'lhg', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(20, 'santjohihi', 1, 1, '2024-03-20 20:52:33', '', '2024-03-20 20:52:33', ''),
(21, 'India', 0, 1, '2024-03-20 20:52:33', '', '2024-03-21 00:14:52', ''),
(22, 'santu', 0, 1, '2024-03-20 20:52:33', '', '2024-03-21 00:14:52', ''),
(23, 'kolkata', 0, 1, '2024-03-20 20:52:33', '', '2024-03-21 00:14:52', ''),
(24, 'aaaac', 1, 1, '2024-03-20 20:52:33', '', '2024-03-21 00:14:52', '');

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
  `category_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `updated_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `job_description`, `requirement`, `company_profile`, `is_published`, `publication`, `location_id`, `category_id`, `is_deleted`, `is_active`, `is_featured`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Junior Insurance Consultant - Milan Office', 'Generali Italia, leader in the Italian insurance market, is looking for new brilliant and dynamic resources who, through a path of growth, will be able to become INSURANCE PROFESSIONALS. The resources will be placed within the Management Branches, commercial structures that operate in the main metropolitan cities of Italy.\n We are looking for Junior Insurance Consultants for our Milan branch', 'What features are we looking for:\n Degree and/or diploma', 'Being a Lifetime Partner is our ambition: every day we want to be at the side of our customers by taking care of their lives and their dreams. This is more than a job for us.', 1, 'Generali Italia', 2, 1, 0, 0, 0, '2024-03-16 22:01:12', '', '2024-03-18 20:23:16', ''),
(2, 'Junior Insurance Consultant - Milan Office', 'Generali Italia, leader in the Italian insurance market, is looking for new brilliant and dynamic resources who, through a path of growth, will be able to become INSURANCE PROFESSIONALS. The resources will be placed within the Management Branches, commercial structures that operate in the main metropolitan cities of Italy.\n We are looking for Junior Insurance Consultants for our Milan branch', 'What features are we looking for:\n Degree and/or diploma', 'Being a Lifetime Partner is our ambition: every day we want to be at the side of our customers by taking care of their lives and their dreams. This is more than a job for us.', 1, 'Generali Italia SpA', 1, 2, 0, 1, 1, '2024-03-16 22:18:57', '', '2024-03-18 20:23:16', ''),
(3, 'Junior Insurance Consultant - Milan Office', 'Generali Italia, leader in the Italian insurance market, is looking for new brilliant and dynamic resources who, through a path of growth, will be able to become INSURANCE PROFESSIONALS. The resources will be placed within the Management Branches, commercial structures that operate in the main metropolitan cities of Italy.\n We are looking for Junior Insurance Consultants for our Milan branch', 'What features are we looking for:\n Degree and/or diploma', 'Being a Lifetime Partner is our ambition: every day we want to be at the side of our customers by taking care of their lives and their dreams. This is more than a job for us.', 1, 'Generali Italia SpA', 1, 1, 0, 1, 0, '2024-03-18 20:23:16', '', '2024-03-21 01:39:17', '');

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
(1, 'Ancona', 1, 1, '2024-03-16 20:45:09', '', '2024-03-18 20:23:16', ''),
(2, 'India Location', 0, 1, '2024-03-21 00:14:52', '', '2024-03-21 00:55:39', ''),
(3, 'Kolkata', 1, 1, '2024-03-21 00:14:52', '', '2024-03-21 00:14:52', ''),
(4, 'Santu Location', 0, 1, '2024-03-21 00:55:39', '', '', ''),
(5, 'Bangladesh', 0, 1, '2024-03-21 20:17:07', '', '', ''),
(6, 'USA', 0, 1, '2024-03-21 20:17:07', '', '', ''),
(7, 'UAE', 0, 1, '2024-03-21 20:17:07', '', '', '');

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
(1, 'Carlos', 'carlos@abcd.com', '202cb962ac59075b964b07152d234b70', '9999999999', 1, 'admin_profile.jpg', 0, 0, '2023-12-14 18:27:03', 0, '2023-12-14 18:27:03', 0),
(2, 'Admin', 'admin@abcd.com', '$2y$10$u/Iui6ar9q6Ox4MRkgT.1.cbgCM0AE9zdCAHSGD2SxSJdmp6kf/82', '9999999999', 1, 'admin_profile.jpg', 0, 0, '2023-12-14 18:27:03', 0, '2023-12-14 18:27:03', 0),
(3, 'Carlos', 'carlos@abcd.com', '$2y$10$u/Iui6ar9q6Ox4MRkgT.1.cbgCM0AE9zdCAHSGD2SxSJdmp6kf/82', '9999999999', 1, 'admin_profile.jpg', 0, 0, '2023-12-14 18:27:03', 0, '2023-12-14 18:27:03', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
