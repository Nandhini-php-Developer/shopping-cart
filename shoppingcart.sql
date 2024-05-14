-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 01:14 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Smart Watch', '<p>Unique watch made with stainless steel, ideal for those that prefer interative watches.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Powered by Android with built-in apps.</li>\r\n<li>Adjustable to fit most.</li>\r\n<li>Long battery life, continuous wear for up to 2 days.</li>\r\n<li>Lightweight design, comfort on your wrist.</li>\r\n</ul>', 29.99, 0.00, 10, 'smart-watch1.jpg', '2019-03-13 17:55:22'),
(2, 'AMAZFIT', 'Buy Amazfit GTS 2e Square Smart Black Dial Unisex Watch - A2021-BK | Helios Watch Store', 14.99, 19.99, 34, 'smart-watch4.jpg', '2019-03-13 18:52:49'),
(3, 'Apple Watch Ultra 2', '49mm case Aerospace-grade titanium Dual speakers Three-microphone array with beamforming and wind noise mitigation', 19.99, 0.00, 23, 'smart-watch3.jpg', '2019-03-13 18:47:56'),
(4, 'Digital Camera', 'Asleesha Wristband Watch Camera Watch, Portable Camera, Audio \nVideo Recording Wearable Watch Camera with HD Touchscreen & One Click to Record\n<b>About this item</b>\n<ul>\n    <li>HD VIDEO RECORDING WATCH.</li>\n    <li>SMART ONE KEY OPERATION.</li>\n    <li>SUPPORT 128G SD CARD.</li>\n    <li>TIME CALENDAR DISPLAY.</li>\n</ul>\nNote: Charge Device For 1 Hour Before Using It, Format SD Card Before Using First Time in Device.', 69.99, 0.00, 7, 'camera-watch.jpg', '2019-03-13 17:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
