-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2021 lúc 11:37 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mffms`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachcaidat`
--

CREATE TABLE `danhsachcaidat` (
  `MaCaiDat` varchar(767) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenSanBong` text DEFAULT NULL,
  `DiaChi` text DEFAULT NULL,
  `SoDienThoai` text DEFAULT NULL,
  `Fax` text DEFAULT NULL,
  `DiaChiTrenPhieu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachcaidat`
--

INSERT INTO `danhsachcaidat` (`MaCaiDat`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenSanBong`, `DiaChi`, `SoDienThoai`, `Fax`, `DiaChiTrenPhieu`) VALUES
('MCD001', '2021-11-11 14:10:32', '2021-11-26 08:29:25', 1, 0, 'Sân Lò Heo', 'Huyện Chợ Gạo, Tỉnh Tiền Giang', '0385648362', '04.39276181', 'Thị trấn Chợ Gạo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachchitietdonnhaphang`
--

CREATE TABLE `danhsachchitietdonnhaphang` (
  `MaDonNhapHang` varchar(200) NOT NULL,
  `MaTSTB` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` double NOT NULL,
  `DVT` text DEFAULT NULL,
  `ThanhTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachchitiethddv`
--

CREATE TABLE `danhsachchitiethddv` (
  `SoHDDV` varchar(200) NOT NULL,
  `MaDichVu` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `DonGia` double NOT NULL,
  `ThanhTien` double NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachchitiethddv`
--

INSERT INTO `danhsachchitiethddv` (`SoHDDV`, `MaDichVu`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `DonGia`, `ThanhTien`, `SoLuong`) VALUES
('HDDV210001', 'DV210001', '2021-11-27 20:51:30', '2021-11-27 20:51:30', 1, 0, 5000, 50000, 10),
('HDDV210001', 'DV210004', '2021-11-27 20:51:30', '2021-11-27 20:51:30', 1, 0, 40000, 400000, 10),
('HDDV210002', 'DV210002', '2021-11-27 20:52:26', '2021-11-27 20:52:26', 1, 0, 30000, 150000, 5),
('HDDV210002', 'DV210003', '2021-11-27 20:52:26', '2021-11-27 20:52:26', 1, 0, 10000, 50000, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachchitietphieudatsan`
--

CREATE TABLE `danhsachchitietphieudatsan` (
  `MaChiTietPDS` int(11) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `MaPhieuDatSan` varchar(200) NOT NULL,
  `MaSanBong` varchar(200) NOT NULL,
  `ThoiGianBatDau` double NOT NULL,
  `ThoiGianKetThuc` double NOT NULL,
  `NgayDat` datetime NOT NULL,
  `TienCoc` double NOT NULL,
  `ThanhTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachchitietphieudatsan`
--

INSERT INTO `danhsachchitietphieudatsan` (`MaChiTietPDS`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `MaPhieuDatSan`, `MaSanBong`, `ThoiGianBatDau`, `ThoiGianKetThuc`, `NgayDat`, `TienCoc`, `ThanhTien`) VALUES
(1, '2021-11-27 17:42:18', '2021-11-27 17:42:18', 1, 0, 'PDS210001', 'SB210002', 1635928200, 1635937200, '2021-11-03 00:00:00', 240000, 240000),
(2, '2021-11-27 17:42:18', '2021-11-27 17:42:18', 1, 0, 'PDS210001', 'SB210001', 1637926200, 1637931600, '2021-11-26 00:00:00', 400000, 400000),
(3, '2021-11-27 19:13:55', '2021-11-27 19:13:55', 1, 0, 'PDS210002', 'SB210001', 1637998200, 1638003600, '2021-11-27 00:00:00', 50000, 500000),
(4, '2021-11-27 21:17:29', '2021-11-27 21:17:29', 1, 0, 'PDS210003', 'SB210004', 1638014400, 1638021600, '2021-11-27 00:00:00', 600000, 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachdichvu`
--

CREATE TABLE `danhsachdichvu` (
  `MaDichVu` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenDichVu` varchar(767) NOT NULL,
  `DonGia` double NOT NULL,
  `DVT` text DEFAULT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachdichvu`
--

INSERT INTO `danhsachdichvu` (`MaDichVu`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenDichVu`, `DonGia`, `DVT`, `GhiChu`) VALUES
('DV210001', '2021-11-03 14:15:48', '2021-11-27 20:18:16', 0, 0, 'Giữ xe', 5000, 'Xe', 'Không'),
('DV210002', '2021-11-03 16:04:09', '2021-11-27 20:18:54', 1, 0, 'Ăn uống', 30000, 'Khẩu phần', 'Nước suối và cơm hộp'),
('DV210003', '2021-11-27 19:14:55', '2021-11-27 20:19:56', 1, 0, 'Nước giải khát', 10000, 'Chai', 'Rivive, String, 7 Up, Number One'),
('DV210004', '2021-11-27 20:17:25', '2021-11-27 20:20:22', 1, 0, 'Trang phục thi đấu', 40000, 'Bộ', 'Áo T90');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachdonnhaphang`
--

CREATE TABLE `danhsachdonnhaphang` (
  `MaDonNhapHang` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `NgayLap` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `MaNhaCungCap` varchar(200) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `NgayGiaoHang` datetime NOT NULL,
  `GhiChu` text DEFAULT NULL,
  `ThanhTien` double NOT NULL,
  `DaThanhToan` double NOT NULL,
  `TinhTrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachdonnhaphang`
--

INSERT INTO `danhsachdonnhaphang` (`MaDonNhapHang`, `ThoiGianTao`, `ThoiGianCapNhat`, `NgayLap`, `TrangThai`, `DaXoa`, `MaNhaCungCap`, `MaNhanVien`, `NgayGiaoHang`, `GhiChu`, `ThanhTien`, `DaThanhToan`, `TinhTrang`) VALUES
('DNH210001', '2021-11-06 10:59:20', '0001-01-01 00:00:00', '2021-11-05 00:00:00', 1, 0, 'NCC210001', 'NV210001', '2021-11-14 00:00:00', 'Còn thiếu 2 áo', 1200000, 1200000, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachhoadondichvu`
--

CREATE TABLE `danhsachhoadondichvu` (
  `SoHDDV` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `MaKhachHang` varchar(200) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `NgaySuDung` datetime NOT NULL,
  `NgayLap` datetime NOT NULL,
  `GhiChu` text DEFAULT NULL,
  `ThanhTien` double NOT NULL,
  `DaThanhToan` double NOT NULL,
  `DichVuMaDichVu` varchar(200) DEFAULT NULL,
  `TinhTrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachhoadondichvu`
--

INSERT INTO `danhsachhoadondichvu` (`SoHDDV`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `MaKhachHang`, `MaNhanVien`, `NgaySuDung`, `NgayLap`, `GhiChu`, `ThanhTien`, `DaThanhToan`, `DichVuMaDichVu`, `TinhTrang`) VALUES
('HDDV210001', '2021-11-27 20:51:30', '2021-11-27 20:51:30', 1, 0, 'KH210002', 'NV210002', '2021-11-27 00:00:00', '2021-11-27 00:00:00', '', 450000, 450000, NULL, 'Đã thanh toán'),
('HDDV210002', '2021-11-27 20:52:26', '2021-11-27 20:52:26', 1, 0, 'KH210003', 'NV210003', '2021-11-27 00:00:00', '2021-11-27 00:00:00', '', 200000, 200000, NULL, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachkhachhang`
--

CREATE TABLE `danhsachkhachhang` (
  `MaKhachHang` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenKhachHang` text DEFAULT NULL,
  `GioiTinh` text DEFAULT NULL,
  `NgaySinh` datetime NOT NULL,
  `SoDienThoai` text DEFAULT NULL,
  `DiaChi` text DEFAULT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachkhachhang`
--

INSERT INTO `danhsachkhachhang` (`MaKhachHang`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenKhachHang`, `GioiTinh`, `NgaySinh`, `SoDienThoai`, `DiaChi`, `GhiChu`) VALUES
('KH210001', '2021-11-03 13:22:29', '2021-11-30 09:22:46', 1, 0, 'Bùi Văn Đạo', 'Nam', '2001-11-03 00:00:00', '0385642964', '117 Cống Quỳnh, Phường Nguyễn Cư Trinh, Quận 1, TP.HCM', 'Khách quen'),
('KH210002', '2021-11-27 17:51:26', '2021-12-01 16:43:46', 1, 0, 'Nguyễn Văn Tèo', 'Nam', '1970-11-11 00:00:00', '0356662323', 'Quận 6, TP. HCM', 'Không có'),
('KH210003', '2021-11-27 19:06:17', '2021-11-30 09:12:12', 1, 0, 'Lê Văn Cáp', 'Nam', '1991-11-27 00:00:00', '0239402399', 'QQ3 Ba Vi, Cư xá Bắc Hải, Phường 15, Quận 10, Thành phố Hồ Chí Minh', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachnhacungcap`
--

CREATE TABLE `danhsachnhacungcap` (
  `MaNhaCungCap` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenNhaCungCap` varchar(767) NOT NULL,
  `SoDienThoai` varchar(767) NOT NULL,
  `DiaChi` text DEFAULT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachnhacungcap`
--

INSERT INTO `danhsachnhacungcap` (`MaNhaCungCap`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenNhaCungCap`, `SoDienThoai`, `DiaChi`, `GhiChu`) VALUES
('NCC210001', '2021-11-03 14:24:18', '2021-11-27 17:16:03', 1, 0, 'NIKE', '0898992992', 'Cần Thơ', 'Áo bóng đá'),
('NCC210002', '2021-11-26 08:38:53', '2021-11-27 18:00:30', 1, 0, 'ADIDAS', '0998890001', 'Hà Nội 1', 'Giày bóng đá'),
('NCC210003', '2021-11-30 11:26:41', '2021-11-30 12:36:54', 1, 0, 'Sports Center', '0923402394', '42 Phạm Hồng Thái, Phường Bến Thành, Quận 1, TP. HCM', 'Găng tay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachnhanvien`
--

CREATE TABLE `danhsachnhanvien` (
  `MaNhanVien` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenNhanVien` text DEFAULT NULL,
  `GioiTinh` text DEFAULT NULL,
  `NgaySinh` datetime NOT NULL,
  `ChucVu` text NOT NULL,
  `SoDienThoai` varchar(767) NOT NULL,
  `SoCMND` varchar(767) NOT NULL,
  `Luong` double NOT NULL,
  `GhiChu` text DEFAULT NULL,
  `DiaChi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachnhanvien`
--

INSERT INTO `danhsachnhanvien` (`MaNhanVien`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenNhanVien`, `GioiTinh`, `NgaySinh`, `ChucVu`, `SoDienThoai`, `SoCMND`, `Luong`, `GhiChu`, `DiaChi`) VALUES
('NV210001', '2021-11-03 14:23:19', '2021-11-26 08:16:49', 1, 0, 'Hồ Văn Hơi', 'Nam', '2021-11-03 07:21:27', 'Người quản lý', '0371289189', '312536277', 5000000, 'Cơ bản', 'Bạc Liêu'),
('NV210002', '2021-11-08 19:04:11', '2021-11-08 19:04:50', 1, 0, 'Trần Văn Tý', 'Nam', '1989-11-08 00:00:00', 'Nhân viên', '0938748445', '312456788', 8000000, '', 'Tháp Mười'),
('NV210003', '2021-11-26 08:18:00', '2021-11-27 21:14:54', 1, 0, 'Nguyễn Thị Hạnh Phúc', 'Nữ', '1996-07-26 00:00:00', 'Nhân viên', '0356273844', '325627382', 10000000, 'Nhân viên mới', 'Long An');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachphieudatsan`
--

CREATE TABLE `danhsachphieudatsan` (
  `MaPhieuDatSan` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `MaKhachHang` varchar(200) NOT NULL,
  `MaNhanVien` varchar(200) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `TongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachphieudatsan`
--

INSERT INTO `danhsachphieudatsan` (`MaPhieuDatSan`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `MaKhachHang`, `MaNhanVien`, `NgayLap`, `TongTien`) VALUES
('PDS210001', '2021-11-03 15:05:48', '0001-01-01 00:00:00', 2, 0, 'KH210001', 'NV210002', '2021-11-03 00:00:00', 640000),
('PDS210002', '2021-11-27 19:13:55', '2021-11-27 19:13:55', 1, 0, 'KH210003', 'NV210003', '2021-11-21 00:00:00', 500000),
('PDS210003', '2021-11-27 20:14:25', '0001-01-01 00:00:00', 2, 0, 'KH210002', 'NV210003', '2021-11-27 00:00:00', 600000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachsanbong`
--

CREATE TABLE `danhsachsanbong` (
  `MaSanBong` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenSanBong` varchar(767) NOT NULL,
  `ChieuDai` double NOT NULL,
  `ChieuRong` double NOT NULL,
  `DienTich` double NOT NULL,
  `GhiChu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachsanbong`
--

INSERT INTO `danhsachsanbong` (`MaSanBong`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenSanBong`, `ChieuDai`, `ChieuRong`, `DienTich`, `GhiChu`) VALUES
('SB210001', '2021-11-03 13:32:45', '2021-11-03 13:32:45', 1, 0, 'Sân Hiếu Hoàng Long', 70, 35, 6000, 'Sân 7'),
('SB210002', '2021-11-03 15:11:13', '2021-11-05 12:38:00', 1, 0, 'Sân Chảo Lửa', 50, 30, 1500, 'Sân 5'),
('SB210003', '2021-11-26 08:34:21', '2021-11-30 11:14:11', 1, 0, 'Sân Vũ Long', 110, 68, 7480, 'Sân 11'),
('SB210004', '2021-11-27 19:53:27', '2021-11-27 19:53:49', 1, 0, 'Sân Càng Long', 80, 30, 2400, 'Sân 5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachtaikhoan`
--

CREATE TABLE `danhsachtaikhoan` (
  `MaTaiKhoan` varchar(767) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `TenDangNhap` text DEFAULT NULL,
  `Hash` varbinary(4000) DEFAULT NULL,
  `Salt` varbinary(4000) DEFAULT NULL,
  `PhanQuyen` text DEFAULT NULL,
  `HoVaTen` text DEFAULT NULL,
  `GioiTinh` text DEFAULT NULL,
  `NgaySinh` datetime NOT NULL,
  `Email` text DEFAULT NULL,
  `DiaChi` text DEFAULT NULL,
  `SoDienThoai` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachtaikhoan`
--

INSERT INTO `danhsachtaikhoan` (`MaTaiKhoan`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `TenDangNhap`, `Hash`, `Salt`, `PhanQuyen`, `HoVaTen`, `GioiTinh`, `NgaySinh`, `Email`, `DiaChi`, `SoDienThoai`) VALUES
('3bd846ae-2bb5-4873-8fca-bae0c4e90f4e', '0001-01-01 00:00:00', '2021-11-30 11:00:27', 1, 0, 'nguyenvankhanh', 0x05f1771cb4646fe8ccf965d8d5d3dc28ce8552b0e288352ab1edf54554a6a1bf22cd6a0ab7bc7ded036955c69061cead5a4afa3c3074731a042dd2572757aac8, 0xff6bee0bd29db1a8764ed449c93e75bb2ec49e3c728e3c31f80d1a55788af0221515a968508729013b3f57fd9d14f881098eb52c17af023239648a838d6af74c47b8ac28acbb28c10944371a886d6b3df6697e94048c15983bfe9f6d55b46d20faa7129a0d2d6ab2f42d49967026a2236b357e4b98f17a9cbce5f0407bb18eff, 'Người quản lý', 'Nguyễn Văn A', 'Nam', '1990-11-27 00:00:00', 'khanhnv@gmail.com', '116 Cô Giang, Phường Cô Giang, Quận 1, Thành phố Hồ Chí Minh', '0385662988'),
('421249ba-175f-41a7-b2c7-9cde03dd4937', '0001-01-01 00:00:00', '2021-11-30 09:21:44', 1, 0, 'admin', 0xec9be220b114007830ca8e465e41dcdcf5d4faa6836efb56a6e4aef98f719162bb088e9b441f4c773b2a1d2d907973ef7606bf0021427cfd4c38fa4c7133eb20, 0x7de17480087f9e2fc3924fef8d99c3d1da5b791009e592807dd9e40be11e2f0e38e288422bca936ccadb73e4973bfe23d45f6d1396f7ff4da46d5a5189578c5df1cea5f280e9cddd399a82f03ffbd801982cb17042bdcbc1579aecc7ae35a0182c62f00fc5509dc223c15b8d18ac017926531e3bcfa06f215c5f8ddfea27d455, 'Chủ sân', 'Nguyễn Văn Giàu', 'Nam', '2001-04-06 00:00:00', 'vangiau.recca@gmail.com', 'Xã Bình Phan, Huyện Chợ Gạo, Tỉnh Tiền Giang', '0385642964'),
('ba3f0102-845b-4601-955b-ad993410090b', '0001-01-01 00:00:00', '2021-11-30 09:28:21', 1, 0, 'hovando', 0x4866c772352573c971115aaa319b77f15b0693097b9c3c0626bd8b1f6cff9156e7c8fa2d7639c6c48c36e6b5223ea3d69c5c237fbe8ed83216829274bf4c8710, 0x32812f6cf5999b086e5fd1ad49f8a282b9fae078f8424e4f86dedb1a9ecc2d06fe327ee596885cebee504e2767419073b16d05e7a7d300a85b8a02e998f3bc0126b6a2635a324fb54526dd6a7b24a66606d2e6b68f9f6f4f28fc2bf278b7b31b6234b025ee0f1defa9a57d9bdf6038ee1694e637742879ff87129cb046fad0ec, 'Nhân viên', 'Hồ Văn Đồ', 'Nam', '1989-11-27 00:00:00', 'dohv@gmail.com', 'Ấp 1, Xã Đạo Thạnh, Tp. Mỹ Tho, Tiền Giang', '0339960011');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhsachtaisanthietbi`
--

CREATE TABLE `danhsachtaisanthietbi` (
  `MaTSTB` varchar(200) NOT NULL,
  `ThoiGianTao` datetime NOT NULL,
  `ThoiGianCapNhat` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `DaXoa` int(11) NOT NULL,
  `MaNhaCungCap` varchar(200) NOT NULL,
  `TenTSTB` varchar(767) NOT NULL,
  `TinhTrang` text DEFAULT NULL,
  `ThongTinBaoHanh` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhsachtaisanthietbi`
--

INSERT INTO `danhsachtaisanthietbi` (`MaTSTB`, `ThoiGianTao`, `ThoiGianCapNhat`, `TrangThai`, `DaXoa`, `MaNhaCungCap`, `TenTSTB`, `TinhTrang`, `ThongTinBaoHanh`) VALUES
('TSTB210002', '2021-11-27 20:10:06', '2021-11-27 20:10:06', 1, 0, 'NCC210001', 'Banh đá', 'Đang bảo hành', '6 tháng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20191220045215_InitialCreate', '2.2.6-servicing-10079');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhsachcaidat`
--
ALTER TABLE `danhsachcaidat`
  ADD PRIMARY KEY (`MaCaiDat`);

--
-- Chỉ mục cho bảng `danhsachchitietdonnhaphang`
--
ALTER TABLE `danhsachchitietdonnhaphang`
  ADD PRIMARY KEY (`MaDonNhapHang`,`MaTSTB`),
  ADD KEY `IX_DanhSachChiTietDonNhapHang_MaTSTB` (`MaTSTB`);

--
-- Chỉ mục cho bảng `danhsachchitiethddv`
--
ALTER TABLE `danhsachchitiethddv`
  ADD PRIMARY KEY (`SoHDDV`,`MaDichVu`),
  ADD KEY `IX_DanhSachChiTietHDDV_MaDichVu` (`MaDichVu`);

--
-- Chỉ mục cho bảng `danhsachchitietphieudatsan`
--
ALTER TABLE `danhsachchitietphieudatsan`
  ADD PRIMARY KEY (`MaChiTietPDS`),
  ADD UNIQUE KEY `IX_DanhSachChiTietPhieuDatSan_MaSanBong_ThoiGianBatDau` (`MaSanBong`,`ThoiGianBatDau`),
  ADD KEY `IX_DanhSachChiTietPhieuDatSan_MaPhieuDatSan` (`MaPhieuDatSan`);

--
-- Chỉ mục cho bảng `danhsachdichvu`
--
ALTER TABLE `danhsachdichvu`
  ADD PRIMARY KEY (`MaDichVu`),
  ADD UNIQUE KEY `IX_DanhSachDichVu_TenDichVu` (`TenDichVu`);

--
-- Chỉ mục cho bảng `danhsachdonnhaphang`
--
ALTER TABLE `danhsachdonnhaphang`
  ADD PRIMARY KEY (`MaDonNhapHang`),
  ADD KEY `IX_DanhSachDonNhapHang_MaNhaCungCap` (`MaNhaCungCap`),
  ADD KEY `IX_DanhSachDonNhapHang_MaNhanVien` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `danhsachhoadondichvu`
--
ALTER TABLE `danhsachhoadondichvu`
  ADD PRIMARY KEY (`SoHDDV`),
  ADD KEY `IX_DanhSachHoaDonDichVu_DichVuMaDichVu` (`DichVuMaDichVu`),
  ADD KEY `IX_DanhSachHoaDonDichVu_MaKhachHang` (`MaKhachHang`),
  ADD KEY `IX_DanhSachHoaDonDichVu_MaNhanVien` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `danhsachkhachhang`
--
ALTER TABLE `danhsachkhachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `danhsachnhacungcap`
--
ALTER TABLE `danhsachnhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`),
  ADD UNIQUE KEY `IX_DanhSachNhaCungCap_SoDienThoai` (`SoDienThoai`),
  ADD UNIQUE KEY `IX_DanhSachNhaCungCap_TenNhaCungCap` (`TenNhaCungCap`);

--
-- Chỉ mục cho bảng `danhsachnhanvien`
--
ALTER TABLE `danhsachnhanvien`
  ADD PRIMARY KEY (`MaNhanVien`),
  ADD UNIQUE KEY `IX_DanhSachNhanVien_SoCMND` (`SoCMND`),
  ADD UNIQUE KEY `IX_DanhSachNhanVien_SoDienThoai` (`SoDienThoai`);

--
-- Chỉ mục cho bảng `danhsachphieudatsan`
--
ALTER TABLE `danhsachphieudatsan`
  ADD PRIMARY KEY (`MaPhieuDatSan`),
  ADD KEY `IX_DanhSachPhieuDatSan_MaKhachHang` (`MaKhachHang`),
  ADD KEY `IX_DanhSachPhieuDatSan_MaNhanVien` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `danhsachsanbong`
--
ALTER TABLE `danhsachsanbong`
  ADD PRIMARY KEY (`MaSanBong`),
  ADD UNIQUE KEY `IX_DanhSachSanBong_TenSanBong` (`TenSanBong`);

--
-- Chỉ mục cho bảng `danhsachtaikhoan`
--
ALTER TABLE `danhsachtaikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`);

--
-- Chỉ mục cho bảng `danhsachtaisanthietbi`
--
ALTER TABLE `danhsachtaisanthietbi`
  ADD PRIMARY KEY (`MaTSTB`),
  ADD UNIQUE KEY `IX_DanhSachTaiSanThietBi_TenTSTB` (`TenTSTB`),
  ADD KEY `IX_DanhSachTaiSanThietBi_MaNhaCungCap` (`MaNhaCungCap`);

--
-- Chỉ mục cho bảng `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhsachchitietdonnhaphang`
--
ALTER TABLE `danhsachchitietdonnhaphang`
  ADD CONSTRAINT `FK_DanhSachChiTietDonNhapHang_DanhSachDonNhapHang_MaDonNhapHang` FOREIGN KEY (`MaDonNhapHang`) REFERENCES `danhsachdonnhaphang` (`MaDonNhapHang`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachChiTietDonNhapHang_DanhSachTaiSanThietBi_MaTSTB` FOREIGN KEY (`MaTSTB`) REFERENCES `danhsachtaisanthietbi` (`MaTSTB`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachchitiethddv`
--
ALTER TABLE `danhsachchitiethddv`
  ADD CONSTRAINT `FK_DanhSachChiTietHDDV_DanhSachDichVu_MaDichVu` FOREIGN KEY (`MaDichVu`) REFERENCES `danhsachdichvu` (`MaDichVu`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachChiTietHDDV_DanhSachHoaDonDichVu_SoHDDV` FOREIGN KEY (`SoHDDV`) REFERENCES `danhsachhoadondichvu` (`SoHDDV`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachchitietphieudatsan`
--
ALTER TABLE `danhsachchitietphieudatsan`
  ADD CONSTRAINT `FK_DanhSachChiTietPhieuDatSan_DanhSachPhieuDatSan_MaPhieuDatSan` FOREIGN KEY (`MaPhieuDatSan`) REFERENCES `danhsachphieudatsan` (`MaPhieuDatSan`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachChiTietPhieuDatSan_DanhSachSanBong_MaSanBong` FOREIGN KEY (`MaSanBong`) REFERENCES `danhsachsanbong` (`MaSanBong`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachdonnhaphang`
--
ALTER TABLE `danhsachdonnhaphang`
  ADD CONSTRAINT `FK_DanhSachDonNhapHang_DanhSachNhaCungCap_MaNhaCungCap` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `danhsachnhacungcap` (`MaNhaCungCap`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachDonNhapHang_DanhSachNhanVien_MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `danhsachnhanvien` (`MaNhanVien`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachhoadondichvu`
--
ALTER TABLE `danhsachhoadondichvu`
  ADD CONSTRAINT `FK_DanhSachHoaDonDichVu_DanhSachDichVu_DichVuMaDichVu` FOREIGN KEY (`DichVuMaDichVu`) REFERENCES `danhsachdichvu` (`MaDichVu`),
  ADD CONSTRAINT `FK_DanhSachHoaDonDichVu_DanhSachKhachHang_MaKhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `danhsachkhachhang` (`MaKhachHang`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachHoaDonDichVu_DanhSachNhanVien_MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `danhsachnhanvien` (`MaNhanVien`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachphieudatsan`
--
ALTER TABLE `danhsachphieudatsan`
  ADD CONSTRAINT `FK_DanhSachPhieuDatSan_DanhSachKhachHang_MaKhachHang` FOREIGN KEY (`MaKhachHang`) REFERENCES `danhsachkhachhang` (`MaKhachHang`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DanhSachPhieuDatSan_DanhSachNhanVien_MaNhanVien` FOREIGN KEY (`MaNhanVien`) REFERENCES `danhsachnhanvien` (`MaNhanVien`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `danhsachtaisanthietbi`
--
ALTER TABLE `danhsachtaisanthietbi`
  ADD CONSTRAINT `FK_DanhSachTaiSanThietBi_DanhSachNhaCungCap_MaNhaCungCap` FOREIGN KEY (`MaNhaCungCap`) REFERENCES `danhsachnhacungcap` (`MaNhaCungCap`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
