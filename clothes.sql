-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2019 at 02:57 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `product_name`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(76, 42, 'Avengers T-shirt', '235', 'downloads/avangers tshirt.jpeg', 1, '235', 'p1001'),
(77, 42, 'Dotted T-Shirt', '270', 'downloads/banjo-emerson-mathew-xWUT0etaVYw-unsplash.jpg', 1, '270', 'p1002');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `pro_id`, `name`) VALUES
(1, 101, 'Continental'),
(2, 102, 'South Indian'),
(3, 103, 'Punjabi'),
(4, 104, 'Snacks'),
(5, 105, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `pmode`, `products`, `amount_paid`) VALUES
(13, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),ChocoVolcanoCake(1),bubbleteacoffee(1),Spicedpanner(1),Chilli Burger(1),Veg Burger(1),Chilli Burger(1),Veg Burger(1)', '615'),
(14, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),ChocoVolcanoCake(1),bubbleteacoffee(1),Spicedpanner(1),Chilli Burger(1),Veg Burger(1),Chilli Burger(1),Veg Burger(1)', '615'),
(15, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '3', 'cod', 'Chilli Burger(1),Veg Burger(1)', '85'),
(16, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1)', '85'),
(17, 'Mudit Mangal', 'mudit.mangal_cs17@gla.ac.in', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(18, 'Gopinath', 'agarwalmudit02@gmail.com', '6396852830', '2', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(19, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),Chocolate Muffin(1)', '215'),
(20, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '3', 'cod', 'Spicedpanner(1),Vegexotica(1)', '300'),
(21, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),bubbleteacoffee(1)', '255'),
(22, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Chilli Burger(1),Veg Burger(1),Chatpata Naan(1),bubbleteacoffee(1)', '255'),
(23, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '1', 'cod', 'Avengers T-shirt(1)', '235'),
(24, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'wqwqw', 'cod', 'Avengers T-shirt(1)', '235'),
(25, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'qwqw', 'cod', 'Avengers T-shirt(1)', '235'),
(26, 'Gopinath', 'agarwalmudit02@gmail.com', '6396852830', 'qwqwq', 'cod', 'Avengers T-shirt(1)', '235'),
(27, 'Gopinath', 'agarwalmudit02@gmail.com', '6396852830', 'qwqwq', 'cod', 'Avengers T-shirt(1)', '235'),
(28, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '8988080088', 'qwqwq', 'cod', 'Avengers T-shirt(1)', '235'),
(29, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'dda', 'cod', 'Avengers T-shirt(1)', '235'),
(30, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '12121', 'cod', 'Avengers T-shirt(1)', '235'),
(31, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', '2121', 'cod', 'Avengers T-shirt(1),Dotted T-Shirt(1)', '505'),
(32, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'Gla University, Mathura', 'cod', 'Avengers T-shirt(1),Dotted T-Shirt(1)', '505'),
(33, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'Gla University, Mathura', 'cod', 'Avengers T-shirt(1),Dotted T-Shirt(1)', '505'),
(34, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'qwqwq', 'cod', 'Avengers T-shirt(1),Dotted T-Shirt(1)', '505'),
(35, 'Mudit Mangal', 'agarwalmudit02@gmail.com', '6396852830', 'GLA University, Mathura', 'cod', 'Avengers T-shirt(1),Dotted T-Shirt(1)', '505');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(255) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `Type`, `brand`, `product_name`, `product_price`, `product_image`, `product_code`) VALUES
(1, 'Men', 'T-Shirts', 'Polo Dark Green T-shirt', '250', 'downloads\\Polo Dark Green T-shirt.jpeg', 'p1000'),
(2, 'Men', 'T-Shirts', 'Avengers T-shirt', '235', 'downloads/avangers tshirt.jpeg', 'p1001'),
(3, 'Men', 'T-Shirts', 'Dotted T-Shirt', '270', 'downloads/banjo-emerson-mathew-xWUT0etaVYw-unsplash.jpg', 'p1002'),
(4, 'Men', 'Jackets', 'sleeve men jacket', '360', 'downloads/full sleeve men jacket.jpeg', 'p1003'),
(5, 'Women', 'Jackets', 'Blue jacket', '300', 'downloads/Blue Jacket.jpeg', 'p1004'),
(6, 'Men', 'Kurtas', 'Blue kurta', '140', 'downloads/men solid bluekurta.jpeg', 'p1005'),
(7, 'Women', 'Kurtas', 'Anarkali kurta', '160', 'downloads/printed anarkali kurta.jpeg', 'p1006'),
(8, 'Men', 'Hoodies', 'Black Hoody', '240', 'downloads/solidmenmaroon.jpeg', 'p1007'),
(9, 'Men', 'Hoodies', 'Red Fashion Hoody', '260', 'downloads/typographymenhooded.jpeg', 'p1008'),
(10, 'Men', 'T-Shirts', 'V-neck Maroon T-shirt', '260', 'downloads/v-neck maroon t-shirt.jpeg', 'p1009'),
(11, 'Men', 'Jeans', 'black Jeans', '250', 'downloads/menblackjeams.jpeg', 'p1010'),
(12, 'Women', 'Saree', 'Banarasi Cotton Silk Saree', '400', 'downloads/Banarasi cotton silk saree.jpeg', 'p1011'),
(13, 'Women', 'Saree', 'Chiffron Saree', '360', 'downloads/chiffron saree.jpeg', 'p1012'),
(14, 'All', 'Caps', 'Baenie Cap', '120', 'downloads/baenie cap.jpeg', 'p1013'),
(15, 'Men', 'Jeans', 'Dark blue Jeans', '280', 'downloads/Darkbluejeans.jpeg', 'p1014'),
(16, 'Women', 'T-Shirts', 'Black T-Shirt', '200', 'downloads/Round neck black T-Shirt.jpeg', 'p1015'),
(17, 'Women', 'Fashion', 'Multicolor Top', '290', 'downloads/Half sleeve multicolor top.jpeg', 'p1016'),
(18, 'Women', 'Fashion', 'Yellow Top', '270', 'downloads/Sleeve printed Yellow top.jpeg', 'p1017'),
(19, 'Women', 'T-Shirts', 'Multicolor T-Shirt', '270', 'downloads/Round neck multicolor T-Shirt.jpeg', 'p1018'),
(20, 'Men', 'Waistcoat', 'Silver Waistcoat', '400', 'downloads/Silver Waistcost.jpeg', 'p1019'),
(21, 'Men', 'Waistcoat', 'Blue Waistcoat', '420', 'downloads/Men Waistcoat.jpeg', 'p1020'),
(22, 'Men', 'Track Suits', 'Full Sleeve Track Suit', '380', 'downloads/men track suit.jpeg', 'p1021'),
(23, 'Kids', 'Waistcoat', 'Waistcoat Breech set', '350', 'downloads/waistcost and breech set.jpeg', 'p1022'),
(24, 'Kids', 'Kurtas', 'Yellow kurta pyjama set', '250', 'downloads/Yellow kurta pyjama set.jpeg', 'p1023'),
(25, 'Women', 'Sweat Shirts', 'Full Sleeve Blue Sweatshirt', '280', 'downloads/Full Sleeve  Blue Sweatshirt.jpeg', 'p1024'),
(26, 'Women', 'Sweat Shirts', 'Full Sleeve Multicolor Sweatshirts', '350', 'downloads/Full Sleeve Multicolor Sweatshirts.jpeg', 'p1025'),
(27, 'Women', 'Sweat Shirts', 'Graphic Printed Sweatshirts', '320', 'downloads/Graphic Printed Sweatshirts.jpeg', 'p1026'),
(28, 'Men', 'Trousers', 'Black Trousers', '300', 'downloads/Black Trousers.jpeg', 'p1027'),
(29, 'Men', 'Trousers', 'Brown Trousers', '260', 'downloads/brown Trousers.jpeg', 'p1028'),
(30, 'Men', 'Trousers', 'Grey Trousers', '250', 'downloads/Grey Trousers.jpeg', 'p1029');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `p_id` int(10) NOT NULL AUTO_INCREMENT,
  `pro_id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1007 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`p_id`, `pro_id`, `name`) VALUES
(1001, 101, '2649'),
(1002, 102, '4863'),
(1003, 103, 'chatpatanaan'),
(1004, 104, 'pastry'),
(1005, 105, 'chocolatemuffin'),
(1006, 106, 'chocolateshake');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'slidenumber1', 'home1'),
(2, 'slidenumber2', 'jevelin-food-website-template'),
(3, 'slidenumber3', 'modernoffice');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` date NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `tokenexpire` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `username`, `email`, `password`, `created`, `token`, `tokenexpire`) VALUES
(42, 'Mudit Mangal', 'cafeteria', 'agarwalmudit02@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2019-11-22', NULL, '2019-11-22 05:16:29.453830');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
