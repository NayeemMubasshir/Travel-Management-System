

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `traveldatabasemain`


CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', '123123', 'admin');



CREATE TABLE `travelevents` (
  `id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `travelevents` (`id`, `message`, `date`) VALUES
(7, 'Event in Sajek in 30th March. Entry fee: 1000tk', '2023-03-30'),
(9, 'Event in Sylhet for Pohela Boishakh At Sultan Hotel. Free pass at entry', '2023-04-04');




CREATE TABLE `travellocation` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `vendor` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `bookedstatus` varchar(30) NOT NULL,
  `bookername` varchar(30) NOT NULL,
  `bookercontact` varchar(30) NOT NULL


) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `travellocation` (`id`, `name`, `amount`, `quantity`, `vendor`, `description`, `address`, `contact`, `date`, `bookedstatus`, `bookername`, `bookercontact`) VALUES
(4, 'Sajek', 949, 3, 'Resort asd', 'Free food and transport', 'asd road, Hill district', '1245558980', '2023-04-20','notbooked','asd', 'asd'),
(5, 'Cox', 102, 26, 'Sayeman hotel', 'Free food, transport upon request', 'Laboni point, Cox', '9875552100', '2023-04-23', 'notbooked','asdasd', 'asdasd');





CREATE TABLE `members` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `services` varchar(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `paid_date` date NOT NULL,
  `p_year` int(11) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `reminder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;







INSERT INTO `members` (`user_id`, `fullname`, `username`, `password`, `gender`, `dor`, `services`, `amount`, `paid_date`, `p_year`, `plan`, `address`, `contact`, `status`,  `reminder`) VALUES
(6, 'Rashed Hasan', 'rashed', '123123', 'Male', '2023-12-25', 'CoxBazar', 165, '2023-06-02', 2023, '2', '64 Dhanmondi', '8545878545', 'Active',  0),
(8, 'Chonchol Chowdhury', 'chonchol', '123123', 'Male', '2023-01-02', 'CoxBazar', 55, '2023-04-01', 2023, '2', '10 Mirpur', '8520258520', 'Active',  1),
(11, 'Jakir Hossain', 'jakir', '123123', 'Male', '2023-01-25', 'Sajek', 35, '2023-03-31', 2023, '2', '14 Mdpur', '7535752220', 'Active',  0),
(14, 'Raiyan Haque', 'raiyan', '123123', 'Male', '2023-07-13', 'CoxBazar', 55, '2023-04-02', 2023, '4', '34 Banani', '1578880010', 'Active',  0),
(16, 'Jahan karim', 'jahan', '123123', 'Female', '2023-04-01', 'CoxBazar', 0, '2023-06-12', 2023, '0', '4 Mirpur', '741111110', 'Expired',  1),
(17, 'Safa Ahmed', 'safa', '123123', 'Female', '2023-04-02', 'Sajek', 120, '2023-05-31', 2023, '2', '23 Gulshan', '7441002540', 'Active',  0),
(18, 'Preety Dey', 'preety', '123123', 'Female', '2023-04-04', 'CoxBazar', 55, '2023-06-11', 2023, '1', '86 Banani', '7854445410', 'Active',  0),
(19, 'Kamal Ahmed', 'Kamal', '123123', 'Male', '2023-04-02', 'CoxBazar', 55, '2023-06-11', 2023, '1', '43 Mdpur', '0258987850', 'Active',  1),
(20, 'Jarin Tasnim', 'Jarin', '123123', 'Female', '2023-03-21', 'CoxBazar', 55, '2023-06-11', 2023, '1', '24 Mdpur', '8547896520', 'Active',  0);



CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




INSERT INTO `packages` (`id`, `name`, `charge`) VALUES
(1, 'CoxBazar', '300'),
(2, 'Sylhet', '100'),
(3, 'Sajek', '200');



CREATE TABLE `reminder` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL,
  `date` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `reminder` (`id`, `name`, `message`, `status`, `date`, `user_id`) VALUES
(12, 'staff', 'asd', 'unread', '2023-04-16 22:39:59', 0),
(13, 'staff', 'asdasdas', 'unread', '2023-04-16 22:40:49', 0),
(14, 'staff', 'ASasA', 'unread', '2023-04-16 22:41:59', 0),
(15, 'staff', 'asdasdasd', 'unread', '2023-04-16 22:42:28', 0);



CREATE TABLE `staffs` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `staffs` (`user_id`, `username`, `password`, `email`, `fullname`, `address`, `designation`, `gender`, `contact`) VALUES
(1, 'manager', 'manager123', 'abdulkarim@gmail.com', 'Abdul karim', 'md.pur', 'TravelManager', 'Male', 111111111),
(2, 'guide', 'guide123', 'guide@gmail.com', 'Jamal Karim', 'dhanmondi', 'Travelguide', 'Male', 222222222);



CREATE TABLE `faqandsupp` (
  `id` int(11) NOT NULL,
  `task_status` varchar(50) NOT NULL,
  `task_desc` varchar(100) NOT NULL,
  `user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqandsupp`
--

INSERT INTO `faqandsupp` (`id`, `task_status`, `task_desc`, `user_id`) VALUES
(20, 'In Progress', 'When is the next event', 14),
(21, 'Requestmanager', 'Which hotel best for cox?', 6),
(22, 'In Progress', 'Total price for the upcoming sajek travel location', 6);



ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `travelevents`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `travellocation`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `members`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `staffs`
  ADD PRIMARY KEY (`user_id`);


ALTER TABLE `faqandsupp`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `travelevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `travellocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `members`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `reminder`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

ALTER TABLE `staffs`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `faqandsupp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
