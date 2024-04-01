-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 07:45 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amader_pathsala`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `password`) VALUES
(12345, '123456');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` varchar(30) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `password`) VALUES
('admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `id` int(11) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `f_name` char(30) DEFAULT NULL,
  `m_name` char(30) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `religion` char(15) DEFAULT NULL,
  `b_date` varchar(100) DEFAULT NULL,
  `b_group` varchar(20) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(20) NOT NULL,
  `admit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`id`, `name`, `f_name`, `m_name`, `gender`, `address`, `mobile`, `religion`, `b_date`, `b_group`, `type`, `password`, `status`, `admit`) VALUES
(1, 'sdva', 'egrg', 'egrg', 'male', 'gerg', 1223, 'ff', '2019-03-03', 'O-', 'teacher', '1234', 1, 0),
(2, 'eff', '', '', 'male', '', 0, '', '2019-02-25', 'B-', 'student', '1234', 0, 0),
(3, 'jfjoewijf', 'sdfg', 'sdfg', 'male', 'fdbgf', 0, '', '', 'A+', 'student', '1234', 1, 1),
(4, 'gwtr', 'f', 'f', 'male', '', 0, '', '', 'A+', 'student', '1234', 1, 1),
(5, 'test', '', '', 'male', 'ss', 5445, 'kmm', '', 'A+', 'student', '1234', 1, 1),
(6, 'trnh', '', '', 'male', 'ss', 25258, '', '', 'A+', 'student', '1234', 1, 1),
(7, 'njefvkejwg', 'refv', 'refv', 'male', 'effef', 236526, 'hindu', '2019-03-07', 'A+', 'student', '1234', 1, 1),
(8, 'efffffff', 'ffjf', 'ffjf', 'male', 'frdg', 656592, 'g', '2019-03-05', 'A+', 'student', '1234', 1, 1),
(9, 'grth', 'brbg', 'brbg', 'female', 'brbrby', 65441654, 'islam', '', 'A+', 'student', '1234', 0, 0),
(10, 'deemklmfer', 'cerfijo', 'cerfijo', 'female', 'lkme', 565625, 'ekjef', '2019-03-20', 'B+', 'student', '1234', 0, 0),
(11, 'lkjklvef', 'lkencve', 'lkencve', 'female', 'kjecf', 365255, 'ekuh', '2019-03-20', 'O-', 'student', '1234', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(30) NOT NULL,
  `class_name` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'One'),
(2, 'Two'),
(3, 'Three'),
(4, 'Four'),
(5, 'Five'),
(6, 'six');

-- --------------------------------------------------------

--
-- Table structure for table `class_sub`
--

CREATE TABLE `class_sub` (
  `subject_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_sub`
--

INSERT INTO `class_sub` (`subject_id`, `class_id`) VALUES
(1, 1),
(2, 1),
(11, 1),
(1, 2),
(2, 2),
(11, 2),
(1, 3),
(2, 3),
(10, 3),
(11, 3),
(1, 4),
(2, 4),
(10, 4),
(11, 4),
(12, 4),
(1, 5),
(2, 5),
(10, 5),
(11, 5),
(15, 5),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(4, 6),
(10, 6),
(4, 6),
(8, 6),
(4, 6),
(9, 6),
(4, 6),
(12, 6),
(4, 6),
(13, 6),
(4, 6),
(15, 6),
(19, 3),
(27, 2),
(28, 6);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `teacher_name` varchar(30) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `subject_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `teacher_id`, `teacher_name`, `class_name`, `subject_name`) VALUES
(1, 101, 'Mehedi sir', 'One', 'English'),
(3, 103, 'Effat Mam', 'TWO', 'Bangla'),
(4, 103, 'Effat Mam', 'THREE', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `f_name` char(30) DEFAULT NULL,
  `m_name` char(30) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `religion` char(15) DEFAULT NULL,
  `b_date` varchar(100) DEFAULT NULL,
  `b_group` varchar(20) DEFAULT NULL,
  `type` char(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `f_name`, `m_name`, `gender`, `address`, `mobile`, `religion`, `b_date`, `b_group`, `type`, `password`) VALUES
(1, 'xyz', 'dd', 'ddd', 'dddd', 'ddd', 11111, 'dddd', NULL, NULL, 'exam_controller', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `student_id` int(30) NOT NULL,
  `class_id` int(30) DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`student_id`, `class_id`, `year`) VALUES
(2019002, 2, 2019),
(2019003, 1, 2019),
(2019024, 2, 2019),
(2019025, 4, 2019),
(2019026, 2, 2019),
(2019027, 1, 2019),
(2019028, 2, 2019),
(2019029, 3, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `exam_controller`
--

CREATE TABLE `exam_controller` (
  `id` int(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_controller`
--

INSERT INTO `exam_controller` (`id`, `password`) VALUES
(12345, '12345');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `notice` varchar(3000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `notice`, `date`) VALUES
(1, 'Admission is going on', '2019-04-05'),
(2, 'class suspend', '2019-04-05'),
(3, 'summer vacation', '2019-04-09');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(50) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `f_name` varchar(200) DEFAULT NULL,
  `m_name` varchar(200) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `b_date` varchar(100) DEFAULT NULL,
  `b_group` varchar(100) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `f_name`, `m_name`, `gender`, `address`, `mobile`, `religion`, `b_date`, `b_group`, `password`) VALUES
(2019002, 'Shuvo Karmakar', 'Shetal Karmakar', 'Shipra Karmakar', 'male', '27 No Puraton Girza ', 1670864622, 'Hindu', '2019-03-11', 'O+', '123456789'),
(2019003, 'Dipra Guha', 'Uncle', 'Auntie', 'male', 'Asadgong', 1670864623, 'Hindu', '2019-03-27', 'B+', '123456789'),
(2019024, 'Aoishi Chowdhury', 'Uncle', 'Auntie', 'female', 'Asadgong', 1670864624, 'Hindu', '2019-03-27', 'O+', '123456789'),
(2019025, 'Ananna Dey', 'Uncle', 'Auntie', 'female', 'Asadgong', 1670864625, 'Hindu', '2019-03-27', 'O+', '123456789'),
(2019026, 'Iftia zannat Nuri', 'Uncle', 'Auntie', 'female', 'Asadgong', 1670864626, 'Hindu', '2019-03-27', 'O+', '123456789'),
(2019027, 'Antar Nandi', 'Uncle', 'Auntie', 'male', 'Asadgong', 1670864622, 'Hindu', '2019-03-27', 'O+', '123456789'),
(2019028, 'Israqul', 'Uncle', 'Auntie', 'male', '2 no gate', 1674445858, 'Islam', '2019-03-27', 'O+', '123456789'),
(2019029, 'ebsa', 'sfeb', 'sfeb', 'Male', ' V', 444, 'hghg', '2019-04-23', 'A+', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`) VALUES
(1, 'English'),
(2, 'Bangla'),
(4, 'English 1st'),
(5, 'Bangla 1st'),
(6, 'English 2nd'),
(7, 'Bangla 2nd'),
(8, 'Science'),
(9, 'Social Science'),
(10, 'Math'),
(11, 'Drawing'),
(12, 'Phycical Education'),
(13, 'Agricalture'),
(14, 'Home Science'),
(15, 'Religion'),
(16, 'Ict'),
(17, 'Biology'),
(19, 'pt'),
(21, 'ttpp'),
(22, 'ttpp'),
(23, 'English 1st'),
(24, 'pptt'),
(25, 'nn'),
(26, 'nn'),
(27, 'lllll'),
(28, 'ICT');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(50) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `gender` char(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `b_date` varchar(50) DEFAULT NULL,
  `b_group` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `gender`, `address`, `mobile`, `b_date`, `b_group`, `password`) VALUES
(101, 'Mehedi sir', 'male', 'Premier University', 100000, '2019-03-19', 'A+', '1234'),
(102, 'Kingshuk Sir', 'male', 'Premier University', 15555888, '2019-03-26', 'A+', '1234'),
(103, 'Effat Mam', 'female', 'Premier University', 123456, '2019-03-12', 'B+', '1234'),
(104, 'Akram sir', 'Male', 'Premier Univarsity', 1425668522, '2019-04-22', 'AB+', '1234'),
(105, 'Sabrina Tarannum', 'Female', 'Nasirabad Housing Society, Ctg', 188888888, '', 'A+', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `apply`
--
ALTER TABLE `apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply`
--
ALTER TABLE `apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019030;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
