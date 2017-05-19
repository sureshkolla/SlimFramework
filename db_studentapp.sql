-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2017 at 04:13 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_studentapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `faculties_id` int(11) NOT NULL,
  `students_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `name`, `details`, `completed`, `faculties_id`, `students_id`) VALUES
(1, 'SQL Injection', 'Get some notes about SQL Injection', 0, 1, 3),
(2, 'DBMS', 'Discuss all type of joins', 0, 1, 1),
(3, 'Business Management', 'Discuss role of IT in HRM', 1, 1, 2),
(4, 'C++', 'Create a simple login app using c++', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cetegory_name` varchar(100) NOT NULL,
  `createdon` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cetegory_name`, `createdon`, `status`) VALUES
(1, 'Movies', '', 1),
(2, 'Musics', '', 1),
(3, 'Sports', '', 1),
(4, 'Fashion', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emp_details`
--

CREATE TABLE `emp_details` (
  `emp_id` int(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_gender` varchar(255) NOT NULL,
  `emp_skills` varchar(255) NOT NULL,
  `emp_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_details`
--

INSERT INTO `emp_details` (`emp_id`, `emp_name`, `emp_email`, `emp_gender`, `emp_skills`, `emp_address`) VALUES
(12, 'Sorryname', 'babu@gmail.com', 'male', '', '4555'),
(13, '01', 'w@f', 'male', '', '12'),
(14, '2', 'w@f', 'male', '', '122'),
(15, '3', 'w@f', 'male', '', '1223'),
(16, '4', 'w@f', 'male', '', '12234'),
(17, '45', 'w@f', 'male', '', '122345'),
(18, '456', 'w@f', 'male', '', '1223456'),
(20, '4567', 'w@f', 'male', '', '12234567'),
(49, 'database', 'data@base.com', 'female', '', 'tester'),
(50, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(51, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(53, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(54, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(55, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(56, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(57, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(58, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(59, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(60, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(61, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(62, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(63, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(64, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(65, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(66, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(67, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(68, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(69, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(70, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(71, 'zxz', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(72, 'zxz1', 'xzx@fffk.kk', 'male', '', 'jgghgh'),
(73, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(74, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(75, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(76, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(77, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(78, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(79, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(80, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(81, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(82, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(83, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(84, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(85, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(86, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(87, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(88, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(89, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(90, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(91, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(92, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(93, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(94, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(95, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(96, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(97, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(98, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(99, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(100, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(101, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(102, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(103, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(104, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(105, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(106, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(107, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(108, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(109, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(110, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(111, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(112, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(113, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(114, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(115, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(116, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(117, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(118, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(119, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(120, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(121, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(122, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(123, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(124, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(125, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(126, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(127, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(128, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(129, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(130, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(131, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(132, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(133, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(134, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(135, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(136, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(137, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(138, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(140, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(141, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(142, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(143, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(144, 'testdata', 'test@emailcom', 'male', '', 'Bangalore'),
(166, 'ss', 'ss@gh.jjj', 'male', '', 'ss'),
(167, 'ss', 'ss@gh.jjj', 'male', '', 'ss'),
(168, 'dasd', 'asdsd@der', 'male', '', 'sdsd'),
(169, 'datale', 'data@ddsd', 'male', '', 'sdsdsd'),
(170, 'cbbvbv', 'bvbvbvbvb@xcfc', 'female', '', 'vbvb'),
(171, 'aadad', 'adad@sddkjk.hjj', 'male', '', 'asas');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `username`, `password`, `subject`, `api_key`) VALUES
(1, 'Ritesh Kumar', 'ritesh', '81dc9bdb52d04dc20036dbd8313ed055', 'DBMS', '0c81c1be0741a08d857f55e2dd0268b6');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `api_key` varchar(100) NOT NULL,
  `createdon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `lname`, `age`, `username`, `password`, `gender`, `api_key`, `createdon`, `status`) VALUES
(1, 'belal', '', '', 'belal', '81dc9bdb52d04dc20036dbd8313ed055', '', '50addfeb14283e2568ca98e2a8ecf7f6', '', 0),
(2, 'Belal Khan', '', '', 'probelalkhan', '81dc9bdb52d04dc20036dbd8313ed055', '', '589d3d5ad22808e7cb54fd1ee2affd3c', '', 0),
(3, 'Vivek Raj', '', '', 'vivek', 'e2fc714c4727ee9395f324cd2e7f331f', '', '2d092996274be2edf7a0771ba427e134', '', 0),
(4, 'errer', '', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'a235f51b418125451769a4700af8c4fd', '', 0),
(5, 'test', '', '', 'adminnme', '21232f297a57a5a743894a0e4a801fc3', '', 'f7c5664f490ab3b6a8f6b36762168494', '', 0),
(6, '', '', '', '', '', '', '', '', 0),
(7, '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploadvideo`
--

CREATE TABLE `uploadvideo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `owner` int(11) NOT NULL,
  `createdon` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadvideo`
--

INSERT INTO `uploadvideo` (`id`, `title`, `category`, `url`, `description`, `owner`, `createdon`, `status`) VALUES
(1, '', 0, 'MSNYzz4Khuk', '', 0, '', 1),
(2, '', 0, 'C0V9vj2lYUY', '', 0, '', 1),
(3, '', 0, 'kt2hWLZNO9c', '', 0, '', 1),
(4, '', 0, 'Ttykg8ziZNc', '', 0, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_faculties` (`faculties_id`),
  ADD KEY `assignments_students` (`students_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_details`
--
ALTER TABLE `emp_details`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploadvideo`
--
ALTER TABLE `uploadvideo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `emp_details`
--
ALTER TABLE `emp_details`
  MODIFY `emp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `uploadvideo`
--
ALTER TABLE `uploadvideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_faculties` FOREIGN KEY (`faculties_id`) REFERENCES `faculties` (`id`),
  ADD CONSTRAINT `assignments_students` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
