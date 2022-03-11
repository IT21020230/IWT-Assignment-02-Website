-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 04:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iwt_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`username`, `password`) VALUES
('admin@superfit.lk', 'Admin12345');

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `ID` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Bank_Card_Name` varchar(100) NOT NULL,
  `Card_number` int(20) NOT NULL,
  `CVV` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`ID`, `Name`, `Mobile_No`, `Email`, `Bank_Card_Name`, `Card_number`, `CVV`) VALUES
(1, 'Dilmith Nimtharana', '0760594336', 'dilmithnimtharana@gmail.com', 'BOC', 2147483647, 504),
(2, 'Rasika Perera', '0758946521', 'rasikaperera@gmail.com', 'NDB', 2147483647, 441),
(3, 'Jim Halpert', '093545421365', 'jimhalpert@gmail.com', 'SDC', 2147483647, 502),
(4, 'Dwight Schrute', '02354562132', 'dwightshrute@gmail.com', 'RDD', 2147483647, 505),
(5, 'Michael Scott', '0763215468', 'michaelscott@gmail.com', 'BDD', 2147483647, 223);

-- --------------------------------------------------------

--
-- Table structure for table `calcbmi`
--

CREATE TABLE `calcbmi` (
  `user_ID` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calcbmi`
--

INSERT INTO `calcbmi` (`user_ID`, `weight`, `height`) VALUES
(1, 89, 56),
(2, 7, 1),
(3, 8, 5),
(4, 8, 2),
(5, 7, 3),
(6, 6, 1),
(7, 89, 56),
(8, 6, 4),
(9, 60, 2),
(10, 60, 2),
(11, 64, 1),
(12, 64, 2),
(13, 64, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` int(10) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `gender`, `mobile`, `mail`, `description`) VALUES
('Malithi', 'Sachintha', 'Female', 712436475, 'malithi@gmail.com', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm'),
('Shavi', 'Disanayaka', 'Female', 715639087, 'shavi99@gmail.com', 'nothing'),
('Devinda', 'Charith', 'Male', 704100234, 'devindar@gmail.com', 'How to book another day for my exercise.?'),
('', '', '', 0, '', ''),
('', '', '', 0, '', ''),
('Madushi', 'Dilhara', 'Female', 775654897, 'dilhara@gmail.com', 'What to take for breakfast'),
('matheesha', 'mokshan', 'Male', 775634261, 'mathee@gmail.com', 'what to eat in general?');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `ID` int(11) NOT NULL,
  `Question` varchar(200) NOT NULL,
  `Answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`ID`, `Question`, `Answer`) VALUES
(1, 'Do I Need to Work Out Every Day?', 'No, It depends on your expectation.'),
(2, 'How Long Should I Work Out For?', 'If your requirements fulfilled, then Its enough.'),
(3, 'How Can I Increase Lean Muscle Mass?', 'Adding heavy strength training into your routine is just one way to increase lean muscle mass.'),
(4, 'How Much Weight Should I Use When Strength Training?', 'It’s important to always remember that the workout you’re performing is ‘your workout’.'),
(5, 'What Training Should I Be Doing to Lose Weight?', 'Regular cardio training is great for increasing your daily calorie burn.'),
(6, 'How Often Should I Rest?', 'I recommend 1 or 2 full days of rest in your schedule.'),
(7, 'When should I stretch & how often?', 'There are a few types of stretching you should plan on adding to your routine.'),
(8, 'How long does it take to see results?', 'It can take anywhere from 6-8 weeks.');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Gender` char(6) NOT NULL,
  `ContactNo` int(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `Password` varchar(12) NOT NULL,
  `confirmPassword` varchar(12) NOT NULL,
  `Education` varchar(100) NOT NULL,
  `Course` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`ID`, `Name`, `Gender`, `ContactNo`, `Email`, `Address`, `DOB`, `Password`, `confirmPassword`, `Education`, `Course`) VALUES
(5, 'Ryan fernando', 'male', 715588750, 'ryan@gmail.com', 'No 10 , galle rd, colombo 10', '2000-02-02', 'ryan123', 'ryan123', 'Degree', 'yoga'),
(6, 'Shane Perera', 'male', 714485963, 'shane@gmail.com', 'No 45 , Eksath Mawatha,Kadawatha', '1999-02-01', 'shane123', 'shane123', 'Degree', 'zumba'),
(7, 'jhon anderson', 'male', 763345852, 'jhon@gmail.com', '45/7,parakandeniya,Kegalle', '1998-02-01', 'jhon123', 'jhon123', 'Diploma', 'Weight loss'),
(8, 'Sarah Cowell', 'female', 785541236, 'sarah@gmail.com', '52/78,kandana rd, Ragama', '2000-02-02', 'sarah123', 'sarah123', 'Diploma', 'yoga'),
(9, 'Samy Perera', 'female', 765589452, 'samy@gmail.com', '12/10,wajira rd,Bambalapitiya', '1999-02-01', 'samy123', 'samy123', 'Degree', 'zumba');

-- --------------------------------------------------------

--
-- Table structure for table `register_table`
--

CREATE TABLE `register_table` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Age` int(11) NOT NULL,
  `Mobile_Number` char(10) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Health_Issues` varchar(200) DEFAULT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_table`
--

INSERT INTO `register_table` (`ID`, `First_Name`, `Last_Name`, `Gender`, `Age`, `Mobile_Number`, `Email`, `Address`, `Health_Issues`, `Password`) VALUES
(1, 'Alice', 'Johnson', 'F', 23, '0713492586', 'alice@hotmail.com', 'Colombo road, Kandy.', 'Leg cramps', 'Alice1212'),
(2, 'Jack', 'Sheperd', 'M', 27, '0767593818', 'jack@my.sliit.lk', 'Ampitiya, Kandy.', 'Knee injury', 'Jack0987'),
(3, 'Kithmina', 'Siriwardana', 'M', 20, '0767593818', 'kithmina@my.sliit.lk', '135, Pallandeniya, Maspotha.', 'Heart disease', 'Siri1234'),
(4, 'Cara', 'Sheperd', 'F', 38, '0702374856', 'shep@sliit.lk', 'New Kandy road, Malambe', '', 'carA123'),
(5, 'Yasiru ', 'Abeysinha', 'M', 21, '0763594876', 'yasiru@gmail.com', 'Colombo 07', '', 'Yasiru123');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `TTclass_id` int(11) NOT NULL,
  `TT_date` varchar(20) NOT NULL,
  `TT_time` varchar(20) NOT NULL,
  `TT_schedule` varchar(50) NOT NULL,
  `TT_class` varchar(50) NOT NULL,
  `TT_meeting_Details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`TTclass_id`, `TT_date`, `TT_time`, `TT_schedule`, `TT_class`, `TT_meeting_Details`) VALUES
(1, 'Monday', '9.00AM - 10.00AM', 'Body Building', 'Premium', 'MeetID - 02'),
(2, 'Tuesday', '10.00AM - 11.00AM', 'Yoga Training', 'Basic', 'MeetID - 01'),
(3, 'Wednesday', '8.00AM - 9.30AM', 'Bench Press', 'Standard', 'MeetID - 03'),
(4, 'Thursday', '9.00AM - 10.00AM', 'Martial Arts', 'Premium', 'MeetID - 04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `calcbmi`
--
ALTER TABLE `calcbmi`
  ADD PRIMARY KEY (`user_ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register_table`
--
ALTER TABLE `register_table`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`TTclass_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `calcbmi`
--
ALTER TABLE `calcbmi`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `register_table`
--
ALTER TABLE `register_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `TTclass_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
