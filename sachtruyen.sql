-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sachtruyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) UNSIGNED NOT NULL,
  `truyen_id` int(10) UNSIGNED NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `tomtat` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `kichhoat` int(11) NOT NULL,
  `slug_chapter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `truyen_id`, `tieude`, `tomtat`, `noidung`, `kichhoat`, `slug_chapter`) VALUES
(1, 17, 'Chapter 1: Ong lao va nhung dua con dau 1', 'khong co gi', 'Chapter 1: Ong lao va nhung dua con dau', 0, 'chapter-1-ong-lao-va-nhung-dua-con-dau-1'),
(2, 16, 'Chapter 1: hai ba năm', 'Chapter 1: hai ba năm', 'Chapter 1: hai ba năm', 0, 'chapter-1-hai-ba-nam'),
(3, 20, 'Chapter 1: anh em như ...', 'Đây là Tóm tắt chương của tập thơ lạc', 'Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc  Đây là nội dung chương của tập thơ lạc', 0, 'chapter-1-anh-em-nhu'),
(4, 19, 'Chapter 1: Ong lao va  anh em như ...', 'Chapter 1: Ong lao va  anh em như ...', 'Chapter 1: Ong lao va  anh em như ...', 0, 'chapter-1-ong-lao-va-anh-em-nhu'),
(5, 20, 'Chapter 2 Tập thơ lạc', 'Chapter 2 Tập thơ lạc Chapter 2 Tập thơ lạc', 'Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc  Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc Đây là nội dung chapter 2 của thơ lạc', 0, 'chapter-2-tap-tho-lac'),
(6, 25, 'Sự Trở Lại Của Pháp Sư Vĩ Đại Sau 4000 Năm', 'Đại phù thủy Lucas Traumen - người mạnh nhất thế giới. Trong một lần đi tiêu diệt quái vật đã khiến thần nổi giận và phạm tội khinh thường Chúa', '<p>Đại ph&ugrave; thủy Lucas Traumen - người mạnh nhất thế giới. Trong một lần đi ti&ecirc;u diệt qu&aacute;i vật đ&atilde; khiến thần nổi giận v&agrave; phạm tội khinh thường Ch&uacute;a, anh ta bị phong ấn trong địa ngục suốt 4000 năm. Đến khi tỉnh lại th&igrave; anh ta đ&atilde; nhập v&agrave;o th&acirc;n x&aacute;c của Frey Blake - thanh ni&ecirc;n yếu nhất thế giới vừa tự s&aacute;t, v&agrave; bắt đầu h&agrave;nh tr&igrave;nh kh&ocirc;i phục lại sức mạnh để diệt thần.</p>', 0, 'su-tro-lai-cua-phap-su-vi-dai-sau-4000-nam');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug_danhmuc` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `slug_danhmuc`, `mota`, `kichhoat`) VALUES
(10, 'truyện kinh dị', 'truyen-kinh-di', 'kinh dị nhưng không bằng cách người yêu bạn bỏ bạn đâu hihi', 0),
(11, 'Truyện ngôn tình', 'truyen-ngon-tinh', 'ngôn tình vậy chứ dell có thật đâu, thời buổi này yêu còn cái nịt', 0),
(12, 'Tiểu thuyết', 'tieu-thuyet', 'tiểu thuyết là điều không có thật, hãy ngưng đọc và sống cuộc sống của mình đi đừng ảo tưởng nữa bạn eeyyyy]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `truyen`
--

CREATE TABLE `truyen` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentruyen` varchar(255) NOT NULL,
  `tacgia` varchar(200) NOT NULL,
  `tomtat` text NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `slug_truyen` varchar(255) NOT NULL,
  `kichhoat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `truyen`
--

INSERT INTO `truyen` (`id`, `tentruyen`, `tacgia`, `tomtat`, `danhmuc_id`, `hinhanh`, `slug_truyen`, `kichhoat`) VALUES
(16, 'Dracul 2', 'Alexxamder', 'Thuở Thanh Xuân luôn là những hồi ức đẹp trong lòng mỗi người, một lần bỏ lỡ sẽ ghi nhớ mãi trong tim...', 10, 'image_19150572.jpg', 'dracul-2', 0),
(17, 'Rừng Na Uy', 'Tnu tnu', 'Thuở Thanh Xuân luôn là những hồi ức đẹp trong lòng mỗi người, một lần bỏ lỡ sẽ ghi nhớ mãi trong tim...', 12, '8c3eda2d15fa1ae7a0e13762a0cfa74e81.jpg', 'rung-na-uy', 0),
(19, 'Thanh Xuân Của Chúng Tôi.', 'Nấm', 'Thuở Thanh Xuân luôn là những hồi ức đẹp trong lòng mỗi người, một lần bỏ lỡ sẽ ghi nhớ mãi trong tim...', 11, 'thanhxuancuachungtoi10.jpg', 'thanh-xuan-cua-chung-toi', 0),
(20, 'Tập Thơ - Lạc', 'Cuội', 'Trăng Tan\r\nTP.HCM, 08.06 .2010', 12, 'taptholac82.jpeg', 'tap-tho-lac', 0),
(21, 'CHÀNG BAD BOY CỦA TÔI', 'Hạt Tiêu', 'Cô vừa chuyển nhà đến khu chung cư này, sau đó lại đụng mặt một chàng trai tuấn tú nhưng thật ra lại là một bad boy chính hiệu.', 11, 'chang-bad-boy-cua-toi87.jpg', 'chang-bad-boy-cua-toi', 0),
(22, 'Bách Luyện Thành Thần', 'Đường Tam Gia Thiếu', 'Cảnh giới: Luyện nhục cảnh, Luyện cốt cảnh, Luyện tạng cảnh....\r\nLa Chính vì gái mà bị đày làm nô bộc. La Bái Nhiên tham vọng đầy mình :))', 12, 'trong-sinh-tu-tien-tai-do-thi-nga-u-nhu-dao75.jpg', 'bach-luyen-thanh-than', 0),
(23, 'NHÂN VẬT CHÍNH MẠNH NHẤT LỊCH SỬ', 'Đang cập nhật', 'Thân phụ dị năng, triệu tiểu trời nhận hết gặp trắc trở. một trận bạo tạc qua đi, hắn đuổi kịp thế giới khác xuyên qua trào lưu, đáng tiếc hắc ám ...', 12, 'nhan-vat-chinh-manh-nhat-lich-su97.jpg', 'nhan-vat-chinh-manh-nhat-lich-su', 0),
(24, 'TA LUYỆN KHÍ BA NGÀN NĂM', 'Sở Thiên Ca', 'Truyện tranh Ta Luyện Khí Ba Ngàn Năm được cập nhật nhanh và đầy đủ nhất tại NetTruyen. Bạn đọc đừng quên để lại bình luận và chia sẻ', 12, 'ta-luyen-khi-ba-ngan-nam82.png', 'ta-luyen-khi-ba-ngan-nam', 0),
(25, 'TA LÀ TÀ ĐẾ', 'Đang cập nhật', 'Truyện tranh Ta Là Tà Đế được cập nhật nhanh và đầy đủ nhất tại NetTruyen. Bạn đọc đừng quên để lại bình luận và chia sẻ, ủng hộ NetTruyen ra các chương mới nhất của truyện Ta Là Tà Đế.', 12, 'ta-la-ta-de23.jpg', 'ta-la-ta-de', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Quang Thuong', 'thuongtran24092001@gmail.com', NULL, '$2y$10$3Fzd72rDi45jvYCNwWSQRus12EO0QPRIP/cw1rV1.frR7cwoKcsaC', NULL, '2021-06-19 06:41:43', '2021-06-19 06:41:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truyen_id` (`truyen_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug_danhmuc` (`slug_danhmuc`),
  ADD KEY `slug_danhmuc_2` (`slug_danhmuc`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `truyen`
--
ALTER TABLE `truyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`),
  ADD KEY `danhmuc_id_2` (`danhmuc_id`);

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
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `truyen`
--
ALTER TABLE `truyen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
