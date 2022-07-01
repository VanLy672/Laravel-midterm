-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 07:01 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alvah Breitenberg', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(2, 'Mr. Paxton Schroeder', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(3, 'Dr. Steve Wisoky', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(4, 'Bryon Wiegand', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(5, 'Prof. Alysha Spinka DVM', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(6, 'Torey Skiles', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(7, 'Alva Wisozk', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(8, 'Lizeth Gorczany', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(9, 'Mabel Kuhic', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(10, 'Mr. Quinn O\'Hara', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(11, 'Olaf Corwin MD', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(12, 'Susie Harvey Jr.', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(13, 'Lolita Emard', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(14, 'Jacynthe Weissnat', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(15, 'Saul Harber', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(16, 'Damon Lynch DVM', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(17, 'Prof. Ashtyn Welch', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(18, 'Prof. Margot Senger IV', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(19, 'Mrs. Otilia Little', '2022-06-30 19:40:31', '2022-06-30 19:40:31'),
(20, 'Mertie Lebsack', '2022-06-30 19:40:31', '2022-06-30 19:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foods`
--

CREATE TABLE `foods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foods`
--

INSERT INTO `foods` (`id`, `name`, `price`, `old_price`, `description`, `image`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 'Trystan Luettgen', '1514', '1797', 'In maxime eveniet sed ipsum eius est officia. Earum vel et voluptatibus velit earum ea. Quisquam voluptatum dolore labore fuga molestias odit. Iure facere sed distinctio porro laborum facilis iusto. Molestias reiciendis nam sunt velit.', 'images/food_3.jpg', 20, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(2, 'Tyree Aufderhar', '1344', '1192', 'Omnis accusamus et quia et in quidem similique. Est porro natus dolorum nesciunt. Eos dolorem cum unde cum ea occaecati minus ipsa. Quia ut ratione rerum hic necessitatibus.', 'images/food_7.jpg', 8, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(3, 'Esta Hagenes', '1603', '1164', 'Tempora cum similique deleniti veniam sed voluptatum voluptas. Qui ut non ut sint alias hic. Adipisci porro blanditiis reprehenderit vel est voluptatem. Aliquam aliquam autem sed minus recusandae.', 'images/food_5.jpg', 11, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(4, 'Beryl Watsica', '1411', '1677', 'Expedita ad voluptatum earum et. Esse fugiat aperiam cumque ab iste. Rem eligendi eum quis aperiam veniam neque quae.', 'images/food_1.jpg', 11, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(5, 'Carrie Zemlak V', '1424', '1536', 'Odit amet deserunt repudiandae laudantium architecto magnam in. Expedita doloremque soluta dolorem. Deleniti ex maxime quam facilis dolores aut eveniet.', 'images/food_3.jpg', 7, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(6, 'Abbie Kertzmann', '1857', '1391', 'Omnis et ut non perspiciatis et soluta quibusdam. Minus commodi et dicta repellat dolore. Error laudantium animi reiciendis odio tempore officia. Corporis saepe enim ut harum quia a aut. Ut praesentium aspernatur ea veritatis et veritatis esse.', 'images/food_4.jpg', 20, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(7, 'Alysa Welch MD', '1032', '1039', 'Commodi unde consequatur odit et molestiae velit inventore. Reiciendis et voluptatem doloribus tenetur consequatur eum repellendus. Ipsum corrupti et cumque ea non quia autem. Aut natus tempora distinctio.', 'images/food_3.jpg', 13, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(8, 'Sigurd Kris', '1527', '1212', 'Dolorem exercitationem debitis accusantium quam nihil non ut. Voluptatem distinctio corrupti et fugiat.', 'images/food_2.jpg', 14, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(9, 'Zita Kozey III', '1623', '1314', 'Voluptas velit ut ratione enim dolor quo. Quo in repudiandae ratione. Adipisci eos sit recusandae et eos eveniet. Enim ipsum eos odio nam saepe atque. Impedit quaerat explicabo vitae harum voluptate.', 'images/food_4.jpg', 13, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(10, 'Isabell Balistreri', '1033', '1319', 'Error itaque et quis quibusdam. Accusamus excepturi soluta esse voluptatem. Aut aut amet a enim tenetur odit doloribus. Culpa rem qui atque quis.', 'images/food_7.jpg', 12, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(11, 'Emil Kihn', '1731', '1066', 'Sint cumque cupiditate ut officiis nulla eveniet ea. Autem deserunt est similique nobis exercitationem maiores soluta. Assumenda ea officiis ut error dolor.', 'images/food_4.jpg', 14, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(12, 'Bessie Rath', '1934', '1276', 'Impedit ut reiciendis sapiente eos molestiae recusandae dolores. Est nihil sint officiis recusandae quia voluptatibus ab. Sunt doloribus repellendus aut asperiores. Eius dignissimos voluptatem quas et.', 'images/food_8.jpg', 16, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(13, 'Dr. Theodore Schmitt', '1588', '1140', 'Error rerum omnis odit aut ut aliquid quidem. Voluptas incidunt in quidem consequatur et ut. Aut incidunt sint eos omnis.', 'images/food_6.jpg', 20, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(14, 'Kevin Stroman', '1820', '1868', 'Voluptatem libero repudiandae nemo sapiente sit ut nam consequuntur. Possimus porro in nostrum nobis ut commodi excepturi. Beatae dolorem est in autem.', 'images/food_1.jpg', 10, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(15, 'Jaylan Welch V', '1522', '1022', 'Hic eum dolore aperiam ducimus. Voluptates ipsa perferendis quia dolorem repellat provident libero. Sunt dolores veniam nisi explicabo omnis. Consequuntur corporis voluptatem tempora et quia.', 'images/food_2.jpg', 11, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(16, 'Joaquin Gottlieb', '1617', '1980', 'Non nobis accusamus ut rerum enim. Nulla nulla vero ut enim expedita ducimus. Minus quaerat deserunt vero nemo. Nihil suscipit in et nisi excepturi voluptas eum.', 'images/food_3.jpg', 12, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(17, 'Allison Schuppe', '1707', '1383', 'Iste tempora adipisci omnis possimus recusandae similique. Quam enim iure quae neque. Eos laboriosam voluptatem tempora saepe amet sit.', 'images/food_3.jpg', 17, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(18, 'Camila Brown II', '1340', '1304', 'Ut fuga ratione aperiam non beatae ab culpa aliquid. Et exercitationem quis harum dolorum. Dolorum temporibus quaerat temporibus et sunt nihil vel. At tenetur perferendis iusto dolorem molestiae.', 'images/food_2.jpg', 6, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(19, 'Ellie Gibson PhD', '1205', '1059', 'Sit officiis ut occaecati natus. Temporibus et quae voluptatem quia necessitatibus et. Similique totam odit aut commodi sint ut harum minima. Iste illo adipisci aut in quod consequatur vel.', 'images/food_5.jpg', 14, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(20, 'Greyson Borer DVM', '1010', '1288', 'Aut non expedita sunt modi ut. Impedit impedit minus aut consequuntur nulla. Error ut distinctio qui sunt ut sunt.', 'images/food_7.jpg', 2, '2022-06-30 20:38:47', '2022-06-30 20:38:47'),
(21, 'Ly Tran', '10000', '15000', 'LyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLy', '1656651160_food_1.jpg', 2, '2022-06-30 21:52:40', '2022-06-30 21:52:40'),
(22, 'Ly Tran1', '10000', '15000', 'LyLyLyLyLyLyLyLyLyLyLyLyLyLyLyLy', '1656651348_food_1.jpg', 1, '2022-06-30 21:55:48', '2022-06-30 21:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_01_014744_category', 1),
(6, '2022_07_01_014909_food', 1),
(7, '2022_07_01_032810_food', 2),
(8, '2022_07_01_033406_food', 3),
(9, '2022_07_01_033631_food', 4),
(10, '2022_07_01_033830_food', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foods_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `foods`
--
ALTER TABLE `foods`
  ADD CONSTRAINT `foods_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
