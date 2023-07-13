-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2023 at 08:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_dtapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Iphone', 'iphone', NULL, 0, 'iphone', 'iphone', NULL, NULL, 1, NULL, 1),
(2, 'Samsung', 'samsung', NULL, 0, 'samsung', 'samsung', NULL, NULL, 1, NULL, 1),
(3, 'Oppo', 'oppo', NULL, 0, 'oppo', 'oppo', NULL, NULL, 1, NULL, 1),
(4, 'Xiaomi', 'xiaomi', NULL, 0, 'xiaomi', 'xiaomi', NULL, NULL, 1, NULL, 1),
(5, 'Vivo', 'vivo', NULL, 0, 'vivo', 'vivo', NULL, NULL, 1, NULL, 1),
(6, 'Realme', 'realme', NULL, 0, 'realme', 'realme', NULL, NULL, 1, NULL, 1),
(7, 'Vertu', 'vertu', NULL, 0, 'vertu', 'vertu', NULL, NULL, 1, NULL, 1),
(8, 'Ịphone Cũ', 'Iphone-cu', NULL, 0, 'iphone', 'iphone', NULL, NULL, 1, NULL, 1),
(9, 'Huawei', 'huawei', NULL, 0, 'huawei', 'huawei', NULL, NULL, 1, NULL, 1),
(10, 'OnePlus', 'oneplus', NULL, 0, 'oneplus', 'oneplus', NULL, NULL, 1, NULL, 1),
(11, 'Nokia', 'nokia', NULL, 0, 'nokia', 'nokia', NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 'Iphone VN/A Chính Hãng', 'iphone', 'iphone.jpg', 0, 0, 'iphone', 'iphone', '2023-06-15 03:57:19', '2023-06-15 03:57:19', 1, NULL, 1),
(2, 'SamSung Chính Hãng', 'sam-sung', 'samsung.jpg', 0, 1, 'samsung', 'samsung', '2023-06-15 03:57:19', '2023-06-15 03:57:19', 1, NULL, 1),
(3, 'Oppo Chính Hãng', 'oppo', 'oppo.jpg', 0, 2, 'oppo', 'oppo', '2023-06-15 03:57:19', '2023-06-15 03:57:19', 1, NULL, 1),
(4, 'Xiaomi', 'xiaomi', 'xiaomi.jpg', 0, 3, 'xiaomi', 'xiaomi', '2023-06-15 03:57:19', '2023-06-15 03:57:19', 1, NULL, 1),
(5, 'ViVo', 'vivo', 'vivo.jpg', 0, 4, 'vivo', 'vivo', '2023-06-15 03:57:19', '2023-06-15 03:57:19', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `replay_id` int UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `user_id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(6, 1, 'Nguyễn Trần Gia Kiệt', 'nguyenkiet0049@gmail.com', '375249396', 'Test', 'Test', 1, '2023-06-23 03:20:19', '2023-06-23 03:20:19', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_id` int UNSIGNED NOT NULL DEFAULT '1',
  `sort_order` int NOT NULL DEFAULT '1',
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_menu`
--

INSERT INTO `db_menu` (`id`, `user_id`, `name`, `link`, `table_id`, `sort_order`, `position`, `parent_id`, `type`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 'Trang chủ', '/', 1, 1, 'mainmenu', 0, '', NULL, NULL, 1, NULL, 1),
(2, 1, 'Giới thiệu', '/introduce', 1, 2, 'mainmenu', 0, '', NULL, NULL, 1, NULL, 1),
(3, 1, 'Sản phẩm', '/product', 1, 3, 'mainmenu', 0, '', NULL, NULL, 1, NULL, 1),
(4, 1, 'Liên hệ', '/contact', 1, 4, 'mainmenu', 0, '', NULL, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL DEFAULT '1',
  `product_id` int UNSIGNED NOT NULL DEFAULT '1',
  `price` double(8,2) NOT NULL,
  `qty` int UNSIGNED NOT NULL DEFAULT '1',
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint UNSIGNED NOT NULL,
  `topic_id` int UNSIGNED NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED DEFAULT '1',
  `brand_id` int UNSIGNED DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_sale` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int UNSIGNED DEFAULT '1',
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `metakey`, `metadesc`, `detail`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(1, 1, 1, 'iPhone 14 Pro Max 128GB Chính Hãng(VN/A)', 'iphone-14-Pro-Max', '26.190.000', '33.990.000', 'iphone.jpg', 1, 'iphone', 'iphone', 'iPhone 14 Pro Max 128GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo bứt phá với bộ 3 camera gồm: 48MP và 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A16 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-19 02:15:08', 1, 1, 1),
(2, 1, 1, 'iPhone 14 Pro 128GB Chính Hãng(VN/A)', 'iphone-14-Pro', '23.990.000', '23.990.000', 'iphone1.jpg', 1, 'iphone', 'iphone', 'iPhone 14 Pro 128GB Chính hãng (VN/A) hiện đã có mặt tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo bứt phá với bộ 3 camera gồm: 48MP và 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A16 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(3, 1, 1, 'iPhone 13 128GB Chính Hãng(VN/A)', 'iphone-13', '15.990.000', '23.990.000', 'iphone2.jpg', 1, 'iphone', 'iphone', 'iPhone 13 128GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A15 Bionic sản xuất trên tiến trình 5nm. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(4, 1, 1, 'iPhone 14 128GB Chính Hãng(VN/A)', 'iphone-14', '18.490.000', '24.990.000', 'iphone3.jpg', 1, 'iphone', 'iphone', 'iPhone 14 128GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A15 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(5, 1, 1, 'iPhone 11 64GB Chính Hãng(VN/A)', 'iphone-11', '10.250.000', '14.990.000', 'iphone4.jpg', 1, 'iphone', 'iphone', 'iPhone 11 64GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A13 Bionic sản xuất trên tiến trình 7nm. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(6, 1, 1, 'iPhone 11 128GB Chính Hãng(VN/A)', 'iphone-11-128GB', '11.890.000', '16.990.000', 'iphone5.jpg', 1, 'iphone', 'iphone', 'iPhone 11 128GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A13 Bionic sản xuất trên tiến trình 7nm. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(7, 1, 1, 'iPhone 14 Pro Max 256GB Chính Hãng(VN/A)', 'iphone-14-Pro-Max-256GB', '29.290.000', '37.990.000', 'iphone6.jpg', 1, 'iphone', 'iphone', 'iPhone 14 Pro Max 256GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo bứt phá với bộ 3 camera gồm: 48MP và 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A16 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(8, 1, 1, 'iPhone 14 Pro 256GB Chính Hãng(VN/A)', 'iphone-14-Pro-256GB', '26.990.000', '33.990.000', 'iphone7.jpg', 1, 'iphone', 'iphone', 'iPhone 14 Pro 256GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo bứt phá với bộ 3 camera gồm: 48MP và 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A16 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(9, 1, 1, 'iPhone 14 Plus 128GB Chính Hãng(VN/A)', 'iphone-Plus', '21.190.000', '27.990.000', 'iphone8.jpg', 1, 'iphone', 'iphone', 'iPhone 14 Plus 128GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Smartpoint - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A15 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt mua iPhone 14 tại Di Động Việt để có thể sở hữu chiếc máy sớm nhất với nhiều ưu đãi và khuyến mãi đi kèm.', '2023-06-15 23:04:59', '2023-06-15 23:04:59', 1, NULL, 1),
(10, 1, 1, 'iPhone 14 256GB Chính Hãng(VN/A)', 'iphone-14-256GB', '21.890.000', '27.990.000', 'iphone9.jpg', 1, 'iphone', 'iphone', 'iPhone 14 256GB Chính hãng (VN/A) chính thống giá RẺ HƠN CÁC LOẠI RẺ chỉ có tại Di Động Việt - Đại lý uỷ quyền chính thức của Apple tại Việt Nam. Với thiết kế thời thượng và các tính năng hiện đại, chiếc smartphone này sẽ mang đến cho bạn trải nghiệm đầy cảm xúc với khả năng sáng tạo vô tận từ 2 camera 12MP, kết hợp với hiệu năng mạnh mẽ từ chipset Apple A15 Bionic 6 nhân. Bên cạnh đó, với dung lượng pin lớn cho phép người dùng trải nghiệm dài lâu. Đặt ngay để có trải nghiệm mua sắm Hơn cả Chính Hãng.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(11, 2, 1, 'Samsung Galaxy A14 128GB Chính Hãng', 'samsung-galaxy-a14-128GB', '3.290.000', '4.290.000', 'samsung.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy A14 4G 128GB là máy mới, nguyên Seal 100%, sản phẩm chỉ kích hoạt trực tuyến và được bảo hành trong vòng 12 tháng.\r\n\r\nSamsung Galaxy A14 4G 128GB Chính Hãng sở hữu thiết kế mỏng nhẹ, bo cong bốn góc cạnh mềm mại. Chiếc smartphone này được trang bị màn hình LCD với tần số quét 90Hz mang đến trải nghiệm mượt mà. Bên cạnh đó, điện thoại còn sở hữu sức mạnh từ con chip Mediatek Dimensity 700. Ngoài ra, với dung lượng pin 5000nmAh cho phép người dùng trải nghiệm dài lâu.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(12, 2, 1, 'Samsung Galaxy A34 5G 128GB Chính Hãng', 'samsung-galaxy-a34-5g-128GB', '6.790.000', '8.490.000', 'samsung1.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy A34 128GB là máy mới, nguyên Seal 100%, sản phẩm chỉ kích hoạt trực tuyến và được bảo hành trong vòng 12 tháng.\r\n\r\nGalaxy A34 128GB Chính Hãng sở hữu thiết kế mỏng nhẹ, bo cong bốn góc cạnh mềm mại. Chiếc smartphone này được trang bị màn hình Super AMOLED mang đến trải nghiệm mượt mà. Bên cạnh đó, điện thoại còn sở hữu sức mạnh từ con chip Dimensity 1080. Ngoài ra, với dung lượng pin 5000nmAh cho phép người dùng trải nghiệm dài lâu.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(13, 2, 1, 'Samsung Galaxy A04 32GB Chính Hãng', 'samsung-galaxy-a04-32GB', '2.090.000', '2.990.000', 'samsung2.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy A04 32GB là máy mới, nguyên Seal 100%, sản phẩm chỉ kích hoạt trực tuyến và được bảo hành trong vòng 12 tháng.\r\n\r\nGalaxy A04 32GB Chính Hãng sở hữu thiêt kế hiện đại, nhỏ gọn với tấm nền IPS LCD rộng 6.5 inch có độ phân giải 720 x 1600 pixel. Máy sở hữu bộ đôi camera với camera chính lên đến 50 MP và camera phụ 2MP. Bên cạnh đó, chiếc smartphone này cũng được chạy trên hệ điều hành Android 12. Ngoài ra, máy còn được trang bị dung lượng pin khung lên đến 5000mAh cho trải nghiệm dài lâu.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(14, 2, 1, 'Galaxy A04s 64GB Chính Hãng', 'galaxy-a04s-64GB', '2.890.000', '3.990.000', 'samsung3.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy A04s 64GB Chính Hãng là máy mới, nguyên Seal 100%, sản phẩm chỉ kích hoạt trực tuyến và được bảo hành trong vòng 12 tháng.\r\n\r\nGalaxy A04s 64GB Chính Hãng sở hữu thiêt kế hiện đại, nhỏ gọn với tấm nền PLS LCD, 90Hz rộng 6.5 inch - độ phân giải 720 x 1600 pixel. Sở hữu camera chính lên đến 50 MP và 2 camera phụ 2MP + 2MP. Chiếc smartphone này chạy trên hệ điều hành Android 12 và chipset Exynos 850 8 nhân. Trang bị dung lượng pin khung lên đến 5000mAh cho trải nghiệm dài lâu.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(15, 2, 1, 'Samsung Galaxy S23+ 5G 512GB', 'samsung-galaxy-s23-5g-512GB', '22.090.000', '29.990.000', 'samsung4.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy S23+ 5G 512GB sở hữu thiết kế hiện đại, cao cấp với màn hình rộng 6.6 inch, cùng công nghệ màn hình Dynamic AMOLED 2X, 120Hz. Máy được trang bị hiệu năng mạnh mẽ với Snapdragon 8 Gen 2, hệ điều hành Android 12 giao diện One UI 4.0. Đồng thời camera 50MP cũng là điểm nhấn đặc biệt trên máy.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(16, 2, 1, 'Galaxy A54 256GB Chính Hãng', 'galaxy-a54-256GB', '8.790.000', '11.290.000', 'samsung5.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy A54 5G 256GB là máy mới, nguyên Seal 100%, sản phẩm chỉ kích hoạt trực tuyến và được bảo hành trong vòng 12 tháng.\r\n\r\nGalaxy A54 256GB sở hữu thiết kế trẻ trung, hiện đại. Chiếc smartphone này được trang bị màn hình Super AMOLED rộng 6.4 inch với độ phân giải 1080 x 2400 pixel mang đến khả năng hiển thị rõ ràng, sắc nét. Bên cạnh đó, nó còn được trang bị cụm camera lên đến 50MP cho phép sáng tạo bứt phá. Ngoài ra, phiên bản này cũng mang đến hiệu năng ổn định nhờ được trang bị chip Exynos 1380 (5nm).', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(17, 2, 1, 'Samsung Galaxy S20 FE 256GB', 'samsung-galaxy-s20-fe-256GB', '9.030.000', '9.490.000', 'samsung6.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy S20 FE 256GB là phiên bản đặc biệt dành cho những người hâm mộ Samsung. Máy sở hữu thiết kế sang trọng, nhiều màu sắc trẻ trung. Màn hình rộng 6.5 inches, hiệu năng mạnh mẽ bởi chip Snapdragon 865. Máy còn được trang bị bộ 3 camera với nhiều tính năng, đáp ứng tốt nhu cầu người dùng.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(18, 2, 1, 'Samsung Galaxy S23 5G 256GB', 'samsung-galaxy-s23-5g-256GB', '19.490.000', '24.990.000', 'samsung7.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy S23 5G 256GB sở hữu thiết kế hiện đại, cao cấp với màn hình rộng 6.1 inch, cùng công nghệ màn hình Dynamic AMOLED 2X, 120Hz. Máy được trang bị hiệu năng mạnh mẽ với Snapdragon 8 Gen 2, hệ điều hành Android 12 giao diện One UI 4.0. Đồng thời camera 50MP cũng là điểm nhấn đặc biệt trên máy.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(19, 2, 1, 'Galaxy S23 Ultra 5G 512GB Chính Hãng', 'galaxy-s23-ultra-5g-512GB', '24.490.000', '36.990.000', 'samsung8.jpg', 1, 'samsung', 'samsung', 'Galaxy S23 Ultra 5G 512GB sở hữu thiết kế cao cấp với màn hình 6.8 inch độ phân giải 3088 x 1440 pixels, tấm nền Dynamic AMOLED 2X tần số quét 120Hz, cấu hình mạnh mẽ với vi xử lý Snapdragon 8 Gen 2. Camera chính 200MP mang lại khả năng chụp ảnh đỉnh cao hỗ trợ nhiều chế độ chụp ảnh khác nhau.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1),
(20, 2, 1, 'Samsung Galaxy Z Flip4 256GB 5G Chính Hãng', 'samsung-galaxy-z-flip4-256GB-5G', '17.590.000', '25.990.000', 'samsung9.jpg', 1, 'samsung', 'samsung', 'Samsung Galaxy Z Flip4 256GB 5G Chính Hãng có thiết kế mới lạ sang trọng, mang nhiều nâng cấp với màn hình lớn, độ phân giải Full HD+. Máy chạy trên hệ điều hành Android 12 cùng với nhiều nâng cấp đáng tiền. Dung lượng pin sử dụng cả ngày.', '2023-06-15 23:04:59', '2023-06-19 01:56:56', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `sort_order`, `position`, `image`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(3, 'slider1', 'https://thietkehaithanh.com/wp-content/uploads/2019/06/huong-dan-thiet-ke-banner-dien-thoai-bang-photoshop.jpg', 1, 'slideshow', 'slideshow_1.jpg', NULL, NULL, 1, NULL, 2),
(4, 'slider2', 'slideshow_2.jpg', 2, 'slideshow', 'slideshow_2.jpg', NULL, '2023-06-19 02:25:24', 1, 1, 2),
(5, 'slider3', 'slideshow_3.jpg', 3, 'slideshow', 'slideshow_3.jpg', NULL, NULL, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '1',
  `metakey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '1',
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `image`, `roles`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(9, 'TextRegister', 'khachhang@gmail.com', '0365247896', 'khachhang', '12345678', 'TpHCM', NULL, 'user', '2023-06-26 00:31:01', '2023-06-26 00:31:01', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_05_30_130253_create_brand_table', 1),
(3, '2023_05_30_130311_create_category_table', 1),
(4, '2023_05_30_130320_create_contact_table', 1),
(5, '2023_05_30_130328_create_menu_table', 1),
(6, '2023_05_30_130334_create_order_table', 1),
(7, '2023_05_30_130342_create_orderdetail_table', 1),
(8, '2023_05_30_130349_create_product_table', 1),
(9, '2023_05_30_130355_create_post_table', 2),
(10, '2023_05_30_130401_create_slider_table', 2),
(11, '2023_05_30_130408_create_topic_table', 2),
(12, '2023_05_30_130414_create_user_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
