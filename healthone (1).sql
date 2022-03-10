-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 02:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `picture`) VALUES
(1, 'roeitrainer', 'roeitrainer.jpg'),
(2, 'crosstrainer', 'crosstrainer.jpg'),
(3, 'home trainer ', 'hometrainer.jpg'),
(4, 'loopband', 'loopband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(10, 'crosstrainer.2', 'categories/crosstrainer/cr2.jpg', ' de focus Fitness Fox 4 is een fantastische crosstrainer voor elke thuissporter. Deze voorwiel aangedreven crosstrainer heeft een ongelooflijk scherpe prijs voor de uitstekende specificaties die hij te bieden heeft. Met een eigen gewicht van 67 kg, een vliegwiel van 7 kg en een lengtepas van 50 cm is een comfortabele en stabiele sportervaring gegarandeerd.', 2),
(11, 'crosstrainer.3', 'categories/crosstrainer/cr3.jpg', 'Geen training is hetzelfde met de Flow Fitness Glider DCT2000i Crosstrainer. Met maar liefst 24 programma\'s, 16 weerstandsniveaus en een handige bediening met Smart Wheel én Quick Keys voldoet deze crosstrainer aan de wensen van vrijwel iedere thuissporter. En wat dacht je van de Bluetooth ontvanger, waarmee je het fitnessapparaat verbindt met je favoriete trainingsapps? De mogelijkheden zijn eindeloos.', 2),
(12, 'crosstrainer.4', 'categories/crosstrainer/cr4.jpg', 'De Crosstrainer - Focus Fitness Fox 5 is dankzij de zeer hoge kwaliteit en betaalbare prijs niet voor niets ons bestverkochte en best beoordeelde model.\r\n\r\nMede dankzij het vliegwiel van 10 kg zorgt de Fox 5 ervoor dat je altijd op een natuurlijke en soepele manier kunt trainen. Of je de Fox 5 gebruikt voor revalidatie, in beweging wilt blijven of er intensief gebruik van wilt maken. Deze crosstrainer is geschikt voor iedereen! En dat blijkt: in het verleden heeft de Focus Fitness Fox 5 crosstrainer een Kieskeurig Review Award gewonnen dankzij de positieve reviews van consumenten!\r\n\r\n', 2),
(16, 'jgjgjjg', '', 'dwq', 1),
(17, 'Denvey van Loenen', '', 'dikke bmw', 4);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `stars` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `name`, `date`, `description`, `stars`, `product_id`) VALUES
(19, 1, 'danique van loenen', '2022-01-16', 'dikke bmw', 5, 10),
(20, 1, 'danique van loenen', '2022-01-16', 'dikke bmw', 5, 10),
(21, 1, 'Denvey van Loenen', '2022-01-21', 'hallo', 5, 11),
(22, 1, 'Denvey van Loenen', '2022-03-10', 'hallo', 5, 11);

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `dag` varchar(255) NOT NULL,
  `tijd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`dag`, `tijd`) VALUES
('Maandag', '7:00-20:00'),
('Dinsdag', '8:00-20:00'),
('Woensdag', '7:00-20:00'),
('Donderdag', '8:00-20:00'),
('Vrijdag', '7:00-20:30'),
('Zaterdag', '8:00-13:00'),
('Zondag', '8:00-13:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` enum('member','admin') DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, 'admin@healthone.com', 'admin', 'Denvey', 'van Loenen', 'admin'),
(2, 'Member@healthone.com', 'member', 'janey', ' Croes', 'member'),
(3, 'Denveyvanloenen@gmail.com', 'Denvey', 'Denvey', '    van Loenen', 'member'),
(4, 'Dannyvanloenen@gmail.com', 'Denvey', 'danny', 'van Loenen-Snoeck', 'member'),
(5, 'Chantalvanloenen@gmail.com', 'Chantal', 'Chantal', 'van Loenen-Snoeck', 'member'),
(7, 'piet@mail.nl', 'piet', 'piet', 'paulesma', 'member'),
(8, 'Gewan@gmail.com', 'Gewan', 'Gewan', 'Rashid', 'member'),
(9, 'qwerty@gmail.com', 'qwert', 'qwerty', ' qwerty', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stars` (`stars`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
