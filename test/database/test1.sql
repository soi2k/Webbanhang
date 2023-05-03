-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 16, 2023 lúc 11:51 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Phụ Nữ'),
(2, 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `email`, `phone_number`, `subject_name`, `note`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Diep', 'Tran Van', 'tranvandiep.it@gmail.com', '21312312321', 'chu de 1', 'Noi dung 1', '2021-10-22 16:22:55', '2021-10-22 11:29:52', 1),
(2, 'OKOK', 'ABC Van', 'abc.it@gmail.com', '21312312321', 'chu de 2', 'Noi dung 2', '2021-10-22 16:22:55', '2021-10-27 13:11:32', 1),
(3, 'Diep', 'Tran Van', 'asashdsajdg@gmail.com', '0123456789', 'abc', 'accc', '2021-10-22 16:31:18', '2021-10-22 11:32:52', 1),
(4, 'TRAN', 'VAN DIEP', 'tranvandiep.it@gmail.com', '', '123123123', '123123123', '2021-10-27 13:10:48', '2021-10-27 13:11:33', 1),
(5, 'TRAN', 'VAN DIEP', 'tranvandiep.it@gmail.com', '+84967025996', 'eqweqweqwe', 'qweqweqweqe', '2021-10-27 13:11:16', '2023-03-16 14:16:50', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `galery`
--

CREATE TABLE `galery` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`) VALUES
(1, 3, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '0123456789', 'Ha Noi', 'ABC', '2021-10-22 16:43:54', 1, 3),
(2, 2, 'TRAN VAN A', 'abc@gmail.com', '123123123', 'Ha Noi', 'ABC', '2021-10-21 16:43:54', 2, 2),
(3, 1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '', 'XOM GIAO, YEN TRI', '', '2021-10-27 12:42:16', 1, 4800000),
(4, 5, 'Nguyễn Tuấn Anh', 'anh2k@gmail.com', '576786786', 'a', '', '2023-03-15 13:56:13', 1, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `num`, `total_money`) VALUES
(1, 2, 2, 1, 1, 1),
(2, 2, 3, 1, 1, 1),
(3, 1, 2, 1, 2, 2),
(4, 1, 3, 1, 1, 1),
(5, 3, 1, 600000, 5, 3000000),
(6, 3, 5, 600000, 3, 1800000),
(7, 4, 9, 600000, 1, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `thumbnail` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `category_id`, `title`, `price`, `discount`, `thumbnail`, `description`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 2, 'san pham 1', 650000, 600000, 'https://t004.gokisoft.com/uploads/2021/07/p-7537-ao-polo-nam.jpg', '<p>Áo PoPo Nam mang phong cách trẻ trung , phù hợp với nhiều lứa tuổi . Chất liệt mát mẻ .</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold;\">Chất liệu:</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Thành phần Coton là sợi vải tự nhiên lấy từ nguyên liệu chính là sợi bông, có độ mềm mịn, mang đến cảm giác dễ chịu, thoải mái cho người mác. Thấm hút mỏ hàn tốt do và làm mát cơ thể&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Thành phần Polyester giúp bề mặt&nbsp;vải trơn trượt không bị phai màu dễ&nbsp;làm sạch. Hạn chế nhăn&nbsp;tiết kiệm thời gian là ủi mỗi khi sử dụng&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Thành phần Spandex mang đến sự&nbsp;đàn hồi tuyệt vời giúp người mặc&nbsp;cảm thấy thoải mái và vừa vặn trong mọi hoạt động hàng ngày</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold;\">Thiết kế:</strong><br>Sản phẩm có đường chỉ may tỉ mỉ, tinh tế.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Phom Slimfit ôm vừa, tôn dáng người mặc&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Thiết kế bo viền cách điều đơn giản, tinh tế</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\">Thêu chữ&nbsp;The Bluxury khẳng định thương hiệu</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold;\">Mục đích sử dụng:</strong><br>Bạn có thể sử dụng polo cho ngày đi làm, đi học, rèn luyện thể thao, đi dạo, xuống phố và kết hợp cùng quần âu, kaki, jean, giày tây, giày thể thao,...</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(37, 37, 43); font-family: Roboto, Helvetica, Arial, sans-serif;\"><strong style=\"font-weight: bold;\">Hướng dẫn bảo quản:&nbsp;</strong><br>- Giặt máy với chu kỳ trung bình và vòng quay ngắn<br>- Giặt với nhiệt độ tối đa 30 độ C<br>- Sấy ở nhiệt độ thường&nbsp;<br>- Là ủi ở nhiệt độ thấp</p><p> </p>', '2021-10-22 14:03:21', '2021-10-27 08:26:11', 0),
(2, 1, 'san pham 2', 650000, 550000, 'https://product.hstatic.net/1000249198/product/9171__2__090388f04afe418fa908cb128eb736c3_grande.jpg', 'okok', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0),
(3, 1, 'San pham 3', 250000, 200000, 'https://img.ltwebstatic.com/images3_pi/2022/06/17/1655445729b26de8dd3edec9bfaf133d043ca46862.webp', 'Đẹp, chất lượng tốt \r\nĐược nhiều người đặt mua\r\nVận chuyển nhanh', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0),
(4, 2, 'san pham 4', 250000, 210000, 'https://aristino.com/Data/ResizeImage/images/product/ao-polo/aps115s3/_TC_9262x500x500x4.webp', 'noi dung 2', '2021-10-22 09:19:49', '2023-03-15 17:52:15', 0),
(5, 2, 'san pham 5', 650000, 600000, 'https://img.ltwebstatic.com/images2_pi/2019/03/29/15538523562599072616_thumbnail_900x1199.webp', 'Áo PoPo Nam mang phong cách trẻ trung , phù hợp với nhiều lứa tuổi . Chất liệt mát mẻ . ', '2021-10-22 14:03:21', '2021-10-22 14:03:21', 0),
(6, 1, 'san pham 6', 650000, 550000, 'https://product.hstatic.net/1000035031/product/ao-kieu-nu-cong-so-co-lo-phoi-no-thoi-trang-eden-asm156__3__f580eb542ee94f1da1abc6f89e9dbbc1_master.jpg', 'quan', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0),
(7, 1, 'San pham 7', 220000, 190000, 'https://img.ltwebstatic.com/images3_pi/2021/11/11/1636595669206686c136c25ab58e6f000436461de8_thumbnail_900x.webp', 'Đẹp, chất lượng tốt \r\nĐược nhiều người đặt mua\r\nVận chuyển nhanh', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0),
(8, 1, 'san pham 8', 250000, 200000, 'https://bucket.nhanh.vn/f06edc-11055/ps/20180417_EKXwHolxu71LXHxxJ4inmb5P.jpg', 'noi dung 2', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0),
(9, 2, 'san pham 9', 650000, 600000, 'https://hidanz.com/wp-content/uploads/2021/01/ao-nam-dep.jpg', 'Áo PoPo Nam mang phong cách trẻ trung , phù hợp với nhiều lứa tuổi . Chất liệt mát mẻ . ', '2021-10-22 14:03:21', '2021-10-22 14:03:21', 0),
(10, 1, 'san pham 10', 650000, 550000, 'https://bizweb.dktcdn.net/thumb/large/100/438/408/products/qjn4026-xnh-1.jpg?v=1675313475000', 'quan nu', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0),
(11, 1, 'San pham 11', 55000, 50000, 'https://img.ltwebstatic.com/images3_pi/2022/03/23/16480236336efc5f26d9370b9db813454817e63b73.webp', 'Đẹp, chất lượng tốt \r\nĐược nhiều người đặt mua\r\nVận chuyển nhanh', '2021-10-22 09:14:29', '2021-10-22 11:55:44', 0),
(12, 1, 'san pham 12', 250000, 200000, 'https://dony.vn/wp-content/uploads/2021/07/ao-kieu-nu-dep-3.jpg', 'noi dung 2', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0),
(13, 2, 'san pham 13', 650000, 600000, 'https://dongphuchaianh.vn/wp-content/uploads/2022/03/ao-polo-chinh-hang.jpg', 'Áo PoPo Nam mang phong cách trẻ trung , phù hợp với nhiều lứa tuổi . Chất liệt mát mẻ . ', '2021-10-22 14:03:21', '2021-10-22 14:03:21', 0),
(14, 1, 'san pham 14', 650000, 550000, 'https://www.zanado.com/media/catalog/product/cache/all/thumbnail/700x817/7b8fef0172c2eb72dd8fd366c999954c/1/_/quan_jean_lung_nu_xuoc_lat_lai_2c95.jpg', 'ok', '2021-10-22 09:53:21', '2021-10-22 09:27:06', 0),
(15, 1, 'San pham 15', 370000, 320000, 'https://img.ltwebstatic.com/images3_pi/2021/07/16/16264063409910899b1d64c44dd08149f791cc2da9.webp', 'Đẹp, chất lượng tốt \r\nĐược nhiều người đặt mua\r\nVận chuyển nhanh', '2021-10-22 09:14:29', '2023-03-16 14:39:07', 0),
(16, 1, 'san pham 16', 250000, 200000, 'https://www.zanado.com/media/catalog/product/cache/all/thumbnail/700x817/7b8fef0172c2eb72dd8fd366c999954c/1/_/quan_ong_rong_nu_thoi_trang_295d.jpg', 'noi dung 2', '2021-10-22 09:19:49', '2021-10-22 11:06:45', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '7b887b1e751b6839105033c9f7bdf48c', '2021-10-19 17:03:55'),
(5, '29a460160403eb7af5bb2091b54f6688', '2023-01-25 21:07:55'),
(5, '4914f099d1272e88afd8aef1081d86eb', '2023-03-15 13:54:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'TRAN VAN DIEP', 'tranvandiep.it@gmail.com', '31232313123', 'Ha Noi, Việt Nam', 'b4cbd48886a5331c5eb2fedadabe311c', 1, '2021-10-19 10:39:39', '2021-10-20 17:40:06', 0),
(2, 'Diep Tran Van', 'ziczacgroup@gmail.com', '+84943552213', 'YEN TRI, Nam Định', 'b4cbd48886a5331c5eb2fedadabe311c', 1, '2021-10-19 10:42:39', '2021-10-20 17:43:19', 0),
(3, 'ABC', 'gokisoft.com@gmail.com', '8153565814', '810 University Drive', 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2021-10-20 17:16:11', '2021-10-20 17:53:15', 1),
(4, 'TRAN VAN DIEP', 'ziczacgroup01@gmail.com', '+84943552213', 'So 8 Ton That Thuyet, Cau Giay, Ha Noi', 'b4cbd48886a5331c5eb2fedadabe311c', 2, '2021-10-20 17:17:27', '2023-03-15 13:54:33', 1),
(5, 'Nguyễn Tuấn Anh', 'soikhongngu@gmail.com', NULL, NULL, 'ae8a0163f6098970f50c9edcc4ce12a1', 2, '2023-01-25 21:07:51', '2023-01-25 21:07:51', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `galery`
--
ALTER TABLE `galery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `galery`
--
ALTER TABLE `galery`
  ADD CONSTRAINT `galery_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
