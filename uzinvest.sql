-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2024 at 12:48 PM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uzinvest`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_uz`, `name_ru`, `slug_uz`, `slug_ru`, `created_at`, `updated_at`) VALUES
(1, 'Cook Islands', 'United States of America', 'cook-islands', 'united-states-of-america', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(2, 'Lithuania', 'Puerto Rico', 'lithuania', 'puerto-rico', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(3, 'Colombia', 'Haiti', 'colombia', 'haiti', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(4, 'United States Virgin Islands', 'Burundi', 'united-states-virgin-islands', 'burundi', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(5, 'Tuvalu', 'Serbia', 'tuvalu', 'serbia', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(6, 'Cape Verde', 'Holy See (Vatican City State)', 'cape-verde', 'holy-see-vatican-city-state', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(7, 'Slovakia (Slovak Republic)', 'Zimbabwe', 'slovakia-slovak-republic', 'zimbabwe', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(8, 'Bolivia', 'Ghana', 'bolivia', 'ghana', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(9, 'Senegal', 'Tonga', 'senegal', 'tonga', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(10, 'Uruguay', 'Comoros', 'uruguay', 'comoros', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(11, 'Djibouti', 'Trinidad and Tobago', 'djibouti', 'trinidad-and-tobago', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(12, 'Russian Federation', 'Cyprus', 'russian-federation', 'cyprus', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(13, 'Sierra Leone', 'Saint Martin', 'sierra-leone', 'saint-martin', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(14, 'United States Minor Outlying Islands', 'Cote d\'Ivoire', 'united-states-minor-outlying-islands', 'cote-divoire', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(15, 'Croatia', 'Cambodia', 'croatia', 'cambodia', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(16, 'China', 'Norway', 'china', 'norway', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(17, 'Kenya', 'Guadeloupe', 'kenya', 'guadeloupe', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(18, 'Denmark', 'Malta', 'denmark', 'malta', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(19, 'Montenegro', 'British Virgin Islands', 'montenegro', 'british-virgin-islands', '2024-02-20 07:15:45', '2024-02-20 07:15:45'),
(20, 'Guinea-Bissau', 'Tokelau', 'guinea-bissau', 'tokelau', '2024-02-20 07:15:45', '2024-02-20 07:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foreign_companies`
--

CREATE TABLE `foreign_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `investor_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `industry_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foreign_companies`
--

INSERT INTO `foreign_companies` (`id`, `investor_id`, `industry_id`, `name`, `slug`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, '20', 16, 'Sabrina Pacocha', 'sabrina-pacocha', 'einar15@okeefe.biz', '+1-262-985-3382', '25087 Arnulfo Square\nBrianshire, OH 42713-1418', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(2, '16', 11, 'Elian Cremin', 'elian-cremin', 'verona.hauck@gmail.com', '(509) 318-8431', '80069 Jammie Mission\nDanielberg, DC 13289', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(3, '3', 10, 'Forest Harvey', 'forest-harvey', 'violet.hansen@gmail.com', '234.904.2530', '140 Ward Field Suite 554\nGarretbury, IA 99572-0179', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(4, '8', 16, 'Dr. Marcellus Labadie IV', 'dr-marcellus-labadie-iv', 'ijacobi@yahoo.com', '1-650-370-0998', '80394 Cole Way\nNew Nathen, WV 52450-4956', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(5, '13', 7, 'Mr. Osborne Reynolds', 'mr-osborne-reynolds', 'kiehn.macey@fahey.com', '+1-719-900-3688', '2457 Shany Station\nWest Chaya, IL 80276', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(6, '4', 17, 'Irving Stroman', 'irving-stroman', 'nasir97@hotmail.com', '520.548.3150', '410 Buckridge Junctions Suite 689\nFeestbury, OH 50339-7109', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(7, '14', 15, 'Prof. Okey O\'Reilly MD', 'prof-okey-oreilly-md', 'jdaniel@yahoo.com', '223.319.8411', '1374 McDermott Place\nEichmannfort, CT 32158-7343', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(8, '9', 10, 'Ms. Constance Kessler V', 'ms-constance-kessler-v', 'heaney.flavie@gmail.com', '+1-925-242-8543', '4211 Ebert Stravenue\nNew Evalyn, AL 39197-0928', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(9, '11', 10, 'Ms. Jayne Bartell V', 'ms-jayne-bartell-v', 'felipe.christiansen@kihn.com', '1-336-895-5361', '451 Jerald Pike\nAkeemland, SC 20645-4523', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(10, '4', 19, 'Kyra Altenwerth', 'kyra-altenwerth', 'altenwerth.otho@gmail.com', '202.552.4699', '5905 Neoma Corner\nSouth Jamil, FL 80676-0417', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(11, '15', 4, 'Raina Kihn Sr.', 'raina-kihn-sr', 'emmalee97@hotmail.com', '985.839.5234', '3749 Shields Village Suite 938\nVeronaport, DC 88779-6874', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(12, '2', 7, 'Alysa Effertz', 'alysa-effertz', 'gudrun.abbott@ohara.com', '(614) 599-1055', '6261 Keebler Estates\nLake Jerodborough, OH 08861', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(13, '12', 3, 'Oran Schuppe', 'oran-schuppe', 'medhurst.nels@hotmail.com', '+18726279536', '6187 Fiona Station\nLemkeview, NY 53149', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(14, '1', 6, 'Cordie Buckridge V', 'cordie-buckridge-v', 'lockman.tod@herzog.com', '+1-445-391-6447', '3135 Fadel Hill Suite 584\nVincechester, NM 79211', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(15, '12', 4, 'Colleen Mosciski', 'colleen-mosciski', 'reese.hartmann@yahoo.com', '731-272-4308', '11811 Bartholome Streets Apt. 085\nWest Joelfurt, DE 11658-4297', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(16, '16', 19, 'Jalon Stanton IV', 'jalon-stanton-iv', 'ethel71@ruecker.biz', '541.319.8662', '1901 Vincent Points\nNorth Julien, NC 31598', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(17, '1', 7, 'Mr. Joseph Roberts III', 'mr-joseph-roberts-iii', 'annabell.rohan@gmail.com', '+1.254.543.2961', '22573 Alessandro Rue\nEast Rhiannonstad, DC 35523-4361', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(18, '8', 11, 'Elmore Weimann Sr.', 'elmore-weimann-sr', 'brekke.mercedes@olson.org', '+1 (931) 651-6999', '51773 Jensen Tunnel Apt. 180\nLake Jerrellmouth, IL 77649', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(19, '7', 19, 'Madison Cole', 'madison-cole', 'gpfannerstill@ledner.com', '1-315-637-6220', '728 Christ Harbor Apt. 945\nLucieshire, WA 65525-5391', '2024-02-20 10:10:16', '2024-02-20 10:10:16'),
(20, '9', 1, 'Dr. Aida Wunsch', 'dr-aida-wunsch', 'emertz@yahoo.com', '308.268.5100', '23686 Greenfelder Plains\nBrodyhaven, OH 53158-2138', '2024-02-20 10:10:16', '2024-02-20 10:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `industries`
--

CREATE TABLE `industries` (
  `id` bigint UNSIGNED NOT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `industries`
--

INSERT INTO `industries` (`id`, `name_uz`, `name_ru`, `slug_uz`, `slug_ru`, `created_at`, `updated_at`) VALUES
(1, 'illo', 'labore', 'illo', 'labore', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(2, 'optio', 'et', 'optio', 'et', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(3, 'eum', 'ipsum', 'eum', 'ipsum', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(4, 'rerum', 'ducimus', 'rerum', 'ducimus', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(5, 'iste', 'praesentium', 'iste', 'praesentium', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(6, 'voluptate', 'nobis', 'voluptate', 'nobis', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(7, 'nemo', 'optio', 'nemo', 'optio', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(8, 'quia', 'modi', 'quia', 'modi', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(9, 'dolor', 'odit', 'dolor', 'odit', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(10, 'non', 'ut', 'non', 'ut', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(11, 'voluptas', 'enim', 'voluptas', 'enim', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(12, 'sed', 'qui', 'sed', 'qui', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(13, 'veniam', 'consequatur', 'veniam', 'consequatur', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(14, 'dolores', 'eveniet', 'dolores', 'eveniet', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(15, 'et', 'quos', 'et', 'quos', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(16, 'dicta', 'eos', 'dicta', 'eos', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(17, 'tenetur', 'molestiae', 'tenetur', 'molestiae', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(18, 'perferendis', 'error', 'perferendis', 'error', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(19, 'dignissimos', 'atque', 'dignissimos', 'atque', '2024-02-20 07:09:18', '2024-02-20 07:09:18'),
(20, 'reprehenderit', 'officia', 'reprehenderit', 'officia', '2024-02-20 07:09:18', '2024-02-20 07:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `industry_id` int UNSIGNED NOT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `project_id` int UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investors`
--

INSERT INTO `investors` (`id`, `name`, `slug`, `country_id`, `industry_id`, `amount`, `project_id`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Amiya Gusikowski', 'amiya-gusikowski', 4, 16, 1528859573, 2, 'xlesch@ziemann.com', '(602) 474-8453', '384 Braun Burg\nPort Octaviatown, IN 11700', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(2, 'Esperanza Balistreri', 'esperanza-balistreri', 20, 14, 1491359955, 16, 'lindgren.berniece@gerlach.biz', '+1-463-600-8075', '39687 Laura Stream Apt. 808\nNicholausfurt, MD 18303-5208', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(3, 'Khalid Ruecker', 'khalid-ruecker', 9, 10, 1648594076, 1, 'faye45@yahoo.com', '+1-947-695-8972', '88853 Luigi Mall Suite 656\nTowneview, GA 80957-8695', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(4, 'Annabel Zieme', 'annabel-zieme', 20, 1, 153641871, 18, 'emelia.bahringer@hotmail.com', '+1 (484) 635-7857', '78269 Pacocha Path\nNew Brandon, NY 01549', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(5, 'Jedediah Ernser', 'jedediah-ernser', 2, 16, 816143646, 12, 'hahn.izaiah@gmail.com', '770-522-5952', '439 Crona Alley\nLetitiaport, DC 53208-7701', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(6, 'Miss Delfina Luettgen', 'miss-delfina-luettgen', 19, 18, 1359393311, 18, 'ziemann.eldon@altenwerth.info', '617-760-5204', '8573 Jayden Burgs Suite 137\nNew Leonora, NE 64765-0924', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(7, 'Tressa Weimann', 'tressa-weimann', 6, 17, 1675637823, 12, 'lilian41@hotmail.com', '828-319-0220', '137 Rosie Point Suite 584\nTiarafurt, OR 16085-0199', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(8, 'Rose Schulist', 'rose-schulist', 17, 2, 1813204452, 3, 'felipe85@yahoo.com', '1-463-839-3570', '94423 Strosin Station\nSouth Lorenzo, MT 29779', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(9, 'Mr. Dane Quitzon II', 'mr-dane-quitzon-ii', 1, 15, 727952466, 8, 'wbins@little.com', '+1.661.657.1081', '442 Khalil Summit Suite 779\nSouth Meredithport, CT 79672', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(10, 'Freeda Buckridge', 'freeda-buckridge', 6, 1, 1028878990, 16, 'xconn@little.biz', '1-838-721-9408', '17167 Liliane Drives\nCronafurt, MI 05136-8025', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(11, 'Abigail Turner', 'abigail-turner', 9, 19, 706225356, 8, 'runolfsdottir.kameron@stanton.com', '+12288050662', '6234 Bradtke Club\nWest Isabellmouth, NV 32911-3043', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(12, 'Carmel Champlin', 'carmel-champlin', 4, 17, 333383526, 13, 'carmella87@yahoo.com', '248.843.7646', '715 Harris Via\nEast Alena, NH 06710', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(13, 'Ethel Kilback', 'ethel-kilback', 16, 7, 202675946, 12, 'stehr.annabelle@hayes.com', '+12012512396', '5546 Grady Junctions\nSouth Tyrese, NV 72890-4384', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(14, 'Meggie Ondricka', 'meggie-ondricka', 9, 2, 48636345, 6, 'ngleichner@feil.com', '1-757-595-1279', '4677 Bednar Circles Suite 371\nHackettmouth, NE 54675', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(15, 'D\'angelo Bahringer', 'dangelo-bahringer', 1, 18, 268175996, 16, 'corwin.paris@hotmail.com', '1-352-825-7254', '9417 Dietrich Plaza\nPrincefurt, AL 04109-7421', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(16, 'Domenica Christiansen', 'domenica-christiansen', 17, 15, 1574252015, 16, 'trantow.alexandre@hotmail.com', '1-804-452-4529', '5853 Bayer Shoals\nWinifredland, OH 09837-5557', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(17, 'Lucinda Osinski PhD', 'lucinda-osinski-phd', 6, 18, 1455397665, 3, 'crunte@okeefe.info', '951-714-0494', '231 Sipes Center\nSouth Nellamouth, AL 08701-8923', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(18, 'Dr. Matilde Kuhic', 'dr-matilde-kuhic', 2, 1, 14185046, 14, 'wiegand.damion@yahoo.com', '+1 (947) 227-2083', '5600 Pouros Circles Suite 226\nSouth Malinda, WA 98406', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(19, 'Randal Lockman', 'randal-lockman', 17, 17, 34974257, 3, 'fritsch.pascale@gmail.com', '(478) 691-6673', '9982 Mauricio Track\nNew Laverneton, VA 51772-6665', '2024-02-21 04:37:03', '2024-02-21 04:37:03'),
(20, 'Erick Mohr', 'erick-mohr', 5, 19, 1180276100, 10, 'ewell44@lubowitz.com', '+1-785-249-7769', '93261 Feeney Landing\nLynnchester, DC 37117-5099', '2024-02-21 04:37:03', '2024-02-21 04:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `local_companies`
--

CREATE TABLE `local_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `industry_id` bigint UNSIGNED DEFAULT NULL,
  `region_id` bigint UNSIGNED DEFAULT NULL,
  `founder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_companies`
--

INSERT INTO `local_companies` (`id`, `industry_id`, `region_id`, `founder`, `name`, `slug`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 19, 15, 'Charles Weissnat', 'Lura Cassin', 'lura-cassin', 'judd.gutmann@murazik.com', '+19286671679', '808 Wilderman Centers Suite 079\nKuhicborough, MI 16258-4340', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(2, 5, 2, 'Franz Boyer', 'Miss Karlie Paucek', 'miss-karlie-paucek', 'mario33@yahoo.com', '+1-781-704-0055', '879 Jalen Mountains\nAlexandroland, HI 74622', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(3, 20, 4, 'Trever Gorczany', 'Melvina Rogahn', 'melvina-rogahn', 'kertzmann.lilly@hotmail.com', '843-556-7433', '772 Auer Branch Suite 499\nElseland, GA 33089-3863', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(4, 16, 10, 'Monte Heathcote DDS', 'Finn Ward', 'finn-ward', 'von.irwin@hotmail.com', '(320) 476-0999', '34821 Elyse Village Suite 611\nNew Stacy, NM 89842-0631', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(5, 19, 10, 'Ozella Cassin', 'Audrey Kris', 'audrey-kris', 'remington25@leffler.biz', '(667) 309-0548', '988 Damien Vista\nNorth Bonniefort, RI 22850', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(6, 12, 4, 'Coy Kilback', 'Mr. Cristobal Hessel DDS', 'mr-cristobal-hessel-dds', 'carolanne95@gmail.com', '+1.463.501.8260', '11958 Tiana Causeway\nNew Kelsie, AL 98044', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(7, 15, 20, 'Alexandrine Rutherford', 'Amie Ebert DDS', 'amie-ebert-dds', 'sienna09@hotmail.com', '1-223-310-2615', '5987 Huel Route Suite 163\nEast Marychester, LA 88915', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(8, 16, 18, 'Joyce Von', 'Valentina Toy', 'valentina-toy', 'shad74@hotmail.com', '(954) 590-4461', '41472 Larson Oval\nWest Iliana, VA 98093-9540', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(9, 12, 20, 'Emmy Quigley', 'Elvera Mayert', 'elvera-mayert', 'manley43@hotmail.com', '+1-820-707-0332', '8869 Treutel Orchard\nFilibertoburgh, MO 14355-0363', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(10, 5, 14, 'Marisa Renner', 'Elouise Rowe', 'elouise-rowe', 'barton.branson@gmail.com', '319.282.1372', '66518 Sam Gardens\nSchuylerville, GA 48675-3792', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(11, 20, 12, 'Prof. Adrien McCullough', 'Estell Stanton DVM', 'estell-stanton-dvm', 'aron41@kovacek.com', '458.325.9061', '1819 Padberg Fall Apt. 805\nPort Lexustown, RI 38727', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(12, 14, 15, 'Glenda Swaniawski', 'Mrs. Brandy Boehm IV', 'mrs-brandy-boehm-iv', 'benny27@deckow.net', '(689) 590-3118', '8886 Shannon Course Suite 806\nRemingtonborough, DC 10548', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(13, 14, 6, 'Noemy Swift', 'Lyla Brekke', 'lyla-brekke', 'sshanahan@yahoo.com', '(743) 445-7984', '918 Mariana Inlet\nEast Kareem, TX 71016-0379', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(14, 6, 18, 'Tobin Bradtke', 'Shanna Bahringer', 'shanna-bahringer', 'macey.shanahan@douglas.net', '657-561-1844', '50337 Deven Valley\nNorth Wademouth, SC 36719-9065', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(15, 5, 8, 'May Bergnaum', 'Jada Hickle', 'jada-hickle', 'haley.harold@weber.com', '+1-979-587-6566', '341 Cronin Brook Suite 530\nBaileyview, OK 85795-1934', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(16, 9, 13, 'Dr. Araceli Ledner', 'Prof. Arnoldo Tremblay Sr.', 'prof-arnoldo-tremblay-sr', 'thurman.cole@hotmail.com', '424-535-6560', '9751 Magnolia Estate Suite 926\nSusieshire, ID 92205', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(17, 5, 19, 'Orrin Brakus', 'Edwina Mitchell', 'edwina-mitchell', 'florian88@yahoo.com', '+1-551-209-8279', '10339 Roberts Brook Apt. 197\nTomburgh, CT 23566-7404', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(18, 4, 15, 'Jaylan Bartoletti', 'Edythe Purdy', 'edythe-purdy', 'callie97@yahoo.com', '212-410-9217', '520 Carter Rapids\nEast Mayberg, CT 98782', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(19, 15, 10, 'Geovany Harvey', 'Prof. Bradford Cole', 'prof-bradford-cole', 'elwin12@kassulke.biz', '(346) 589-2540', '1914 Gretchen Knolls\nVivianmouth, CA 66510', '2024-02-21 03:45:22', '2024-02-21 03:45:22'),
(20, 5, 16, 'Trystan Lueilwitz I', 'Elwin Barton', 'elwin-barton', 'gaylord.antonetta@yahoo.com', '1-762-996-1296', '71165 Meda Street Apt. 727\nMurrayland, AK 52904', '2024-02-21 03:45:22', '2024-02-21 03:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_02_20_052151_create_countries_table', 1),
(2, '2024_02_20_052056_create_regions_table', 2),
(3, '2024_02_20_052309_create_industries_table', 3),
(4, '2024_02_20_051607_create_official_people_table', 4),
(6, '2024_02_20_051134_create_foreign_companies_table', 6),
(7, '2014_10_12_000000_create_users_table', 7),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 8),
(15, '2019_08_19_000000_create_failed_jobs_table', 8),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 8),
(19, '2024_02_20_172902_create_permission_tables', 8),
(23, '2024_02_20_051455_create_local_companies_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `official_people`
--

CREATE TABLE `official_people` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `official_people`
--

INSERT INTO `official_people` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Darryl Bartoletti', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(2, 'Dr. Xavier Bernier DDS', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(3, 'Carli Funk', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(4, 'Talia Roberts III', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(5, 'Joshuah Schuppe', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(6, 'Ms. Josiane Lesch', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(7, 'Darron Strosin', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(8, 'Jessy Nikolaus', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(9, 'Lynn Emard Jr.', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(10, 'Freddy Schuppe', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(11, 'Prof. Felton Huel II', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(12, 'Afton Kovacek', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(13, 'Rosalinda Carter I', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(14, 'Rickey Wiza', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(15, 'Miss Joanie Green II', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(16, 'Karelle Altenwerth', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(17, 'Declan Satterfield MD', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(18, 'Alvena Smith', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(19, 'Prof. Olaf Trantow II', '2024-02-20 07:23:50', '2024-02-20 07:23:50'),
(20, 'Alberta McGlynn', '2024-02-20 07:23:50', '2024-02-20 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'read data', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44'),
(2, 'create data', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44'),
(3, 'edit data', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44'),
(4, 'delete data', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `industry_id` int UNSIGNED DEFAULT NULL,
  `region_id` int UNSIGNED DEFAULT NULL,
  `investor_id` int UNSIGNED NOT NULL,
  `local_company_id` int UNSIGNED NOT NULL,
  `official_people_id` int UNSIGNED NOT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `industry_id`, `region_id`, `investor_id`, `local_company_id`, `official_people_id`, `name_uz`, `name_ru`, `slug_uz`, `slug_ru`, `amount`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 20, 8, 13, 3, 1, 'Rosamond Bogan III', 'Jaylan Hill DDS', 'rosamond-bogan-iii', 'jaylan-hill-dds', 9115206267, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(2, 8, 8, 7, 13, 14, 'Mrs. Hilda Boyer II', 'Jordyn Lang IV', 'mrs-hilda-boyer-ii', 'jordyn-lang-iv', 60478345880, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(3, 5, 12, 12, 19, 13, 'Carlee Harris', 'Amaya Larson', 'carlee-harris', 'amaya-larson', 199746660284, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(4, 18, 15, 17, 10, 1, 'Lillian Eichmann', 'Mac Klocko', 'lillian-eichmann', 'mac-klocko', 82126962303, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(5, 1, 6, 1, 1, 9, 'Miss Tess Langworth III', 'Mrs. Hettie Cummerata', 'miss-tess-langworth-iii', 'mrs-hettie-cummerata', 823500283, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(6, 3, 19, 9, 8, 3, 'Lucious Lang', 'Danyka Schimmel', 'lucious-lang', 'danyka-schimmel', 134215417878, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(7, 13, 17, 3, 18, 6, 'Courtney Becker', 'Lavon Pagac', 'courtney-becker', 'lavon-pagac', 105116846630, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(8, 13, 15, 3, 2, 17, 'Miss Kali Hauck Sr.', 'Jodie Gislason', 'miss-kali-hauck-sr', 'jodie-gislason', 191271276092, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(9, 11, 9, 8, 6, 19, 'Jaylan Zboncak', 'Mrs. Kathryne Kuvalis', 'jaylan-zboncak', 'mrs-kathryne-kuvalis', 34433861547, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(10, 20, 1, 19, 6, 2, 'Urban D\'Amore', 'Zella Homenick', 'urban-damore', 'zella-homenick', 82521322968, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(11, 10, 18, 11, 3, 11, 'Mrs. Sienna Veum', 'Isaac Cassin', 'mrs-sienna-veum', 'isaac-cassin', 147991146046, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(12, 12, 18, 6, 8, 2, 'Prof. Effie Zulauf Jr.', 'Casimer Rippin Jr.', 'prof-effie-zulauf-jr', 'casimer-rippin-jr', 77249299412, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(13, 13, 19, 15, 7, 1, 'Nikolas Hand', 'Prof. Emmanuel VonRueden', 'nikolas-hand', 'prof-emmanuel-vonrueden', 60651419572, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(14, 2, 4, 6, 3, 14, 'Elwyn Bauch', 'Rosemary Torphy', 'elwyn-bauch', 'rosemary-torphy', 115610287452, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(15, 11, 20, 1, 12, 6, 'Fred Jakubowski', 'Dr. Jovan Gusikowski Sr.', 'fred-jakubowski', 'dr-jovan-gusikowski-sr', 82524278011, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(16, 10, 10, 17, 8, 7, 'Maribel Labadie', 'Dr. Maxie Stracke', 'maribel-labadie', 'dr-maxie-stracke', 124887898457, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(17, 6, 5, 10, 14, 3, 'Rosie Schneider', 'Zachary Cummerata', 'rosie-schneider', 'zachary-cummerata', 59893667468, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(18, 3, 11, 2, 8, 3, 'Evert Littel', 'Ruthie Robel', 'evert-littel', 'ruthie-robel', 180617326314, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(19, 9, 8, 1, 5, 12, 'Amely Wunsch', 'Dr. Herta Wisoky Jr.', 'amely-wunsch', 'dr-herta-wisoky-jr', 100277364564, 1, '2024-02-21 03:53:23', '2024-02-21 03:53:23'),
(20, 17, 5, 18, 11, 15, 'Katrine Bode', 'Dana Rippin', 'katrine-bode', 'dana-rippin', 187321048494, 0, '2024-02-21 03:53:23', '2024-02-21 03:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint UNSIGNED NOT NULL,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name_uz`, `name_ru`, `slug_uz`, `slug_ru`, `created_at`, `updated_at`) VALUES
(1, 'Ezraberg', 'Eleazarstad', 'ezraberg', 'eleazarstad', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(2, 'Port Alexland', 'Lake Trycia', 'port-alexland', 'lake-trycia', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(3, 'Ettieside', 'Lizzieview', 'ettieside', 'lizzieview', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(4, 'Port Pietro', 'South Maximo', 'port-pietro', 'south-maximo', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(5, 'Lake Vicentatown', 'Ornchester', 'lake-vicentatown', 'ornchester', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(6, 'South Velda', 'North Kathryn', 'south-velda', 'north-kathryn', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(7, 'West Florencio', 'Port Daniella', 'west-florencio', 'port-daniella', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(8, 'West Tevin', 'Roobburgh', 'west-tevin', 'roobburgh', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(9, 'West Rosie', 'Maymouth', 'west-rosie', 'maymouth', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(10, 'New Karolanntown', 'New Lenoreview', 'new-karolanntown', 'new-lenoreview', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(11, 'New Marieton', 'New Carmen', 'new-marieton', 'new-carmen', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(12, 'Lake Addison', 'Yundttown', 'lake-addison', 'yundttown', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(13, 'East Santiagoside', 'Ewellview', 'east-santiagoside', 'ewellview', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(14, 'New Werner', 'Jovanside', 'new-werner', 'jovanside', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(15, 'West Deventon', 'Imastad', 'west-deventon', 'imastad', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(16, 'South Marlene', 'Gottliebberg', 'south-marlene', 'gottliebberg', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(17, 'Lake Electaberg', 'Willport', 'lake-electaberg', 'willport', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(18, 'Port Israelchester', 'North Jevon', 'port-israelchester', 'north-jevon', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(19, 'West Beryl', 'North Deltaport', 'west-beryl', 'north-deltaport', '2024-02-20 01:27:03', '2024-02-20 01:27:03'),
(20, 'Georgefort', 'New Daphne', 'georgefort', 'new-daphne', '2024-02-20 01:27:03', '2024-02-20 01:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44'),
(2, 'moderator', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44'),
(3, 'admin', 'web', '2024-02-21 00:50:44', '2024-02-21 00:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@user', NULL, '$2y$12$F01kM2QqSOewy6VC65gwp.tHfaOuYXO7I5bPqpHuDeSXNYMbuGTzW', NULL, '2024-02-21 00:52:35', '2024-02-21 00:52:35'),
(3, 'Moderator', 'moderator@moderator', NULL, '$2y$12$C7l9PsnblDZ3e9CQG7su5Oa1njsG.cYZ4GAOjkygzfKcuipR5pFPG', NULL, '2024-02-21 00:54:09', '2024-02-21 00:54:09'),
(4, 'Admin', 'admin@admin', NULL, '$2y$12$ENXEvewdbmIfgFkLrl1/5.fVpbcAuNzWLa8Vu/RzMWpOJh.mAmzjm', NULL, '2024-02-21 05:00:27', '2024-02-21 05:00:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_uz_unique` (`name_uz`),
  ADD UNIQUE KEY `countries_name_ru_unique` (`name_ru`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foreign_companies`
--
ALTER TABLE `foreign_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `foreign_companies_name_unique` (`name`);

--
-- Indexes for table `industries`
--
ALTER TABLE `industries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `industries_name_uz_unique` (`name_uz`),
  ADD UNIQUE KEY `industries_name_ru_unique` (`name_ru`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_companies`
--
ALTER TABLE `local_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `local_companies_name_unique` (`name`),
  ADD UNIQUE KEY `local_companies_email_unique` (`email`),
  ADD UNIQUE KEY `local_companies_phone_unique` (`phone`),
  ADD KEY `local_companies_industry_id_foreign` (`industry_id`),
  ADD KEY `local_companies_region_id_foreign` (`region_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `official_people`
--
ALTER TABLE `official_people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `official_people_name_unique` (`name`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regions_name_uz_unique` (`name_uz`),
  ADD UNIQUE KEY `regions_name_ru_unique` (`name_ru`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foreign_companies`
--
ALTER TABLE `foreign_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `industries`
--
ALTER TABLE `industries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `local_companies`
--
ALTER TABLE `local_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `official_people`
--
ALTER TABLE `official_people`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `local_companies`
--
ALTER TABLE `local_companies`
  ADD CONSTRAINT `local_companies_industry_id_foreign` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`),
  ADD CONSTRAINT `local_companies_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
