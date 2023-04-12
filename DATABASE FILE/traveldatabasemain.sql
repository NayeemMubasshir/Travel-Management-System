
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--
-- Database: traveldatabasemain
--





CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'admin');


















CREATE TABLE `travelevents` (
  `id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `travelevents` (`id`, `message`, `date`) VALUES
(7, 'Event in sajek', '2023-03-30');







CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;






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
(1, 'manager', 'manager123', 'abdul karim@gmail.com', 'Abdul karim', 'md.pur', 'TravelManager', 'Male', 111111111);



INSERT INTO `packages` (`id`, `name`, `charge`) VALUES
(1, 'Long tour: 3 months', '300'),
(2, 'Short tour: 2 weeks', '100'),
(3, 'International tour', '1000');


