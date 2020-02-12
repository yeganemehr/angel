-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2020 at 10:03 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 5.6.40-14+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angel`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`) VALUES
(1, 'زیبا جادار مطمئن', 'میتونید روی کار و تزیین کنید یا همینطور ساده وشیک استفاده کنید.', 'assets/images/products/product-1.jpg'),
(2, 'رومیزی', 'اینم رومیزی ک میتونه برای اپن نهارخوری میزمبل..دراور و......تهیه بشه.تک رنگ این کارهم خاص وزیبا میشه.', 'assets/images/products/product-2.jpg'),
(3, 'پترن یک رومیزی جذاب', 'طرح ساده یی هست و میتونید ازکتان ..مرسریزه و دیوا استفاده کنید ک رنگهای متنوع دارن.', 'assets/images/products/product-3.jpg'),
(4, 'رومیزی بزرگ ساده بافت وشیک', 'باپترنی راحت ک فقط چندنوع پایه وزنجیره ی ساده دارد.', 'assets/images/products/product-4.jpg'),
(5, 'هفت ضلعی', 'خاص وپرانرژی پرازرنگ .پترن کارهست.با شش ضلعی ها میشه طرحهای خاصی ارائه داد.', 'assets/images/products/product-5.jpg'),
(6, 'اهل بلاک کردن خسته هانیستم', 'وقتشم ندارم و چیزی ک خودم دوست دارم و از بافتش لذت میبرم به اشتراک میزارم', 'assets/images/products/product-6.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
