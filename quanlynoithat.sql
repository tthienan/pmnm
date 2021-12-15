-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 22, 2020 lúc 09:02 AM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlynoithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
CREATE TABLE IF NOT EXISTS `chitietdonhang` (
  `mactdh` int(11) NOT NULL AUTO_INCREMENT,
  `madh` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `masp` int(11) NOT NULL,
  `soluong` tinyint(4) NOT NULL,
  `gia` float NOT NULL,
  PRIMARY KEY (`mactdh`),
  KEY `madh` (`madh`),
  KEY `masp` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE IF NOT EXISTS `danhmuc` (
  `madm` int(11) NOT NULL AUTO_INCREMENT,
  `tendm` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`madm`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`) VALUES
(5, 'Phòng khách'),
(7, 'Phòng ăn'),
(8, 'Phòng ngủ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `madh` int(11) NOT NULL AUTO_INCREMENT,
  `makh` int(11) NOT NULL,
  `tenkh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` datetime NOT NULL,
  `ngaynhan` date NOT NULL,
  `thanhtien` int(11) NOT NULL,
  PRIMARY KEY (`madh`),
  KEY `makh` (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `makh` int(11) NOT NULL AUTO_INCREMENT,
  `tendangnhap` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tenkh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `tendangnhap`, `tenkh`, `diachi`, `sdt`, `password`) VALUES
(1, 'loc123', 'tran phuc loc', 'long an', '123', '202cb962ac59075b964b07152d234b70'),
(2, 'phuc', 'phuc', 'phuoc vinh tay', '0933917048', '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'tranphucloc10', 'tran phuc loc', 'phuoc vinh tay', '0933917048', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'tranphucloc101', 'tran phuc loc1', 'phuoc vinh tay', '0933917048', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'w123', 'tran phuc loc', 'long an', '0933917048', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'locloc', 'tran phuc loc', 'long an', '123', '81dc9bdb52d04dc20036dbd8313ed055'),
(7, 'tranphucloc10', 'tran phuc loc', 'long an', '0933917048', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'tranphuc', 'tran phuc loc', 'long an', '1234', '81dc9bdb52d04dc20036dbd8313ed055'),
(9, 'loc1234', 'tran phuc loc', 'long an', '0933917048', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` int(5) NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
(7, 'Ghế tựa'),
(10, 'Sofa'),
(11, 'Bàn '),
(12, 'Tủ'),
(13, 'Đồ trang trí'),
(14, 'Ghế tựa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

DROP TABLE IF EXISTS `nhasanxuat`;
CREATE TABLE IF NOT EXISTS `nhasanxuat` (
  `manhasanxuat` int(5) NOT NULL AUTO_INCREMENT,
  `tennhasanxuat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manhasanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`manhasanxuat`, `tennhasanxuat`) VALUES
(2, 'PhucLocDiamon'),
(4, 'GlodeDragon'),
(5, 'SOFAA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

DROP TABLE IF EXISTS `quantri`;
CREATE TABLE IF NOT EXISTS `quantri` (
  `tendangnhap` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hoten` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(1) NOT NULL COMMENT '1:  supper admin, 2:nhan viên, 3:...',
  PRIMARY KEY (`tendangnhap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`tendangnhap`, `password`, `hoten`, `quyen`) VALUES
('tpl', '12345', 'tran phuc loc ', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` int(5) NOT NULL AUTO_INCREMENT,
  `tensp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `mota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maloai` int(5) NOT NULL,
  `manhasanxuat` int(5) NOT NULL,
  `madm` int(11) NOT NULL,
  PRIMARY KEY (`masp`),
  KEY `maloai` (`maloai`),
  KEY `manhasanxuat` (`manhasanxuat`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinh`, `gia`, `soluong`, `mota`, `maloai`, `manhasanxuat`, `madm`) VALUES
(9, 'Ghế sofa', 'sofa1.jpg', 5000000, 1, 'Sofa da Ý là một trong những dòng sản phẩm luôn được nhiều người lựa chọn bởi sự sang trọng, đẳng cấp nhưng cũng không kém phần thoải mái, dễ chịu và tiện nghi mà chúng mang lại. Sofa da Ý luôn mang lại nét lịch lãm cùng phong cách khác biệt cho chủ nhân.', 7, 2, 0),
(18, 'Bàn đá thạch anh ', 'ban2.jpg', 5000000, 1, 'Dòng sản phẩm bàn trà cao cấp với mặt bàn bằng đá. Vân đá hài hòa, màu sắc trang nhã, kiểu dáng khung độc đáo, phù hợp với các không gian phòng khách cao cấp, sang trọng, thể hiện gu thẩm mỹ tinh tế của gia chủ.', 7, 2, 0);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`) ON DELETE CASCADE,
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`manhasanxuat`) REFERENCES `nhasanxuat` (`manhasanxuat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
