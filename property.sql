-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2023 at 09:11 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `property`
--

-- --------------------------------------------------------

--
-- Table structure for table `builder`
--

CREATE TABLE `builder` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Company Name` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Office Address` varchar(300) NOT NULL,
  `Profile` varchar(350) NOT NULL,
  `GSTIN` varchar(200) NOT NULL,
  `sites` int(200) NOT NULL,
  `regestration date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `builder`
--

INSERT INTO `builder` (`id`, `Name`, `Company Name`, `Contact`, `Email`, `Office Address`, `Profile`, `GSTIN`, `sites`, `regestration date`) VALUES
(1, 'Sai Builders', '', '1234567890', 'Saibuilders@gmail.com', 'sai mandir road near wardha', 'https://www.shutterstock.com/image-vector/friendly-builder-helmet-carrying-level-260nw-278129696.jpg', 'ED123KHB125', 2, '2023-05-31 13:09:00'),
(2, 'rameshwar builders', 'shreeji property dealers', '952456158725', 'Shreeji@gmail.com', 'kamptee nagpur', 'https://media.istockphoto.com/id/1346124841/photo/successful-construction-site-worker-thinking.jpg?s=612x612&w=0&k=20&c=nIOAGsr7yd2h-0XNLqY8lFRFsbAqKl411VVQn86G3fI=', 'AL125144714ASEAS', 1, '2023-05-31 13:23:38'),
(3, 'Gokul kiran', 'Gokul land Developers', '1234569870', 'gokul@gokul.com', 'bharat nagar pardi Nagpur', 'https://media.istockphoto.com/id/170961867/photo/construction-workers-working-on-construction-site.webp?s=1024x1024&w=is&k=20&c=6mayvcs84yJUKA6d84RJWLeK5uPTH5SUpJBJn86QXGI=', 'AHDGHV55475SDCD', 6, '2023-05-31 13:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `inquiry_id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `inquiry_id`, `sender`, `recipient`, `message`, `created_at`) VALUES
(1, 6, 'user', 'admin', 'ascdfs', '2023-06-01 06:47:05'),
(2, 6, 'user', 'admin', 'asd', '2023-06-01 06:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reply` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiries`
--

INSERT INTO `inquiries` (`id`, `name`, `email`, `message`, `reply`, `created_at`) VALUES
(1, 'Vijay Baghel', 'baghelvv@gmail.com', 'this is demo inquiry\r\n', 'demi inquiry', '2023-06-01 06:12:39'),
(2, 'Vijay Baghel', 'baghelvv@gmail.com', 'this is demo enquiry', 'asdsfcd', '2023-06-01 06:12:59'),
(3, 'Vijay Baghel', 'baghelvv@gmail.com', 'this is inquiry 3', NULL, '2023-06-01 06:27:32'),
(4, 'Vijay Baghel', 'baghelvv@gmail.com', 'hii this is first inquiry', NULL, '2023-06-01 06:33:40'),
(5, 'Vijay Baghel', 'baghelvv@gmail.com', 'ADSXADSA', NULL, '2023-06-01 06:34:40'),
(6, 'Vijay Baghel', 'baghelvv@gmail.com', 'adAS', NULL, '2023-06-01 06:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `Property Name` varchar(255) NOT NULL,
  `plotno` varchar(255) NOT NULL,
  `areaname` varchar(255) NOT NULL,
  `streetname` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `pincode` int(6) NOT NULL,
  `Type` varchar(223) NOT NULL,
  `Offer` varchar(222) NOT NULL,
  `Status` varchar(222) NOT NULL,
  `Furnished` varchar(222) NOT NULL,
  `deposit` varchar(222) NOT NULL,
  `bedroom` varchar(222) NOT NULL,
  `Bathroom` varchar(200) NOT NULL,
  `Balcony` varchar(222) NOT NULL,
  `carpet` varchar(222) NOT NULL,
  `Age` varchar(222) NOT NULL,
  `loan` varchar(222) NOT NULL,
  `lift` tinyint(1) NOT NULL,
  `gaurd` tinyint(1) NOT NULL,
  `playground` tinyint(1) NOT NULL,
  `garden` tinyint(1) NOT NULL,
  `water_supply` tinyint(1) NOT NULL,
  `power backup` tinyint(1) NOT NULL,
  `Parking Area` tinyint(1) NOT NULL,
  `gym` tinyint(1) NOT NULL,
  `shopping mall` tinyint(1) NOT NULL,
  `Hospital` tinyint(1) NOT NULL,
  `school` tinyint(1) NOT NULL,
  `market area` tinyint(1) NOT NULL,
  `images` varchar(255) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `date` timestamp(6) NOT NULL,
  `has6bhk` varchar(255) NOT NULL,
  `6bhkfloorplan` varchar(255) NOT NULL,
  `6bhkcarpetarea` varchar(255) NOT NULL,
  `6bhkbuiltup` varchar(255) NOT NULL,
  `6bhksuperbuiltup` varchar(200) NOT NULL,
  `6bhkprice` varchar(200) NOT NULL,
  `6bhkfloor` varchar(200) NOT NULL,
  `6bhkbathroom` varchar(200) NOT NULL,
  `has6.5bhk` varchar(255) NOT NULL,
  `6.5bhkfloorplan` varchar(255) NOT NULL,
  `6.5bhkcarpetarea` varchar(255) NOT NULL,
  `6.5bhkbuiltup` varchar(255) NOT NULL,
  `6.5bhksuperbuiltup` varchar(200) NOT NULL,
  `6.5bhkprice` varchar(200) NOT NULL,
  `6.5bhkfloor` varchar(200) NOT NULL,
  `6.5bhkbathroom` varchar(200) NOT NULL,
  `has5.5bhk` varchar(255) NOT NULL,
  `5.5bhkfloorplan` varchar(255) NOT NULL,
  `5.5bhkcarpetarea` varchar(255) NOT NULL,
  `5.5bhkbuiltup` varchar(255) NOT NULL,
  `5.5bhksuperbuiltup` varchar(200) NOT NULL,
  `5.5bhkprice` varchar(200) NOT NULL,
  `5.5bhkfloor` varchar(200) NOT NULL,
  `5.5bhkbathroom` varchar(200) NOT NULL,
  `has5bhk` varchar(255) NOT NULL,
  `5bhkfloorplan` varchar(255) NOT NULL,
  `5bhkcarpetarea` varchar(255) NOT NULL,
  `5bhkbuiltup` varchar(255) NOT NULL,
  `5bhksuperbuiltup` varchar(200) NOT NULL,
  `5bhkprice` varchar(200) NOT NULL,
  `5bhkfloor` varchar(200) NOT NULL,
  `5bhkbathroom` varchar(200) NOT NULL,
  `has4.5bhk` varchar(255) NOT NULL,
  `4.5bhkfloorplan` varchar(255) NOT NULL,
  `4.5bhkcarpetarea` varchar(255) NOT NULL,
  `4.5bhkbuiltup` varchar(255) NOT NULL,
  `4.5bhksuperbuiltup` varchar(200) NOT NULL,
  `4.5bhkprice` varchar(200) NOT NULL,
  `4.5bhkfloor` varchar(200) NOT NULL,
  `4.5bhkbathroom` varchar(200) NOT NULL,
  `has4bhk` varchar(255) NOT NULL,
  `4bhkfloorplan` varchar(255) NOT NULL,
  `4bhkcarpetarea` varchar(255) NOT NULL,
  `4bhkbuiltup` varchar(255) NOT NULL,
  `4bhksuperbuiltup` varchar(200) NOT NULL,
  `4bhkprice` varchar(200) NOT NULL,
  `4bhkfloor` varchar(200) NOT NULL,
  `4bhkbathroom` varchar(200) NOT NULL,
  `has3.5bhk` varchar(255) NOT NULL,
  `3.5bhkfloorplan` varchar(255) NOT NULL,
  `3.5bhkcarpetarea` varchar(255) NOT NULL,
  `3.5bhkbuiltup` varchar(255) NOT NULL,
  `3.5bhksuperbuiltup` varchar(200) NOT NULL,
  `3.5bhkprice` varchar(200) NOT NULL,
  `3.5bhkfloor` varchar(200) NOT NULL,
  `3.5bhkbathroom` varchar(200) NOT NULL,
  `has3bhk` varchar(255) NOT NULL,
  `3bhkfloorplan` varchar(255) NOT NULL,
  `3bhkcarpetarea` varchar(255) NOT NULL,
  `3bhkbuiltup` varchar(255) NOT NULL,
  `3bhksuperbuiltup` varchar(200) NOT NULL,
  `3bhkprice` varchar(200) NOT NULL,
  `3bhkfloor` varchar(200) NOT NULL,
  `3bhkbathroom` varchar(200) NOT NULL,
  `has2.5bhk` varchar(255) NOT NULL,
  `2.5bhkfloorplan` varchar(255) NOT NULL,
  `2.5bhkcarpetarea` varchar(255) NOT NULL,
  `2.5bhkbuiltup` varchar(255) NOT NULL,
  `2.5bhksuperbuiltup` varchar(200) NOT NULL,
  `2.5bhkprice` varchar(200) NOT NULL,
  `2.5bhkfloor` varchar(200) NOT NULL,
  `2.5bhkbathroom` varchar(200) NOT NULL,
  `has2bhk` varchar(255) NOT NULL,
  `2bhkfloorplan` varchar(255) NOT NULL,
  `2bhkcarpetarea` varchar(255) NOT NULL,
  `2bhkbuiltup` varchar(255) NOT NULL,
  `2bhksuperbuiltup` varchar(200) NOT NULL,
  `2bhkprice` varchar(200) NOT NULL,
  `2bhkfloor` varchar(200) NOT NULL,
  `2bhkbathroom` varchar(200) NOT NULL,
  `has1.5bhk` varchar(255) NOT NULL,
  `1.5bhkfloorplan` varchar(255) NOT NULL,
  `1.5bhkcarpetarea` varchar(255) NOT NULL,
  `1.5bhkbuiltup` varchar(255) NOT NULL,
  `1.5bhksuperbuiltup` varchar(200) NOT NULL,
  `1.5bhkprice` varchar(200) NOT NULL,
  `1.5bhkfloor` varchar(200) NOT NULL,
  `1.5bhkbathroom` varchar(200) NOT NULL,
  `has1bhk` varchar(255) NOT NULL,
  `1bhkfloorplan` varchar(255) NOT NULL,
  `1bhkcarpetarea` varchar(255) NOT NULL,
  `1bhkbuiltup` varchar(255) NOT NULL,
  `1bhksuperbuiltup` varchar(200) NOT NULL,
  `1bhkprice` varchar(200) NOT NULL,
  `1bhkfloor` varchar(200) NOT NULL,
  `1bhkbathroom` varchar(200) NOT NULL,
  `owner/Builder` varchar(255) NOT NULL,
  `builderid` varchar(255) NOT NULL,
  `Hero image` varchar(200) NOT NULL,
  `Gallery Image1` varchar(2000) NOT NULL,
  `Gallery image2` varchar(2000) NOT NULL,
  `Gallery image3` varchar(2000) NOT NULL,
  `Gallery Image4` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `Property Name`, `plotno`, `areaname`, `streetname`, `city`, `state`, `country`, `pincode`, `Type`, `Offer`, `Status`, `Furnished`, `deposit`, `bedroom`, `Bathroom`, `Balcony`, `carpet`, `Age`, `loan`, `lift`, `gaurd`, `playground`, `garden`, `water_supply`, `power backup`, `Parking Area`, `gym`, `shopping mall`, `Hospital`, `school`, `market area`, `images`, `description`, `date`, `has6bhk`, `6bhkfloorplan`, `6bhkcarpetarea`, `6bhkbuiltup`, `6bhksuperbuiltup`, `6bhkprice`, `6bhkfloor`, `6bhkbathroom`, `has6.5bhk`, `6.5bhkfloorplan`, `6.5bhkcarpetarea`, `6.5bhkbuiltup`, `6.5bhksuperbuiltup`, `6.5bhkprice`, `6.5bhkfloor`, `6.5bhkbathroom`, `has5.5bhk`, `5.5bhkfloorplan`, `5.5bhkcarpetarea`, `5.5bhkbuiltup`, `5.5bhksuperbuiltup`, `5.5bhkprice`, `5.5bhkfloor`, `5.5bhkbathroom`, `has5bhk`, `5bhkfloorplan`, `5bhkcarpetarea`, `5bhkbuiltup`, `5bhksuperbuiltup`, `5bhkprice`, `5bhkfloor`, `5bhkbathroom`, `has4.5bhk`, `4.5bhkfloorplan`, `4.5bhkcarpetarea`, `4.5bhkbuiltup`, `4.5bhksuperbuiltup`, `4.5bhkprice`, `4.5bhkfloor`, `4.5bhkbathroom`, `has4bhk`, `4bhkfloorplan`, `4bhkcarpetarea`, `4bhkbuiltup`, `4bhksuperbuiltup`, `4bhkprice`, `4bhkfloor`, `4bhkbathroom`, `has3.5bhk`, `3.5bhkfloorplan`, `3.5bhkcarpetarea`, `3.5bhkbuiltup`, `3.5bhksuperbuiltup`, `3.5bhkprice`, `3.5bhkfloor`, `3.5bhkbathroom`, `has3bhk`, `3bhkfloorplan`, `3bhkcarpetarea`, `3bhkbuiltup`, `3bhksuperbuiltup`, `3bhkprice`, `3bhkfloor`, `3bhkbathroom`, `has2.5bhk`, `2.5bhkfloorplan`, `2.5bhkcarpetarea`, `2.5bhkbuiltup`, `2.5bhksuperbuiltup`, `2.5bhkprice`, `2.5bhkfloor`, `2.5bhkbathroom`, `has2bhk`, `2bhkfloorplan`, `2bhkcarpetarea`, `2bhkbuiltup`, `2bhksuperbuiltup`, `2bhkprice`, `2bhkfloor`, `2bhkbathroom`, `has1.5bhk`, `1.5bhkfloorplan`, `1.5bhkcarpetarea`, `1.5bhkbuiltup`, `1.5bhksuperbuiltup`, `1.5bhkprice`, `1.5bhkfloor`, `1.5bhkbathroom`, `has1bhk`, `1bhkfloorplan`, `1bhkcarpetarea`, `1bhkbuiltup`, `1bhksuperbuiltup`, `1bhkprice`, `1bhkfloor`, `1bhkbathroom`, `owner/Builder`, `builderid`, `Hero image`, `Gallery Image1`, `Gallery image2`, `Gallery image3`, `Gallery Image4`) VALUES
(1, 'Nirmal Heights', '02', 'Narendra Nagar', 'lane no 20', 'Nagpur', 'Maharashtra', 'India', 440008, 'apartment', 'yes', 'active', 'semi furnished', '200000', '4', '6', '8', '1000', '0', 'not available', 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 'google.com', 'this apartment is located in Nagpur', '2023-06-13 09:33:09.000000', 'yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gopal Builders And Developers', '101', '', '', '', '', ''),
(2, '5232 California AVE. 21BC', '5232', 'California AVE.', '21BC', 'California', 'California', 'United States', 123456, 'House', 'Available', 'Available', 'Full Furnished', '5100000', '4', '6', '8', '1500', '0', 'Not Available', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Ratione laborum quo quos omnis sed magnam id, ducimus saepe, debitis error earum, iste dicta odio est sint dolorem magni animi tenetur.\r\n\r\nPerferendis eligendi reprehenderit, assumenda molestias nisi eius iste reiciendis porro tenetur in, repudiandae amet libero. Doloremque, reprehenderit cupiditate error laudantium qui, esse quam debitis, eum cumque perferendis, illum harum expedita.\r\n', '2023-06-13 10:21:23.000000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'yes', 'floor plan image', '1500', '1', '1', '7800000', '0', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Gopal Builders', '101', 'hero image 1', 'gimage1', 'g image2', 'gimage 3', 'g image 4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `user type` varchar(50) NOT NULL DEFAULT 'Subscriber',
  `Last Login` timestamp NOT NULL,
  `IP address` varchar(255) NOT NULL,
  `User Create on` timestamp NOT NULL,
  `Modification date` timestamp NOT NULL,
  `Profile` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `Name`, `Email`, `phone`, `Password`, `user type`, `Last Login`, `IP address`, `User Create on`, `Modification date`, `Profile`) VALUES
(1, '', 'user1', 'alpha@gmail.com', '', 'Alpha', 'Subscriber', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 'user2', 'user 2', 'user2@gmail.com', '', 'user2', 'Subscriber', '2023-05-31 12:41:06', '192.168.057.014', '2023-05-31 12:41:06', '2023-05-31 12:41:06', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
(3, 'root', 'root', 'root@gmail.com', '', '7215ee9c7d9dc229d2921a40e899ec5f', 'Admin', '2023-06-01 07:38:32', '100.22.22.01', '2023-06-01 07:38:32', '2023-06-01 07:38:32', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(4, 'ashish', 'ashish shukla', 'ashish@gmail.com', '', '633a612ae9cb31748e12a8369dcf2801', 'Subscriber', '2023-06-02 06:40:07', '100.221.235.012', '2023-06-02 06:40:07', '2023-06-02 06:40:07', 'google.com'),
(5, 'Singh', 'Vijay Baghel', 'baghelvv@gmail.com', '9518969720', 'a840409441ca0fdaa1f999e884d0c3ec', 'Admin', '2023-06-02 08:24:20', '::1', '2023-06-02 08:24:20', '2023-06-02 08:24:20', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDhPz7CL8gVPIQ3wkwqaslgqc8DJ_XlzT9rg&usqp=CAU'),
(6, 'Singh', 'Vijay Baghel', 'baghelvv@gmail.com', '9518969720', 'a840409441ca0fdaa1f999e884d0c3ec', 'Admin', '2023-06-02 08:24:59', '::1', '2023-06-02 08:24:59', '2023-06-02 08:24:59', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDhPz7CL8gVPIQ3wkwqaslgqc8DJ_XlzT9rg&usqp=CAU');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `builder`
--
ALTER TABLE `builder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inquiry_id` (`inquiry_id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `builder`
--
ALTER TABLE `builder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`inquiry_id`) REFERENCES `inquiries` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
