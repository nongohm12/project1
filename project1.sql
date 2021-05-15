-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 06:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mem_password` varchar(8) NOT NULL,
  `mem_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mem_fname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mem_lname` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mem_tel` int(12) NOT NULL,
  `mem_status` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_username`, `mem_password`, `mem_email`, `mem_fname`, `mem_lname`, `mem_tel`, `mem_status`) VALUES
('dew210244', '210244', '62050747@kmitl.ac.th', 'Kansiri', 'Saengbuapheun', 925867240, 'member'),
('momay1122', 'momay123', 'momaynaphatsorn@gmail.com', 'Naphatsorn', 'Khotkok', 982852142, 'member'),
('nongohm12', 'ohm12900', 'mkonji12@hotmail.com', 'Kan', 'Chaisena', 962868882, 'member'),
('richoesxx', 'werdes27', '62050764@kmitl.ac.th', 'Thitikon', 'Chekcheenkun', 922740827, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(5) NOT NULL,
  `menu_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `menu_cost` varchar(4) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `menu_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_cost`, `menu_type`) VALUES
(1, 'สตรอเบอรี่ช็อกโก้ โทส', '169', 'dessert'),
(2, 'ฮั่นนี่ โทส', '149', 'dessert'),
(3, 'นูเทลล่าเฟอเรโร่ โทส', '189', 'dessert'),
(4, 'สตรอเบอรี่ ช็อคโก้ เครป', '159', 'dessert'),
(5, 'คาราเมล เครป', '149', 'dessert'),
(6, 'นูเทลล่า เครป', '179', 'dessert'),
(7, 'ข้าวเหนียวมะม่วง วาฟเฟิล', '169', 'dessert'),
(8, 'ช็อคโก้ เฟอร์เรโร่วาฟเฟิล', '169', 'dessert'),
(9, 'ฮันนี่ วาฟเฟิล', '139', 'dessert'),
(10, 'ฮ่องกงวาฟเฟิลบานาน่าช็อคโก้', '159', 'dessert'),
(11, 'ฮ่องกงวาฟเฟิล มิกซ์ฟรุ๊ต', '169', 'dessert'),
(12, 'มินิ ลาวา', '99', 'dessert'),
(13, 'สตรอเบอร์รี่ ลาวา', '129', 'dessert'),
(14, 'ช็อคบราวนี่ ลาวา', '129', 'dessert'),
(15, 'ช็อค ลาวา', '129', 'dessert'),
(16, 'ข้าวเหนียวมะม่วง ลาวา', '169', 'dessert'),
(17, 'ดับเบิ้ล ช็อคโก้ บิงซู', '199', 'dessert'),
(18, 'มินิสตรอเบอร์รี่ บานาน่า', '99', 'dessert'),
(19, 'มินิภูเขาไฟ', '99', 'dessert'),
(20, 'มินิช็อคโก้ โอริโอ้', '99', 'dessert'),
(21, 'มินิมาชเมลโล่ เยลลี่', '159', 'dessert'),
(22, 'มินิมิกซ์ฟรุ๊ต', '99', 'dessert'),
(23, 'บิงซูเงาะ', '189', 'dessert'),
(24, 'สตรอเบอร์รี่ฟรีช บิงซู', '99', 'dessert'),
(25, 'มาสเมลโล่ เยลลี่ บิงซู', '99', 'dessert'),
(26, 'มินิข้าวเหนียวมะม่วง', '99', 'dessert'),
(27, 'มินิลื้นจี่สวีท', '99', 'dessert'),
(28, 'มินิคาราเมล คอรเฟล็ก', '99', 'dessert'),
(29, 'สตรอเบอร์รี่ บิงซู', '199', 'dessert'),
(30, 'ทูโทน บิงซู', '179', 'dessert'),
(31, 'โอวัลติน บานาน่า บิงซู', '169', 'dessert'),
(32, 'อาราบิก้า คาราเมล บิงซู', '169', 'dessert'),
(33, 'ข้าวเหนียวมะม่วง บิงซู', '219', 'dessert'),
(34, 'มินิมูนไลท์', '99', 'dessert'),
(35, 'สตรอเบอร์รี่ฟรีช บิงซู', '159', 'dessert'),
(36, 'มินิชิบูยากรีนที', '99', 'dessert'),
(37, 'มิกซ์ฟรุ๊ต บิงซู', '249', 'dessert'),
(38, 'สกู๊ป', '29', 'dessert'),
(39, 'ช็อคโกแลต ซันเดย์', '49', 'dessert'),
(40, 'สตรอเบอร์รี่ ซันเดย์', '49', 'dessert'),
(41, 'บานาน่าโบ๊ท', '79', 'dessert'),
(42, 'โกโก้นมสด L', '59', 'beverage'),
(43, 'นมสดหวาน L', '49', 'beverage'),
(44, 'นมชมพู L', '59', 'beverage'),
(45, 'ชาเย็นนมสด L', '59', 'beverage'),
(46, 'นมสดจืด L', '49', 'beverage'),
(47, 'โอวัลตินนมสด L', '59', 'beverage'),
(48, 'ไวท์มอลล์นมสด L', '59', 'beverage'),
(49, 'ชาเขียวนมสด L', '59', 'beverage'),
(50, 'ชามะนาว L', '59', 'beverage'),
(51, 'คาราเมลนมสด L', '59', 'beverage'),
(52, 'กาแฟนมสด L', '59', 'beverage'),
(53, 'คุ้กกี้บราวนี่ มิลค์เชค', '59', 'beverage'),
(54, 'ดาร์ก ช็อกโก้มิลค์', '59', 'beverage'),
(55, 'มัทฉะ กรีนมิลค์', '59', 'beverage'),
(56, 'เมล่อนนมสด', '59', 'beverage'),
(57, 'ชาดำเย็น', '49', 'beverage'),
(58, 'โพนี่ มิลค์เชค', '59', 'beverage'),
(59, 'เฮอเซนัสนมสด', '59', 'beverage'),
(60, 'ปังเย็นชาไทย', '59', 'beverage'),
(61, 'บลูฮาวายโซดา', '59', 'beverage'),
(62, 'ลิ้นจี่โซดา', '59', 'beverage'),
(63, 'แดงมะนาวโซดา', '59', 'beverage'),
(64, 'แอปเปิ้ลโซดา', '59', 'beverage'),
(65, 'สตรอเบอร์รี่ ลิ้นจี่ โซดา', '59', 'beverage'),
(66, 'นมล้วนโกโก', '59', 'beverage'),
(67, 'นมหวานล้วน', '59', 'beverage'),
(68, 'นมล้วนคาราเมล', '59', 'beverage'),
(69, 'นมล้วนโอริโอ้', '59', 'beverage'),
(70, 'นมล้วนโอริโอ้', '59', 'beverage'),
(71, 'นมล้วนโอวัลติน', '59', 'beverage'),
(72, 'นมล้วนจืด', '54', 'beverage'),
(73, 'นมล้วนมัทฉะ', '69', 'beverage'),
(74, 'นมล้วนกาแฟ', '59', 'beverage'),
(75, 'นมล้วนชมพู', '59', 'beverage'),
(76, 'ปังเนย นม', '27', 'dessert'),
(77, 'ปังเนบ สังขยา 2 สี', '27', 'dessert'),
(78, 'ชุดปังคอมโบเซ็ท', '109', 'dessert'),
(79, 'ชุดปังนึ่ง', '59', 'dessert'),
(80, 'ชุดปังปิ้งกรอบ', '59', 'dessert'),
(81, 'ปังเนย สังขยาใบเตย', '27', 'dessert'),
(82, 'ปังเนย นม น้ำตาล', '27', 'dessert'),
(83, 'ปังเนย นม โอวัลติน', '27', 'dessert'),
(84, 'ปังเนย น้ำตาล', '27', 'dessert'),
(85, 'ปังเนย สังขยาส้ม', '27', 'dessert'),
(86, 'ปังเนย สังขยาชาไทย', '27', 'dessert'),
(87, 'ปังเนย นม ช็อคโกแลต', '27', 'dessert'),
(88, 'ปังเนย นูเทลล่า', '39', 'dessert'),
(89, 'ปังเนย กล้วย ช็อคโกแลต', '37', 'dessert'),
(90, 'ปังเนย ช็อคโกแลต', '27', 'dessert'),
(91, 'ปังเนย แยมสตรอเบอรี่', '27', 'dessert'),
(92, 'ปังเนย สังขยาเผือก', '27', 'dessert'),
(93, 'ปังเนย นูเทลล่า กล้วย', '49', 'dessert'),
(94, 'ปังปิ้งเปล่า 2 แผ่น', '27', 'dessert'),
(95, 'ปังเนย นม กล้วย โอวัลติน', '27', 'dessert'),
(96, 'ปังเนย นูเทลล่า อัลมอนต์', '49', 'dessert'),
(97, 'สังขยา', '27', 'dessert'),
(98, 'ปังเนย แยมส้ม', '27', 'dessert'),
(99, 'ปังเนย คอรเฟล็ก คาราเมล', '27', 'dessert'),
(100, 'ปังเนย โอริโอ้ ช็อคโกแลต', '27', 'dessert'),
(101, 'ปังเนย โกโก้ครั้น ช็อคดกแลต', '27', 'dessert'),
(102, 'ชุดปังปิ้งคอมโบเซ็ท', '109', 'dessert'),
(103, 'ปังเย็นนูเทลล่า', '79', 'dessert'),
(104, 'ปังเย็นมัทฉะ', '79', 'dessert'),
(105, 'ปังเย็นนมสดหวาน', '69', 'dessert'),
(106, 'นมสดจืดร้อน', '39', 'beverage'),
(107, 'นมสดหวานร้อน', '39', 'beverage'),
(108, 'โกโก้นมสดร้อน', '49', 'beverage'),
(109, 'นมสดจืดร้อน', '49', 'beverage'),
(110, 'โอวัลตินนมสดร้อน', '49', 'beverage'),
(111, 'กาแฟนมสดร้อน', '49', 'beverage'),
(112, 'คาราเมลนมสดร้อน', '49', 'beverage'),
(113, 'มัทฉะนมสดร้อน', '49', 'beverage'),
(114, 'เฮอเซลนัสนมสดร้อน', '49', 'beverage'),
(115, 'นมชมพูร้อน', '49', 'beverage'),
(116, 'โฟร์ชีส', '209', 'food'),
(117, 'คาโบนาร่า', '209', 'food'),
(118, 'ซีฟู้ด ดีไลท์ (เดอลุกซ์)', '219', 'food'),
(119, 'ซีฟู้ด ค็อกเทล', '219', 'food'),
(120, 'ฮาวาเอี้ยน', '209', 'food'),
(121, 'เฟรนช์ฟรายส์ ดิป 6 อย่าง', '109', 'food'),
(122, 'เฟรนช์ฟรายส์', '79', 'food'),
(131, 'ไส้กรอกทอด', '79', 'food'),
(132, 'เกี๊ยวซ่า', '79', 'food'),
(133, 'ไก่คาราเกะ', '79', 'food'),
(134, 'นักเก็ต', '79', 'food'),
(135, 'ไข่กระทะหมูสับ', '89', 'food'),
(136, 'ปีกไก่ทอด', '99', 'food'),
(137, 'ปีกไก่ทอดน้ำปลา', '99', 'food'),
(138, 'รวมทอดโกดังนมสด', '199', 'food'),
(139, 'สเต็กไก่สไปซี่', '109', 'food'),
(140, 'สเต็กสันคอหมู', '129', 'food'),
(141, 'สเต็กไก่นุ่ม', '99', 'food'),
(142, 'สเต็กไก่บาร์บีคิว', '109', 'food'),
(143, 'สเต็กสันนอกหมู', '129', 'food'),
(144, 'สเต็กพอร์คช็อป', '149', 'food'),
(145, 'สเต็ก 3 สหาย', '239', 'food'),
(146, 'ผัดไทโกดังนมสด', '89', 'food'),
(147, 'มาม่าผัดขี้เมาทะเล', '119', 'food'),
(148, 'มาม่าต้มยำชีสหมูเด้ง', '109', 'food'),
(149, 'ผัดไทกุ้งสด', '109', 'food'),
(150, 'มาม่าต้มยำชีสทะเล', '129', 'food'),
(151, 'สปาเก็ตตี้ซอสหมู', '129', 'food'),
(152, 'มักกะโรนีไก่', '89', 'food'),
(153, 'มักกะโรนีกุ้ง', '109', 'food'),
(154, 'สปาเก็ตตี้ต้มยำทะเลแห้ง', '129', 'food'),
(155, 'สปาเก็ตตี้คาโบนาร่า แฮม', '129', 'food'),
(156, 'สปาเก็ตตี้คาโบนาร่า เบคอน', '129', 'food'),
(157, 'สปาเก็ตตี้ซอสมะเขือเทศ แฮม', '129', 'food'),
(158, 'สปาเก็ตตี้ซอสมะเขือเทศ เบคอน', '129', 'food'),
(159, 'สปาเก็ตตี้ซอสมะเขือเทศ ไส้กรอก', '129', 'food'),
(160, 'สปาเก็ตตี้ผัดพริกแห้ง แฮม', '129', 'food'),
(161, 'สปาเก็ตตี้ผัดพริกแห้ง เบคอน', '129', 'food'),
(162, 'สปาเก็ตตี้ผัดพริกแห้ง ไส้กรอก', '129', 'food'),
(163, 'สปาเก็ตตี้ผัดขี้เมาทะเล', '129', 'food'),
(164, 'ข้าวไก่กระเทียม ไข่ดาว', '89', 'food'),
(165, 'ข้าวกะเพราไก่ ไข่ดาว', '89', 'food'),
(166, 'ข้าวหมูทอด + ไข่ยางมะตูม', '99', 'food'),
(167, 'ข้าวหมูทอดกระเทียม + ไข่ยางมะตูม', '99', 'food'),
(168, 'ข้าวผัดแหนม', '109', 'food'),
(169, 'ข้าวผัดไส้กรอก', '109', 'food'),
(170, 'ข้าวผัดแฮม', '109 ', 'food'),
(171, 'ข้าวผัดปูอัด', '109', 'food'),
(172, 'ข้าวผัดกุนเชียง', '109', 'food'),
(173, 'ข้าวผัดเบคอน', '109', 'food'),
(174, 'ข้าวผัดกุ้ง', '109', 'food'),
(175, 'ข้าวผัดต้มยำกุ้ง', '119', 'food'),
(176, 'ข้าวผัดอเมริกัน', '129', 'food'),
(177, 'ข้าวกะเพราเนื้อโคขุน + ไข่ดาว', '139', 'food'),
(178, 'ข้าวแซลมอนทอดน้ำปลา', '189', 'food'),
(179, 'ข้าวแซลมอนเทอริยากิ', '189', 'food'),
(180, 'ข้าวไข่ข้นแฮม', '99', 'food'),
(181, 'ข้าวไข่ข้นแฮม', '99', 'food'),
(182, 'ข้าวไข่ข้นไส้กรอก', '99', 'food'),
(183, 'ข้าวไข่ข้นกุ้ง', '109', 'food'),
(184, 'ข้าวไข่ข้นกะเพราหมูสับ', '109', 'food'),
(185, 'ข้าวไข่ข้นพริกขี้หนูกุ้ง', '119', 'food'),
(186, 'ข้าวไข่ข้นเขียวหวานไก่', '119', 'food'),
(187, 'ข้าวไข่ข้นเขียวหวานไก่', '119', 'food'),
(188, 'ข้าวไข่ข้นต้มยำกุ้ง', '129', 'food'),
(189, 'ข้าวไข่ข้นเขียวหวานทะเล', '129', 'food'),
(190, 'ข้าวไข่ข้นโกดัง', '129', 'food'),
(191, 'สลัดหมูย่าง', '129', 'food'),
(192, 'ซีซาร์สลัด', '109', 'food'),
(193, 'สลัดทูน่า', '129', 'food'),
(194, 'สลัดกุ้งทอด', '129', 'food');

-- --------------------------------------------------------

--
-- Table structure for table `point`
--

CREATE TABLE `point` (
  `point_code` int(5) NOT NULL,
  `point_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `point_value` int(4) NOT NULL,
  `point_timeperiod` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `point`
--

INSERT INTO `point` (`point_code`, `point_name`, `point_value`, `point_timeperiod`) VALUES
(5, 'ส่วนลดรายการ dessert 10%', 150, '12/5/2021 - 12/5/2022'),
(6, 'ส่วนลดรายการ beverage 10%', 150, '12/5/2021 - 12/5/2022'),
(7, 'ส่วนลดรายการ food 10%', 150, '12/5/2021 - 12/5/2022'),
(8, 'ส่วนลดรายการ food 15%', 200, '12/5/2021 - 12/5/2022'),
(9, 'ส่วนลดรายการ beverage 15%', 200, '12/5/2021 - 12/5/2022'),
(10, 'ส่วนลดรายการ dessert 15%', 200, '12/5/2021 - 12/5/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_username`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`point_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `point_code` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
