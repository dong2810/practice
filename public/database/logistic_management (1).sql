-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 13, 2020 at 03:20 PM
-- Server version: 5.7.28
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
-- Database: `logistic_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `customer_phone` char(11) COLLATE utf8_bin NOT NULL,
  `customer_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `customer_name`, `customer_phone`, `customer_address`, `created_at`, `updated_at`) VALUES
(1, 'Linh', '12345677764', 'Cầu Giấy', NULL, NULL),
(2, 'Ngo', '01326987666', 'Láng Hạ', NULL, NULL),
(3, 'Lien', '01366468984', 'Yên Hòa', NULL, NULL),
(4, 'Trung', '01335656462', 'Tp.HCM', NULL, NULL),
(5, 'Vân', '01332697855', 'Hà Nội', NULL, NULL),
(6, 'Dũng', '03136975689', 'Phú Thọ', NULL, NULL),
(7, 'Tú', '97622005566', 'Ninh Bình', NULL, NULL),
(8, 'Hằng', '03689762365', 'Nghệ An', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_employees`
--

CREATE TABLE `tb_employees` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `password` mediumtext COLLATE utf8_bin,
  `fullname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` char(11) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role` enum('administrators','warehouse_managers','warehouse_staffs','shipping_staffs') COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_employees`
--

INSERT INTO `tb_employees` (`user_id`, `username`, `password`, `fullname`, `phone`, `address`, `role`, `status`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'Nguyễn Văn Định', '01928374658', 'Thanh Xuân - Hà Nội', 'administrators', 1, 1, NULL, '0000-00-00 00:00:00'),
(2, 'duongnguyen', '1234567', 'management1_k13', '0376356667', 'Phú Diễn - Hà Nội', 'warehouse_managers', 1, 13, '2019-11-01 13:38:27', '2019-11-01 15:44:05'),
(3, 'member_k13', '1234567', 'member1_k13', '013654987', 'Hà Nội', 'warehouse_staffs', 1, 13, '2019-11-01 16:51:49', '2019-11-01 16:51:49'),
(4, 'shipper_k13', '1234567', 'shipper1_k13', '0132654987', 'Hoàng Công Chất', 'shipping_staffs', 1, 13, '2019-11-01 17:31:24', '2019-11-01 17:31:24'),
(5, 'shipper1_k13', '1234567', 'shipper2_k13', '0646549789', 'Hai Bà Trưng', 'shipping_staffs', 1, 13, '2019-11-10 06:44:32', '2019-11-10 06:44:32'),
(6, 'member_k12', '1234567', 'management1_k12', '0315489455', 'Hà Đông', 'warehouse_managers', 1, 12, NULL, '0000-00-00 00:00:00'),
(7, 'member2_k12', '1234567', 'member1_k12', '0315489455', 'Hà Đông', 'warehouse_staffs', 1, 12, NULL, '0000-00-00 00:00:00'),
(8, 'shipper2_k12', '1234567', 'shipper1_k12', '0315489455', 'Hà Đông', 'shipping_staffs', 1, 12, NULL, '0000-00-00 00:00:00'),
(9, 'management1_k1', '1234567', 'management1_k1', '01234569879', 'Phú Diễn-Bắc Từ Liêm-Hà Nội', 'warehouse_managers', 1, 1, '2019-11-21 06:21:42', '2019-11-21 06:21:42'),
(10, 'management2_k1', '1234567', 'management2_k1', '01234569879', 'Phú Diễn-Bắc Từ Liêm-Hà Nội', 'warehouse_managers', 1, 1, '2019-11-21 06:22:16', '2019-11-21 06:22:16'),
(11, 'member1_k1', '1234567', 'member1_k1', '01326549876', 'Phú Diễn-Bắc Từ Liêm-Hà Nội', 'warehouse_staffs', 1, 1, '2019-11-21 06:23:10', '2019-11-21 06:23:10'),
(12, 'member2_k1', '1234567', 'member2_k1', '01234569879', 'Cầu Giấy - Bắc Từ Liêm - Hà Nội', 'warehouse_staffs', 1, 1, '2019-11-21 06:24:38', '2019-11-21 06:24:38'),
(13, 'member3_k1', '1234567', 'member3_k1', '01234569879', 'Cầu Giấy - Bắc Từ Liêm - Hà Nội', 'warehouse_staffs', 1, 1, '2019-11-21 06:25:10', '2019-11-21 06:25:10'),
(14, 'shipper1_k1', '1234567', 'shipper1_k1', '03219874569', '29A Lê Đức Thọ', 'shipping_staffs', 1, 1, '2019-11-21 06:28:48', '2019-11-21 06:28:48'),
(15, 'shipper2_k1', '1234567', 'shipper2_k1', '03219874569', '29C Lê Đức Thọ', 'shipping_staffs', 1, 1, '2019-11-21 06:29:23', '2019-11-21 06:29:23'),
(16, 'management1_k2', '1234567', 'management1_k2', '01234569879', 'Nam Định', 'warehouse_managers', 1, 2, '2019-11-21 06:36:59', '2019-11-21 06:36:59'),
(17, 'member1_k2', '1234567', 'member1_k2', '01234569879', 'Nam Định', 'warehouse_staffs', 1, 2, '2019-11-21 06:37:43', '2019-11-21 06:37:43'),
(18, 'member2_k2', '1234567', 'member2_k2', '03219874569', '29C Lê Đức Thọ', 'warehouse_staffs', 1, 2, '2019-11-21 06:29:23', '2019-11-21 06:29:23'),
(19, 'shipper1_k2', '1234567', 'shipper1_k2', '03219874569', 'Hai Bà Trưng - Hà Nội', 'shipping_staffs', 1, 2, '2019-11-21 06:43:41', '2019-11-21 06:43:41'),
(20, 'shipper2_k2', '1234567', 'shipper2_k2', '01234569879', 'Quang Trung - Hà Nội', 'shipping_staffs', 1, 2, '2019-11-21 06:44:47', '2019-11-21 06:44:47'),
(21, 'abcd1', '11111', 'dong1', '0945678345', 'ha noi', 'warehouse_managers', 1, 15, '2020-01-10 15:52:08', '2020-01-10 15:52:08'),
(22, 'nguyenhuydong', '$2y$10$8rGljxx4pCCGGLgqh.o7z.yK7qIDoLwryE4OsNnW6.kyQexes0Oqm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL,
  `order_id` char(50) COLLATE utf8_bin NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `managers_id` int(11) NOT NULL,
  `staff_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `receiver_id` int(11) NOT NULL,
  `sender_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` enum('Not received','Received') COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `received_warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `order_id`, `warehouse_id`, `managers_id`, `staff_name`, `receiver_id`, `sender_name`, `status`, `created_at`, `updated_at`, `received_warehouse`) VALUES
(1, 'A1', 13, 2, 'member_k13', 4, 'Linh', 'Received', '0000-00-00 00:00:00', NULL, 0),
(2, 'A2', 12, 6, 'member2_k12', 3, 'Ngo', 'Received', NULL, NULL, 0),
(3, 'A3', 13, 2, 'member_k13', 1, 'Lien', 'Not received', NULL, NULL, 0),
(6, 'A4', 2, 16, 'member1_k2', 1, 'Lien', 'Received', '2019-11-21 06:46:36', '2019-11-21 06:46:36', 12),
(7, 'A5', 2, 2, 'member1_k2', 1, 'Ngo', 'Not received', '2019-11-10 11:10:24', '2019-11-10 11:10:24', 6),
(8, 'A6', 1, 9, 'member2_k1', 8, 'Lien', 'Received', '2019-11-21 14:21:01', NULL, 3),
(9, 'A7', 1, 10, 'member1_k1', 6, 'Trung', 'Not received', '2019-11-21 14:22:18', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` int(11) NOT NULL,
  `order_id` char(50) COLLATE utf8_bin NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0: Chờ giao hàng\r\n1: Đang giao hàng\r\n2: Đang nhập kho\r\n3: Đã nhập kho \r\n4: Đã nhận hàng ',
  `shipping_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `warehouse_id`, `status`, `shipping_id`, `created_at`, `updated_at`) VALUES
(1, 'A1', 13, 4, 4, '2019-11-21 12:57:47', NULL),
(2, 'A2', 13, 1, 4, '2019-11-21 12:57:51', NULL),
(3, 'A2', 12, 2, 4, '2019-11-21 12:57:55', NULL),
(4, 'A2', 12, 3, 4, '2019-11-21 12:57:57', NULL),
(5, 'A2', 12, 1, 8, '2019-11-21 12:57:59', NULL),
(6, 'A2', 12, 4, 8, '2019-11-21 12:58:02', NULL),
(7, 'A3', 13, 2, 5, '2019-11-21 12:58:04', NULL),
(8, 'A3', 13, 3, 5, '2019-11-21 12:58:08', NULL),
(9, 'A3', 13, 0, 5, '2019-11-21 12:58:10', NULL),
(10, 'A3', 13, 1, 5, '2019-11-21 12:58:12', NULL),
(11, 'A4', 2, 0, 19, '2019-11-21 14:37:42', NULL),
(12, 'A4', 2, 1, 19, '2019-11-21 14:38:05', NULL),
(13, 'A4', 2, 4, 19, '2019-11-21 14:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_warehouse`
--

CREATE TABLE `tb_warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `warehouse_address` varchar(255) COLLATE utf8_bin NOT NULL,
  `branch` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tb_warehouse`
--

INSERT INTO `tb_warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_address`, `branch`, `created_at`, `updated_at`) VALUES
(1, 'Nam Đàn', 'xóm 12 Xuân Hòa Nam Đàn, Nghệ An', 'Nghệ An', NULL, NULL),
(2, 'Diễn Châu', 'xóm 5 Diễn Kỉ Diễn Châu, Nghệ An', 'Nghệ An', NULL, NULL),
(3, 'Đô Lương', 'Khối 10, Thị trấn Đô Lương, Nghệ An', 'Nghệ An', '2019-11-10 06:32:58', '2019-11-10 06:32:58'),
(4, 'Kỳ Anh', 'phường Sông Trí, Thị xã Kỳ Anh, Hà Tĩnh', 'Hà Tĩnh', NULL, NULL),
(5, 'Hồng Lĩnh', 'số 09 đường 3/2 phường Bắc Hồng, Thị xã Hồng Lĩnh, Hà Tĩnh', 'Hà Tĩnh', NULL, NULL),
(6, 'GHTK Hương Sơn - Hà Tĩnh', 'Số 01 Đường Lê Minh Hương, Khối 1, Thị trấn Phố Châu, Huyện Hương Sơn', 'Hà Tĩnh', NULL, NULL),
(7, 'Kho Vĩnh Long', '69/4 Phó Cơ Điều, Xóm 2, P.4, Tp.Vĩnh Long, Vĩnh Long', 'Vĩnh Long', NULL, NULL),
(8, 'Kho Bảo Yên', '581 Nguyễn Tất Thành, tổ 7c, TT Phố Ràng, huyện Bảo Yên, Lào Cai', 'Lào Cai', NULL, NULL),
(9, 'BC Tô Ngọc Vân', 'Số 18-20 Tô Ngọc Vân', 'Tô Ngọc Vân', NULL, NULL),
(10, 'BC Lĩnh Nam (HN)', '669 Lĩnh Nam, Hoàng Mai, Hà Nội', 'Hà Nội', NULL, NULL),
(11, 'BC Vũ Ngọc Phan (HN)', '25 Vũ Ngọc Phan, Đống Đa, Hà Nội', 'Hà Nội', NULL, NULL),
(12, 'BC Quang Trung', '430 Quang Trung, Hà Đông, Hà Nội', 'Hà Nội', NULL, NULL),
(13, 'BC Quan Hoa', '267 Quan Hoa, Cầu Giấy, Hà Nội', 'Hà Nội', NULL, NULL),
(14, 'BC Đại Mỗ', '463 Đại Mỗ, phường Đại Mỗ, quận Nam Từ Liêm, Hà Nội', 'Hà Nội', NULL, NULL),
(15, 'BC Phan Trọng Tuệ', 'Số 18 Phan Trọng Tuệ,Tân Triều, Thanh Trì, Hà Nội', 'Hà Nội', NULL, NULL),
(16, 'BC Trung Kính', '83 Trung Kính, Cầu Giấy, Hà Nội', 'Trung Kính', NULL, NULL),
(17, 'BC Tuy Phong', '17 Bình Long, TT.Phan Rí Thành, Huyện Bắc Bình, Bình Thuận', 'Bình Thuận', NULL, NULL),
(18, 'BC La Gi', 'Số 627 Thống Nhất, P. Tân An, Thị xã La Gi, Tỉnh Bình Thuận', 'Bình Thuận', NULL, NULL),
(19, 'Kho Thủ Dầu Một', '46 Tổ 71, KP. 8, Đường Bùi Văn Bình, P. Phú Lợi, Thành phố Thủ Dầu Một, Bình Dương', 'Bình Dương', NULL, NULL),
(20, 'Bình Sơn', 'Số 22 Huỳnh Tấu, thị trấn Châu Ổ, huyện Bình Sơn, tỉnh Quảng Ngãi', 'Quảng Ngãi', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`) USING BTREE,
  ADD KEY `customer_name` (`customer_name`) USING BTREE;

--
-- Indexes for table `tb_employees`
--
ALTER TABLE `tb_employees`
  ADD PRIMARY KEY (`user_id`) USING BTREE,
  ADD KEY `warehouse_id` (`warehouse_id`) USING BTREE,
  ADD KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id`,`order_id`) USING BTREE,
  ADD KEY `warehouse_id` (`warehouse_id`) USING BTREE,
  ADD KEY `managers_id` (`managers_id`) USING BTREE,
  ADD KEY `receiver_id` (`receiver_id`) USING BTREE,
  ADD KEY `staff_name` (`staff_name`) USING BTREE,
  ADD KEY `sender_name` (`sender_name`) USING BTREE,
  ADD KEY `order_id` (`order_id`) USING BTREE;

--
-- Indexes for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_id` (`order_id`) USING BTREE,
  ADD KEY `warehouse_id` (`warehouse_id`) USING BTREE,
  ADD KEY `shipping_id` (`shipping_id`) USING BTREE;

--
-- Indexes for table `tb_warehouse`
--
ALTER TABLE `tb_warehouse`
  ADD PRIMARY KEY (`warehouse_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_employees`
--
ALTER TABLE `tb_employees`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_warehouse`
--
ALTER TABLE `tb_warehouse`
  MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_employees`
--
ALTER TABLE `tb_employees`
  ADD CONSTRAINT `tb_employees_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `tb_warehouse` (`warehouse_id`);

--
-- Constraints for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `tb_warehouse` (`warehouse_id`),
  ADD CONSTRAINT `tb_order_ibfk_2` FOREIGN KEY (`managers_id`) REFERENCES `tb_employees` (`user_id`),
  ADD CONSTRAINT `tb_order_ibfk_5` FOREIGN KEY (`receiver_id`) REFERENCES `tb_customer` (`customer_id`),
  ADD CONSTRAINT `tb_order_ibfk_6` FOREIGN KEY (`staff_name`) REFERENCES `tb_employees` (`username`),
  ADD CONSTRAINT `tb_order_ibfk_7` FOREIGN KEY (`sender_name`) REFERENCES `tb_customer` (`customer_name`);

--
-- Constraints for table `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_ibfk_2` FOREIGN KEY (`warehouse_id`) REFERENCES `tb_warehouse` (`warehouse_id`),
  ADD CONSTRAINT `tb_order_details_ibfk_3` FOREIGN KEY (`shipping_id`) REFERENCES `tb_employees` (`user_id`),
  ADD CONSTRAINT `tb_order_details_ibfk_4` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
