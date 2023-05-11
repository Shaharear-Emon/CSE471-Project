SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Bishal', 550, '2023-04-14', '10:00:00', 1, 0),
(4, 2, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Maruf', 700, '2023-04-28', '10:00:00', 0, 1),
(4, 3, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Amit', 1000, '2023-04-19', '03:00:00', 0, 1),
(11, 4, 'Salma', 'Khan', 'Female', 'salma@gmail.com', '9768946252', 'Gopal', 500, '2023-04-29', '20:00:00', 1, 1),
(4, 5, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Maruf', 700, '2023-04-28', '12:00:00', 1, 1),
(4, 6, 'Mohammad', 'Ali', 'Male', 'mohammad0@gmail.com', '8838489464', 'Bishal', 550, '2023-04-26', '15:00:00', 0, 1),
(2, 8, 'Aisha', 'Khondoker', 'Female', 'aisha@gmail.com', '8976897689', 'Bishal', 550, '2023-04-21', '10:00:00', 1, 1),
(5, 9, 'Mohor', 'Seikh', 'Male', 'mohor@gmail.com', '9070897653', 'Bishal', 550, '2023-04-19', '20:00:00', 1, 0),
(4, 10, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Bishal', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '8838489464', 'Maruf', 700, '2023-04-27', '15:00:00', 1, 1),
(9, 12, 'Riad', 'Hossain', 'Male', 'riad@gmail.com', '8683619153', 'Koushiq', 800, '2023-04-26', '12:00:00', 1, 1),
(9, 13, 'Riad', 'Hossain', 'Male', 'riad@gmail.com', '8683619153', 'Tony', 450, '2023-04-26', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Abbas', 'abbas@gmail.com', '7896677554', 'Hey Admin'),
(' Bokul', 'bokul@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Manik', 'manik@gmail.com', '8977768978', 'Want some coffee?'),
('Kamal', 'kamal@gmail.com', '9898989898', 'Good service'),
('Atiq', 'atiq@gmail.com', '8979776868', 'Love your service'),
('Asif', 'asif@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jony', 'jony@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Bishal', 'bishal123', 'bishal@gmail.com', 'General', 550),
('arnob', 'arnob123', 'arnob@gmail.com', 'Cardiologist', 600),
('Maruf', 'maruf123', 'maruf@gmail.com', 'General', 700),
('Gopal', 'gopal123', 'gopal@gmail.com', 'Pediatrician', 500),
('Koushiq', 'koushiq123', 'koushiq@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abrar', 'abrar123', 'abrar@gmail.com', 'Neurologist', 1500),
('Tony', 'tony123', 'tony@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Mohammad', 'Ali', 'Male', 'mohammad@gmail.com', '9876543210', 'mohammad123', 'mohammad123'),
(2, 'Aisha', 'Khondoker', 'Female', 'aisha@gmail.com', '8976897689', 'aisha123', 'mohammad123'),
(3, 'Salma', 'khan', 'Female', 'salma@gmail.com', '8976898463', 'salma123', 'salma123'),
(4, 'Mohor', 'Seikh', 'Male', 'mohor@gmail.com', '8838489464', 'mohor123', 'mohor123'),
(5, 'Riad', 'Hossain', 'Male', 'riad@gmail.com', '9070897653', 'riad123', 'riad123'),
(6, 'Abir', 'Rahman', 'Male', 'abir@gmail.com', '9059986865', 'abir123', 'abir123'),
(7, 'Nancy', 'Khan', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Karim', 'Seikh', 'Male', 'karim@gmail.com', '9809879868', 'karim123', 'karim123'),
(9, 'Belal', 'Hossain', 'Male', 'belal@gmail.com', '8683619153', 'belal123', 'belal123'),
(10, 'Partho', 'Protim', 'Male', 'partho@gmail.com', '9609362815', 'partho123', 'partho123'),
(11, 'Sharmin', 'Akter', 'Female', 'sharmin@gmail.com', '9768946252', 'sharmin123', 'sharmin123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Bishal', 4, 11, 'Mohammad', 'Ali', '2023-04-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Maruf', 2, 8, 'Aisha', 'Khondoker', '2023-04-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Koushiq', 9, 12, 'Riad', 'Hossain', '2023-04-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tony', 9, 13, 'Riad', 'Hossain', '2023-04-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;