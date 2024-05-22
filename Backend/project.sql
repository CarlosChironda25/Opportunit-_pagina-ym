-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2024 at 07:24 PM
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
  `created_by` varchar(255) NOT NULL DEFAULT '',
  `updated_at` varchar(255) NOT NULL DEFAULT '',
  `updated_by` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `is_deleted`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Audit', 0, 1, '2024-03-22 21:11:42', '', '2024-03-24 19:44:42', ''),
(2, 'Banking', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(3, 'Claims', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(4, 'Communication', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(5, 'Compliance', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(6, 'Corportate affairs', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(7, 'Digital & Analytics', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(8, 'Distribution & Sales', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(9, 'Finance', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(10, 'Management', 0, 1, '2024-03-22 21:11:42', '', '', ''),
(11, 'Computer Sc.', 0, 1, '2024-04-12 20:58:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL DEFAULT '\'\'',
  `job_description` longtext NOT NULL DEFAULT '\'\'',
  `requirement` longtext NOT NULL DEFAULT '',
  `company_profile` longtext NOT NULL DEFAULT '',
  `job_type` text NOT NULL DEFAULT '',
  `division` text NOT NULL DEFAULT '',
  `number_of_profile` text NOT NULL DEFAULT '',
  `workplace` text NOT NULL DEFAULT '',
  `contract_type` text NOT NULL DEFAULT '',
  `salary` text NOT NULL DEFAULT '',
  `type_of_work` text NOT NULL DEFAULT '',
  `application_deadline` text NOT NULL DEFAULT '',
  `useful_information` text NOT NULL DEFAULT '',
  `link` longtext NOT NULL DEFAULT '',
  `is_published` int(11) DEFAULT 0,
  `publication` varchar(255) NOT NULL,
  `location_id` int(11) DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(255) NOT NULL DEFAULT '',
  `created_by` varchar(255) NOT NULL DEFAULT '',
  `updated_at` varchar(255) NOT NULL DEFAULT '',
  `updated_by` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `job_description`, `requirement`, `company_profile`, `job_type`, `division`, `number_of_profile`, `workplace`, `contract_type`, `salary`, `type_of_work`, `application_deadline`, `useful_information`, `link`, `is_published`, `publication`, `location_id`, `category_id`, `is_deleted`, `is_active`, `is_featured`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'first && 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n', 'Where can I get some?\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '\nWhat is Lorem Ipsum?\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\n\n\nWhere does it come from?\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'test', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 2, 0, 1, 0, '2024-03-22 22:32:09', '', '2024-03-23 23:59:50', ''),
(2, 'santu', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', 'http://localhost:5173/jobs/edit/2', 1, 'Mygrants', 73, 1, 0, 1, 0, '2024-03-22 22:32:09', '', '2024-04-21 18:47:16', ''),
(3, 'santu sarkar', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 9, 0, 1, 1, '2024-03-22 22:32:09', '', '', ''),
(4, 'This is different category', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 2, 0, 1, 1, '2024-03-22 22:32:09', '', '', ''),
(5, 'This is different category 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 2, 0, 1, 1, '2024-03-22 22:32:09', '', '', ''),
(6, 'This is different category 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 2, 0, 1, 1, '2024-03-22 22:32:09', '', '', ''),
(7, 'This is different category 3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Where can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', '', '', '', '', '', '', '', '', '', '', 1, 'Mygrants', 73, 3, 0, 1, 1, '2024-03-22 22:32:09', '', '', ''),
(8, 'Here is the communication job', 'No required', 'Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\n\n', 'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n\n', '', '', '', '', '', '', '', '', '', 'https://www.facebook.com/mygrants.it', 0, 'Your publication name can be here', 114, 4, 0, 1, 1, '2024-03-23 18:48:45', '', '2024-04-21 18:47:16', ''),
(9, 'IT PROCESS & CONTROL EXPERT', '<p1>hello wolrd</p>   <h1>hey how are you</h1>', '•	Individuazione dei processi necessari, dei controlli minimi, assicurarne implementazione e il monitoraggio della sua adoption\n•	Supportare l\'Internal Audit sui contenuti dei processi e coordinare l\'implementazione delle azioni correttive nelle aree ICT\n•	Garantire la raccolta delle evidenze e delle informazioni necessarie per verifiche interne di compliance dei processi implementati\n•	Agire come punto di contatto per l’IT con le funzioni Compliance, Finance, Internal Audit e Risk Management per le tematiche normative\n\n', '<p class=\"text-primary\">\n\n<b>Il/la candidato/a ideale possiede le seguenti caratteristiche</b>:\n•	Laurea in materie tecnico-scientifiche, preferibilmente Informatica, Economia o Ingegneria Gestionale\n•	Esperienza di almeno 3 anni come Regulation & Process Analyst e Project Manager per aziende multinazionali o primarie società di consulenza, nel settore IT, con coinvolgimento diretto nella gestione della normativa e miglioramento dei processi.\n•	Conoscenza dei principali framework ad oggi in uso nel mercato quali ITIL, COBIT, PMP e degli standard NIST, ISO 27001, ISO 20000, ISAE 3402\n•	Conoscenza delle tematiche di Sicurezza Informativa, It Risk e di auditing\n•	Attitudine alla comprensione dei rischi IT e normativi, all’analisi e formalizzazione di processi, alla gestione dei progetti e all’organizzazione di comitati di gestione\n•	Eccellente nell\'utilizzo della suite Microsoft Office (Word, PowerPoint, Excel)\n•	Conoscenza della gestione del ciclo di vita del software e dei principali framework e architetture applicativi\n•	Eccellenti capacità di analisi da applicare ad una ampia visione del contesto in cui opera, con propensione alla qualità e alla proattività\n•	Essere in grado di definire in maniera efficace i piani di lavoro e monitorare correttamente le scadenze delle attività.\n•	Capacità di lavorare in modo indipendente, con capacità di gestione degli stakeholder\n•	Ottime capacità relazionali e di comunicazione scritta e verbale\n•	Buona conoscenza della lingua inglese scritta e parlata\n•	Attitudine al lavoro di gruppo e al problem solving\n \n</p>', 'Permanent', 'Test', '1', 'India', 'Permanent', '12000', '12943', '2024-03-07', 'Siamo alla ricerca di una figura di IT Processes & Control Expert che si occuperà, all’interno dell’Information Technology di Generali Italia, della verifica, dell’aggiornamento e del miglioramento continuo del sistema interno dei processi e delle metodologie per il governo dei sistemi informatici della funzione IT, coerentemente con le evoluzioni del modello operativo IT di Generali Italia, nel rispetto delle best practices e dei framework di riferimento di settore (COBIT, ITIL, etc.) e della normativa nazionale e internazionale del settore finance e assicurativo.', '', 0, 'Mygrants', 18, 4, 0, 1, 0, '2024-03-23 23:59:50', '', '2024-03-24 19:44:42', ''),
(10, 'New Job here', 'igt7', 'gtb9', '', 'jhugytff', 'ouhgy', 'ojiuhgy', 'ojiuhg', 'ojiuhy', '10389', 'oiuy', '2024-03-31', 'kasdt7adgay', '', 0, 'It', 2, 10, 0, 1, 1, '2024-03-24 22:09:20', '', '', ''),
(11, 'Computer Sc.	 Jobs', 'ysdy89rwerywe', 'iehihwerhwhe', '', 'Test', 'test', '89', '898', '98', '9889898', 'test', '2024-04-06', 'sdhfy9syr89fyy', '', 0, 'test', 18, 11, 0, 1, 1, '2024-04-12 20:58:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_deleted` int(1) DEFAULT 0,
  `is_active` int(1) DEFAULT 0,
  `created_at` varchar(255) NOT NULL DEFAULT '',
  `created_by` varchar(255) NOT NULL DEFAULT '',
  `updated_at` varchar(255) NOT NULL DEFAULT '',
  `updated_by` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `is_deleted`, `is_active`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Lugano', 0, 1, '', '', '', ''),
(2, 'Agrigento', 0, 1, '', '', '', ''),
(3, 'Ancona', 0, 1, '', '', '', ''),
(4, 'Alessandria', 0, 1, '', '', '', ''),
(5, 'Aosta', 0, 1, '', '', '', ''),
(6, 'L\'Aquila', 0, 1, '', '', '', ''),
(7, 'Arezzo', 0, 1, '', '', '', ''),
(8, 'Ascoli-Piceno', 0, 1, '', '', '', ''),
(9, 'Asti', 0, 1, '', '', '', ''),
(10, 'Avellino', 0, 1, '', '', '', ''),
(11, 'Bari', 0, 1, '', '', '', ''),
(12, 'Barletta-Andria-Trani', 0, 1, '', '', '', ''),
(13, 'Belluno', 0, 1, '', '', '', ''),
(14, 'Benevento', 0, 1, '', '', '', ''),
(15, 'Bergamo', 0, 1, '', '', '', ''),
(16, 'Biella', 0, 1, '', '', '', ''),
(17, 'Bologna', 0, 1, '', '', '', ''),
(18, 'Bolzano', 0, 1, '', '', '', ''),
(19, 'Brescia', 0, 1, '', '', '', ''),
(20, 'Brindisi', 0, 1, '', '', '', ''),
(21, 'Cagliari', 0, 1, '', '', '', ''),
(22, 'Caltanissetta', 0, 1, '', '', '', ''),
(23, 'Campobasso', 0, 1, '', '', '', ''),
(24, 'Carbonia-Iglesias', 0, 1, '', '', '', ''),
(25, 'Caserta', 0, 1, '', '', '', ''),
(26, 'Catania', 0, 1, '', '', '', ''),
(27, 'Catanzaro', 0, 1, '', '', '', ''),
(28, 'Chieti', 0, 1, '', '', '', ''),
(29, 'Como', 0, 1, '', '', '', ''),
(30, 'Cosenza', 0, 1, '', '', '', ''),
(31, 'Cremona', 0, 1, '', '', '', ''),
(32, 'Crotone', 0, 1, '', '', '', ''),
(33, 'Cuneo', 0, 1, '', '', '', ''),
(34, 'Enna', 0, 1, '', '', '', ''),
(35, 'Fermo', 0, 1, '', '', '', ''),
(36, 'Ferrara', 0, 1, '', '', '', ''),
(37, 'Firenze', 0, 1, '', '', '', ''),
(38, 'Foggia', 0, 1, '', '', '', ''),
(39, 'Forli-Cesena', 0, 1, '', '', '', ''),
(40, 'Frosinone', 0, 1, '', '', '', ''),
(41, 'Genova', 0, 1, '', '', '', ''),
(42, 'Gorizia', 0, 1, '', '', '', ''),
(43, 'Grosseto', 0, 1, '', '', '', ''),
(44, 'Imperia', 0, 1, '', '', '', ''),
(45, 'Isernia', 0, 1, '', '', '', ''),
(46, 'La Spezia', 0, 1, '', '', '', ''),
(47, 'Latina', 0, 1, '', '', '', ''),
(48, 'Lecce', 0, 1, '', '', '', ''),
(49, 'Lecco', 0, 1, '', '', '', ''),
(50, 'Livorno', 0, 1, '', '', '', ''),
(51, 'Lodi', 0, 1, '', '', '', ''),
(52, 'Lucca', 0, 1, '', '', '', ''),
(53, 'Macerata', 0, 1, '', '', '', ''),
(54, 'Mantova', 0, 1, '', '', '', ''),
(55, 'Massa-Carrara', 0, 1, '', '', '', ''),
(56, 'Matera', 0, 1, '', '', '', ''),
(57, 'Medio-Campidano', 0, 1, '', '', '', ''),
(58, 'Messina', 0, 1, '', '', '', ''),
(59, 'Milano', 0, 1, '', '', '', ''),
(60, 'Modena', 0, 1, '', '', '', ''),
(61, 'Monza-Brianza', 0, 1, '', '', '', ''),
(62, 'Napoli', 0, 1, '', '', '', ''),
(63, 'Novara', 0, 1, '', '', '', ''),
(64, 'Nuoro', 0, 1, '', '', '', ''),
(65, 'Ogliastra', 0, 1, '', '', '', ''),
(66, 'Olbia-Tempio', 0, 1, '', '', '', ''),
(67, 'Oristano', 0, 1, '', '', '', ''),
(68, 'Padova', 0, 1, '', '', '', ''),
(69, 'Palermo', 0, 1, '', '', '', ''),
(70, 'Parma', 0, 1, '', '', '', ''),
(71, 'Pavia', 0, 1, '', '', '', ''),
(72, 'Perugia', 0, 1, '', '', '', ''),
(73, 'Pesaro-Urbino', 0, 1, '', '', '', ''),
(74, 'Pescara', 0, 1, '', '', '', ''),
(75, 'Piacenza', 0, 1, '', '', '', ''),
(76, 'Pisa', 0, 1, '', '', '', ''),
(77, 'Pistoia', 0, 1, '', '', '', ''),
(78, 'Pordenone', 0, 1, '', '', '', ''),
(79, 'Potenza', 0, 1, '', '', '', ''),
(80, 'Prato', 0, 1, '', '', '', ''),
(81, 'Ragusa', 0, 1, '', '', '', ''),
(82, 'Ravenna', 0, 1, '', '', '', ''),
(83, 'Reggio-Calabria', 0, 1, '', '', '', ''),
(84, 'Reggio-Emilia', 0, 1, '', '', '', ''),
(85, 'Rieti', 0, 1, '', '', '', ''),
(86, 'Rimini', 0, 1, '', '', '', ''),
(87, 'Roma', 0, 1, '', '', '', ''),
(88, 'Rovigo', 0, 1, '', '', '', ''),
(89, 'Salerno', 0, 1, '', '', '', ''),
(90, 'Sassari', 0, 1, '', '', '', ''),
(91, 'Savona', 0, 1, '', '', '', ''),
(92, 'Siena', 0, 1, '', '', '', ''),
(93, 'Siracusa', 0, 1, '', '', '', ''),
(94, 'Sondrio', 0, 1, '', '', '', ''),
(95, 'Taranto', 0, 1, '', '', '', ''),
(96, 'Teramo', 0, 1, '', '', '', ''),
(97, 'Terni', 0, 1, '', '', '', ''),
(98, 'Torino', 0, 1, '', '', '', ''),
(99, 'Trapani', 0, 1, '', '', '', ''),
(100, 'Trento', 0, 1, '', '', '', ''),
(101, 'Treviso', 0, 1, '', '', '', ''),
(102, 'Trieste', 0, 1, '', '', '', ''),
(103, 'Udine', 0, 1, '', '', '', ''),
(104, 'Varese', 0, 1, '', '', '', ''),
(105, 'Venezia', 0, 1, '', '', '', ''),
(106, 'Verbania', 0, 1, '', '', '', ''),
(107, 'Vercelli', 0, 1, '', '', '', ''),
(108, 'Verona', 0, 1, '', '', '', ''),
(109, 'Vibo-Valentia', 0, 1, '', '', '', ''),
(110, 'Vicenza', 0, 1, '', '', '', ''),
(111, 'Viterbo', 0, 1, '', '', '', ''),
(112, 'Lussemburgo', 0, 1, '', '', '', ''),
(113, 'Mogliano Veneto', 0, 1, '', '', '', ''),
(114, 'India', 0, 1, '2024-03-23 18:48:45', '', '', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
