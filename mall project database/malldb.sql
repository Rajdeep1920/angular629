-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 09:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `malldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `counter_id` int(11) DEFAULT NULL,
  `counter_nm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`counter_id`, `counter_nm`) VALUES
(1, 'Food Counter'),
(2, 'Grocery Counter'),
(3, 'Clothes Counter'),
(4, 'Bakery\'s Counter'),
(5, 'Cosmetics-Fragrances Counter'),
(6, 'Vegetable Counter'),
(7, 'Sport Counter'),
(8, 'Dryfruit Counter');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) DEFAULT NULL,
  `dept_nm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_nm`) VALUES
(1, 'Food Product'),
(2, 'Grocery Product'),
(3, 'Household and Cleaning'),
(4, 'Fruits Department'),
(5, 'Clothes Department'),
(6, 'Cosmetics-Fragrances'),
(7, 'Sport Department');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `shift_nm` varchar(50) DEFAULT NULL,
  `emp_nm` varchar(50) DEFAULT NULL,
  `emp_addr` varchar(50) DEFAULT NULL,
  `emp_phno` varchar(50) DEFAULT NULL,
  `emp_mail` varchar(50) DEFAULT NULL,
  `emp_salary` int(11) DEFAULT NULL,
  `emp_DOB` date DEFAULT NULL,
  `emp_DOJ` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `post_id`, `shift_nm`, `emp_nm`, `emp_addr`, `emp_phno`, `emp_mail`, `emp_salary`, `emp_DOB`, `emp_DOJ`) VALUES
(1, 1, 'First(7 AM-3 PM)', 'Rajdeep Mane', '134,B, SWAMI SAMARTH NAGAR, ANANT ROTO MAL, KAGAL.', '7875774799', 'rajdeepmane20@gmail.com', 22000, '2001-07-19', '2024-03-01'),
(2, 4, 'Second(3PM-11PM)', 'Omkar Nimbalkar', 'A/P Fanswadi, Tal- Bhudargad', '9284302919', 'omnimbalkar11@gmail.com', 24000, '2001-03-11', '2024-03-12'),
(3, 3, 'Second(4PM-1PM)', 'Jaydeep Mane', 'Kalepadal, Hadpsar, Pune', '9689820907', 'jaymane07@gmail.com', 50, '1992-08-11', '2016-08-15'),
(4, 2, 'Night(11PM-7AM)', 'Samar Mali', 'Mali Galli, Kagal', '9112100235', 'samarmali@gmail.com', 23, '2000-04-27', '2023-12-03'),
(5, 1, 'General(9AM-5.30PM)', 'Ritesh Patil', 'A/P Sulkud, Tal-Kagal', '7387236091', 'riteshpatil@gmail.com', 19, '2000-06-28', '2023-07-25'),
(6, 8, 'First(7AM-3PM)', 'Shourya Patil', 'A/P Sarvade, Tal-Radhanagari', '9922266420', 'shouryapatil@gmail.com', 14, '2004-12-01', '2024-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `item_nm` varchar(50) DEFAULT NULL,
  `item_UOM` varchar(50) DEFAULT NULL,
  `item_stock` int(11) DEFAULT NULL,
  `item_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `dept_id`, `cat_id`, `item_nm`, `item_UOM`, `item_stock`, `item_rate`) VALUES
(1, 2, 5, 'Sugar', ' Kilogram', 1000, 42),
(2, 6, 18, 'Dove Shampoo', 'ml', 300, 320),
(3, 2, 5, 'Basmati Rice', 'Kilogram', 2000, 70),
(4, 2, 5, 'Jaggary', 'Kilogram', 398, 65),
(5, 7, 17, 'Football', '1 Piece', 20, 600),
(6, 2, 4, 'Toordal', 'Kilogram', 96, 80),
(7, 1, 2, 'Sprite', 'ml', 198, 65),
(8, 5, 12, 'T-Shirt', '1 Peice', 2300, 340),
(9, 3, 6, 'Washing Machine', '1 peice', 29, 23),
(10, 3, 7, 'Floor Cleaner', '1 peice', 40, 1299);

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `cat_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `cat_nm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`cat_id`, `dept_id`, `cat_nm`) VALUES
(1, 1, 'Dairy Product'),
(2, 1, 'Drink\'s'),
(3, 1, 'Bakery Product'),
(4, 2, 'Dal\'s'),
(5, 2, 'Household'),
(6, 3, 'Electronic Gadgets'),
(7, 3, 'Manually Type'),
(8, 4, 'Dryfruits'),
(9, 4, 'Fruits'),
(10, 4, 'Vegetable\'s'),
(11, 5, 'Innerwear'),
(12, 5, 'Outerwear'),
(13, 5, 'Swimwear'),
(14, 6, 'Perfume\'s'),
(15, 6, 'Makeup Product'),
(16, 7, 'Indoor game\'s'),
(17, 7, 'Outdoor game Product'),
(18, 6, 'Skin Care Product');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) DEFAULT NULL,
  `post_nm` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_nm`) VALUES
(1, 'Kagal'),
(2, 'Kolhapur'),
(3, 'Pune'),
(4, 'Gargoti'),
(5, 'Gadhinglaj'),
(6, 'Mumbai'),
(7, 'Nippani'),
(8, 'Radhanagari'),
(9, 'Malvan');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `rec_id` int(11) DEFAULT NULL,
  `rec_date` date DEFAULT NULL,
  `cust_phno` varchar(50) DEFAULT NULL,
  `rec_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`rec_id`, `rec_date`, `cust_phno`, `rec_amt`) VALUES
(1, '2024-04-11', '7020978581', 12000),
(2, '2023-06-01', '7038251248', 950);

-- --------------------------------------------------------

--
-- Table structure for table `sale_detail`
--

CREATE TABLE `sale_detail` (
  `sale_det_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `item_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_detail`
--

INSERT INTO `sale_detail` (`sale_det_id`, `sale_id`, `item_id`, `item_rate`, `item_qty`, `item_amt`) VALUES
(1, 1, 4, 65, 2, 130),
(2, 4, 6, 80, 4, 320),
(3, 4, 7, 65, 2, 130);

-- --------------------------------------------------------

--
-- Table structure for table `sale_master`
--

CREATE TABLE `sale_master` (
  `sale_id` int(11) DEFAULT NULL,
  `counter_id` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `sale_date` date DEFAULT NULL,
  `gst` float DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_master`
--

INSERT INTO `sale_master` (`sale_id`, `counter_id`, `emp_id`, `sale_date`, `gst`, `grand_total`) VALUES
(1, 2, 3, '2024-04-10', 190.2, 200),
(2, 5, 5, '2024-04-03', 70.09, 130),
(3, 1, 4, '2024-04-01', 239.9, 450),
(4, 3, 1, '2024-03-13', 340.98, 1250);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
