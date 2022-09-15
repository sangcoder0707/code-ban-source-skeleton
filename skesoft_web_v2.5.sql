-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 02, 2022 lúc 03:48 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `skesoft_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_vietnamese_ci NOT NULL,
  `description` mediumtext COLLATE utf8_vietnamese_ci NOT NULL,
  `image` longtext COLLATE utf8_vietnamese_ci NOT NULL,
  `link` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `image`, `link`) VALUES
(7, 'Mã nguồn web free & có phí', 'Các code web free & mất phí do chúng tôi phát triển', 'https://i.imgur.com/HrQjHJF.jpg', 'website-code'),
(8, 'Code website dịch vụ', 'Tất cả code dịch vụ mạng như: Fb, v.vv', 'https://arena.fpt.edu.vn/wp-content/uploads/2020/09/De-thiet-ke-website-code-website-la-khai-niem-can-duoc-de-tam.jpg', 'codewebdv'),
(9, 'Code web bán host, domain', 'Tất cả code bán host, tên miền', 'https://photo2.tinhte.vn/data/attachment-files/2021/10/5682597_Hosting-Thiet-Ke-Web-Shop-Ban-Hang-Online-kien-thuc-kiem-tien-online.png', 'codewebhost');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sources`
--

CREATE TABLE `sources` (
  `id` int(64) NOT NULL,
  `name_id` text NOT NULL,
  `name_code` text NOT NULL,
  `name` text NOT NULL,
  `image` mediumtext NOT NULL,
  `details` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `viewer` int(11) NOT NULL DEFAULT '0',
  `time_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sources`
--

INSERT INTO `sources` (`id`, `name_id`, `name_code`, `name`, `image`, `details`, `price`, `category_id`, `viewer`, `time_created`) VALUES
(32, 'free-code-tsr-1-get-and-check-history-transfer-wallet', 'TSRHISTORY 1', 'Code lấy lịch sử giao dịch, check thông tin mã giao dịch TSR', 'https://i.imgur.com/nwELkEh.png', '<ul><li>Dùng code vào việc tích hợp nạp tiền bằng mã giao dịch trên shop, lấy lịch sử giao dịch TSR, kiểm tra thông tin mã giao dịch TSR.</li></ul><ul><li>Hướng dẫn có sẵn trong code, chỉ cần tải về tìm hiểu và làm theo hướng dẫn !</li></ul><ul><li>Nên sử dụng phiên bản <b>PHP 7.3.24 </b>trở lên !</li></ul><ul><li>Link tải:&nbsp;<a href=\"https://github.com/vinhuptoday/tsrcheckwallets\" target=\"_blank\">https://github.com/vinhuptoday/tsrcheckwallets</a></li></ul><ul><li>Tính năng: sử dụng <b>/checkcode.php?code=</b>mã giao dịch tsr sẽ check được thông tin mã giao dịch TSR.</li></ul><ul><li>Config xong vào web để xem tất cả lịch sử giao dịch TSR !</li></ul><ul><li><b>Lưu ý: </b>Sau khi đã đăng nhập vào 1 tài khoản tsr nào đó mà bạn muốn đổi sang tài khoản khác, bắt buộc phải xóa cookie login bằng cách trỏ web vào <b>/delete_cookie.php</b>&nbsp;để xóa cookie của tài khoản trước tránh trùng tài khoản, chi tiết xem trong hướng dẫn ở trong code.</li></ul><ul><li>Nhận tích hợp tsr vào website chi tiết liên hệ&nbsp;<a href=\"https://facebook.com/skesoftware\" target=\"_blank\">Facebook</a>&nbsp;hoặc <a href=\"https://zalo.me/0931562864\" target=\"_blank\">Zalo</a></li></ul><h4 style=\"text-align: center; \">Ảnh xem trước</h4><ul><li style=\"text-align: left;\">Nhật ký</li></ul><p style=\"text-align: center;\"><img src=\"https://i.imgur.com/XBD42sX.png\" style=\"width: 707.778px;\"></p><ul><li style=\"text-align: left;\">Xem tất cả giao dịch</li></ul><p style=\"text-align: center;\"><img src=\"https://i.imgur.com/I9v0E8U.png\" style=\"width: 707.778px;\"></p><ul><li style=\"text-align: left;\">Kiểm tra mã giao dịch <b>/checkcode.php?code</b>=mã giao dịch (plus là cộng tiền và minus là trừ tiền)</li></ul><p style=\"text-align: center;\"><img src=\"https://i.imgur.com/rCYfidr.png\" style=\"width: 707.778px;\"><br></p>', 0, 7, 1401, '2021-12-10'),
(36, 'free-code-check-mc-sv-status', 'MCCHECKSTATUS', 'MÃ NGUỒN CODE KIỂM TRA STATUS SERVER MC', 'https://i.imgur.com/wuXbaC4.png', '<ul><li style=\"text-align: left;\"><b style=\"text-align: left; font-size: 1rem;\">Tính năng: </b><span style=\"text-align: left; font-size: 1rem;\">Kiểm tra trạng thái máy chủ Minecraft (Server PC)</span><br></li></ul><div style=\"text-align: center;\"><ul><li style=\"text-align: left;\"><b>Loại code: </b>Miễn phí</li></ul><ul><li style=\"text-align: left;\"><b>Bảo hành: </b>Không</li></ul><ul><li style=\"text-align: left;\"><b>LINK TẢI VỀ:&nbsp;</b><a href=\"https://drive.google.com/file/d/1xu-PtecrqTCh-xP8auj17m3bZurEuX-0/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1xu-PtecrqTCh-xP8auj17m3bZurEuX-0/view?usp=sharing</a></li></ul><ul><li style=\"text-align: left;\"><b>Hướng dẫn sử dụng: </b>Upload code đã tải về lên hosting của bạn và vào web (không cần config bất kỳ thứ gì cả)</li></ul><p style=\"text-align: center;\"><b>ẢNH DEMO</b></p><p style=\"text-align: center;\"><img src=\"https://i.imgur.com/wuXbaC4.png\" style=\"width: 100%;\"><b><br></b></p><p style=\"text-align: center;\"><b><br></b></p><p style=\"text-align: center;\"><img src=\"https://i.imgur.com/mSfVwE9.png\" style=\"width: 100%;\"><b><br></b></p><p style=\"text-align: center;\"><b><br></b></p></div>', 0, 7, 2501, '2021-09-09'),
(37, 'freecode-tsr-api', 'TSRAPIAUTO', 'MÃ NGUỒN CODE GẠCH THẺ API THESIEURE PHP', 'https://thesieure.com/storage/userfiles/images/logo_thesieurecom.png', '<ul><li style=\"text-align: center;\"><b style=\"text-align: left; font-size: 1rem;\">Link tải &amp; Link tài liệu:&nbsp;</b><a href=\"https://documenter.getpostman.com/view/17343942/U16etnTH\" target=\"_blank\" style=\"text-align: left; background-color: rgb(255, 255, 255); font-size: 1rem;\">https://documenter.getpostman.com/view/17343942/U16etnTH</a><br></li></ul>', 0, 7, 951, '2021-09-10');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sources`
--
ALTER TABLE `sources`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
