-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 10:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogz`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `art_id` int(10) UNSIGNED NOT NULL,
  `art_title` varchar(255) DEFAULT NULL,
  `art_content` text DEFAULT NULL,
  `art_datepublish` datetime DEFAULT NULL,
  `art_user_id` int(10) UNSIGNED NOT NULL,
  `art_datecreated` datetime DEFAULT NULL,
  `art_picture` varchar(45) DEFAULT NULL,
  `art_publish` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`art_id`, `art_title`, `art_content`, `art_datepublish`, `art_user_id`, `art_datecreated`, `art_picture`, `art_publish`) VALUES
(1, 'Article premier', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-04 00:00:00', 1, '2018-12-04 11:17:57', '1543937180_DSC_0490.JPG', 1),
(2, 'Article 2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-04 00:00:00', 1, '2018-12-04 11:23:59', '1543937164_20171024_150011.jpg', 1),
(3, 'Article 3', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla varius sem vitae tempus ullamcorper. Morbi lorem nunc, efficitur vehicula lectus pretium, commodo pellentesque nibh. Curabitur finibus semper ultricies. Praesent a viverra diam, in rutrum diam. Sed sed pretium mauris. Vivamus sed mi vitae odio vulputate malesuada. Sed quis turpis condimentum massa aliquet vulputate. Vivamus neque lacus, vestibulum lobortis sagittis ut, dictum sit amet nulla. Curabitur vel facilisis libero, a fringilla est. Mauris lobortis mi dui, sit amet tempor nisl sagittis ut. Morbi fermentum ex ipsum, sit amet iaculis nisi lobortis non. Ut sit amet neque risus. Aliquam non molestie tellus, quis euismod turpis. Donec vitae dignissim nisi.</p>\r\n<p>Curabitur gravida libero at scelerisque vulputate. Sed vestibulum suscipit metus quis dignissim. In hac habitasse platea dictumst. Proin consequat lobortis libero, ac elementum nunc fermentum sed. Phasellus euismod massa nisi, vel imperdiet massa ultrices ut. Morbi eu eleifend ligula. Mauris nisl nulla, dapibus vel feugiat a, consequat id augue. Fusce quis nibh sapien. Phasellus ut libero sit amet purus blandit faucibus. Donec semper nulla a fermentum ullamcorper. Proin dignissim, nunc vitae tincidunt suscipit, est neque iaculis augue, et aliquet libero ligula nec justo. Praesent scelerisque semper auctor. Quisque magna turpis, lobortis a sem ut, rutrum tempor lacus. Duis venenatis non enim sed congue. Nulla efficitur ante arcu, quis pellentesque elit hendrerit non. Sed vel tincidunt diam.</p>\r\n<p>Donec nisl eros, pellentesque eu laoreet et, volutpat ut odio. Nunc facilisis, nunc vitae tristique blandit, eros augue placerat felis, ultrices sollicitudin mauris risus fringilla massa. Morbi cursus ante ac viverra posuere. Aliquam erat volutpat. Donec semper enim vel velit sodales elementum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin non hendrerit eros, et condimentum sapien. Donec porttitor, velit a ornare tincidunt, massa est vulputate velit, et rhoncus tellus libero in lectus. Morbi et lobortis quam. Nullam faucibus est imperdiet eros varius auctor.</p>', '2018-12-03 00:00:00', 1, '2018-12-04 11:25:47', '1543937147_Reallon1.jpg', 1),
(4, 'Article 4x6', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2018-12-05 00:00:00', 1, '2018-12-04 11:35:27', '1543937135_reallon2.jpg', 1),
(5, 'surf ?', '<p>Le <strong>surf</strong> (abr&eacute;viation fran&ccedil;aise de l\'anglais <em>surf-riding</em>, o&ugrave; <em>riding</em> signifie &laquo;&nbsp;chevaucher&nbsp;&raquo; et <em>surf</em> &laquo;&nbsp;(vagues) d&eacute;ferlantes&nbsp;&raquo;) est un <a title=\"Sport\" href=\"https://fr.wikipedia.org/wiki/Sport\">sport</a> qui consiste &agrave; glisser sur les <a title=\"Vague\" href=\"https://fr.wikipedia.org/wiki/Vague\">vagues</a>, <a title=\"Onde de gravit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Onde_de_gravit%C3%A9\">ondes de surface</a>, au bord de l\'oc&eacute;an, debout sur une planche. Le surf se pratique sur des <em><a title=\"Spot de surf\" href=\"https://fr.wikipedia.org/wiki/Spot_de_surf\">sites de surf</a></em>, appel&eacute;s spots (&laquo;&nbsp;bons coins&nbsp;&raquo;), plages qui sont baign&eacute;es par des vagues plus ou moins grandes et propices &agrave; la glisse.</p>\r\n<p>Les adeptes de ce sport sont les surfeurs ou aquaplanchistes !<sup id=\"cite_ref-OQLF_1-0\" class=\"reference\"></sup></p>', '2018-05-04 00:00:00', 1, '2018-12-04 03:28:35', '1543939009_20171026_103921.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article_has_categorie`
--

CREATE TABLE `article_has_categorie` (
  `articles_idarticles` int(10) UNSIGNED NOT NULL,
  `categories_idcategories` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article_has_categorie`
--

INSERT INTO `article_has_categorie` (`articles_idarticles`, `categories_idcategories`) VALUES
(1, 2),
(4, 1),
(4, 2),
(4, 4),
(5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_title` varchar(255) DEFAULT NULL,
  `cat_description` text DEFAULT NULL,
  `cat_categories_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`cat_id`, `cat_title`, `cat_description`, `cat_categories_id`) VALUES
(1, 'Sporty', 'Category for sport Enthusiast', NULL),
(2, 'Action', NULL, NULL),
(4, 'Chit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) NOT NULL,
  `com_text` text NOT NULL,
  `com_datecreated` datetime DEFAULT NULL,
  `com_publish` tinyint(1) DEFAULT NULL,
  `com_article_art_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2020_11_28_054643_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\User', 4),
(4, 'App\\User', 5),
(4, 'App\\User', 6),
(4, 'App\\User', 13);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `profiles_id` int(10) UNSIGNED NOT NULL,
  `profiles_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `profiles_bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `profiles_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profiles_photo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profiles_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profiles_web` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profiles_created_at` timestamp NULL DEFAULT NULL,
  `profiles_updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'web', '2020-11-29 00:08:33', '2020-11-29 00:08:33'),
(4, 'writer', 'web', '2020-11-29 00:08:33', '2020-11-29 00:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Administrator', 'admin@bloggy.com', NULL, '$2y$10$o78CzgzV1/51SL7dpiOlNuxy1t0nw0wby/fE9EiPcaLM0vqzj20jy', NULL, '2020-11-29 00:09:30', '2020-11-29 00:09:30'),
(5, 'Passionate Writer', 'writer@bloggy.com', NULL, '$2y$10$7TwXOnv5MVsg79VAxNKHyelE7cD8Boeye9DdX/4W1SYcUvDcxcZ86', NULL, '2020-11-29 00:09:30', '2020-11-29 00:09:30'),
(6, 'Overthinker love u', 'overthink@bloggy.com', NULL, '$2y$10$6t7o07YUk8L9XVKWJEsEQu.Yru7W0spZFSeSq0jt8KbhI/mg.OhLi', NULL, '2020-11-29 01:48:09', '2020-11-29 02:34:22'),
(13, 'SanberCode Nyusahin', 'sakuretsuu@gmail.com', NULL, '$2y$10$qqnzfB.OovNHmLggFjCX4.E90d..KI0VL3L59MMej/j246WO/yKDi', NULL, '2020-11-29 02:15:29', '2020-11-29 02:15:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`art_id`),
  ADD KEY `fk_articles_users1_idx` (`art_user_id`);

--
-- Indexes for table `article_has_categorie`
--
ALTER TABLE `article_has_categorie`
  ADD PRIMARY KEY (`articles_idarticles`,`categories_idcategories`),
  ADD KEY `fk_articles_has_categories_categories1_idx` (`categories_idcategories`),
  ADD KEY `fk_articles_has_categories_articles_idx` (`articles_idarticles`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `fk_categories_categories1_idx` (`cat_categories_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `fk_comment_article1_idx` (`com_article_art_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `art_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `fk_articles_users1` FOREIGN KEY (`art_user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `article_has_categorie`
--
ALTER TABLE `article_has_categorie`
  ADD CONSTRAINT `fk_articles_has_categories_articles` FOREIGN KEY (`articles_idarticles`) REFERENCES `article` (`art_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articles_has_categories_categories1` FOREIGN KEY (`categories_idcategories`) REFERENCES `categorie` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `categorie`
--
ALTER TABLE `categorie`
  ADD CONSTRAINT `fk_categories_categories1` FOREIGN KEY (`cat_categories_id`) REFERENCES `categorie` (`cat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_article1` FOREIGN KEY (`com_article_art_id`) REFERENCES `article` (`art_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
