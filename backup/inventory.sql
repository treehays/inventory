-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 23, 2021 at 09:59 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(50) NOT NULL,
  `branch_address` varchar(100) NOT NULL,
  `branch_contact` varchar(50) NOT NULL,
  `skin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branch_name`, `branch_address`, `branch_contact`, `skin`) VALUES
(1, 'AHIRA APPLIANCE CENTER', 'Silay CIty', '090998278', 'red'),
(2, 'ASHER ALLIED MARKETING', 'Lopez Jaena, Bacolod City', '98786786', 'purple'),
(3, 'SINGER', 'Silay city', '', 'black'),
(4, 'GOLDEN ARROW', 'Bacolod City', '', 'blue'),
(5, 'Newly Created', 'svvsv', '0901349180283', 'green');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(5, 'Television'),
(6, 'Sofa'),
(7, 'Video Player'),
(8, 'Home Appliance'),
(9, 'Kitchen Appliance'),
(10, 'Gadget'),
(11, 'Rice Cooker'),
(12, 'Cosmetics'),
(13, 'Foods');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_first` varchar(50) NOT NULL,
  `cust_last` varchar(30) NOT NULL,
  `cust_address` varchar(100) NOT NULL,
  `cust_contact` varchar(30) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `cust_pic` varchar(300) NOT NULL,
  `bday` date DEFAULT NULL,
  `nickname` varchar(30) DEFAULT 'new',
  `house_status` varchar(30) DEFAULT NULL,
  `years` varchar(20) NOT NULL DEFAULT '2021',
  `rent` varchar(10) DEFAULT NULL,
  `emp_name` varchar(100) DEFAULT NULL,
  `emp_no` varchar(30) DEFAULT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `emp_year` varchar(10) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  `spouse` varchar(30) DEFAULT NULL,
  `spouse_no` varchar(30) DEFAULT NULL,
  `spouse_emp` varchar(50) DEFAULT NULL,
  `spouse_details` varchar(100) DEFAULT NULL,
  `spouse_income` decimal(10,2) DEFAULT NULL,
  `comaker` varchar(30) DEFAULT NULL,
  `comaker_details` varchar(100) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `credit_status` varchar(10) DEFAULT NULL,
  `ci_remarks` varchar(1000) DEFAULT NULL,
  `ci_name` varchar(50) DEFAULT NULL,
  `ci_date` date DEFAULT NULL,
  `payslip` int(11) DEFAULT NULL,
  `valid_id` int(11) DEFAULT NULL,
  `cert` int(11) DEFAULT NULL,
  `cedula` int(11) DEFAULT NULL,
  `income` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first`, `cust_last`, `cust_address`, `cust_contact`, `balance`, `cust_pic`, `bday`, `nickname`, `house_status`, `years`, `rent`, `emp_name`, `emp_no`, `emp_address`, `emp_year`, `occupation`, `salary`, `spouse`, `spouse_no`, `spouse_emp`, `spouse_details`, `spouse_income`, `comaker`, `comaker_details`, `branch_id`, `credit_status`, `ci_remarks`, `ci_name`, `ci_date`, `payslip`, `valid_id`, `cert`, `cedula`, `income`) VALUES
(1, 'Kenneth', 'Aboy', 'Silay City\r\n', '09098', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(2, 'Honeylee', 'Magbanua', 'Brgy. Busay, bago CIty', '09051914070', '303.20', 'default.gif', '1989-10-14', 'lee', 'owned', '27', 'NA', 'Stratium Software', '034-707-1630', 'Ayala Northpoint', '1', 'Systems Administrator', '12000', 'NA', 'NA', 'NA', 'NA', '0.00', 'Kaye Angela Cueva', 'Cadiz City', 1, 'Approved', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'Kareem', 'Ahmaddiya settlement', 'Ahmaddiya settlement', '08067022498', '0.00', 'default.gif', NULL, 'new', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Kareem', 'Ahmaddiya', 'Gate 1 Federal University Of Kashere Main Gate, Akko, Gombe State', '08067022498', '0.00', 'default.gif', '1993-01-01', 'treehays', 'owned', '', '', 'iTrust', '08164671994', 'No 176B, Gaa Imam Area, Along Ajase-Ipo road, Ilorin, Kwara State.', 'iTrust Inc', 'refref', 'iTrust', 'sdvdvfdsv', '08164671994', 'iTrust Inc', '08164671994', '34300.00', 'ABDULSALAM Ahmad Ayoola', '08164671994', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Kareemfd', 'aAhmaddiyad', 'Main Gate, Akko, Gombe State', '98067022498', '0.00', 'default.gif', '1993-02-01', 'sdftreehays', 'rent', '2', '', 'iTrust', '08164671994', 'No 176B, Gaa Imam Area, Along Ajase-Ipo road, Ilorin, Kwara State.', 'iTrust Inc', 'refref', 'iTrust', 'sdvdvfdsv', '08164671994', 'iTrust Inc', '08164671994', '34300.00', 'ABDULSALAM Ahmad Ayoola', '08164671994', 1, 'Approved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Kenneth', 'settlement', 'Gate 1 Federal University Of Kashere Main Gate, Akko, Gombe State', '08064532498', '0.00', 'default.gif', NULL, 'new', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Madm', 'kinm', 'sd fv xzfds', '3434534543', '0.00', 'default.gif', NULL, 'new', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'customrer service ', 'Testing for ', 'Federal Poly Ede Maingate', 'customer ', '0.00', 'default.gif', NULL, 'new', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `user_id`, `action`, `date`) VALUES
(1, 1, 'added 5 of LG 43\" UHD TV UH6100', '2017-02-04 01:10:41'),
(2, 1, 'added 100 of Lotion', '2017-02-04 01:10:49'),
(3, 1, 'added 10 of Rice Cooker', '2017-02-04 01:10:55'),
(4, 1, 'added 5 of Samsung', '2017-02-04 01:11:07'),
(5, 1, 'has logged in the system at ', '2017-02-04 08:22:52'),
(6, 1, 'has logged in the system at ', '2017-02-04 08:51:11'),
(7, 1, 'has logged in the system at ', '2017-02-04 13:13:53'),
(8, 1, 'has logged in the system at ', '2017-02-21 18:56:56'),
(9, 1, 'added a payment of -76.6 for , ', '2017-02-21 00:00:00'),
(10, 1, 'has logged in the system at ', '2021-01-17 01:19:34'),
(11, 1, 'has logged out the system at ', '2021-01-17 02:23:42'),
(12, 1, 'has logged in the system at ', '2021-01-17 02:23:57'),
(13, 1, 'added 12 of LG 43\" UHD TV UH6100', '2021-01-17 02:27:15'),
(14, 1, 'added 23 of Lotion', '2021-01-17 02:27:25'),
(15, 1, 'added 23 of Rice Cooker', '2021-01-17 02:27:31'),
(16, 1, 'added 43 of Sample', '2021-01-17 02:27:39'),
(17, 1, 'added 45 of Samsung', '2021-01-17 02:27:45'),
(18, 1, 'added 100 of Beans Cooker', '2021-01-17 10:16:50'),
(19, 1, 'added 5 of Beans Cooker', '2021-01-17 10:17:11'),
(20, 1, 'has logged out the system at ', '2021-01-17 10:21:37'),
(21, 1, 'has logged in the system at ', '2021-01-17 11:08:18'),
(22, 1, 'has logged in the system at ', '2021-01-18 13:22:20'),
(23, 1, 'has logged out the system at ', '2021-01-18 13:23:33'),
(24, 1, 'has logged in the system at ', '2021-01-19 09:46:50'),
(25, 1, 'has logged in the system at ', '2021-01-20 10:28:46'),
(26, 1, 'has logged in the system at ', '2021-01-21 07:59:10'),
(27, 1, 'has logged in the system at ', '2021-01-21 08:30:22'),
(28, 1, 'has logged out the system at ', '2021-01-21 15:59:43'),
(29, 4, 'has logged in the system at ', '2021-01-21 16:01:32'),
(30, 4, 'added 100 of second Beans Cooker', '2021-01-21 19:01:01'),
(31, 4, 'has logged out the system at ', '2021-01-21 19:02:58'),
(32, 1, 'has logged in the system at ', '2021-01-22 04:30:55'),
(33, 1, 'has logged in the system at ', '2021-01-23 00:06:36'),
(34, 1, 'has logged in the system at ', '2021-01-23 17:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `payment_for` date NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `interest` decimal(10,2) DEFAULT NULL,
  `remaining` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `rebate` decimal(10,2) DEFAULT NULL,
  `or_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `cust_id`, `sales_id`, `payment`, `payment_date`, `user_id`, `branch_id`, `payment_for`, `due`, `interest`, `remaining`, `status`, `rebate`, `or_no`) VALUES
(3156, 1, 6, '550.00', '2017-02-21 19:57:12', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1901),
(3157, 2, 7, '550.00', '2017-02-21 19:57:29', 1, 1, '2017-02-21', '550.00', '0.00', '0.00', 'paid', '0.00', 1902),
(3163, 2, 9, '113.30', '2017-02-21 21:31:20', 1, 1, '2017-03-21', '113.30', '0.00', '0.00', 'paid', '0.00', 0),
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '9.10', '176.70', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '9.10', '213.40', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '9.10', '213.40', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 3, 13, '60776.00', '2021-01-17 01:59:35', 1, 1, '2021-01-17', '60776.00', NULL, NULL, 'paid', NULL, 1903),
(3169, 1, 14, '45116.00', '2021-01-17 02:01:54', 1, 1, '2021-01-17', '45116.00', NULL, NULL, 'paid', NULL, 1904),
(3170, 1, 15, '45000.00', '2021-01-17 02:02:27', 1, 1, '2021-01-17', '45000.00', NULL, NULL, 'paid', NULL, 1905),
(3171, 6, 16, '15970.00', '2021-01-17 02:25:34', 1, 1, '2021-01-17', '15970.00', NULL, NULL, 'paid', NULL, 1906),
(3172, 4, 17, '44770.00', '2021-01-17 02:26:37', 1, 1, '2021-01-17', '44770.00', NULL, NULL, 'paid', NULL, 1907),
(3173, 7, 18, '551000.00', '2021-01-21 08:40:15', 1, 1, '2021-01-21', '551000.00', NULL, NULL, 'paid', NULL, 1908);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_desc` varchar(500) NOT NULL,
  `prod_price` decimal(10,2) NOT NULL,
  `prod_pic` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_qty` int(11) DEFAULT '10',
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(5, 'LG 43', 'Development levy', '45000.00', 'tv.jpg', 5, -2, 1, 3, 4, '19898981'),
(13, 'Rice Cooker', '', '550.00', 'WIN_20160728_16_56_20_Pro (2).jpg', 9, -2, 1, 2, 4, '22ewew'),
(14, 'Samsung', '', '15000.00', 'WIN_20160209_16_45_20_Pro.jpg', 10, 45, 1, 4, 5, 'erere323'),
(15, 'Lotion', '', '120.00', 'default.gif', 12, 115, 1, 4, 6, '1101388911'),
(16, 'Sample', 'description', '110.00', 'default.gif', 10, 37, 1, 1, 2, '878878'),
(17, 'Beans Cooker', 'Beans CookerBeans CookerBeans CookerBeans Cooker', '69999.00', 'mynature.PNG', 11, 115, 1, 10, 6, '123456789'),
(18, 'second Beans Cooker', 'we are the thsnkns bean cookrer stof the century', '75000.44', 'LOGO DESIGN.PNG', 10, 110, 2, 10, 8, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_request`
--

CREATE TABLE `purchase_request` (
  `pr_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `request_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `purchase_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_request`
--

INSERT INTO `purchase_request` (`pr_id`, `prod_id`, `qty`, `request_date`, `branch_id`, `purchase_status`) VALUES
(1, 17, 100, '2021-01-17', 1, 'pending'),
(2, 17, 12, '2021-01-17', 1, 'pending'),
(3, 18, 100, '2021-01-21', 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_tendered` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `cash_change` decimal(10,2) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `modeofpayment` varchar(15) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `cust_id`, `user_id`, `cash_tendered`, `discount`, `amount_due`, `cash_change`, `date_added`, `modeofpayment`, `branch_id`, `total`) VALUES
(1, 1, 1, '500.00', '50.00', '500.00', '0.00', '2017-02-04 01:33:28', 'cash', 1, '450.00'),
(2, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 18:57:26', 'cash', 1, '550.00'),
(3, 1, 1, '0.00', '550.00', '0.00', '0.00', '2017-02-21 19:49:41', 'cash', 1, '-550.00'),
(4, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:55:57', 'cash', 1, '550.00'),
(5, 2, 1, '110.00', '0.00', '110.00', '0.00', '2017-02-21 19:56:17', 'cash', 1, '110.00'),
(6, 1, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:12', 'cash', 1, '550.00'),
(7, 2, 1, '550.00', '0.00', '550.00', '0.00', '2017-02-21 19:57:29', 'cash', 1, '550.00'),
(9, 2, 1, NULL, NULL, '0.00', NULL, '2017-02-21 21:16:52', 'credit', 1, '550.00'),
(10, 3, 1, '100000.00', '2.00', '60778.00', '39222.00', '2021-01-17 01:57:18', 'cash', 1, '60776.00'),
(11, 3, 1, '100000.00', '2.00', '60778.00', '39222.00', '2021-01-17 01:59:05', 'cash', 1, '60776.00'),
(12, 3, 1, '100000.00', '2.00', '60778.00', '39222.00', '2021-01-17 01:59:20', 'cash', 1, '60776.00'),
(13, 3, 1, '100000.00', '2.00', '60778.00', '39222.00', '2021-01-17 01:59:35', 'cash', 1, '60776.00'),
(14, 1, 1, '100000.00', '2.00', '45118.00', '54882.00', '2021-01-17 02:01:54', 'cash', 1, '45116.00'),
(15, 1, 1, '1000000.00', '0.00', '45000.00', '955000.00', '2021-01-17 02:02:27', 'cash', 1, '45000.00'),
(16, 6, 1, '20000.00', '30.00', '16000.00', '4000.00', '2021-01-17 02:25:34', 'cash', 1, '15970.00'),
(17, 4, 1, '50000.00', '230.00', '45000.00', '5000.00', '2021-01-17 02:26:37', 'cash', 1, '44770.00'),
(18, 7, 1, '600000.00', '0.00', '551000.00', '49000.00', '2021-01-21 08:40:15', 'cash', 1, '551000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sales_details_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sales_details_id`, `sales_id`, `prod_id`, `price`, `qty`) VALUES
(1, 1, 13, '550.00', 1),
(2, 2, 13, '550.00', 1),
(3, 3, 13, '550.00', 1),
(4, 4, 13, '550.00', 1),
(5, 5, 16, '110.00', 1),
(6, 6, 13, '550.00', 1),
(7, 7, 13, '550.00', 1),
(8, 8, 13, '550.00', 1),
(9, 9, 13, '550.00', 1),
(10, 10, 5, '45000.00', 1),
(11, 10, 15, '120.00', 1),
(12, 10, 13, '550.00', 1),
(13, 10, 14, '15000.00', 1),
(14, 10, 16, '110.00', 1),
(15, 11, 5, '45000.00', 1),
(16, 11, 15, '120.00', 1),
(17, 11, 13, '550.00', 1),
(18, 11, 14, '15000.00', 1),
(19, 11, 16, '110.00', 1),
(20, 12, 5, '45000.00', 1),
(21, 12, 15, '120.00', 1),
(22, 12, 13, '550.00', 1),
(23, 12, 14, '15000.00', 1),
(24, 12, 16, '110.00', 1),
(25, 13, 5, '45000.00', 1),
(26, 13, 15, '120.00', 1),
(27, 13, 13, '550.00', 1),
(28, 13, 14, '15000.00', 1),
(29, 13, 16, '110.00', 1),
(30, 14, 5, '45000.00', 1),
(31, 14, 15, '120.00', 1),
(32, 15, 5, '45000.00', 1),
(33, 16, 15, '240.00', 2),
(34, 16, 14, '15000.00', 1),
(35, 16, 13, '550.00', 1),
(36, 17, 5, '45000.00', 1),
(37, 17, 15, '120.00', 1),
(38, 17, 16, '110.00', 1),
(39, 18, 5, '45000.00', 12),
(40, 18, 13, '550.00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `stockin`
--

CREATE TABLE `stockin` (
  `stockin_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(6) NOT NULL,
  `date` datetime NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockin`
--

INSERT INTO `stockin` (`stockin_id`, `prod_id`, `qty`, `date`, `branch_id`) VALUES
(1, 5, 5, '2017-02-04 01:10:41', 1),
(2, 15, 100, '2017-02-04 01:10:49', 1),
(3, 13, 10, '2017-02-04 01:10:55', 1),
(4, 14, 5, '2017-02-04 01:11:07', 1),
(5, 5, 12, '2021-01-17 02:27:15', 1),
(6, 15, 23, '2021-01-17 02:27:25', 1),
(7, 13, 23, '2021-01-17 02:27:31', 1),
(8, 16, 43, '2021-01-17 02:27:39', 1),
(9, 14, 45, '2021-01-17 02:27:45', 1),
(10, 17, 100, '2021-01-17 10:16:50', 1),
(11, 17, 5, '2021-01-17 10:17:11', 1),
(12, 18, 100, '2021-01-21 19:01:01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `supplier_address` varchar(300) NOT NULL,
  `supplier_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `supplier_name`, `supplier_address`, `supplier_contact`) VALUES
(2, 'LG Philippines', 'Makati City, Philippines', '423-4444'),
(3, 'Union Home Appliances', 'Binondo, Manila', '98878'),
(4, 'Hanabishi', 'Bacolod City', '034-666-087611'),
(5, 'Samsung Philippines', 'Philippines', '42424'),
(6, 'Avon', 'Bacolod City', '15562'),
(7, 'iStore PH', 'Manila City,Philippines', '09134567890'),
(8, 'Ahmad', 'rrer', '6768768');

-- --------------------------------------------------------

--
-- Table structure for table `temp_trans`
--

CREATE TABLE `temp_trans` (
  `temp_trans_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `term_id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `payable_for` varchar(10) NOT NULL,
  `term` varchar(11) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `payment_start` date NOT NULL,
  `down` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `interest` decimal(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`term_id`, `sales_id`, `payable_for`, `term`, `due`, `payment_start`, `down`, `due_date`, `interest`, `status`) VALUES
(1, 8, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', ''),
(2, 9, '4', 'monthly', '113.30', '2017-02-21', '113.30', '2017-06-21', '16.50', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `branch_id`) VALUES
(1, 'admin', 'a1Bz20ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'John Smith', 'active', 1),
(4, 'user', 'a1Bz20ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Mona Lisa', 'active', 2),
(5, 'Mikee', 'a1Bz20ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Mikee', 'active', 1),
(6, 'admin', 'a1Bz20ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Giu Matthew', 'active', 0),
(7, 'newuser', 'a1Bz20ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'new user', 'active', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `purchase_request`
--
ALTER TABLE `purchase_request`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sales_details_id`);

--
-- Indexes for table `stockin`
--
ALTER TABLE `stockin`
  ADD PRIMARY KEY (`stockin_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `temp_trans`
--
ALTER TABLE `temp_trans`
  ADD PRIMARY KEY (`temp_trans_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`term_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3174;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `temp_trans`
--
ALTER TABLE `temp_trans`
  MODIFY `temp_trans_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `term_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
