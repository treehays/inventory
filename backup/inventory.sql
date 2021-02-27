-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2021 at 03:28 PM
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
(1, 'ITRUST STORE', 'Ilorin center CIty', '08164671994', 'red'),
(2, 'REX ALLIED MARKETING', 'Lopez Jaena, Bacolod City', '08061234567', 'purple'),
(3, 'SINGER INTRUMENTS', 'Silay city', '07012345678', 'black'),
(4, 'GOLDEN ARROW', 'Bacolod City', '09012345678', 'blue'),
(5, 'Newly Created', 'new creates addresss', '0901349180283', 'purple');

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
(12, 'Cosmetics cAs'),
(13, 'Fabric Alway'),
(14, 'fsdds'),
(15, 'Mobile phones'),
(16, 'Foods asss'),
(17, 'new things'),
(18, 'New ðŸ™€ ');

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
  `nickname` varchar(30) DEFAULT NULL,
  `house_status` varchar(30) DEFAULT NULL,
  `years` varchar(20) DEFAULT NULL,
  `rent` varchar(100) DEFAULT NULL,
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
(1, 'Sam', 'Adeyemi', 'Silay City\r\n', '09098sas', '0.00', 'default.gif', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '', '', 1, '', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(2, 'Ahmad ', 'Magbanua', 'Brgy. Busay, bago CIty', '09051914070', '303.20', 'default.gif', '1989-10-14', 'lee', 'owned', '27', 'NA', 'Stratium Software', '034-707-1630', 'Ayala Northpoint', '1', 'Systems Administrator', '12000', 'NA', 'NA', 'NA', 'NA', '0.00', 'Kaye Angela Cueva', 'Cadiz City', 1, 'Approved', '', '', '0000-00-00', 0, 0, 0, 0, 0),
(3, 'Abdulsalam', 'Ahmaddiya settlement', 'No 23, off federal Plytechnic road Ede', '08164671994', '1000.00', 'default.gif', '1990-06-22', 'Treehays', 'owned', '', 'Nill', 'Salami M. O.', '08066117783', 'Federal Road , Local Government Shopping complex Ede', '2018', 'Stock Manager', '40000', 'Abdulsalam  Abdulmuiz', '08134573756', 'Olaolu Enterprises ', 'federal Road 08066117783', '35000.00', 'Ahmad', '09012023934', 1, 'Approved', 'adas', 'dsfds', '2222-02-22', 1, 1, 1, 1, 1),
(4, 'firstname', 'lastname', 'no of addres', '0930232839', '0.00', 'default.gif', '2020-02-22', 'nj#ickky', 'owned', '', 'no rentin', 'mr salami', '093082389', 'no 23 buainess ', '4', 'tailor', '30000', 'njcn spouse', '9832747643', 'Farming', '0932384327 FBFIWKJ', '200000.00', 'aihdkjnsada', 'jdwnkan jwhbdyu 922', 1, 'Approved', 'qweq', 'Ahmad', '2222-02-22', 1, 1, 1, 1, 1),
(5, 'sdsdvcx', 'asdasd', 'Federal Poly Ede Maingate', '213423423', '0.00', 'default.gif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'manu', 'rex ', 'sbsk sbksdvdsv', '0298297473', '0.00', 'default.gif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Kareem', 'fsdfsdf', '23 Industrial Blvd', '5235234', '0.00', 'default.gif', '1990-12-12', 'treegay', 'owned', '0', 'sdfsdf awert', 'Fishisfast', 'gd ami', 'Gate 1 Federal University Of Kashere Main Gate, Akko, Gombe State', 'iTrust', 'refref', 'iTrust', 'sdhfun sjdhf', '08164671994', 'Treehays Int', '+2348164671994', '30000.00', 'Ahmad Ayoola Abdulsalam', '08060909011', 1, 'pending', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'dsfsdfs', 'dsgvxcvs', 'Gate 1 Federal University Of Kashere Main Gate, Akko, Gombe State', '35542323', '0.00', 'default.gif', '1999-12-12', 'treegay', 'owned', '', 'dsfs fsd sf', 'iTrust Inc', '+2348164671994', 'Federal Poly Ede Maingate', '23', 'studentfdn  ', 'iTrust Inc', 'sdhfun sjdhf', '08164671994', 'iTrust Inc', '08164671994', '2000.00', 'ABDULSALAM Ahmad Ayoola', '08060909011', 1, 'pending', 'qweq', 'Ahmadqwwq', '1990-02-22', 1, 1, 1, 1, 1);

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
(10, 1, 'has logged in the system at ', '2021-01-28 16:52:33'),
(11, 1, 'has logged out the system at ', '2021-01-28 17:13:59'),
(12, 1, 'has logged in the system at ', '2021-01-28 17:18:38'),
(13, 1, 'has logged out the system at ', '2021-01-28 17:19:31'),
(14, 4, 'has logged in the system at ', '2021-01-28 17:20:18'),
(15, 4, 'has logged out the system at ', '2021-01-28 17:20:22'),
(16, 4, 'has logged in the system at ', '2021-01-28 17:21:18'),
(17, 4, 'has logged out the system at ', '2021-01-28 17:23:28'),
(18, 1, 'has logged in the system at ', '2021-01-28 21:03:03'),
(19, 1, 'has logged out the system at ', '2021-01-28 21:31:58'),
(20, 1, 'has logged in the system at ', '2021-01-28 21:33:42'),
(21, 1, 'has logged in the system at ', '2021-01-28 22:15:03'),
(22, 1, 'has logged out the system at ', '2021-01-28 22:19:56'),
(23, 1, 'has logged in the system at ', '2021-01-28 22:20:28'),
(24, 1, 'has logged in the system at ', '2021-01-28 22:24:39'),
(25, 1, 'has logged in the system at ', '2021-01-28 22:25:15'),
(26, 1, 'added 100 of Rice Cooker', '2021-01-28 22:36:29'),
(27, 1, 'added 232 of LG 43', '2021-01-28 22:36:40'),
(28, 1, 'has logged in the system at ', '2021-01-28 22:46:33'),
(29, 1, 'has logged in the system at ', '2021-01-28 22:48:28'),
(30, 1, 'has logged in the system at ', '2021-01-31 16:58:35'),
(31, 1, 'has logged out the system at ', '2021-01-31 17:19:41'),
(32, 1, 'has logged in the system at ', '2021-01-31 17:20:24'),
(33, 1, 'has logged out the system at ', '2021-01-31 17:36:11'),
(34, 1, 'has logged in the system at ', '2021-01-31 22:51:04'),
(35, 1, 'has logged in the system at ', '2021-01-31 23:48:54'),
(36, 1, 'has logged out the system at ', '2021-01-31 23:58:13'),
(37, 1, 'has logged in the system at ', '2021-02-01 03:57:05'),
(38, 1, 'has logged in the system at ', '2021-02-01 21:53:48'),
(39, 1, 'has logged out the system at ', '2021-02-01 22:04:22'),
(40, 4, 'has logged in the system at ', '2021-02-01 22:04:39'),
(41, 4, 'has logged out the system at ', '2021-02-01 22:08:36'),
(42, 1, 'has logged in the system at ', '2021-02-01 22:23:31'),
(43, 1, 'has logged out the system at ', '2021-02-01 22:23:34'),
(44, 1, 'has logged in the system at ', '2021-02-02 04:33:32'),
(45, 1, 'deleted 10 Rice Cooker from purchase request', '2021-02-02 04:33:48'),
(46, 1, 'deleted 1 Rice Cooker from purchase request', '2021-02-02 04:33:50'),
(47, 1, 'deleted 10 Sample from purchase request', '2021-02-02 04:33:53'),
(48, 1, 'has logged in the system at ', '2021-02-04 15:58:52'),
(49, 1, 'has logged in the system at ', '2021-02-04 19:31:11'),
(50, 1, 'added 323 of LG 43', '2021-02-04 19:35:59'),
(51, 1, 'added 23243 of Sample', '2021-02-04 19:36:13'),
(52, 1, 'has logged out the system at ', '2021-02-04 19:37:33'),
(53, 1, 'has logged in the system at ', '2021-02-04 19:37:39'),
(54, 1, 'has logged out the system at ', '2021-02-04 19:39:58'),
(55, 1, 'has logged in the system at ', '2021-02-11 15:50:14'),
(56, 1, 'has logged out the system at ', '2021-02-11 15:50:54'),
(57, 1, 'has logged in the system at ', '2021-02-11 16:10:46'),
(58, 1, 'has logged out the system at ', '2021-02-11 17:36:06'),
(59, 1, 'has logged in the system at ', '2021-02-11 17:36:10');

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
(3164, 2, 9, '36.70', '2017-02-21 21:31:20', 1, 1, '2017-04-21', '113.30', '9.10', '295.00', 'partially paid', '0.00', 0),
(3165, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-05-21', '113.30', '9.10', '331.70', '', '0.00', 0),
(3166, 2, 9, '0.00', '0000-00-00 00:00:00', 1, 1, '2017-06-21', '113.30', '9.10', '331.70', '', '0.00', 0),
(3167, 2, 9, '113.30', '2017-02-21 00:00:00', 1, 1, '2017-02-21', '113.30', '0.00', '0.00', 'paid', '0.00', 3151),
(3168, 5, 15, '270900.00', '2021-01-28 22:56:56', 1, 1, '2021-01-28', '270900.00', NULL, NULL, 'paid', NULL, 1903),
(3169, 3, 16, '45447.00', '2021-01-28 23:19:25', 1, 1, '2021-01-28', '45447.00', NULL, NULL, 'paid', NULL, 1904),
(3170, 8, 17, '92468.00', '2021-02-02 04:51:30', 1, 1, '2021-02-02', '92468.00', NULL, NULL, 'paid', NULL, 1905),
(3171, 4, 18, '2730840.00', '2021-02-04 19:39:25', 1, 1, '2021-02-04', '2730840.00', NULL, NULL, 'paid', NULL, 1906);

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
  `prod_qty` int(11) DEFAULT NULL,
  `branch_id` int(11) NOT NULL,
  `reorder` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_desc`, `prod_price`, `prod_pic`, `cat_id`, `prod_qty`, `branch_id`, `reorder`, `supplier_id`, `serial`) VALUES
(5, 'LG 43', 'Development levy', '45000.00', 'tv.jpg', 5, 520, 1, 10, 4, '19898981'),
(13, 'Rice Cooker', '', '550.00', 'WIN_20160728_16_56_20_Pro (2).jpg', 9, 98, 1, 2, 4, '22ewew'),
(14, 'Samsung', '', '15000.00', 'WIN_20160209_16_45_20_Pro.jpg', 10, -9, 1, 4, 5, 'erere323'),
(15, 'Lotion', '', '120.00', 'default.gif', 12, 94, 1, 4, 6, '1101388911'),
(16, 'Sample', 'description', '110.00', 'default.gif', 10, 23205, 1, 1, 2, '878878'),
(17, 'vninfwk', 'vlkweiln', '343.00', '112.png', 14, NULL, 1, 22, 3, '12908329');

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
(4, 16, 22, '2021-01-28', 1, 'pending'),
(5, 16, 21, '2021-02-02', 1, 'pending'),
(6, 16, 21, '2021-02-04', 1, 'pending');

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
(10, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:52:44', 'cash', 1, '270900.00'),
(11, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:53:04', 'cash', 1, '270900.00'),
(12, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:53:35', 'cash', 1, '270900.00'),
(13, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:54:50', 'cash', 1, '270900.00'),
(14, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:56:37', 'cash', 1, '270900.00'),
(15, 5, 1, '1000000.00', '10.00', '270910.00', '729090.00', '2021-01-28 22:56:56', 'cash', 1, '270900.00'),
(16, 3, 1, '4432110.00', '3.00', '45450.00', '4386660.00', '2021-01-28 23:19:25', 'cash', 1, '45447.00'),
(17, 8, 1, '300000.00', '2.00', '92470.00', '207530.00', '2021-02-02 04:51:30', 'cash', 1, '92468.00'),
(18, 4, 1, '2730845.00', '0.00', '2730840.00', '5.00', '2021-02-04 19:39:25', 'cash', 1, '2730840.00');

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
(10, 10, 5, '90120.00', 3),
(11, 10, 15, '120.00', 1),
(12, 10, 16, '110.00', 4),
(13, 11, 5, '90120.00', 3),
(14, 11, 15, '120.00', 1),
(15, 11, 16, '110.00', 4),
(16, 12, 5, '90120.00', 3),
(17, 12, 15, '120.00', 1),
(18, 12, 16, '110.00', 4),
(19, 13, 5, '90120.00', 3),
(20, 13, 15, '120.00', 1),
(21, 13, 16, '110.00', 4),
(22, 14, 5, '90120.00', 3),
(23, 14, 15, '120.00', 1),
(24, 14, 16, '110.00', 4),
(25, 15, 5, '90120.00', 3),
(26, 15, 15, '120.00', 1),
(27, 15, 16, '110.00', 4),
(28, 16, 5, '45000.00', 1),
(29, 16, 16, '110.00', 1),
(30, 16, 17, '343.00', 1),
(31, 17, 5, '45000.00', 1),
(32, 17, 13, '550.00', 2),
(33, 17, 14, '15000.00', 3),
(34, 17, 17, '343.00', 4),
(35, 18, 16, '1320.00', 12),
(36, 18, 14, '165000.00', 11),
(37, 18, 5, '45000.00', 20);

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
(5, 13, 100, '2021-01-28 22:36:29', 1),
(6, 5, 232, '2021-01-28 22:36:40', 1),
(7, 5, 323, '2021-02-04 19:35:59', 1),
(8, 16, 23243, '2021-02-04 19:36:13', 1);

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
(4, 'Nike ', 'Bacolod City', '034-666-087611'),
(5, 'Samsung Philippines', 'Philippines', '42424'),
(6, 'Avon', 'Bacolod City csfds', '155624354'),
(7, 'iStore PH', 'Manila City,Philippines', '09134567890'),
(8, 'dasdggads jhbdh', 'slduc uhbnsd ', 'svdsd'),
(9, 'asdasd', 'asdasfafd', '23412341242134'),
(10, 'Ahmad fdre', 'hustle kjnksdj isfsbndkjs', '456356434'),
(11, 'treehays90sadss dsad', 'dasdfqw dq3sac', '2343243');

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
(1, 'admin', 'ahmad0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'John Smith', 'active', 1),
(4, 'admin', 'ahmad0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Mona Lisa', 'active', 2),
(5, 'Mikee', 'ahmad0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Mikee', 'active', 1),
(6, 'admin', 'rex0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Giu Matthew', 'active', 0),
(7, 'admin', 'ahmad0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'Ahmad uhudsj', 'active', 3),
(8, 'admin', 'ahmad0ydqelm8m1wql0192023a7bbd73250516f069df18b500', 'treehays kj', 'active', 4);

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
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3172;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `purchase_request`
--
ALTER TABLE `purchase_request`
  MODIFY `pr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sales_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `stockin`
--
ALTER TABLE `stockin`
  MODIFY `stockin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
