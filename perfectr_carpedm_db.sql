-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2018 at 11:53 PM
-- Server version: 5.6.26-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfectr_carpedm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `daytour_registration`
--

CREATE TABLE `daytour_registration` (
  `id` int(11) NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `passport_no` varchar(255) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `date_of_birth` varchar(50) NOT NULL,
  `hotel_room` varchar(100) NOT NULL,
  `home_address` text NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `type_of_daytour` varchar(255) NOT NULL COMMENT 'Pass Tour Id',
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `shoe_size` varchar(255) NOT NULL,
  `insurance_policy_no` varchar(255) NOT NULL,
  `vegetarian` varchar(5) NOT NULL COMMENT 'Yes, No',
  `diet_restrictions` text NOT NULL,
  `emergency_contact` varchar(255) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daytour_registration`
--

INSERT INTO `daytour_registration` (`id`, `checkout_id`, `first_name`, `last_name`, `email`, `passport_no`, `nationality`, `date_of_birth`, `hotel_room`, `home_address`, `start_date`, `type_of_daytour`, `height`, `weight`, `shoe_size`, `insurance_policy_no`, `vegetarian`, `diet_restrictions`, `emergency_contact`, `created_date`) VALUES
(56, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-07 10:11:07'),
(57, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-07 10:22:12'),
(58, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-07 10:23:17'),
(59, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-07 11:18:40'),
(60, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-07 11:22:22'),
(61, 0, 'ssss', 'sss', 'sss', '5455', 'hhhj', '07/Jan/2017 ', 'yyy', 'yyy', 'Tue, 07 Nov 2017', '2', 'hhh', 'hhh', 'hhh', 'hhhh', 'yes', 'hhhh', 'hhhhhhh', '2017-11-07 14:04:00'),
(62, 0, 'ssss', 'sss', 'sss', '5455', 'hhhj', '07/Jan/2017 ', 'yyy', 'yyy', 'Tue, 07 Nov 2017', '2', 'hhh', 'hhh', 'hhh', 'hhhh', 'yes', 'hhhh', 'hhhhhhh', '2017-11-07 14:04:35'),
(63, 0, 'aaaaa', 'sssss', 'johnraja@rgmobiles.com', '958744sss55555', 'indian', '20/Nov/1995 ', '55', 'gggg gg. g.  g.  g', 'Tue, 07 Nov 2017', '2', '175cm', '150kg', '66', 'gvjjj64641646', 'yes', 'gggg', '95495495648', '2017-11-07 14:16:06'),
(64, 0, 'aaaaa', 'sssss', 'johnraja@rgmobiles.com', '958744sss55555', 'indian', '20/Nov/1995 ', '55', 'gggg gg. g.  g.  g', 'Tue, 07 Nov 2017', '2', '175cm', '150kg', '66', 'gvjjj64641646', 'yes', 'gggg', '95495495648', '2017-11-07 14:16:34'),
(65, 0, 'aaaaa', 'sssss', 'johnraja@rgmobiles.com', '958744sss55555', 'indian', '20/Nov/1995 ', '55', 'gggg gg. g.  g.  g', 'Tue, 07 Nov 2017', '2', '175cm', '150kg', '66', 'gvjjj64641646', 'yes', 'gggg', '95495495648', '2017-11-07 14:17:42'),
(66, 0, 'john', 'stephn', 'stephn@gmail.com', '954865445', 'usa', '07/Nov/1993 ', '2', 'usa', 'Wed, 08 Nov 2017', '2', '165cm', '65', '45', '55444554', 'yes', 'tttt', '9519514877', '2017-11-07 16:10:55'),
(67, 0, 'Good', 'Gghhh', 'kk@gmail.com', 'Bdjjjkj', 'Hshhjj', '2017-11-23', '2', 'Hhjj', '2017-11-23', '1', '', '', '', 'Hjkjv', 'yes', 'Hhkk', '9585689668', '2017-11-08 07:50:50'),
(68, 0, 'xxx', 'xxx', 'ggg@gmail.com', 'hjghmghm', 'ggmjgh', '08/Nov/2017 ', 'gggg', 'hhhhh', 'Tue, 07 Nov 2017', '2', 'bnnn', '33', '5644', '6664556', 'yes', '54646', '654165464', '2017-11-08 12:58:45'),
(69, 0, 'xxx', 'xxx', 'ggg@gmail.com', 'hjghmghm', 'ggmjgh', '08/Nov/2017 ', 'gggg', 'hhhhh', 'Tue, 07 Nov 2017', '2', 'bnnn', '33', '5644', '6664556', 'yes', '54646', '654165464', '2017-11-08 12:59:28'),
(70, 0, 'ddd', 'fff', 'ggg@gmail.com', 'nigh', 'hhhh', '08/Nov/2017 ', '65', 'hbhk', 'Tue, 07 Nov 2017', '2', 'jhkjhh', 'ffff', 'ggggg', 'ghfghf', 'yes', 'gggg', 'hgfjgfj', '2017-11-08 13:14:17'),
(71, 0, 'hhhh', 'gggg', 'gggg@gmail.com', 'you', 'gikhgih', '08/Nov/2017 ', '545', 'jhbkjh', 'Tue, 07 Nov 2017', '2', '6366', '666', '666', '52656565', 'yes', 'jnljhnjh', '16556+', '2017-11-08 13:18:34'),
(72, 0, 'ddd', 'ddd', 'dd@gmail.com', 'wade', 'vjhvjhv', '08/Nov/2017 ', 'bvhjvbkh', 'vcjgv', 'Wed, 08 Nov 2017', '2', 'hubbub', 'hhhh', 'hhhh', 'hhhhh', 'yes', 'hvgv', '468464', '2017-11-08 13:58:11'),
(73, 0, 'john', 'mark', 'mark@gmail.com', '9548755544', 'usa', '08/Nov/2017 ', '2', 'usa', 'Wed, 08 Nov 2017', '2', '55', '22', '22', '223263', 'yes', 'hhhh', '9515488777', '2017-11-08 15:46:55'),
(74, 0, 'hhh', 'ggg', 'check@gmail.com', 'Jhunjunwala', 'Tui', '08/Nov/2017 ', 'no', 'hiking', 'Sun, 05 Nov 2017', '2', 'k', 'n', 'k', 'b', 'yes', 'hi', '9976433', '2017-11-08 16:18:29'),
(75, 0, 'sss', 'ss', 'ssssss@gmail.com', '45664', 'hljnklj', '09/Nov/2017 ', '626', '666', 'Wed, 08 Nov 2017', '2', 'huh uhh', 'iiii hi', 'iiii', 'hhhhh', 'yes', 'hhhhh', '34546416464', '2017-11-09 11:12:59'),
(76, 0, 'sss', 'ss', 'ssssss@gmail.com', '45664', 'hljnklj', '09/Nov/2017 ', '626', '666', 'Wed, 08 Nov 2017', '2', 'huh uhh', 'iiii hi', 'iiii', 'hhhhh', 'yes', 'hhhhh', '34546416464', '2017-11-09 11:13:20'),
(77, 0, 'ddd', 'ddd', 'ddddddd@gmail.com', '58555', 'gffffg', '09/Nov/2017 ', '54', 'fdghdgh', 'Tue, 07 Nov 2017', '2', 'fgtgtf', '654654', '654654', '654646', 'yes', '654654', '654646464', '2017-11-09 16:13:49'),
(78, 0, 'Bnbbnn', 'Ghhv', 'rhjj@gmail.com', 'Bbxnnn', 'Bjjn', '2017-11-10', 'Nn', 'Bnn', '2017-11-10', '1', '', '', '', 'Jj', 'yes', 'Njj', 'Gjlknbv', '2017-11-10 08:50:08'),
(79, 1, 'test', 'check', 'check@gmail.com', '654654666666', 'usa', '04-10-1991', '2', 'rrrrrrrr', '2-2-2017', '2', '165', '65', '555', '665636', 'yes', 'no', '9999899999', '2017-11-10 09:08:18'),
(80, 0, 'qqqqq', 'wwwww', 'eee@gmail.com', '666666', 'usa', '10/Nov/2017 ', '2', 'hhhhhhhhh', 'Wed, 08 Nov 2017', '2', '165', '66', '55', '5555555', 'yes', 'no', '9519519511', '2017-11-10 09:25:59'),
(89, 0, 'rrrrRDCvv', 'HYGH', 'gg@gmail.com', '487755', 'kjnkjk', '14/Nov/2017 ', '4', 'yfcgh', 'Wed, 08 Nov 2017', '4', '545', '555', '555', '55', 'No', '44', '541545', '2017-11-14 11:52:17'),
(90, 0, 'ggg', 'jjj', 'kkkk@gmail.com', '6544654', 'oo join', '14/Nov/2017 ', '5', 'hiii', 'Tue, 07 Nov 2017', '4', '555', '555', '5454', '6541654', 'No', '654654', '641546', '2017-11-14 12:01:35'),
(91, 0, 'a', 'a', 'a@gmail.com2', 'a', 'a', '14/Nov/2017 ', 'aaa', 'aaa', 'Wed, 08 Nov 2017', '4', '2', '2', '2', '2', 'No', '222', 'ddd', '2017-11-14 12:10:35'),
(92, 0, 'ss', 'sss', 's@gmail.com', '545+5', 'jhhh', '14/Nov/2017 ', '899+', 'brig', 'Wed, 08 Nov 2017', '4', '6464', '6464', '6464', '64646', 'No', '646464', '64646', '2017-11-14 12:15:45'),
(93, 0, 'dd', 'dd', 'dd@gmail.com', '4554', '6646', '14/Nov/2017 ', '5', 'jklnjkn', 'Wed, 08 Nov 2017', '4', '3623223', '323', '3232', '3232', 'No', '323232', '32323', '2017-11-14 12:27:46'),
(94, 0, 'hhhkjbnlk', 'hhh', 'h@gmail.com', '464654', 'bib', '14/Nov/2017 ', '66', 'kkk', 'Wed, 08 Nov 2017', '4', '5454', '5454', '545', '44', 'No', '4444', '4456454', '2017-11-14 12:30:49'),
(95, 0, 'sss', 'sss', 'ssskk@gmail.com', 'sss', '13212412', '14/Nov/2017 ', '2', '222', 'Wed, 08 Nov 2017', '4', '44', '4', '444', '444', 'No', '44', '444', '2017-11-14 12:53:35'),
(96, 0, 'y', 'y', 'ap@gmail.com', 'aa', 'aa', '14/Nov/2017 ', '55', 'fgjvf', 'Wed, 08 Nov 2017', '4', 'kbhkj', 'blink', '54134', '454', 'No', '341364', '6454654', '2017-11-14 13:03:22'),
(97, 0, 'sss', 'ss', 'ssssssl@gmail.com', '56454', 'gvjh', '14/Nov/2017 ', '55', 'humph', 'Wed, 08 Nov 2017', '4', '666', '5555', '555', '5555', 'No', '5555', '555555', '2017-11-14 13:06:17'),
(98, 0, 'test', 'check', 'check@gmail.com', '65465465', 'us', '14/Nov/2017 ', '2', 'us', 'Wed, 08 Nov 2017', '7', 'no', '165', '65', '6666', 'yes', 'no', '9519519511', '2017-11-14 15:33:56'),
(99, 0, 'Ramesh', 'Ram', 'Ram@gmail.com', '954878544', 'us', '04/10/2017', '5', '11, test addr, california', '24/10/2017', '2', '658', '55', '55', 'kjhd5555', 'yes', 'jjj', '8952665555', '2017-11-15 08:27:12'),
(100, 0, 'tt', 'ttt', 'ttttt@gmail.com', '4545', 'hi khan', '16/Nov/2017 ', '774', 'jjjj', 'Tue, 07 Nov 2017', '7', '55', '66', '66', '66', 'yes', '66', '666', '2017-11-16 14:31:45'),
(101, 0, 'ss', 'sss', 'sss@gmail.com', 'sss', 'ss', '16/Nov/2017 ', 'sss', 'ss', 'Tue, 07 Nov 2017', '7', '5', '5', '5', '5', 'yes', '55', '11', '2017-11-16 14:38:46'),
(102, 0, 'check', 'test', 'test@gmail.com', '666666', 'us', '16/Nov/2017 ', '3', 'us', 'Wed, 08 Nov 2017', '7', '22', '165', '65', '3232332', 'yes', 'yes', '222222222', '2017-11-16 15:53:38'),
(103, 0, 'aa', 'ww', 'wq@gmail.com', '454', 'Klondike', '17/Nov/2017 ', '55', 'uhh', 'Tue, 07 Nov 2017', '7', '666', '165', '5665', '655', 'yes', 'yes', '56565', '2017-11-17 12:50:28'),
(104, 0, 'Vignesg', 'Waran', 'vigneshmcaklk@gmail.com', 'Nsywgs', 'Indian', '2017-12-21', 'S', 'Y da be', '2017-12-29', '1', '', '', '', 'Uh', 'yes', 'N', 'H', '2017-12-23 12:01:04'),
(105, 0, 'Gjkk', 'Bnnj', 'ghjj@gmail.com', 'B kmmn', 'Bjj', '2017-12-23', 'Bb', 'Bnn', '2017-12-30', '1', '', '', '', 'Hjj', 'yes', 'Vhj', 'Gagged', '2017-12-23 12:02:22'),
(106, 123, 'vignesh', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:08:20'),
(107, 123, 'vignesh', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:10:29'),
(108, 123, 'vignesh', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:11:39'),
(109, 123, 'vignesh', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:11:45'),
(110, 123, 'vignesh', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:15:50'),
(111, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:20:27'),
(112, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:24:54'),
(113, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:33:20'),
(114, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:34:34'),
(115, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:35:01'),
(116, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:35:24'),
(117, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:35:46'),
(118, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:36:10'),
(119, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:36:26'),
(120, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:37:01'),
(121, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:37:53'),
(122, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:38:22'),
(123, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:38:47'),
(124, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:39:11'),
(125, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:39:44'),
(126, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:39:46'),
(127, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:40:27'),
(128, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:41:06'),
(129, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:42:14'),
(130, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:45:11'),
(131, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:48:25'),
(132, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:48:49'),
(133, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:49:19'),
(134, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:49:20'),
(135, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 13:50:50'),
(136, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:18:37'),
(137, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:20:30'),
(138, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:21:24'),
(139, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:22:24'),
(140, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:22:47'),
(141, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:23:11'),
(142, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:23:50'),
(143, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:24:34'),
(144, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:25:39'),
(145, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:26:33'),
(146, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:30:36'),
(147, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:32:38'),
(148, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:32:40'),
(149, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:33:54'),
(150, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:35:37'),
(151, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:35:58'),
(152, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:36:15'),
(153, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:36:34'),
(154, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:36:38'),
(155, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:40:26'),
(156, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:40:29'),
(157, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:41:00'),
(158, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:41:29'),
(159, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:41:50'),
(160, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:09'),
(161, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:11'),
(162, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:12'),
(163, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:13'),
(164, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:15'),
(165, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:39'),
(166, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 14:43:55'),
(167, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:12:49'),
(168, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:13:28'),
(169, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:13:31'),
(170, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:13:48'),
(171, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:14:23'),
(172, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:15:14'),
(173, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:15:54'),
(174, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:16:56'),
(175, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:19:39'),
(176, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:19:41'),
(177, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:20:04'),
(178, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:20:20'),
(179, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:29:12'),
(180, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:29:28'),
(181, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:31:49'),
(182, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:32:37'),
(183, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:32:40'),
(184, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:33:25'),
(185, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:33:58'),
(186, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:34:14'),
(187, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 15:34:48'),
(188, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:10:53'),
(189, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:12:10'),
(190, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:12:31'),
(191, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:13:29'),
(192, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:13:31'),
(193, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:13:49'),
(194, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:14:17'),
(195, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:14:38'),
(196, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:23:49'),
(197, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:23:51'),
(198, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:24:11'),
(199, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:29:09'),
(200, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:29:11'),
(201, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:35:10'),
(202, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:38:09'),
(203, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:39:00'),
(204, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:40:38'),
(205, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:40:58'),
(206, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:41:23'),
(207, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:41:43'),
(208, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:42:28'),
(209, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:42:54'),
(210, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:43:22'),
(211, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:43:24'),
(212, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:43:54'),
(213, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:44:07'),
(214, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:44:24'),
(215, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:47:28'),
(216, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:56:37'),
(217, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:57:03'),
(218, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:57:18'),
(219, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:57:50'),
(220, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:58:27'),
(221, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:58:41'),
(222, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:58:54'),
(223, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:59:11'),
(224, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 16:59:55'),
(225, 123, 'first', 'waran', 'vigneshmcaklk@gmail.com', '1254', 'indian', '1987-03-04', 's', 's', '2017-12-28', 'h', '5', '5', '5', '54', 's', 'fg', '124548', '2017-12-23 17:00:08'),
(226, 0, 'Ggg', 'Bbbh', 'kk@gmail.com', 'B hi kjh', 'Vhjj', '2018-1-22', 'Gg', 'Vghh', '2018-1-22', '1', '', '', '', 'Bjkk', 'yes', 'Hjjj', 'Vjkknbg', '2018-01-22 10:29:03'),
(227, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-22 12:27:44'),
(228, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-22 12:31:32'),
(229, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-22 13:26:29'),
(230, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-22 15:23:39'),
(231, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-22 15:27:41'),
(232, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 08:35:58'),
(233, 0, 'Bnnn', 'Bnnnn', 'kk@gmail.com', 'Bjkjj85555', 'Hhhb', '2018-1-24', 'Nnn', 'Bnjj', '2018-1-25', '1', '', '', '', 'Xff', 'NO', 'Xff', 'Xffff', '2018-01-23 08:38:34'),
(234, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 08:50:03'),
(235, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 10:39:08'),
(236, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 10:52:19'),
(237, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 10:53:15'),
(238, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 16:51:05'),
(239, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-23 17:11:14'),
(240, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 01:50:44'),
(241, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 01:51:37'),
(242, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 01:51:54'),
(243, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 10:12:25'),
(244, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 10:47:34'),
(245, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 10:54:01'),
(246, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 10:55:59'),
(247, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 11:06:01'),
(248, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 11:06:02'),
(249, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 11:06:02'),
(250, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 11:06:02'),
(251, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 11:36:29'),
(252, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 12:24:22'),
(253, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 13:06:13'),
(254, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 13:08:09'),
(255, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 13:35:14'),
(256, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 13:39:36'),
(257, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 13:49:29'),
(258, 0, 'Raja', 'John', 'johnraja@rgmobiles.com', '9587485sssldk', 'India', '01-01-2018', '5', 'Vadavalli', '05-01-2018', '7', '4', '120', '22', '3455gkkgkj', 'yes', 'ggg', '9626333923', '2018-01-24 16:16:02'),
(259, 0, 'firstssss', 'lastdsad', 'eeee@ggg.ccc', 'ps34fdfs', 'nattttt', '24/Jan/2018 ', 'strrrrrr', 'hm stttt', '21 Jan, 2018', '7', 'before sds', 'wwwwwwww', '22', 'gggggg ammmm', 'yes', 'dsdasdasdsd', '4343432432432432', '2018-01-24 18:16:01'),
(260, 0, 'ssss', 'ssss', 'ssss', 'Assad', 'asdsadsad', '24/Jan/2018 ', 'dddd', 'fsf', '25 Jan, 2018', '11', 'dd', 'ddd', 'dd', 'dd', 'no', 'ddd', '32132132165', '2018-01-24 18:26:41'),
(261, 0, 'Good', 'Hhh', 'kk@gmail.com', 'Hhg', 'Gyt', '2018-1-25', 'Njh', 'Nhhh', '2018-1-25', '3', '', '', '', 'Ghhh', 'NO', 'Hhjughh', 'Bjxjxnjcjkvkb', '2018-01-24 18:44:19'),
(262, 0, 'dsdsa', 'sdsdsabkhsbd', 'vjvjg', 'gvjvjv', 'gvjvjhv', '25/Jan/2018 ', '65', 'UHGJHBVKHB', '30 Jan, 2018', '10', 'VV', 'V61516', '232', '2212112213', 'yes', 'DBH', '13211231', '2018-01-24 18:45:30'),
(263, 0, 'rrr', 'rrrr', 'rrrr@gmail.com', 'saffs21231313', 'uyjggg', '25/Jan/2018 ', '21', 'lkjhbkjn', '25 Jan, 2018', '5', 'hgvjhv', 'bkbjkb', 'by', 'hkbhk', 'yes', 'hbkhb', 'b43', '2018-01-24 20:49:01'),
(264, 0, 'rrr', 'rrrr', 'rrrr@gmail.com', 'saffs21231313', 'uyjggg', '25/Jan/2018 ', '21', 'lkjhbkjn', '25 Jan, 2018', '5', 'hgvjhv', 'bkbjkb', 'by', 'hkbhk', 'yes', 'hbkhb', 'b43', '2018-01-24 20:50:08'),
(265, 0, 'jhvgjkhkj', 'jhgvjhgbjhg', 'jhgvjhgjhg', 'jhgjhghjg', 'jhgjhgjhg', '25/Jan/2018 ', '515', '24654', '24 Jan, 2018', '13', '55', '5415454', '454', '3543544', 'yes', 'jigging has', '6256526', '2018-01-24 20:53:01'),
(266, 0, 'jhvgjkhkj', 'jhgvjhgbjhg', 'jhgvjhgjhg', 'jhgjhghjg', 'jhgjhgjhg', '25/Jan/2018 ', '515', '24654', '24 Jan, 2018', '13', '55', '5415454', '454', '3543544', 'yes', 'jigging has', '6256526', '2018-01-24 20:54:08'),
(267, 0, 'jhbghjbg', 'hgvfvg', 'gggggg', 'jvfgvjgvjh', 'jvgjhvjh', '25/Jan/2018 ', '2123', '6114', '27 Jan, 2018', '2', '22', '2322', '22', '3232', 'yes', 'n;lnhkj', '5135441', '2018-01-24 21:02:46'),
(268, 0, 'test', 'check', 'check@gmail.com', 'rrrraa4444', 'indian', '25/Jan/2018 ', '2', 'Coimbatore', '25 Jan, 2018', '13', '145', '33', '55', '2514kkk', 'no', 'no', '9519519511', '2018-01-24 21:53:12'),
(269, 0, 'test', 'check', 'check@gmail.com', 'rrrraa4444', 'indian', '25/Jan/2018 ', '2', 'Coimbatore', '25 Jan, 2018', '5', '145', '33', '55', '2514kkk', 'no', 'no', '9519519511', '2018-01-24 21:53:35'),
(270, 0, 'test', 'check', 'check@gmail.com', 'rrrraa4444', 'indian', '25/Jan/2018 ', '2', 'Coimbatore', '25 Jan, 2018', '1', '145', '33', '55', '2514kkk', 'no', 'no', '9519519511', '2018-01-24 21:53:57'),
(271, 0, 'hjgftjvjhv', 'gggggg', 'hgchgc', 'hgchgcv', 'chgchgc', '25/Jan/2018 ', '114', '1jgvjhv', '21 Jan, 2018', '2', '232', '2121', '1221', '12131', 'yes', '21321123', '251213', '2018-01-24 21:58:39'),
(272, 0, 'test', 'check', 'check@gmail.com', '45654555', 'indian', '25/Jan/2018 ', '2', 'Chennault', '27 Jan, 2018', '4', '144', '22', '22', '232366', 'yes', 'no', '9519519511', '2018-01-24 22:08:44'),
(273, 0, 'mhgvjgv', 'hgvjvj', 'jhvjhbvjv', 'jhvbjhbjhbv', 'jvbjhbvjhbv', '25/Jan/2018 ', 'jbjhbjhb', 'jhgjhgb', '25 Jan, 2018', '8', '66', '666', '666', '666', 'yes', '56454', '5464654654', '2018-01-24 22:21:36'),
(274, 0, 'mhgvjgv', 'hgvjvj', 'jhvjhbvjv', 'jhvbjhbjhbv', 'jvbjhbvjhbv', '25/Jan/2018 ', 'jbjhbjhb', 'jhgjhgb', '25 Jan, 2018', '3', '66', '666', '666', '666', 'yes', '56454', '5464654654', '2018-01-24 22:22:04'),
(275, 0, 'kjbhkjb', 'jvjhgbvkh', 'bbkhbk', 'bkhbkjbkjb', 'kjbkjbkjbn', '25/Jan/2018 ', '614', '415465', '26 Jan, 2018', '2', '446', '6556', '556', '5656', 'yes', '414', '14136514654165', '2018-01-24 22:22:57'),
(276, 0, 'HVBJHBVJH', 'JVJVJ', 'jhgvjhbhb', 'kbkjbkjbnjkn351654136', 'kjhbkjhjhn', '25/Jan/2018 ', '15', '2552', '30 Jan, 2018', '2', '25', '2133', '333', '3232', 'yes', '232', '3222132', '2018-01-24 22:24:52'),
(277, 0, 'jjj', 'jjjj', 'jjjj', 'jjj5677', 'ghjjj', '25/Jan/2018 ', 'njjj', 'jjjj', '27 Jan, 2018', '3', 'kkk', 'jjj', 'jjj', 'jjjsjs', 'yes', 'jjj', 'hdjjdjdjjdj', '2018-01-24 22:40:44'),
(278, 0, 'Vidhya', 'vijay', 'hdjdjdkdndj', '73389229', 'jdjd jdjd', '25/Jan/2018 ', 'cbe', 'cbe', '12 Jan, 2018', '10', '167', '63', '7', '383833', 'no', 'no', '833929392039839329393', '2018-01-25 09:13:01'),
(279, 0, 'Vidhya', 'vijay', 'hdjdjdkdndj', '73389229', 'jdjd jdjd', '25/Jan/2018 ', 'cbe', 'cbe', '12 Jan, 2018', '10', '167', '63', '7', '383833', 'no', 'no', '833929392039839329393', '2018-01-25 09:13:03'),
(280, 0, 'Vidhya', 'vijay', 'Vidhya.vijay94@gmail.com', '134555', 'India ', '25/Jan/2018 ', 'dhdjdjfdixj', 'jdjd Jd', '19 Jan, 2018', '1', '167', '63', '7', '7482928', 'no', 'bxjxbxxj', '84729238', '2018-01-25 12:45:44'),
(281, 0, 'jjjjj', 'hhhh', 'hhh hhh', 'bkbkb', 'hhhh', '25/Jan/2018 ', '22', '22', '21 Jan, 2018', '3', '4654', '454', '44', '44', 'yes', '5115', '5465444465', '2018-01-25 12:46:43'),
(282, 0, 'jjjjj', 'hhhh', 'hhh hhh', 'bkbkb', 'hhhh', '25/Jan/2018 ', '22', '22', '21 Jan, 2018', '3', '4654', '454', '44', '44', 'yes', '5115', '5465444465', '2018-01-25 12:46:45'),
(283, 0, 'hgjhg', 'jhghgk', 'khgkhgkg@gmail.com', 'khjgvjgv', 'jhgvjhgjh', '26/Jan/2018 ', '2', 'lnlknlkn', '29 Jan, 2018', '13', '2', '5', '55', '55555', 'yes', '555454', '413121215', '2018-01-25 20:11:49'),
(284, 0, 'jhbjhbg', 'jhbgjhb', 'jhbvjh@gmail.com', 'jhgjhgbjhgb', 'jhgbkhbgkb', '26/Jan/2018 ', '22', '222', '26 Jan, 2018222', '1', '2222', '222', '222', '222', 'yes', '2222', '22222', '2018-01-25 20:14:49'),
(285, 0, 'paul', 'parreno ', 'sales.carpedm@gmail.com', '1723858575', 'Canada ', '25/Jan/1993 ', 'casa Carpedm', '5446 Los Rios', '29 Jan, 2018', '1', 'na', 'na', 'na', '7653267', 'no', 'none', '286554444', '2018-01-26 00:26:51'),
(286, 0, 'dqcefveg', 'dccrgcgrcc', 'fecrgcgr@gmail.com', 'gevgvrg', 'egcegcgr', '26/Jan/2018 ', '45845852', 'fcegcgrg', '29 Jan, 2018', '1', '81', '5152', '5252', 'effort', 'no', 'fwcrggcr', '488', '2018-01-26 09:23:57'),
(287, 0, 'jjj', 'jjjj', 'kkkksn@gmail.com', 'Bhushri', 'jjj', '30/Jan/2018 ', '2', 'hi', '24 Feb, 2018', '3', '55', '856', '855', 'jjj', 'no', 'jjj', '890635245', '2018-01-30 14:12:09');

-- --------------------------------------------------------

--
-- Table structure for table `tour_activites`
--

CREATE TABLE `tour_activites` (
  `id` int(11) NOT NULL,
  `activities_name` varchar(100) NOT NULL,
  `activities_image` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_activites`
--

INSERT INTO `tour_activites` (`id`, `activities_name`, `activities_image`, `created_date`) VALUES
(1, 'Hike', 'http://perfectrdp.us/carpedm_webservice/uploads/hike.jpg', '2017-09-16 08:09:51'),
(2, 'Bike', 'http://perfectrdp.us/carpedm_webservice/uploads/bike.jpg', '2017-09-16 11:31:04'),
(3, 'Trekking', 'http://perfectrdp.us/carpedm_webservice/uploads/trekking.jpg', '2017-09-16 11:31:38'),
(4, 'Smile', 'http://perfectrdp.us/carpedm_webservice/uploads/trekking.jpg', '2017-09-16 11:31:38'),
(5, 'Spa', 'http://perfectrdp.us/carpedm_webservice/uploads/spa.jpg', '2017-10-04 11:08:53'),
(6, 'Walking', 'http://perfectrdp.us/carpedm_webservice/uploads/walking.jpg', '2017-10-04 11:09:26'),
(7, 'Visit', 'http://perfectrdp.us/carpedm_webservice/uploads/visit.jpg', '2017-10-04 11:10:01'),
(8, 'Glacier Climbing', 'http://perfectrdp.us/carpedm_webservice/uploads/glacier.jpg', '2017-10-04 11:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `tour_checkout`
--

CREATE TABLE `tour_checkout` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `tour_date` date NOT NULL,
  `number_of_people` int(11) NOT NULL,
  `tour_price` varchar(100) NOT NULL,
  `tour_total_price` varchar(100) NOT NULL,
  `tour_status` int(5) NOT NULL DEFAULT '0' COMMENT '1 = Paid, 0 = Pending',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_checkout`
--

INSERT INTO `tour_checkout` (`id`, `tour_id`, `user_email`, `tour_date`, `number_of_people`, `tour_price`, `tour_total_price`, `tour_status`, `created_date`) VALUES
(3, 2, 'sasi@rgmobiles.com', '2017-10-18', 3, '60', '180', 1, '2017-09-25 12:55:55'),
(4, 1, 'testuser@gmail.com', '2017-11-15', 4, '60', '240', 0, '2017-11-13 04:59:05'),
(6, 4, 'testuser@gmail.com', '2017-09-25', 5, '$50', '0', 0, '2017-09-20 11:18:30'),
(7, 2, 'sasi@rgmobiles.com', '2017-10-18', 1, '60', '60', 0, '2017-09-20 11:30:57'),
(8, 5, 'testuser@gmail.com', '2017-09-29', 5, '50', '250', 1, '2017-09-20 12:20:06'),
(9, 1, '1613902785295322', '2017-09-29', 3, '50', '150', 1, '2017-09-20 17:11:29'),
(12, 7, 'testuser@gmail.com', '2017-09-29', 4, '60', '240', 1, '2017-09-21 08:26:49'),
(13, 1, '838915729602208', '2017-09-29', 5, '50', '250', 1, '2017-09-21 13:30:49'),
(14, 5, '666468453548520', '2017-09-19', 2, '50', '100', 0, '2017-09-21 18:10:02'),
(15, 1, '666468453548520', '2017-09-19', 4, '50', '200', 0, '2017-09-21 22:23:22'),
(16, 5, '666468453548520', '2017-09-29', 6, '50', '300', 0, '2017-09-21 22:31:49'),
(17, 1, '666468453548520', '2017-09-19', 1, '50', '50', 0, '2017-09-21 22:32:57'),
(18, 1, 'testuser@gmail.com', '2017-10-15', 5, '50', '250', 0, '2017-09-22 11:44:11'),
(19, 2, 'testuser@gmail.com', '2017-09-13', 4, '60', '240', 0, '2017-09-25 13:48:16'),
(20, 2, 'testuser@gmail.com', '2017-09-13', 2, '60', '120', 0, '2017-09-25 13:50:53'),
(21, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-25 14:01:27'),
(22, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-25 14:03:17'),
(23, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-25 14:28:29'),
(24, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-25 14:33:08'),
(25, 1, 'testuser@gmail.com', '2017-09-19', 1, '50', '50', 0, '2017-09-25 14:39:59'),
(26, 1, 'testuser@gmail.com', '2017-09-19', 1, '50', '50', 0, '2017-09-25 14:43:54'),
(27, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-25 14:48:41'),
(28, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 1, '2017-09-25 14:56:56'),
(29, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-26 06:05:14'),
(30, 2, 'testuser@gmail.com', '2017-09-13', 1, '60', '60', 0, '2017-09-26 06:15:25'),
(175, 11, '1964072657174292', '0000-00-00', 6, '75', '450', 0, '2017-11-14 12:54:13'),
(176, 13, '1964072657174292', '0000-00-00', 3, '75', '225', 0, '2017-11-14 13:03:42'),
(177, 6, '1964072657174292', '0000-00-00', 5, '36', '180', 0, '2017-11-14 13:11:34'),
(178, 3, '1964072657174292', '2017-10-18', 4, '27', '108', 0, '2017-11-14 15:34:26'),
(179, 1, '250625035463533', '2017-10-18', 8, '48', '384', 0, '2017-11-16 14:32:04'),
(180, 6, '250625035463533', '2017-10-18', 3, '365', '1095', 0, '2017-11-16 14:39:05'),
(181, 6, 'test@gmail.com', '2017-10-18', 3, '365', '1095', 0, '2017-11-16 15:54:01'),
(182, 6, 'test@gmail.com', '2017-10-18', 3, '365', '1095', 0, '2017-11-16 15:54:08'),
(183, 5, '1964072657174292', '2017-10-18', 2, '35', '70', 0, '2017-11-17 12:51:01'),
(184, 1, 'vigneshmcaklk@gmail.com', '2017-09-19', 4, '0', '0', 1, '2017-12-23 12:01:05'),
(185, 1, 'vigneshmcaklk@gmail.com', '2017-09-19', 4, '0', '0', 1, '2017-12-23 12:02:23'),
(186, 1, 'vigneshmcaklk@gmail.com', '2017-09-19', 5, '0', '0', 0, '2017-12-23 12:49:26'),
(187, 1, 'vigneshmcaklk@gmail.com', '2017-09-19', 5, '0', '0', 0, '2017-12-23 12:49:36'),
(188, 6, 'vigneshmcaklk@gmail.com', '2017-09-13', 4, '60', '240', 0, '2017-12-24 05:08:57'),
(189, 1, 'test@gmail.com', '2017-11-15', 5, '0', '0', 1, '2018-01-22 10:29:03'),
(190, 1, 'test@gmail.com', '2017-11-15', 5, '0', '0', 0, '2018-01-22 10:33:18'),
(191, 1, 'test@gmail.com', '2018-01-19', 1, '0', '0', 0, '2018-01-22 13:00:54'),
(192, 3, 'test@gmail.com', '2017-09-19', 2, '45', '90', 0, '2018-01-22 13:01:46'),
(193, 3, 'test@gmail.com', '2018-01-25', 4, '45', '180', 0, '2018-01-22 13:14:47'),
(194, 3, 'test@gmail.com', '2018-01-25', 4, '45', '180', 0, '2018-01-22 13:38:43'),
(195, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-22 15:28:07'),
(196, 1, 'gnanam105@gmail.com', '2018-01-19', 1, '0', '0', 0, '2018-01-22 17:25:02'),
(197, 1, 'gnanam105@gmail.com', '2018-01-19', 1, '0', '0', 0, '2018-01-22 17:32:43'),
(198, 1, 'gnanam105@gmail.com', '2018-01-19', 1, '0', '0', 0, '2018-01-22 17:34:39'),
(199, 1, 'gnanam105@gmail.com', '2018-01-19', 1, '0', '0', 0, '2018-01-22 17:35:09'),
(200, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-23 08:36:37'),
(201, 2, 'nathiya@rgmobiles.com', '2018-01-21', 4, '40', '160', 0, '2018-01-23 08:37:35'),
(202, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-23 08:50:17'),
(203, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-23 10:39:43'),
(204, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-23 10:52:50'),
(205, 1, 'nathiya@rgmobiles.com', '2018-01-24', 4, '0', '0', 0, '2018-01-23 11:36:23'),
(206, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-23 16:51:56'),
(207, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-24 10:56:37'),
(208, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-24 11:37:24'),
(209, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-24 12:25:55'),
(210, 1, 'test@gmail.com', '2018-01-24', 3, '0', '0', 0, '2018-01-24 13:01:01'),
(211, 1, 'test@gmail.com', '2018-01-26', 3, '0', '0', 0, '2018-01-24 13:01:20'),
(212, 1, 'test@gmail.com', '2018-01-29', 3, '0', '0', 0, '2018-01-24 13:01:45'),
(213, 1, 'test@gmail.com', '2018-01-24', 2, '35', '70', 0, '2018-01-24 13:07:25'),
(214, 1, 'test@gmail.com', '2018-01-24', 2, '35', '70', 0, '2018-01-24 13:36:42'),
(215, 1, '1', '2017-10-18', 2, '35', '70', 0, '2018-01-24 13:40:23'),
(216, 1, '1964072657174292', '2018-01-24', 2, '35', '70', 0, '2018-01-24 13:50:54'),
(217, 1, 'test@gmail.com', '2018-01-19', 4, '0', '0', 0, '2018-01-24 18:39:19'),
(218, 3, 'test@gmail.com', '2018-01-30', 4, '45', '180', 0, '2018-01-24 18:43:22'),
(219, 2, 'iosgnanavel@gmail.com', '0000-00-00', 2, '40', '80', 0, '2018-01-24 21:03:59'),
(220, 3, 'test@gmail.com', '0000-00-00', 3, '45', '135', 0, '2018-01-24 21:59:43'),
(221, 11, 'test@gmail.com', '0000-00-00', 3, '40 ', '120', 0, '2018-01-24 22:10:28'),
(222, 2, 'NATHIYA@RGMOBILES.COM', '0000-00-00', 3, '40', '120', 0, '2018-01-24 22:25:36'),
(223, 3, 'nathiya@rgmobiles.com', '0000-00-00', 3, '45', '135', 0, '2018-01-24 22:41:47'),
(224, 1, 'nathiya@rgmobiles.com', '2018-01-26', 5, '0', '0', 0, '2018-01-25 05:25:16'),
(225, 3, 'vidhya.vijay1994@gmail.com', '2018-01-21', 1, '45', '45', 0, '2018-01-25 16:24:48'),
(226, 10, 'test@gmail.com', '0000-00-00', 1, '50', '50', 0, '2018-01-30 14:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `tour_details`
--

CREATE TABLE `tour_details` (
  `id` int(11) NOT NULL,
  `tour_name` varchar(100) NOT NULL,
  `tour_latitude` varchar(255) NOT NULL,
  `tour_langitude` varchar(255) NOT NULL,
  `tour_image` text NOT NULL,
  `tour_video` text NOT NULL,
  `tour_activites` varchar(100) NOT NULL,
  `tour_check_available` text NOT NULL,
  `tour_overview` text NOT NULL,
  `tour_shortdesc` text NOT NULL,
  `tour_price` varchar(50) NOT NULL COMMENT 'per person',
  `how_many_days` varchar(500) NOT NULL,
  `tour_peoples_minimum` text NOT NULL,
  `tour_itinerary` text NOT NULL,
  `tour_whats_included` text NOT NULL,
  `tour_whats_not_included` text NOT NULL,
  `tour_what_to_bring` text NOT NULL,
  `tour_cancel_text` text NOT NULL,
  `tour_policies` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tour_details`
--

INSERT INTO `tour_details` (`id`, `tour_name`, `tour_latitude`, `tour_langitude`, `tour_image`, `tour_video`, `tour_activites`, `tour_check_available`, `tour_overview`, `tour_shortdesc`, `tour_price`, `how_many_days`, `tour_peoples_minimum`, `tour_itinerary`, `tour_whats_included`, `tour_whats_not_included`, `tour_what_to_bring`, `tour_cancel_text`, `tour_policies`, `type`) VALUES
(1, 'Free Walking Tour', '-0.1865938', '-78.570625', 'http://perfectrdp.us/carpedm_webservice/uploads/free_walking_tour2.jpg', 'https://www.youtube.com/watch?v=CCpgwG7n1c8', '6', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'Quito\'s Historic center is a UNESCO world heritage site and offers a whole range of interesting buildings and places that reflect the Ecuadorian People, Environment and beliefs. On our walking tour you will go past come of the most interesting and famous places in the old tour and learn about each location from a local English speaking guide. This is a really good way to get a feel for the place especially if you have just arrived.', 'Quito\'s Historic center is a UNESCO world heritage site and offers a whole range of interesting buildings and places that reflect the Ecuadorian People, Environment and beliefs.', '0', '1 Day | Free Walking Tour', 'The tour is tip based to the guide usually for a city tour you would be paying $40 to $50 usd per person so we suggest a 10% tip', '10.10 Meet at CarpeDM Office have the introduction\r\n10.30 Start heading in to the old town\r\n10.40 Basilica de votonacional\r\n11.00 Camilo Egas museum.(not open on Mondays)\r\n11:30 plaza del Benalcazar\r\n12:00 Plaza Grande\r\n12:30 Compania de Jesus\r\n13:00 La ronda\r\n13:30 either to the Central market for lunch or back to the Carpedm office\r\nPlease be aware this is a sample itinerary and each guide has their own route which may or may not visit these locations', 'Guide', 'Transport/Meals/Additional Snacks / Beverages/ Personal items\r\nTIPS', 'Good shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', 'The tour is tip based to the guide usually for a city tour you would be paying $40 to $50 usd per person so we suggest a 10% tip', 1),
(2, 'Quito City Tour', '-0.1843622', '-78.5208432', 'http://perfectrdp.us/carpedm_webservice/uploads/citytour1.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '7', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Take a tour of Quito to learn more about this beautiful city and its local culture. Visit the Old Town, a UNESCO World Heritage Site, with stops at the golden Compañia Church, San Francisco Square, and the Panecillo, a towering statue of the virgin of Quito who looks out over a stunning view of the city.', 'Take a tour of Quito to learn more about this beautiful city and its local culture. Visit the Old Town, a UNESCO World Heritage Site, with stops at the golden Compañia Church, San Francisco Square, and the Panecillo, a towering statue of the virgin of Quito who looks out over a stunning view of the city.', '40', '1 Day | Quito City Tour', '$40 per person minimum of 2 people\r\n$60 private 1 person', '10.00 Pick up from your Hotel\r\n10.30 Basilica de votonacional\r\n11:30 Plaza Grande\r\n12:00 Compania de Jesus\r\n12:30 Plaza de Sanfrancisco\r\n13:30 Vist to the Panecillo\r\n14:00 Return to your hotel\r\nPlease be aware this is a sample itinerary and each guide has their own route which may or may not visit these locations.', 'Guide and Transport', 'Meals/Additional Snacks / Beverages/ Personal items\r\nTIPS', 'Good shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water\r\nMoney for entrance fees', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$40 per person minimum of 2 people\r\n$60 private 1 person', 1),
(3, 'Quito City Tour & Equator', '-0.2207706', '-78.5138984', 'http://perfectrdp.us/carpedm_webservice/uploads/citytour_equador.jpg', 'https://www.youtube.com/watch?v=CCpgwG7n1c8', '7', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'Morning City Tour * can be reversed *\r\nTake a tour of Quito to learn more about this beautiful city and its local culture. Visit the Old Town, a UNESCO World Heritage Site, with stops at the golden Compañia Church, San Francisco Square, and the Panecillo, a towering statue of the virgin of Quito who looks out over a stunning view of the city.\r\n\r\nMitad del Mundo - Equator - Afternoon\r\n\r\nDrive 25km (16 mi) north of Quito to the Middle of the World, latitude 0º. Stand with one foot in each hemisphere, visit the Intiñan Museum which showcases the immense cultural diversity within this small South American country. On the 00°00’00” magnetic line at the museum experiment with gravity. Later, head up to the Pululahua crater view point, one of the two inhabited volcanic caldera in the world.\r\n\r\nPlease be aware this is a sample itinerary and each guide has their own route which may or may not visit these locations', 'Morning City Tour * can be reversed *\r\n\r\nTake a tour of Quito to learn more about this beautiful city and its local culture. Visit the Old Town, a UNESCO World Heritage Site, with stops at the golden Compañia Church, San Francisco Square, and the Panecillo, a towering statue of the virgin of Quito who looks out over a stunning view of the city.', '45', '1 Day |Quito City Tour & Equator', '$45 per person minimum of 2 people\r\n$70 private 1 person', '8.00 Pick up from your Hotel\r\n8.30 Basilica de Voto Nacional\r\n9:30 Plaza Grande\r\n10:00 Compania de Jesus\r\n10:30 Plaza de Sanfrancisco\r\n11:30 Vist to the Panecillo\r\n13.00 Arrive Monument Equator Line\r\n13.30 Lunch\r\n14:00 Museo Itinan Museo - Guided Tour 45 min.\r\n15:00 Visit Puluhua Crater\r\n15:30 Return to your hotel\r\nPlease be aware this is a sample itinerary and each guide has their own route which may or may not visit these locations.\r\n\r\n', 'Guide and Transport', 'Meals/Additional Snacks / Beverages/ Personal items\r\nTIPS', 'Good shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water\r\nMoney for entrance fees', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$45 per person minimum of 2 people\r\n$70 private 1 person', 1),
(5, 'Cotopaxi Day Tour', '-0.7007416', '-78.4297187', 'http://perfectrdp.us/carpedm_webservice/uploads/cotopaxi_img.jpg', 'https://www.youtube.com/watch?v=CCpgwG7n1c8', '1,2,4', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Cotopaxi National Park (Spanish: Parque Nacional Cotopaxi) is a protected area in Ecuador situated in the Cotopaxi Province, Napo Province and Pichincha Province, roughly 50 km south of Quito. Trek one of the highest active volcanoes in the world with 5897 m!\r\n\r\nDue to its perfectly symmetrical cone, covered in a thick blanket of snow and ice, the Cotopaxi is one of the tourist highlights in Ecuador and its most visited and climbed volcano.The Cotopaxi National Park is situated in a beautiful paramo plateau, where wild horses graze on the extensive plains at the foot of the volcano or gather to drink at the lovely Limpiopungo lagoon, which reflects the white peaks of nearby Volcan Ruminahui and makes a great spot for watching waterfowl and other birds. Walking in the National Park, you will notice pumice, ash, stone and other volcanic debris amid the tiny paramos plants. On a day trip to the Cotopaxi National Park it is possible to drive as high as 4500m, then trek up a sandy scree slope to reach the snout of the glacier at 5000m.', 'Prepare to hike, bike and smile.  Trekking for all ages but biking must be experienced or confident with downhill biking.', '50', '1 Day | Cotopaxi', '$50 per person with minimum 4 people\r\nPrivate tour is also possible at a price of $95 per person (2 people minimum)', '06:30 Meet at meeting point for breakfast, CarpeDM Office\r\n07:00 Transfer to the Cotopaxi National Park\r\n09:30 Enter Cotopaxi National Park\r\n10:00 The guide will give explanation of the area, volcanoes, vegetation, animals  etc.\r\n10:30 4600m car park, begin hike up to the refuge\r\n12:30 Reach refuge at 4.864m. return to parking lot\r\n13:00 Equipment Check-Begin Bike ride back to the Limpiapungo lake\r\n14:00 Arrive at Limpiapungo lake.\r\n15:00 Eat lunch\r\n15:30 Return to Quito', 'Breakfast - Lunch - snack\r\nTransport\r\nGuide\r\nMountain Bike with Helmut, Kneepads, Elbowpads * This is an optional activity of approximately 30 minutes. Should be experienced / confident rider.', 'Additional Snacks / Beverages\r\nTIPS', 'Warm clothing\r\nWaterproof jacket\r\nGloves, scarf, hat\r\nHiking boots or trekking shoes\r\nSunglasses\r\nSunscreen\r\nExtra snacks and water', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$50 per person with minimum 4 people\r\nPrivate tour is also possible at a price of $95 per person (2 people minimum)', 1),
(6, 'Quilotoa Day Tour', '-0.8480556', '-78.929454', 'http://perfectrdp.us/carpedm_webservice/uploads/quilotoa_img2.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '1', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'Quilotoa is a water-filled caldera and the most western volcano in the Ecuadorian Andes. The 3 kilometres (2 mi)-wide caldera was formed by the collapse of this dacite volcano following a catastrophic VEI-6 eruption about 800 years ago, which produced pyroclastic flows and lahars that reached the Pacific Ocean, and spread an airborne deposit of volcanic ash throughout the northern Andes. This last eruption followed a dormancy period of 14,000 years and is known as the 1280 Plinian eruption.\r\n\r\nThis full day cultural tour begins with a visit to local indigenous market at either Saquisilli (Thursdays only) or Pujili (Sundays only).  The drive to Laguna Quilotoa – an amazing emerald lagoon inside a volcano crater at the height of approximatetly 3,800 m – displays a beautiful view of the Andean mountains, passing the ancient canyon of Zumbahua and many indigenous towns and farmlands.  The trip through the villages of the area provide a fantastic chance to see one of the most authentic parts of the country. Before lunch we visit a local indigenous home where you have the opportunity to interact with the locals.\r\n\r\nPrepare yourself for a taste of cultural and hiking.', 'Quilotoa is a water-filled caldera and the most western volcano in the Ecuadorian Andes. The 3 kilometres (2 mi)-wide caldera was formed by the collapse of this dacite volcano following a catastrophic VEI-6 eruption about 800 years ago, which produced pyroclastic flows and lahars that reached the Pacific Ocean, and spread an airborne deposit of volcanic ash throughout the northern Andes. This last eruption followed a dormancy period of 14,000 years and is known as the 1280 Plinian eruption.', '60', '1 Day | Quilotoa', '$60 per person, this price is based on shared groups with minimum 4 people', '06:30 – Meet at offices in Quito  for breakfast\r\n09:30 – Explore Saquisili/Pujili (Thursday/Sunday)\r\n10:30 – Depart for Laguna Quilotoa\r\n13:30 – Lunch, begin descent into Laguna\r\n15:00 – Explore Laguna- optional kayaking\r\n15:30 – Return ascent to crater\r\n16:30 – Begin drive back\r\n19:00 – Arrive in Quito', 'Breakfast\r\nLunch\r\nBilingual Guide\r\nEntry to Family Residence\r\nEntry Fee to Quilotoa\r\nBilingual Guide\r\nTransport', 'Optional Mule Ride approximately $10 US\r\nOptional Kayak $5 US\r\nExtra snacks/beverages\r\nTips', 'Warm clothing (layers)\r\nSun block\r\nSun glasses\r\nGloves\r\nScarf\r\nWool hat\r\nOriginal passport\r\nWaterproof jacket\r\nExtra snacks and water\r\nHiking boots or trekking shoes\r\nCamera', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$60 per person, this price is based on shared groups with minimum 4 people', 1),
(7, 'Otavalo Day Tour', '0.23333', '-78.2776739', 'http://perfectrdp.us/carpedm_webservice/uploads/otavalo_img1.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '7', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'The indigenous town of Otavalo is famous across South America for its handicraft market and colourful inhabitants, but the area also offers far more.\r\n\r\nOtavalo, a small town 2 hours north of Quito, has the biggest Indian handicraft market in South America. But it is not only famous for its typical handicraft, wood, weaving and souvenir markets; but as well as for its landscape. Beautiful lakes, Indian villages, high peaks and natural reserves surround the Otavalo area.', 'The indigenous town of Otavalo is famous across South America for its handicraft market and colourful inhabitants, but the area also offers far more.', '30', '1 Day | Otavalo', 'minimum 4 people,tour with a Bilingual Licensed Guide', '6:30 am depart Quito\r\n8:30 am Animal Market of Otavalo\r\n10:15 am Plazas de Ponchos of Otavalo approx. 2hrs.\r\n12:30 am Cotocachi Leather Market with a stop for lunch at typical Ecuadorian Restaurant\r\n2.00 pm  Peguche Waterfalls\r\n2:30 pm return to Quito\r\n6.00  pm back in Quito', 'Private Transport with Spanish Speaking Driver\r\nVisits as mentioned', 'Breakfast\r\nLunch\r\nBilingual Guide\r\nTips', 'Warm clothing\r\nWaterproof jacket\r\nHat\r\nCamera\r\nExtra snacks and water\r\nSun glasses\r\nSun block', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', 'NOTE: Since Saturday is by far the biggest market day, we definitely recommend you to do that tour on this day\r\n\r\nPrice : $30 per person minimum 4 people, this price is based on shared groups\r\nIf you would like a tour with a Bilingual Licensed Guide the price is $50 per person with minimum 4 people', 1),
(8, 'Mindo Day Tour', '-0.0486157', '-78.793266', 'http://perfectrdp.us/carpedm_webservice/uploads/mindo_img1.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '1', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Mindo is a small town in the Andean foothills of Ecuador. Set in beautiful cloud-forest, it attracts birdwatchers first and foremost, but also has attractions for other tourists. Mindo is located to the north west of Quito. This town was founded in 1861 and the current population is around 3000 inhabitants. Mindo is surrounded by the Mindo-Nambillo Cloud Forest; the forest is home to hundreds of species of birds many of them are in danger of extinction.\r\nPrepare to hike waterfalls, Zip-line and optional visit to Chocolate or Butterfly farm.', 'Prepare to hike waterfalls, Zip-line and optional visit to Chocolate or Butterfly farm.', '60', '1 Day | Mindo', 'We operate with MINIMUM 4 People - $60per person', 'Departure at 7am from Carpedm\'s office we will have breakfast and then set off towards Mindo. The drive takes about two and a half hours. On the way we can stop outside the equator line monument site for anyone who wants to take a quick picture and then carry along the beautiful Mountain roads where you will notice the change in scenery as you go down in altitude.\r\n\r\nOur first stop is the Zip lines or Canopy as they call it here as you are literally above the canopy. There are 10 lines in total and if you are feeling brave you could even try the superman or Butterfly.\r\n\r\nAfter about an hour of adrenalin fueled fun you will head towards the Tarabita which is a cable car that takes you to the start of your waterfall walk. As you walk through the cloud forest you could see a variety of different birds and butterflies. if you bring a swim suit you could take a swim in the crystal clear water.\r\n\r\nOnce you have dried off a little we will head for lunch. After lunch optional activities are either:\r\n\r\n1. Visit to chocolate factory (not included in price).  OR\r\n\r\n2. Visit to butterfly Farm / Hummingbirds (not included in price)\r\n\r\nAfter a fun filled day you will head back to Quito arriving to our office at around 7pm.', 'Lunch\r\nTransport\r\nGuide', 'Breakfast and Extra Snacks/Beverages\r\n$20 entry to ziplining\r\n$5 entry to waterfall walk\r\n$6 Entry to Chocolate factory Tour or\r\n$6 Butterfly Farm\r\nUmpa Lumpas\r\nTIPS', 'Waterproof jacket/rain jacket\r\nsunglasses\r\nsunscreen\r\nbinoculars * nice to have\r\ncamera\r\nwater\r\nsnacks', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', 'We operate with MINIMUM 4 People - $60per person', 1),
(9, 'Papallacta Hotsprings', '-0.0486157', '-78.793266', 'http://perfectrdp.us/carpedm_webservice/uploads/papallacta.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '1,5', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'Drive two hours out of Quito to Papallacta Hot Springs, located on the Cinnamon trail, (65km from Quito) which is the same route that Francisco de Orellana took in 1542 when he crossed the Andean mountain range in search of spices and gold, and discovered the Amazon River. Relax in hot springs of varying temperatures with views of the Antisana volcano. Opt to go on a short hike or get a spa service for an additional cost.', 'Drive two hours out of Quito to Papallacta Hot Springs, located on the Cinnamon trail, (65km from Quito) which is the same route that Francisco de Orellana took in 1542 when he crossed the Andean mountain range in search of spices and gold, and discovered the Amazon River. Relax in hot springs of varying temperatures with views of the Antisana volcano. Opt to go on a short hike or get a spa service for an additional cost.', '70', '1 Day | Papallacta Hotsprings', '$70-100 per person minimum of 2 people\r\nENTRY FEES PUBLIC FEES\r\n\r\nAdults $8.50 USD\r\nKids age 3 to 11 are $4 USD\r\nChildren under 3 are free\r\nSeniors (over age 65) and special needs are $4.00 USD\r\nHours at the public hot pools are 6:00 am to 9:00 pm.\r\n\r\nPrivate Hotel & Spa\r\nSpa pools cost $22 for adults, $14.50 for children, and $11 for seniors.', 'Drive two hours out of Quito to Papallacta Hot Springs, located on the Cinnamon trail, (65km from Quito) which is the same route that Francisco de Orellana took in 1542 when he crossed the Andean mountain range in search of spices and gold, and discovered the Amazon River. Relax in hot springs of varying temperatures with views of the Antisana volcano. Opt to go on a short hike or get a spa service for an additional cost.', 'Guide and Transport', 'Meals/Additional Snacks / Beverages/ Personal items\r\nTIPS\r\nEntry fees', 'Good shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water\r\nBathing Suit\r\nMoney for entrance fees', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$70-100 per person minimum of 2 people\r\nENTRY FEES PUBLIC FEES\r\n\r\nAdults $8.50 USD\r\nKids age 3 to 11 are $4 USD\r\nChildren under 3 are free\r\nSeniors (over age 65) and special needs are $4.00 USD\r\nHours at the public hot pools are 6:00 am to 9:00 pm.\r\n\r\nPrivate Hotel & Spa\r\nSpa pools cost $22 for adults, $14.50 for children, and $11 for seniors.', 1),
(10, 'Antisana Ecological Reserve Day Tour', '-551611', '-78156443', 'http://perfectrdp.us/carpedm_webservice/uploads/antisana_img2.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '1,2', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Antisana Ecological reserve is located about 100km away from Quito hidden in the mystical Andes Mountains. The reserve was created in July 1993, covers an area of 120,000 hectares and has a range of altitude of 1200 meters in the upper Amazon and goes all the way up to 5758 meters above sea level to the Peak of Antisana Volcano. Antisana means Dark Mountain in Quichua and you can certainly see why with the volcano often covered in clouds, but if you are lucky enough to see the glacia capped peak it makes the perfect photo oportunity. Wild horses, dear, specticle bears and Alpacas are just some of the animals that call the reserve their home not to mention the Condors, Cara caras and many other birds.\r\n\r\nOn Carpedm\\\'s day tour you will have the chance to search for Condors, hike to a viewing point where you will have the chance to see a beautiful panoramic view of the national park and the Mica lagoon. Then after hiking back to the car we will bike until we get to where we have lunch.', 'Antisana Ecological reserve is located about 100km away from Quito hidden in the mystical Andes Mountains. The reserve was created in July 1993, covers an area of 120,000 hectares and has a range of altitude of 1200 meters in the upper Amazon and goes all the way up to 5758 meters above sea level to the Peak of Antisana Volcano.', '50', '1 Day | Antisana Ecological Reserve', '$50 per person with minimum 4 people\r\nPrivate tour is also possible at a price of $95 per person (2 people minimum)', '06:30 Meet at meeting point for breakfast, CarpeDM Office\r\n07:00 Transfer to the Antisana Ecological reserve\r\n09:00 Condor Searching\r\n09:30 The guide will give explanation of the area, volcanoes, vegetation, animals  etc.\r\n10:00 Hike up to the Mica Lagoon viewing point\r\n11:00 start the beautiful bike ride\r\n12:30 Stop for Lunch\r\n13:30 Head back to Quito\r\n15:30 Arrive to Quito', 'Breakfast - Lunch\r\nTransport\r\nGuide\r\nMountain Bike with Helmut, Kneepads, Elbowpads * This idoes require a good fitness level.', 'Additional Snacks / Beverages\r\nTIPS', 'Warm clothing\r\nWaterproof jacket\r\nGloves, scarf, hat\r\nHiking boots or trekking shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', 'Minimum 4 people, Private tour (2 people minimum)', 1),
(11, 'Mitad del Mundo - Equator - Middle of the Earth', '-0.0015077', '-78.4551427', 'http://perfectrdp.us/carpedm_webservice/uploads/mitad_del_mund01.jpg', 'https://www.youtube.com/watch?v=QUIDF_BSgZU', '7', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'Drive 25km (16 mi) north of Quito to the Middle of the World, latitude 0º. Stand with one foot in each hemisphere, visit the Intiñan Museum which showcases the immense cultural diversity within this small South American country. On the 00°00’00” magnetic line at the museum experiment with gravity. Later, head up to the Pululahua crater view point, one of the two inhabited volcanic caldera in the world.', 'Drive 25km (16 mi) north of Quito to the Middle of the World, latitude 0º. Stand with one foot in each hemisphere, visit the Intiñan Museum which showcases the immense cultural diversity within this small South American country. ', '40 ', '1 Day | Mitad del Mundo', '$40 per person minimum of 2 people\r\n$60 private 1 person', '8.00  Pick up from your Hotel\r\n9.00  Arrive Monument Equator Line\r\n10:00 Museo Itinan Museo - Guided Tour 45 min.\r\n11:00 Visit Puluhua Crater\r\n12:00 Lunch\r\n13:00 Return to your hotel\r\nPlease be aware this is a sample itinerary and each guide has their own route which may or may not visit these locations', 'Guide and Transport', 'Meals/Additional Snacks / Beverages/ Personal items\r\nTIPS', 'Good shoes\r\nSunglasses\r\nSunscreen\r\nSnacks and water\r\nMoney for entrance fees', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$40 per person minimum of 2 people\r\n$60 private 1 person', 1),
(12, 'Cayambe 2 days', '0.025', '-78.0066762', 'http://perfectrdp.us/carpedm_webservice/uploads/cayambibetter.jpg', 'https://www.youtube.com/watch?v=ZIF4CfF1a9U', '3,8', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Climb the Cayambe (5790m) – the the third highest volcano in Ecuador!  Cayambe is a massive extinct volcano. The peak is Ecuadors third largest and the third highest in the Americas north of the Equator. It is also the highest point on the Equator line (4600m) on the south side. Although technically not very difficult it is a little bit more challenging than Cotopaxi.  Snow storms and high winds are more frequent on Cayambe than on many other peaks.\r\n\r\nPrepare for trekking and glacier climbing.', 'Climb the Cayambe (5790m) – the the third highest volcano in Ecuador!  Cayambe is a massive extinct volcano. The peak is Ecuadors third largest and the third highest in the Americas north of the Equator. \r\nPrepare for trekking and glacier climbing.', '290', '2 Days | Cayambe', 'minimum 2 people', 'Day 1 \r\nDeparture from Quito at 9 am in private transportation. You drive north for about 2 hours to an altitude of 4400 m. If the weather is clear, the beautiful peak from the Cayambe can be already seen from a distance. Then you hike up to the refuge with all your equipment at 4600 m, where you will have a rest and lunch. After that you have some exercise at the glaciers nearby. Back to the refuge you will have dinner and then rest until midnight.\r\n\r\nDay 2\r\nYou get up at midnight, have breakfast and get ready for the climb. Around 1:00am you leave the refuge. The first hour is easy rock climbing before reaching the glacier.As soon as you reach the glacier, you put on crampons and rope up in teams. Each guide will take one or two persons. If all goes well, you reach the summit a 5790 m between 5:00am and 7:00am after a 4 to 6 hours climb. On the top you have about 20 minutes to take a rest, take some pictures and enjoy the spectacular views towards the Amazonian bassin. The return to the refuge takes about 2 to 3 hours. When all groups have returned, you leave for Quito. Return around 2 pm.', 'Bilingual Certified ASEGUIM guide\r\nAccommodation at refuge\r\nTransportation from Quito to Cayambe and back\r\nEntry Fee\r\nMeals from Lunch day 1 until breakfast at 12 pm\r\nWaterproof hiking boots\r\nWaterproof pants and jacket\r\nFleece pants and jacket\r\nOuter gloves\r\nBalaclava cap\r\nGaiters\r\nCrampons\r\nIce ax\r\nHeadlamp\r\nSleeping bag', 'Additional snacks and drinks\r\nTips', 'Long sleeved cotton shirt\r\nSun block\r\nSmall day pack\r\nOptional – but nice to have:\r\nCotton underwear\r\nSun glasses Thermos bottle (hot tea provided at the refuge)\r\nThick socks for hiking\r\n3 AAA batteries for the headlamp\r\nThermal underwear\r\nLining gloves\r\nToiletries\r\nChange of clothes for after the climb\r\nWind/ Rainjacket\r\nOriginal passport\r\nCamera Snacks and energy drinks for the climb', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$290 US per person with minimum 2 people', 1);
INSERT INTO `tour_details` (`id`, `tour_name`, `tour_latitude`, `tour_langitude`, `tour_image`, `tour_video`, `tour_activites`, `tour_check_available`, `tour_overview`, `tour_shortdesc`, `tour_price`, `how_many_days`, `tour_peoples_minimum`, `tour_itinerary`, `tour_whats_included`, `tour_whats_not_included`, `tour_what_to_bring`, `tour_cancel_text`, `tour_policies`, `type`) VALUES
(13, 'Chimborazo 2 days', '-1.4693017', '-78.8344492', 'http://perfectrdp.us/carpedm_webservice/uploads/chimborazo.jpg', 'https://www.youtube.com/watch?v=RC8k3qUMO2k', '3,8', '2018-01-31,2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-09,2018-02-10,2018-02-15,2018-02-19,2018-02-22,2018-02-24,2018-02-26,2018-02-27', 'The ultimate challenge – climb the highest mountain in Ecuador!\r\n\r\nFor many years the Chimborazo (6310m) was thought to be the highest mountain in the world. Due to the height, proper acclimatization is essential- so you must have been in the sierra for at least a week and climbed above 5000 meters (preferably Cotopaxi) in that time. Snow up to the knees is not uncommon and a high level of fitness is required as the summit climb will certainly push you to your physical limits.\r\n\r\nPrepare for trekking and glacier climbing, not for the faint of heart.', 'The ultimate challenge – climb the highest mountain in Ecuador!\r\n\r\nFor many years the Chimborazo (6310m) was thought to be the highest mountain in the world. Due to the height, proper acclimatization is essential- so you must have been in the sierra for at least a week and climbed above 5000 meters (preferably Cotopaxi) in that time. ', '430', '2 Days | Chimborazo', '$430 US per person 1 person\r\n$295 US per person with minimum 2 or 4 people\r\n$355 US per person with 3 or 5 people\r\n$275 US per person with 6 or 8 peopler', 'Day 1 \r\nDeparture from Quito at 9 am in private transportation. You drive south for about 5 hours until you reach the first refuge of the Volcano Chimborazo at 4800 m. You hike up for 200m with all your equipment to the second refuge at 5000 m. You get lunch, will go through the details with the guides for the next days climb and have dinner at 6 pm. Then you can rest until 11 pm.\r\n\r\nDay 2\r\nYou get up, have breakfast and get ready for the climb. Around 12:00 am you leave the refuge. As soon as you reach the glacier, you put on crampons and rope up in teams. Each guide will take one or two persons. If all goes well, you reach the summit called Whymper at 6310 m between 8:00am and 9:00am after a 7 to 8 hours climb. On the top you have about 20 minutes to take a rest, take some pictures and enjoy the gorgeous scenery of the Andean mountains. The return to the refuge takes about 3 to 4 hours. You leave for Quito after picking up your things at the refuge Return around 4 to 5 pm.', 'Bilingual Certified ASEGUIM guide\r\nAccommodation at refuge\r\nTransportation from Riobamba to Chimborazo and back\r\nEntry Fee\r\nMeals from Lunch day 1 until breakfast at 12 pm\r\nwaterproof hiking boots\r\nwaterproof pants and jacket\r\nfleece pants and jacket\r\nouter gloves\r\nbalaclava cap\r\ngaiters\r\ncrampons\r\nice ax\r\nheadlamp\r\nsleeping bag', 'Additional snacks and drinks\r\nTransportation from Quito to Riobamba and Back\r\nTips', 'Long sleeved cotton shirt\r\nSun block\r\nSmall day pack\r\nOptional – but nice to have:\r\nCotton underwear\r\nSun glasses Thermos bottle (hot tea provided at the refuge)\r\nThick socks for hiking\r\n3 AAA batteries for the headlamp\r\nThermal underwear\r\nLining gloves\r\nToiletries\r\nChange of clothes for after the climb\r\nWind/ Rainjacket\r\nOriginal passport\r\nCamera Snacks and energy drinks for the climb', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$430 US per person 1 person\r\n$295 US per person with minimum 2 or 4 people\r\n$355 US per person with 3 or 5 people\r\n$275 US per person with 6 or 8 peopler', 1),
(14, 'Cotopaxi 2 or 3 day climb', '-0.6836682', '-78.4547856', 'http://perfectrdp.us/carpedm_webservice/uploads/teamcarpedm2.jpg', 'https://www.youtube.com/watch?v=cfc7yfnxVRA', '1', '2018-02-01,2018-02-02,2018-02-03,2018-02-05,2018-02-06,2018-02-07,2018-02-08,2018-02-28,2018-02-10,2018-02-16,2018-02-19,2018-02-25,2018-02-24,2018-02-26,2018-02-27', 'Climb one of the highest active volcanoes in the world at 5897 m! Due to its perfectly symmetrical cone, covered in a thick blanket of snow and ice, the Cotopaxi is one of the tourist highlights in Ecuador and it’s most visited and climbed volcano.   The climb to the summit occurs during the night; this allows watching the sunrise from the summit and displays unsurpassed views of Quito to the North and Chimboroazo and Tungurahua to the south. At the top you have a magnificent view into the snow capped crater where it is possible to see steam emissions. The ascent departs from the refuge at 4800m normally * (the refuge is currently under renovation, scheduled to open in December, base camp now is at 3,800 m) and climbs through a mixture of volcanic sand, snow, and glacier to the summit. Although the climb is not classified as technically difficult, it is absolutely necessary to go with professional guides and specialized glacier hiking equipment like ropes, ice-axes and crampons.The climber must be in good physical condition and must already have had a good acclimatization. The ascent takes between 6-8 hours while the descent takes 3-4 hours.', 'Climb one of the highest active volcanoes in the world at 5897 m! Due to its perfectly symmetrical cone, covered in a thick blanket of snow and ice, the Cotopaxi is one of the tourist highlights in Ecuador and it’s most visited and climbed volcano.    ', '250', '2 or 3 Days | Cotopaxi ', '$250 US per person with a minimum group of 2 people\r\n$420 US per person for a minimum group of 2 people\r\nAsk us about alternative options for acclimatization', 'Itinerary 2 Days:\r\nDay 1 \r\nDeparture from Quito at 9 am in private transportation to the Cotopaxi National Park. After a  2 -2 ½-hours-drive south you arrive at the parking lot of the refuge in the Cotopaxi National Park at 4500 m. * (Refuge is currently under renovation, scheduled to open in December. Base camp is now at 3,800 m.  So no practice on the glacier just hiking nearby. )From there you hike up for about one hour to the Jose Rivas Refuge at 4800m.  After lunch, you do some climbing exercises on the glaciers nearby. Back to the refuge you will have dinner and then rest until midnight.\r\n\r\nDay 2\r\n\r\n***Current adjustment in program, means you get up at 10pm for breakfast, drive for 25 minutes then begin your push to the summit.*** Other program with stay in the refuge should start again in December 2014.\r\nYou get up at midnight, have breakfast and get ready for the climb. Around 1:00am you leave the refuge. As soon as you reach the glacier, you put on crampons and rope up in teams. Each guide will take one or two persons. If all goes well, you reach the summit a 5897 m between 6:00am and 8:00am. The return to the refuge takes about 3 hours. When all groups have returned, you leave for Quito. Return around 1 to 2 pm.\r\n\r\nItinerary 3 Days:\r\n\r\nDay 1 \r\nDeparture from Quito at 8 am in private transportation to the Cotopaxi National Park. After a 2 ½ – hours-drive south you arrive the campsite, where you will stay the first night 3800 m. After setting up the tents and lunch you hike up the Ruminahui, a mountain situated close to the Cotopaxi in the National Park. The climb takes about 5 to 6 up to 4712 m and you will get recompensed for your effort with stunning views at the volcanoes Cotopaxi and Sinchilagua. After returning to the campsite you have dinner and time to rest.\r\n\r\nDay 2\r\nAfter breakfast you drive up to the parking lot of the Cotopaxi refuge at 4500m. From there you hike up for about one hour to the Jose Rivas Refuge at 4800m. After lunch, you do some climbing exercises on the glaciers nearby. Back to the base camp you will have dinner and then rest until 1opm.\r\n\r\nDay 3\r\n\r\n***Current adjustment in program, means you get up at 10pm for breakfast, drive for 25 minutes then begin your push to the summit. Last meal for the program so make sure you eat, you’ll need the energy *** Other program with stay in the refuge should start again in December 2014. You get up at midnight, have breakfast and get ready for the climb. Around 1:00am you leave the refuge. As soon as you reach the glacier, you put on crampons and rope up in teams. Each guide will take one or two persons. If all goes well, you reach the summit a 5897 m between 6:00am and 8:00am. The return to the refuge takes about 3 hours. When all groups have returned, you leave for Quito. Return around 1 to 2 pm\r\n\r\n', 'Bilingual Certified ASEGUIM guide\r\nAccommodation at refuge\r\nTransportation from Quito to Cayambe and back\r\nEntry Fee\r\nMeals from Lunch day 1 until breakfast at 12 pm\r\nwaterproof hiking boots\r\nwaterproof pants and jacket\r\nfleece pants and jacket\r\nouter gloves\r\nbalaclava cap\r\ngaiters\r\ncrampons\r\nice ax\r\nheadlamp\r\nsleeping bag', 'Additional snacks & drinks\r\nTips', 'Long sleeved cotton shirt\r\nSun block\r\nsmall day pack\r\nsmall pad-lock\r\nOptional – but nice to have:\r\nCotton underwear\r\nSun glasses Thermos bottle (hot tea provided at the refuge)\r\nThick socks for hiking\r\n3 AAA batteries for the headlamp\r\nThermal underwear\r\nLining gloves\r\nToiletries\r\nChange of clothes for after the climb\r\nWind/ Rainjacket\r\nOriginal passport\r\nCamera Snacks and energy drinks for the climb', 'Should you need to cancel your trip, you must notify us in writing immediately. Deposits are non-refundable, though if you cancel more than 90 days prior to tour departure date, the deposit is refundable.  Less than 90 days prior to departure, all monies paid are 100% non-refundable, nontransferable. Name changes are not permitted. Insurable risks may be covered under trip cancellation insurance policies, if purchased. We will not grant partial refunds for any unused trip arrangements-voluntarily missed meals, sightseeing, transport, etc-after the trip has commenced, or any refunds to trip members who do not complete any portion of the itinerary for whatever reason. All air tickets are non-refundable and valid only for the flight(s) indicated. We may cancel departures if forced to do so by circumstances such as war, civil or political unrest or what is commonly referred to as force majeure. In these instances we will refund all passengers in full if cancellation takes place more than 60 days prior to tour start date. If cancellation occurs within the 60 day period, we will offer to postpone your trip to another departure of the same tour code within 12 months of the original tour start date or, if circumstances do not permit, an alternative will be offered at that time. We will not be responsible for costs associated with re-issuance or extension of visas, airline change fees, or for any compensation. We strongly recommend that all travellers purchase trip cancellation insurance, as this may provide coverage under such circumstances. We will not be responsible for any expenses incurred, such as visas, vaccinations, independently purchase airfare, or any compensation.', '$250 US per person with a minimum group of 2 people\r\n$420 US per person for a minimum group of 2 people\r\nAsk us about alternative options for acclimatization', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `sno` bigint(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `langtitude` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `activation` tinyint(1) NOT NULL,
  `profile_id` varchar(100) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 = fb login, 2 = google login.',
  `imgurl` varchar(1000) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `block_status` int(11) NOT NULL COMMENT '0 - Unblocked User, 1 - Blocked User',
  `country_code` varchar(50) NOT NULL,
  `dialing_code` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL COMMENT '0 - Male, 1 - Female',
  `mailing_address` varchar(255) NOT NULL,
  `user_online` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`sno`, `first_name`, `last_name`, `email`, `password`, `latitude`, `langtitude`, `phonenumber`, `country`, `activation`, `profile_id`, `type`, `imgurl`, `dob`, `created_date`, `block_status`, `country_code`, `dialing_code`, `gender`, `mailing_address`, `user_online`) VALUES
(1, 'TestF', 'TestL', 'test123@gmail.com', '123123', '-0.1865938', '-78.570625', '', '', 0, '1037118599725144', 0, 'https://graph.facebook.com/1613902785295322/picture?type=large', '', '2017-09-16 03:19:01', 0, '', '', 0, '', 0),
(3, 'Sasi', 'Kumar', 'sasi@rgmobiles.com', '32ad5b21e197d27f2699b3fbdbf0b0ef', '0', '0', '', '', 0, 'sasi@rgmobiles.com', 0, '', '', '2017-09-16 07:03:38', 0, '', '', 0, '', 0),
(9, 'Kabil', 'Dev', 'kabil@test.com', 'cc03e747a6afbbcbf8be7668acfebee5', '0', '0', '', '', 0, 'kabil@test.com', 0, 'www.gogole.com', '', '2017-09-18 08:25:22', 0, '', '', 0, '', 1),
(11, 'Ares', 'Vampire', 'aresvampire@mail.com', '245bb07cb794a2c77ffb05fb896eb7a3', '0', '0', '', '', 0, 'aresvampire@mail.com', 0, '', '', '2017-09-19 11:00:18', 0, '', '', 0, '', 1),
(16, 'test', 'user', 'testuser@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0', '0', '', '', 0, 'testuser@gmail.com', 0, '', '', '2017-09-21 02:09:09', 0, '', '', 0, '', 0),
(21, 'Nathiya RG', 'Nathiya RG', 'nathiya@rgmobiles.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'nathiya@rgmobiles.com', 0, 'https://graph.facebook.com/272205793296707/picture?type=large', '', '2017-10-03 06:31:23', 0, '', '', 0, '', 1),
(13, 'Kabil Dev', 'Kabil Dev', 'hai4angel@gmail.com', '', '0', '0', '', '', 0, '1613902785295322', 0, 'https://graph.facebook.com/1613902785295322/picture?type=large', '', '2017-09-20 11:57:14', 0, '', '', 0, '', 1),
(15, 'scott\nscott', 'scott', 'kabil.dev@rgmobiles.com', '123123', '0', '0', '', '', 0, 'kabil.dev@rgmobiles.com', 0, '', '', '2017-09-20 15:25:05', 0, '', '', 0, '', 0),
(18, 'Kiruthika Palanisamy', 'Kiruthika Palanisamy', 'kiru_skcet@yahoo.in', '', '0', '0', '', '', 0, '838915729602208', 0, 'https://graph.facebook.com/838915729602208/picture?type=large', '', '2017-09-21 09:25:33', 0, '', '', 0, '', 1),
(19, 'Paul Picasso', 'Paul Picasso', 'carpedm.adventures@gmail.com', '', '0', '0', '', '', 0, '666468453548520', 0, 'https://graph.facebook.com/666468453548520/picture?type=large', '', '2017-09-21 14:08:33', 0, '', '', 0, '', 1),
(20, 'testingf', 'testingl', 'trsthj@gmail.com', '', '11.12123164564', '10.2236666', '', '', 0, '11246546479679', 0, 'http://www.facebook.com/testphoto.jpg', '', '2017-09-26 05:29:43', 0, '', '', 0, '', 1),
(22, 'Govindaraj Kalyanasundaram', 'Govindaraj Kalyanasundaram', 'rajpgovind@gmail.com', '', '0', '0', '', '', 0, '762089383997172', 0, 'https://graph.facebook.com/762089383997172/picture?type=large', '', '2017-10-14 13:55:50', 0, '', '', 0, '', 0),
(36, 'wwww', 'wwwww', 'test@gmail.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'test@gmail.com', 0, '', '', '2017-11-10 10:41:21', 0, '', '', 0, '', 1),
(26, 'Saravanan', 'sarwan', 'saravana@rgmobiles.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'saravana@rgmobiles.com', 0, '', '', '2017-10-21 05:12:53', 0, '', '', 0, '', 0),
(30, 'John Raja', 'John Raja', 'johnrajahkkd@gmail.com', '', '0', '0', '', '', 0, '1497397327042063', 0, 'https://graph.facebook.com/1497397327042063/picture?type=large', '', '2017-10-27 11:45:10', 0, '', '', 0, '', 0),
(28, 'paul', 'parreno', 'paul@carpedm.ca', 'd4c4ff5e3da88861567d53984af574ea', '0', '0', '', '', 0, 'paul@carpedm.ca', 0, '', '', '2017-10-22 11:58:06', 0, '', '', 0, '', 0),
(34, 'user', 'Admin', 'ss@gmail.com', '123123', '0', '0', '', '', 0, 'ss@gmail.com', 0, '', '', '2017-11-10 04:20:20', 0, '', '', 0, '', 1),
(31, 'hello ', 'Semitic', 'hello@gmail.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'hello@gmail.com', 0, '', '', '2017-11-02 10:00:51', 0, '', '', 0, '', 0),
(35, 'AAAAA', 'BBBBB', 'ccc@gmail.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'ccc@gmail.com', 0, '', '', '2017-11-10 06:12:26', 0, '', '', 0, '', 0),
(37, 'Vignesh', 'Varan', 'vigneshmcaklk@gmail.com', '6a11ae1a652ecb376f98be7b34abd329', '0', '0', '', '', 0, 'vigneshmcaklk@gmail.com', 0, '', '', '2017-12-23 06:54:37', 0, '', '', 0, '', 0),
(38, 'gnana', 'vel', 'gnanam105@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', '0', '0', '', '', 0, 'gnanam105@gmail.com', 0, '', '', '2018-01-22 12:24:17', 0, '', '', 0, '', 0),
(39, 'John', 'Raja', 'johnraja@rgmobiles.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'johnraja@rgmobiles.com', 0, '', '', '2018-01-23 06:07:32', 0, '', '', 0, '', 1),
(40, 'Ghana', 'bel', 'iosgnanavel@gmail.com', '4297f44b13955235245b2497399d7a93', '0', '0', '', '', 0, 'iosgnanavel@gmail.com', 0, '', '', '2018-01-24 14:25:04', 0, '', '', 0, '', 0),
(41, 'Vidhya Vijayakumar', 'Vidhya Vijayakumar', 'vidhya.vijay94@gmail.com', '', '0', '0', '', '', 0, '954211424730591', 0, 'https://graph.facebook.com/954211424730591/picture?type=large', '', '2018-01-25 02:25:27', 0, '', '', 0, '', 0),
(42, 'Vidhya', 'Vijaya Kumar ', 'Vidhya.vijay1994@gmail.com', 'd27d320c27c3033b7883347d8beca317', '0', '0', '', '', 0, 'Vidhya.vijay1994@gmail.com', 0, '', '', '2018-01-25 04:18:03', 0, '', '', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_chat_list`
--

CREATE TABLE `user_chat_list` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL,
  `user_from_id` varchar(255) NOT NULL,
  `user_to_id` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_chat_list`
--

INSERT INTO `user_chat_list` (`id`, `tour_id`, `user_from_id`, `user_to_id`, `message_content`, `created_date`) VALUES
(26, 1, 'testuser@gmail.com', 'kabil@test.com', 'hi kabil', '2017-10-03 06:02:22'),
(27, 1, '272205793296707', 'kabil@test.com', 'hi kabil', '2017-10-03 06:46:16'),
(28, 1, '272205793296707', '1037118599725144', 'hi test user', '2017-10-03 06:46:40'),
(29, 1, '838915729602208', '1037118599725144', 'hai', '2017-10-04 08:14:59'),
(30, 1, 'saravana@rgmobiles.com', '1037118599725144', 'hi', '2017-10-21 09:14:01'),
(31, 1, 'mm@gmail.com', 'sasi@rgmobiles.com', 'good', '2017-10-22 08:38:21'),
(32, 1, 'ram@gmail.com', 'kabil@test.com', 'good', '2017-10-26 04:03:47'),
(33, 1, 'ram@gmail.com', 'sasi@rgmobiles.com', 'hi', '2017-10-26 04:04:02'),
(34, 1, 'mm@gmail.com', '1037118599725144', 'hi there', '2017-10-27 11:52:23'),
(36, 1, 'mm@gmail.com', 'sasi@rgmobiles.com', 'Hahaha', '2017-10-31 09:12:59'),
(37, 1, 'mm@gmail.com', 'kabil@test.com', 'hehsjdgshhshsjs gshsjsjs gshsjsjs shshshhs shshshhs heheje', '2017-10-31 10:59:00'),
(38, 1, 'mm@gmail.com', '1037118599725144', 'ghjj@gmail.com hkjbcxccjkklfhlkhcfjkjfhiufft', '2017-10-31 11:54:26'),
(39, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 04:44:09'),
(40, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 04:44:15'),
(41, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 04:46:26'),
(42, 1, 'mm@gmail.com', '1037118599725144', 'check out WhatsApp Messenger for your smartphone and I will be come and work and also finish the job done right now and then ttytttttyyvxbxmbvhxbbjfb+ghjj@gmail.com d', '2017-11-01 04:48:40'),
(43, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:01:56'),
(44, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:02:36'),
(45, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:04:17'),
(46, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:08:21'),
(47, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:29:27'),
(48, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:30:23'),
(49, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:32:02'),
(50, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:34:09'),
(51, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ddddddd', '2017-11-01 05:35:35'),
(52, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Uuuuuu', '2017-11-01 05:37:11'),
(53, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Mmm', '2017-11-01 05:42:17'),
(54, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 05:47:27'),
(55, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai', '2017-11-01 06:01:18'),
(56, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ssssss', '2017-11-01 06:06:01'),
(57, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ssssssyyyyy', '2017-11-01 06:06:11'),
(58, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Checkchat', '2017-11-01 06:06:49'),
(59, 1, '250625035463533', '1037118599725144', 'Qqqqqq', '2017-11-01 06:13:53'),
(60, 1, '250625035463533', '1037118599725144', 'MessageCheck', '2017-11-01 06:18:07'),
(61, 1, '250625035463533', '1037118599725144', 'Oo', '2017-11-01 06:19:44'),
(62, 1, '250625035463533', '1037118599725144', 'Dddddd', '2017-11-01 06:22:48'),
(63, 1, '250625035463533', '1037118599725144', 'Lkmlkm', '2017-11-01 06:24:37'),
(64, 1, '250625035463533', '1037118599725144', 'Raja', '2017-11-01 06:25:12'),
(65, 1, '250625035463533', '1037118599725144', 'Raja', '2017-11-01 06:25:31'),
(66, 1, '250625035463533', '1037118599725144', 'Raja', '2017-11-01 06:25:33'),
(67, 1, '1502447696537026', '1037118599725144', 'U7u8u8u7', '2017-11-01 06:40:20'),
(68, 1, '1502447696537026', '1037118599725144', 'Gggg', '2017-11-01 07:08:06'),
(69, 1, '1502447696537026', '1037118599725144', 'Wtwfrrw\nW\nW\nW\nW\nW\nW\nW', '2017-11-01 07:09:08'),
(70, 1, '250625035463533', '1037118599725144', 'Something new', '2017-11-01 07:55:55'),
(71, 1, '250625035463533', 'kabil@test.com', 'Check123123', '2017-11-01 07:56:51'),
(72, 1, '250625035463533', 'kabil@test.com', 'Check123123', '2017-11-01 07:57:25'),
(73, 1, '250625035463533', '1037118599725144', 'Lllll', '2017-11-01 07:57:45'),
(74, 1, '250625035463533', '1037118599725144', '48YKwsPRqk6YdyalLrOtGbAqxXJ2bh', '2017-11-01 08:53:19'),
(75, 1, '250625035463533', '1037118599725144', 'Text', '2017-11-01 09:40:00'),
(76, 1, '250625035463533', '1037118599725144', 'Sfsffsfs\nS\nS\nS\nS\nS\nS\nS\nS\nS\nS\nS\nS\n\nS\nS\nS\nS\nS\nS\n\nS\nS\nS\nS', '2017-11-01 09:56:05'),
(77, 1, '250625035463533', '1037118599725144', '48YKwsPRqk6YdyalLrOtGbAqxXJ2bhfffff', '2017-11-01 10:20:26'),
(78, 1, '250625035463533', '1037118599725144', 'RohitSharma', '2017-11-01 10:22:26'),
(79, 1, '250625035463533', '1037118599725144', 'Val\nD\nD\nD\nD\n', '2017-11-01 11:23:36'),
(80, 1, '250625035463533', '1037118599725144', 'CreatSomthingNew', '2017-11-01 11:53:12'),
(81, 1, 'mm@gmail.com', '1037118599725144', 'good morning', '2017-11-01 11:57:04'),
(82, 1, '250625035463533', '1037118599725144', 'MefsfdsRa', '2017-11-01 11:59:47'),
(83, 1, '250625035463533', '1037118599725144', 'CreateNewsomthing................\nAaaa\nAa\nA\nA\nA\nA\nA\n\n\nA\n\n\nA\n\n\n\nA\n\nA\nA', '2017-11-01 12:06:04'),
(84, 1, '250625035463533', '1037118599725144', 'Check', '2017-11-01 12:45:11'),
(85, 1, '250625035463533', '1037118599725144', 'Ramesh', '2017-11-01 12:48:21'),
(86, 1, '250625035463533', '1037118599725144', 'Sarwan', '2017-11-01 12:48:28'),
(87, 1, '250625035463533', '1037118599725144', 'Raja', '2017-11-01 12:48:35'),
(88, 1, '250625035463533', '1037118599725144', 'Riyas', '2017-11-01 12:48:43'),
(89, 1, '250625035463533', 'sasi@rgmobiles.com', 'Test', '2017-11-01 13:11:33'),
(90, 1, '250625035463533', '1037118599725144', 'Facebook', '2017-11-02 04:37:13'),
(91, 1, '1964072657174292', '1037118599725144', 'Hello ', '2017-11-02 04:56:17'),
(92, 1, '1964072657174292', '1037118599725144', 'Hello ', '2017-11-02 04:56:29'),
(93, 1, '1964072657174292', '1037118599725144', 'Hello  \n\n\n\n\n\n\n\n\n\n\n\nTtttt', '2017-11-02 05:24:42'),
(94, 1, '1964072657174292', '1037118599725144', ' Check your email for a great app ', '2017-11-02 05:56:00'),
(95, 1, '250625035463533', '1037118599725144', 'WhatsApp', '2017-11-02 07:21:10'),
(96, 1, '250625035463533', 'sasi@rgmobiles.com', 'Raja', '2017-11-02 07:22:08'),
(97, 1, '250625035463533', 'sasi@rgmobiles.com', 'Check', '2017-11-02 07:22:22'),
(98, 1, '1964072657174292', '1037118599725144', 'Hello my beautiful ', '2017-11-02 07:23:12'),
(99, 1, '250625035463533', '1037118599725144', 'Twitter', '2017-11-02 07:30:38'),
(100, 1, '250625035463533', '1037118599725144', 'Gmail', '2017-11-02 07:32:17'),
(101, 1, '250625035463533', '1037118599725144', 'Syysyyys\n', '2017-11-02 07:46:00'),
(102, 1, '250625035463533', '1037118599725144', 'Zzzzzz', '2017-11-02 07:47:10'),
(103, 1, '1964072657174292', '1037118599725144', 'Test ', '2017-11-02 08:44:16'),
(104, 1, '1964072657174292', '1037118599725144', 'Next ', '2017-11-02 08:53:03'),
(105, 1, 'mm@gmail.com', '1037118599725144', 'hi test msg', '2017-11-02 08:57:30'),
(106, 1, 'mm@gmail.com', '1037118599725144', 'first test', '2017-11-02 08:58:59'),
(107, 1, '1964072657174292', 'sasi@rgmobiles.com', 'Hello nice ', '2017-11-02 09:02:00'),
(108, 1, 'sasi@rgmobiles.com', 'kabil@test.com', 'hi wt u do.', '2017-11-02 09:11:21'),
(109, 1, 'sasi@rgmobiles.com', '1037118599725144', 'good', '2017-11-02 10:15:41'),
(110, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Fffff', '2017-11-02 10:38:54'),
(111, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hai\n', '2017-11-02 10:40:45'),
(112, 1, '1037118599725144', 'kabil.dev@test.com', 'Fgsffff', '2017-11-02 10:43:50'),
(113, 1, '250625035463533', 'kabil.dev@test.com', 'Test', '2017-11-02 10:46:12'),
(114, 1, '250625035463533', 'kabil.dev@test.com', 'Check', '2017-11-02 10:46:24'),
(115, 1, '250625035463533', 'kabil.dev@test.com', 'Www w e e\nE\nR\nR\nT\nY\nU\nU\nU\nI\nI\nI\nO\nO\nO\nO\n\nO\nOo\n\nO', '2017-11-02 10:46:57'),
(116, 1, '250625035463533', 'kabil.dev@test.com', 'Hai', '2017-11-02 11:55:11'),
(117, 1, '250625035463533', 'kabil.dev@test.com', 'Hai Friend', '2017-11-02 12:51:05'),
(118, 1, '250625035463533', 'kabil.dev@test.com', 'Check', '2017-11-02 12:51:16'),
(119, 1, '1964072657174292', 'kabil.dev@test.com', 'Tftftfyt', '2017-11-03 00:55:19'),
(120, 1, '1964072657174292', 'kabil.dev@test.com', 'Hgvgfcff', '2017-11-03 00:55:28'),
(121, 1, '250625035463533', 'kabil.dev@test.com', 'Wwww', '2017-11-03 02:16:44'),
(122, 1, '250625035463533', 'kabil.dev@test.com', 'Oooooooo', '2017-11-03 02:28:06'),
(123, 1, '1964072657174292', 'kabil.dev@test.com', 'TestAnd check', '2017-11-03 03:05:58'),
(124, 1, '250625035463533', 'kabil.dev@test.com', 'Hahaha', '2017-11-03 04:28:28'),
(125, 1, '1964072657174292', 'kabil.dev@test.com', 'Boo Boo', '2017-11-03 06:37:33'),
(126, 1, '1964072657174292', 'kabil.dev@test.com', 'Kabil check', '2017-11-03 08:21:37'),
(127, 1, '250625035463533', 'kabil.dev@test.com', 'Hi just test to chat', '2017-11-03 09:10:56'),
(128, 1, '1964072657174292', 'kabil.dev@test.com', 'Aaaaaa', '2017-11-07 02:58:06'),
(129, 1, '1964072657174292', 'kabil.dev@test.com', 'Uuuuu', '2017-11-07 02:58:12'),
(130, 1, '1964072657174292', 'kabil.dev@test.com', 'Hiii ', '2017-11-07 05:17:34'),
(131, 1, '1964072657174292', 'kabil.dev@test.com', 'Hello ', '2017-11-07 11:34:23'),
(132, 1, '1964072657174292', 'kabil.dev@test.com', 'www.perfectrdp.us/eamr.life', '2017-11-07 11:34:31'),
(133, 1, '1964072657174292', 'kabil.dev@test.com', 'T\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nH\nHokoksofgj\nTjngjl;hm', '2017-11-08 02:54:14'),
(134, 1, '1964072657174292', 'kabil.dev@test.com', 'Ssss', '2017-11-09 05:03:52'),
(135, 1, '1964072657174292', 'kabil.dev@test.com', 'J', '2017-11-09 05:03:55'),
(136, 5, '250625035463533', 'kabil.dev@test.com', 'Ddddd', '2017-11-10 06:20:09'),
(137, 5, '250625035463533', 'kabil.dev@test.com', 'Ddddd\n\n\n', '2017-11-10 06:20:21'),
(138, 5, '250625035463533', 'kabil.dev@test.com', 'Dai', '2017-11-10 06:20:40'),
(139, 1, '250625035463533', 'kabil.dev@test.com', 'Kkkk', '2017-11-10 06:27:07'),
(140, 1, '1964072657174292', 'kabil.dev@test.com', 'Uguguhyggh', '2017-11-11 04:07:33'),
(141, 1, '1964072657174292', 'kabil.dev@test.com', 'Zzzzz', '2017-11-11 04:07:37'),
(142, 1, '1964072657174292', 'kabil.dev@test.com', 'Wwrthyyuui', '2017-11-11 04:07:41'),
(143, 1, '1964072657174292', 'kabil.dev@test.com', 'Jjjjjj', '2017-11-11 04:07:45'),
(144, 1, '1964072657174292', 'kabil.dev@test.com', 'Test', '2017-11-11 10:54:30'),
(145, 1, '1964072657174292', 'kabil.dev@test.com', 'D\nD\nD\nD\nD\nD\nD\nD', '2017-11-11 10:54:39'),
(146, 1, '250625035463533', 'kabil.dev@test.com', 'Sssss', '2017-11-14 04:54:43'),
(147, 1, '250625035463533', 'kabil.dev@test.com', '2e3e3', '2017-11-14 04:54:47'),
(148, 1, '1964072657174292', 'kabil.dev@test.com', 'Test\nHh\nH\nH\nH\nHh\nH\nH', '2017-11-15 07:36:54'),
(149, 1, '1964072657174292', 'kabil.dev@test.com', 'Jjjjj', '2017-11-16 04:44:59'),
(150, 1, '1964072657174292', 'kabil.dev@test.com', 'Hi test check\n', '2017-11-17 00:00:58'),
(151, 1, '1964072657174292', 'kabil.dev@test.com', 'Check my chat ', '2017-11-17 00:18:27'),
(152, 1, 'kk@gmail.com', '1037118599725144', 'hhh', '2017-11-17 00:33:20'),
(153, 1, 'kk@gmail.com', '1037118599725144', 'vshnf', '2017-11-17 00:33:30'),
(154, 1, 'test@gmail.com', '1037118599725144', 'good', '2017-11-17 02:23:06'),
(155, 1, 'test@gmail.com', '1037118599725144', 'Okay', '2017-11-17 02:23:19'),
(156, 1, '1502447696537026', 'kabil.dev@test.com', 'Hii', '2017-11-17 02:33:14'),
(158, 1, '1502447696537026', 'kabil.dev@test.com', 'Take it', '2017-11-17 02:34:07'),
(159, 1, '1964072657174292', 'kabil.dev@test.com', 'Hiii\n', '2017-12-12 11:40:35'),
(160, 1, '1964072657174292', 'kabil.dev@test.com', 'Text', '2017-12-12 11:40:48'),
(161, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ggg', '2017-12-18 11:02:25'),
(162, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', ';njslnnn\nG\nG\nG\nG\nG\nG\nG\nG', '2017-12-18 11:06:00'),
(163, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Xxxx', '2017-12-18 11:08:40'),
(164, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Gfhhhthr', '2017-12-18 11:24:22'),
(165, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Rtf ft girl\nG\nG\nG\nGgg\n\nG\nG\nG\nG\n', '2017-12-18 11:55:05'),
(166, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'ceb6c970658f31504a901b89dcd3e461', '2017-12-18 11:58:21'),
(167, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ruddy\nFt\nG\nG\nG\n\nGg\ngkgde', '2017-12-19 02:23:10'),
(168, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', '2', '2017-12-19 02:23:24'),
(169, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Hiii', '2017-12-19 07:20:07'),
(170, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'Ugcjchougcugcuihcihv iugiug', '2017-12-22 02:03:38'),
(171, 1, 'vigneshmcaklk@gmail.com', '1037118599725144', 'hii', '2017-12-23 07:09:59'),
(172, 1, 'vigneshmcaklk@gmail.com', '1037118599725144', 'good', '2017-12-23 07:10:03'),
(173, 1, '1964072657174292', 'kabil.dev@test.com', 'Hfjhhhhh', '2017-12-23 10:23:29'),
(174, 1, '1964072657174292', 'kabil.dev@test.com', 'Assss', '2017-12-23 10:25:24'),
(175, 1, '1964072657174292', 'kabil.dev@test.com', 'Xxxx', '2017-12-26 03:04:05'),
(176, 1, 'sasi@rgmobiles.com', 'kabil.dev@test.com', 'G\nG\nG\nG\nG\nGg\nG\nG\nG', '2017-12-26 03:16:53'),
(197, 1, '1964072657174292', 'kabil.dev@test.com', 'Lkjklgklgfkl', '2018-01-22 08:33:37'),
(198, 1, 'test@gmail.com', '1037118599725144', 'good morning', '2018-01-22 08:39:01'),
(199, 1, 'nathiya@rgmobiles.com', '1037118599725144', 'Happy', '2018-01-22 09:52:15'),
(200, 1, '1964072657174292', 'kabil.dev@test.com', 'Sssss', '2018-01-23 03:28:09'),
(201, 1, 'nathiya@rgmobiles.com', '1037118599725144', 'hi hello how  are you', '2018-01-23 06:35:07'),
(202, 1, '1964072657174292', 'kabil.dev@test.com', 'Test', '2018-01-24 10:51:32'),
(203, 1, '1964072657174292', 'kabil.dev@test.com', 'Text', '2018-01-24 10:51:40'),
(204, 1, '237767340098069', 'kabil.dev@test.com', 'Dxgdxgxg', '2018-01-24 14:08:03'),
(205, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Hghgghghghggh', '2018-01-24 15:39:47'),
(206, 2, 'iosgnanavel@gmail.com', '1037118599725144', 'Dfsdfsdfdsdfs', '2018-01-24 15:40:21'),
(207, 2, 'iosgnanavel@gmail.com', '1037118599725144', 'Dsdsad', '2018-01-24 15:41:07'),
(208, 2, 'iosgnanavel@gmail.com', '1037118599725144', 'Ddddddddd', '2018-01-24 15:41:32'),
(209, 2, 'iosgnanavel@gmail.com', '1037118599725144', 'Yyyyyyy', '2018-01-24 15:46:13'),
(210, 1, '1964072657174292', '1037118599725144', 'Jbjhbjbjjb', '2018-01-24 16:33:55'),
(211, 1, 'test@gmail.com', '1037118599725144', 'Test', '2018-01-24 17:11:22'),
(212, 1, 'test@gmail.com', '1037118599725144', 'Check', '2018-01-24 17:11:29'),
(213, 1, 'nathiya@rgmobiles.com', '1037118599725144', 'Good \nGood \n', '2018-01-24 17:42:46'),
(214, 1, 'nathiya@rgmobiles.com', '1037118599725144', 'test', '2018-01-25 00:24:24'),
(215, 1, '954211424730591', '1037118599725144', 'hi', '2018-01-25 02:30:36'),
(216, 1, '954211424730591', '1037118599725144', 'how are you', '2018-01-25 02:30:44'),
(217, 1, '954211424730591', '1037118599725144', 'hai', '2018-01-25 02:44:06'),
(218, 1, 'Vidhya.vijay1994@gmail.com', '1037118599725144', 'Hello ', '2018-01-25 06:47:14'),
(219, 3, 'test@gmail.com', '1037118599725144', 'Test', '2018-01-25 07:31:19'),
(220, 1, 'vidhya.vijay1994@gmail.com', '1037118599725144', 'good', '2018-01-25 12:45:01'),
(221, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Hhhhhh', '2018-01-25 12:49:31'),
(222, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Qqqqq', '2018-01-25 13:53:47'),
(223, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'test', '2018-01-25 13:54:03'),
(224, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'good luck', '2018-01-25 13:54:31'),
(225, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Lianyu ', '2018-01-25 14:28:03'),
(226, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Tuj', '2018-01-25 14:37:17'),
(227, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Ggg', '2018-01-25 14:37:20'),
(228, 1, 'iosgnanavel@gmail.com', '1037118599725144', 'Lianyu and ', '2018-01-25 14:58:52'),
(229, 1, 'test@gmail.com', '1037118599725144', 'Gdfd', '2018-01-26 02:20:07'),
(230, 3, 'test@gmail.com', '1037118599725144', 'Check', '2018-01-30 08:33:17'),
(231, 3, 'test@gmail.com', '1037118599725144', 'Test1 ', '2018-01-30 08:33:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daytour_registration`
--
ALTER TABLE `daytour_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_activites`
--
ALTER TABLE `tour_activites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_checkout`
--
ALTER TABLE `tour_checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tour_details`
--
ALTER TABLE `tour_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user_chat_list`
--
ALTER TABLE `user_chat_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daytour_registration`
--
ALTER TABLE `daytour_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;
--
-- AUTO_INCREMENT for table `tour_activites`
--
ALTER TABLE `tour_activites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tour_checkout`
--
ALTER TABLE `tour_checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `tour_details`
--
ALTER TABLE `tour_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `sno` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `user_chat_list`
--
ALTER TABLE `user_chat_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
