-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2020 at 10:37 PM
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
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `text`, `image`, `views`) VALUES
(1, 'زیبا جادار مطمئن', 'میتونید روی کار و تزیین کنید یا همینطور ساده وشیک استفاده کنید.', 'فعالیت های ورزشی همیشه با تعریق بدن همراه است و گاهی در هوای سرد باید به نحوی کنترل شود.کلاه بافت «چابوک» (Cabok) مدل «SCREW» با فناوری جدید سبکی نو برای فعالیت‌های ورزشی در فصل‌های سرد است. زمانی که در دمای صفر درجه به فعالیت ورزشی مشغول هستید حرارت بدن بالا می‌رود که از طریق سر به صورت تعریق مداوم خارج می‌شود و حتی با توقف فرد این تعریق به دو تا سه برابر افزایش می‌یابد, حال شما باید این تعریق آنی را مدیریت کنید تا از آسیب‌های گرفتگی سر وگردن جلوگیری کنید. کلاه ورزشی «SCREW» میتواند تعریق مداوم شما را به خوبی مدیریت کند. آستر نانو بافت از جنس ویسکوز که نوعی الیاف گیاهی است داخل کلاه با کشسانی خوبی که دارد کاملا در قالب سر جای میگیرد و عرق حاصل از فعالیت شما را جذب و به بافت بیرونی منتقل میکند,لایه بیرونی با تراکم بافت مناسبی که دارد به سرعت عرق فرد را خشک میکند. لایه بیرونی این کلاه از الیاف بسیار نرم بافته شده که کاملا جذب سر شده و مانع نفوذ سرما میشود. شما میتوانید از این کلاه به عنوان گتر گردن استفاده کنید. کلاه «SCREW» در بیشتر رشته‌های ورزشی مثل: دو, کوه پیمایی دوچرخه‌سواری وهمچنین بعد از اتمام ورزش‌های سالنی کارایی خوب وحرفه‌ای دارد.', 'assets/images/products/product-1.jpg', 14),
(2, 'رومیزی', 'اینم رومیزی ک میتونه برای اپن نهارخوری میزمبل..دراور و......تهیه بشه.تک رنگ این کارهم خاص وزیبا میشه.', '', 'assets/images/products/product-2.jpg', 0),
(3, 'پترن یک رومیزی جذاب', 'طرح ساده یی هست و میتونید ازکتان ..مرسریزه و دیوا استفاده کنید ک رنگهای متنوع دارن.', '', 'assets/images/products/product-3.jpg', 0),
(4, 'رومیزی بزرگ ساده بافت وشیک', 'باپترنی راحت ک فقط چندنوع پایه وزنجیره ی ساده دارد.', '', 'assets/images/products/product-4.jpg', 0),
(5, 'هفت ضلعی', 'خاص وپرانرژی پرازرنگ .پترن کارهست.با شش ضلعی ها میشه طرحهای خاصی ارائه داد.', '', 'assets/images/products/product-5.jpg', 0),
(6, 'اهل بلاک کردن خسته هانیستم', 'وقتشم ندارم و چیزی ک خودم دوست دارم و از بافتش لذت میبرم به اشتراک میزارم', '', 'assets/images/products/product-6.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_comments`
--

CREATE TABLE `products_comments` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` int(11) NOT NULL,
  `approval` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_comments`
--

INSERT INTO `products_comments` (`id`, `product_id`, `name`, `sent_at`, `approval`, `text`) VALUES
(1, 1, 'غلامعلی', 1581631701, 1, ' خوبه الان دو هفته س ازش استفاده میکنم تو سرما و برف، راضی ام '),
(2, 1, 'اقدس', 5642141, -1, ' من واقعا انتظار اینرو نداشتم . خیلی بیش تر از چیزی که بهش میخوره کارامد‌ و مناسبه زمستون برخلاف ظاهر پارچه ای و نازکش. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_comments`
--
ALTER TABLE `products_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_comments_ibfk_1` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_comments`
--
ALTER TABLE `products_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products_comments`
--
ALTER TABLE `products_comments`
  ADD CONSTRAINT `products_comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
