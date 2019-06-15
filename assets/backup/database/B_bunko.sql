-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2019 at 07:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b_bunko`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_volume` int(11) NOT NULL,
  `product_thumbnail` varchar(255) NOT NULL,
  `product_author` varchar(255) NOT NULL,
  `product_rating` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_publisher` varchar(255) NOT NULL,
  `product_genre` varchar(255) NOT NULL,
  `product_synopsis` longtext NOT NULL,
  `product_sample` varchar(255) NOT NULL,
  `product_series` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `date_in` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_volume`, `product_thumbnail`, `product_author`, `product_rating`, `product_price`, `product_publisher`, `product_genre`, `product_synopsis`, `product_sample`, `product_series`, `product_category`, `date_in`) VALUES
(1, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 1, 'assets/img/LN/Oregairu/1.png', 'Watari Wataru', 2, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-14'),
(2, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 2, 'assets/img/LN/Oregairu/2.png', 'Watari Wataru', 2, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-15'),
(3, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 3, 'assets/img/LN/Oregairu/3.png', 'Watari Wataru', 3, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-16'),
(4, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 4, 'assets/img/LN/Oregairu/4.png', 'Watari Wataru', 2, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-17'),
(5, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 5, 'assets/img/LN/Oregairu/5.png', 'Watari Wataru', 4, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-18'),
(6, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 6, 'assets/img/LN/Oregairu/6.png', 'Watari Wataru', 5, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-19'),
(7, 'My Youth Romantic Comedy Is Wrong, \r\nAs I Expected', 12, 'assets/img/LN/Oregairu/12.png', 'Watari Wataru', 4, 200000, 'Gagaga Bunko', 'Slice of Life, Comedy, Drama, Romance, School', 'Hachiman Hikigaya is an apathetic high school student with narcissistic and semi-nihilistic tendencies. He firmly believes that joyful youth is nothing but a farce, and everyone who says otherwise is just lying to themselves. \r\n\r\nIn a novel punishment for writing an essay mocking modern social relationships, Hachiman\'s teacher forces him to join the Volunteer Service Club, a club that aims to extend a helping hand to any student who seeks their support in achieving their goals. With the only other club member being the beautiful ice queen Yukino Yukinoshita, Hachiman finds himself on the front line of other people\'s problems—a place he never dreamed he would be. As Hachiman and Yukino use their wits to solve many students\' problems, will Hachiman\'s rotten view of society prove to be a hindrance or a tool he can use to his advantage?', '', 'Oregairu', 'LN', '2019-06-20'),
(8, 'Give Blessings to This Wonderful World!', 1, 'assets/img/LN/Konosuba/1.png', 'Akatsuki, Natsume', 3, 190000, 'Yen Press', 'Adventure, Comedy, Fantasy, Magic, Parody, Supernatural', 'Game loving shut-in Kazuma Satou\'s life as a young schoolboy in Japan abruptly comes to an early end...or at least it was supposed to. When he opens his eyes, though, he sees a beautiful goddess that offers him a once in an after-lifetime chance to be reborn in a parallel world. The catch is that the world is violent and threatened by a growing evil! Fortunately, he can choose any one thing to bring with him. So he chooses the goddess, Aqua! And so his adventure with his gorgeous companion begins--if he could just get enough money and food to survive, keep his goddess out of trouble, and avoid grabbing the attention of the Demon King\'s army!', 'assets/sample/Konosuba/1.pdf', 'Konosuba', 'LN', '2019-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `trans_id` int(11) NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `payment_type` varchar(25) NOT NULL,
  `address` longtext NOT NULL,
  `trans_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`trans_id`, `invoice`, `user_id`, `product_id`, `product_qty`, `total_amount`, `purchase_date`, `payment_type`, `address`, `trans_status`) VALUES
(1, 'INV/20190615/5818784676', 1, 7, 1, 220000, '2019-06-15', 'Bank Transfer', 'Jalan Kebon Jeruk Raya \r\nNo.27 1 9, RT.1/RW.9, Kb. Jeruk, \r\nKec. Kb. Jeruk, Kota Jakarta Barat, \r\nDaerah Khusus Ibukota Jakarta 11530', 'Cancel'),
(2, 'INV/20190615/0444090531', 1, 6, 1, 220000, '2019-06-15', 'Bank Transfer', 'Jalan Kebon Jeruk Raya No.27 1 9, RT.1/RW.9, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530', 'Cancel'),
(3, 'INV/20190615/2919005004', 1, 8, 2, 209000, '2019-06-15', 'Bank Transfer', 'Jalan Kebon Jeruk Raya No.27 1 9, RT.1/RW.9, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530', 'Approved'),
(4, 'INV/20190615/5389193580', 1, 5, 4, 440000, '2019-06-15', 'Credit Card', 'Jalan Kebon Jeruk Raya No.27 1 9, RT.1/RW.9, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530', 'Pending'),
(5, 'INV/20190616/2971097089', 1, 1, 1, 220000, '2019-06-16', 'Bank Transfer', 'Jalan Kebon Jeruk Raya No.27 1 9, RT.1/RW.9, Kb. Jeruk, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta 11530', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'Waldo', 'waldo@google.com', 'waldo123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `transactions_ibfk_1` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
