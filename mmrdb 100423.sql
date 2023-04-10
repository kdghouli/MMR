-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 10 avr. 2023 à 10:26
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mmrdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `agences`
--

CREATE TABLE `agences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `agences`
--

INSERT INTO `agences` (`id`, `nom`, `site`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Marrakech', 'CBGS', 'M210', NULL, NULL),
(2, 'Beni Mellal', 'CBGS', 'M220', NULL, NULL),
(3, 'Essaouira', 'CBGS', 'M230', NULL, NULL),
(4, 'Safi', 'CBGS', 'M240', NULL, NULL),
(5, 'Sidi Bennour', 'CBGS', 'M250', NULL, NULL),
(6, 'Khouribga', 'CBGS', 'M260', NULL, NULL),
(7, 'El Kelaa', 'CBGS', 'M270', NULL, NULL),
(8, 'Ouarzazate', 'CBGS', 'M280', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'camion', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'voiture', NULL, NULL),
(3, 'vélomoteur', NULL, NULL),
(4, 'chariot élèvateur', NULL, NULL),
(5, 'autre', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED NOT NULL DEFAULT 3,
  `statu_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `active`, `created_at`, `updated_at`, `vhl_id`, `statu_id`) VALUES
(1, 'pb de voiture', 1, '2023-04-20 15:14:55', NULL, 3, 3),
(4, 'dsfsdfsdfds', 1, '2023-01-22 14:15:01', NULL, 68, 4),
(5, '\"salam ya sahbi\"', 1, '2023-04-05 22:01:51', '2023-04-05 22:01:51', 3, 3),
(6, '\"salam ya sahbi 2\"', 1, '2023-04-05 22:05:14', '2023-04-05 22:05:14', 3, 2),
(7, 'salam ya sahbi 2', 1, '2023-04-05 22:05:31', '2023-04-05 22:05:31', 3, 2),
(8, 'sdsdfsd', 1, '2023-04-05 22:17:50', '2023-04-05 22:17:50', 3, 2),
(9, 'dghouli khalid', 1, '2023-04-05 22:19:43', '2023-04-05 22:19:43', 3, 2),
(11, 'yassine', 1, '2023-04-05 22:35:58', '2023-04-05 22:35:58', 3, 2),
(12, 'Ibrahim', 1, '2023-04-05 22:56:37', '2023-04-05 22:56:37', 10, 4),
(13, 'sdasdasd', 1, '2023-04-05 23:29:54', '2023-04-05 23:29:54', 3, 2),
(14, 'sdasdasd', 1, '2023-04-05 23:30:04', '2023-04-05 23:30:04', 3, 3),
(15, 'xxxxxxxxxxxxxxxxxxxxxxx', 1, '2023-04-05 23:40:11', '2023-04-05 23:40:11', 79, 3),
(16, 'sssss', 0, '2023-04-05 23:43:28', '2023-04-05 23:43:28', 6, 4),
(17, 'fffff', 1, '2023-04-05 23:47:29', '2023-04-05 23:47:29', 19, 1),
(18, 'rrrrr', 1, '2023-04-05 23:52:28', '2023-04-05 23:52:28', 7, 3),
(19, 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 1, '2023-04-05 23:55:44', '2023-04-05 23:55:44', 21, 2),
(20, 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 1, '2023-04-05 23:59:16', '2023-04-05 23:59:16', 64, 2),
(21, 'sadasdasdasdasdsaddddddsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', 1, '2023-04-06 00:01:13', '2023-04-06 00:01:13', 64, 3),
(22, 'asdasdasd', 0, '2023-04-06 00:01:59', '2023-04-06 00:01:59', 23, 4),
(23, 'ddddddddddddddddddddddddddddddd', 1, '2023-04-06 00:06:01', '2023-04-06 00:06:01', 66, 2),
(24, 'wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww', 1, '2023-04-06 00:07:21', '2023-04-06 00:07:21', 55, 1),
(25, 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee', 1, '2023-04-06 00:08:26', '2023-04-06 00:08:26', 64, 2),
(26, 'ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', 0, '2023-04-06 00:14:48', '2023-04-06 00:14:48', 99, 1),
(27, 'ppppppppppppppppppppppppppppppp', 1, '2023-04-06 00:17:13', '2023-04-06 00:17:13', 85, 1),
(28, 'dsgfdfgfg', 1, '2023-04-06 00:19:32', '2023-04-06 00:19:32', 11, 2),
(29, 'ssdsdssssss', 1, '2023-04-06 17:14:09', '2023-04-06 17:14:09', 81, 2),
(30, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 1, '2023-04-06 17:32:34', '2023-04-06 17:32:34', 55, 2),
(31, 'sadasdas', 1, '2023-04-06 21:43:24', '2023-04-06 21:43:24', 73, 2),
(32, 'asdadadasd', 1, '2023-04-06 21:48:04', '2023-04-06 21:48:04', 245, 2),
(33, 'sdsdadsd', 0, '2023-04-09 12:46:47', '2023-04-09 12:46:47', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `intitules`
--

CREATE TABLE `intitules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` tinyint(1) NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `intitules`
--

INSERT INTO `intitules` (`id`, `nom`, `location`, `service`, `ville`, `adresse`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'Eccbc-SCBG', 0, 'mmr', 'Casablanca', 'Casablanca', 'Hafad + Imane', NULL, NULL),
(2, 'Eccbc-CBGS', 0, 'mmr', 'Marrakech', 'Marrakech', 'dghouli', NULL, NULL),
(3, 'Eccbc-CBGN', 0, 'mmr', 'Fes', 'Fes', 'Mansouri', NULL, NULL),
(4, 'Eccbc-COBOMI', 0, 'mmr', 'Casablanca', 'Casablanca', 'Hafad + imane', NULL, NULL),
(5, 'Chaabi LLD', 1, '', 'Casablanca', '', '', NULL, NULL),
(6, 'BM rental ', 1, '', 'Casablanca', '', '', NULL, NULL),
(7, 'Espace Location', 1, '', 'Casablanca', '', '', NULL, NULL),
(8, 'AJ Manutention', 1, '', 'Casablanca', '', '', NULL, NULL),
(9, 'Ste Lagouassem', 1, '', 'Casablanca', '', '', NULL, NULL),
(10, 'Trans Optiflux', 1, '', 'Casablanca', '', '', NULL, NULL),
(11, 'ALD', 1, '', 'Casablanca', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `kilometrages`
--

CREATE TABLE `kilometrages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kilometrage` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `Observation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vhl_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2023_03_19_200518_create_vhls_table', 1),
(4, '2023_03_25_105803_create_agences_table', 2),
(5, '2023_03_25_110825_create_intitules_table', 2),
(6, '2023_03_25_110904_create_comments_table', 2),
(7, '2023_03_25_110926_create_status_table', 2),
(8, '2023_03_25_111354_create_categories_table', 2),
(9, '2023_03_25_124816_add_column_vhls_foreign_id', 3),
(10, '2023_03_25_131355_add_column_comments__foreign_id', 3),
(11, '2023_03_25_133104_add_column_vhls_foreing_id', 4),
(12, '2023_03_25_142717_add_column_vhl_utilisateur', 5),
(13, '2023_04_08_125949_create_kilometrages_table', 6),
(14, '2023_04_08_130440_add_row_in_table', 6);

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `status`
--

INSERT INTO `status` (`id`, `etat`, `created_at`, `updated_at`) VALUES
(1, 'RAS', NULL, NULL),
(2, 'En Panne', NULL, NULL),
(3, 'En Reparation', NULL, NULL),
(4, 'Problème des papiers', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
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

-- --------------------------------------------------------

--
-- Structure de la table `vhls`
--

CREATE TABLE `vhls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matricule` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_mc` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `agence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `categorie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `intitule_id` bigint(20) UNSIGNED DEFAULT NULL,
  `statu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `utilisateur` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vhls`
--

INSERT INTO `vhls` (`id`, `matricule`, `marque`, `date_mc`, `deleted_at`, `created_at`, `updated_at`, `agence_id`, `categorie_id`, `intitule_id`, `statu_id`, `utilisateur`) VALUES
(3, '16565-B-7', 'FUSO', '2019-04-18', NULL, NULL, NULL, 2, 1, 10, 1, 'agence'),
(4, '17124-B-7', 'MITSUBI', '2019-04-25', NULL, NULL, NULL, 7, 1, 10, 1, 'agence'),
(5, '31935-D-8', 'IVECO', '2019-12-13', NULL, NULL, NULL, 6, 1, 9, 1, 'agence'),
(6, '31940-D-8', 'IVECO', '2019-12-13', NULL, NULL, NULL, 7, 1, 9, 1, 'agence'),
(7, '32093-A-26', 'Mitsubishi', '2004-06-30', NULL, NULL, NULL, 1, 1, 2, 1, 'agence'),
(8, '32724-A-13', 'MITSUBISHI', '2013-03-04', NULL, NULL, NULL, 2, 1, 1, 1, 'agence'),
(9, '33248-A-13', 'MITSUBI', '2013-04-15', NULL, NULL, NULL, 4, 1, 1, 1, 'agence'),
(10, '33250-A-13', 'MITSUBISHI', '2013-05-14', NULL, NULL, NULL, 2, 1, 1, 1, 'agence'),
(11, '3543-A-26', 'Isuzu', '2000-05-05', NULL, NULL, NULL, 6, 1, 2, 1, 'agence'),
(12, '3544-A-26', 'ISUZU', '2000-05-05', NULL, NULL, NULL, 6, 1, 2, 1, 'agence'),
(13, '3555-A-26', 'ISUZU', '2000-05-05', NULL, NULL, NULL, 2, 1, 2, 1, 'agence'),
(14, '3946-A-26', 'MITSUBISHI', '2000-06-13', NULL, NULL, NULL, 4, 1, 2, 1, 'agence'),
(15, '3947-A-26', 'MITSUBICHI FK', '2000-06-13', NULL, NULL, NULL, 7, 1, 2, 1, 'agence'),
(16, '4001-A-7', 'ISUZU', '2000-06-05', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(17, '56169-E-6', 'MITSUBICHI', '2019-07-13', NULL, NULL, NULL, 2, 1, 6, 1, 'agence'),
(18, '56172-E-6', 'FUSO', '2019-07-13', NULL, NULL, NULL, 4, 1, 6, 1, 'agence'),
(19, '56405-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 2, 1, 6, 1, 'agence'),
(20, '56407-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 4, 1, 6, 1, 'agence'),
(21, '56408-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 4, 1, 6, 1, 'agence'),
(22, '56409-E-6', 'FUSO', '2019-07-02', NULL, NULL, NULL, 2, 1, 6, 1, 'agence'),
(23, '5951-A-6', 'RENAULT ', '2000-03-22', NULL, NULL, NULL, 6, 1, 4, 1, 'agence'),
(24, '59749-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(25, '59750-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence'),
(26, '59751-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(27, '59752-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(28, '59753-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(29, '59754-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(30, '59755-E-6', 'MITSUBI', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence'),
(31, '60368-A-13', 'TRAIPORTEUR', '0000-00-00', NULL, NULL, NULL, 5, 1, 1, 1, 'agence'),
(32, '60370-A-13', 'TRAIPORTEUR', '0000-00-00', NULL, NULL, NULL, 5, 1, 1, 1, 'agence'),
(33, '60539-E-6', 'MITSUBICHI', '2019-09-23', NULL, NULL, NULL, 8, 1, 5, 1, 'agence'),
(34, '60540-E-6', 'MITSUBISHI', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence'),
(35, '60541-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence'),
(36, '60542-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 4, 1, 5, 1, 'agence'),
(37, '60543-E-6', 'Mitsub', '2019-09-23', NULL, NULL, NULL, 6, 1, 5, 1, 'agence'),
(38, '60544-E-6', 'FUSO', '2019-09-23', NULL, NULL, NULL, 2, 1, 5, 1, 'agence'),
(39, '6443-A-7', 'RENAULT', '2000-09-20', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(40, '6658-A-2', 'RENAULT', '1998-06-23', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(41, '71131-A-26', 'Mitsubishi', '2009-04-21', NULL, NULL, NULL, 2, 1, 2, 1, 'agence'),
(42, '81080-B-8', 'MITSUBICHI ', '2014-06-09', NULL, NULL, NULL, 2, 1, 9, 1, 'agence'),
(43, '84690-B-8', 'MITSUBISHI', '2018-02-19', NULL, NULL, NULL, 2, 1, 9, 1, 'agence'),
(44, '84705-A-26', 'Isuzu', '1998-07-21', NULL, NULL, NULL, 2, 1, 2, 1, 'agence'),
(45, '85241-B-8', 'MITSUBISHI', '2014-06-09', NULL, NULL, NULL, 2, 1, 9, 1, 'agence'),
(46, '85251-B-8', 'ISUZU', '2014-06-09', NULL, NULL, NULL, 8, 1, 9, 1, 'agence'),
(47, '85253-B-8', 'ISUZU', '2014-06-09', NULL, NULL, NULL, 4, 1, 9, 1, 'agence'),
(48, '85260-B-8', 'MITSUBISHI', '2014-06-09', NULL, NULL, NULL, 6, 1, 9, 1, 'agence'),
(49, '86064-B-8', 'MITSUBICHI ', '2014-08-05', NULL, NULL, NULL, 2, 1, 9, 1, 'agence'),
(50, '86253-B-8', 'ISUZU', '2014-08-09', NULL, NULL, NULL, 4, 1, 9, 1, 'agence'),
(51, '86255-B-8', 'ISUZU', '2014-08-09', NULL, NULL, NULL, 6, 1, 9, 1, 'agence'),
(52, '86567-B-8', 'ISUZU', '2014-09-02', NULL, NULL, NULL, 2, 1, 9, 1, 'agence'),
(53, '88265-A-8', 'RENAULT ', '2003-03-13', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(54, '88274-A-8', 'RENAULT ', '2003-03-13', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(55, '92333-B-26', 'Mitsubishi', '1997-01-15', NULL, NULL, NULL, 1, 1, 2, 1, 'agence'),
(56, '9978-A-13', 'RENAULT ', '2005-06-20', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(57, '13720-A-40', 'RENAULT', '1996-05-06', NULL, NULL, NULL, 6, 1, 1, 1, 'agence'),
(58, '42581-A-15', 'MAN', '0000-00-00', NULL, NULL, NULL, 6, 1, 3, 1, 'agence'),
(59, '17079-B-72', 'DACIA/301', '2019-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'JAMAL BOUNAHR '),
(60, '232-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'LAHCEN ACHOUR'),
(62, '26902-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 4, 2, 7, 1, 'YOUNESS HAMLI'),
(63, '26903-B-6', 'DACIA ', '2020-01-01', NULL, NULL, NULL, 3, 2, 7, 1, 'ELMILOUDI ABDELHAK'),
(64, '26905-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'MOURAD ABBOU'),
(65, '26906-B-6', 'DACIA', '2020-01-01', NULL, NULL, NULL, 2, 2, 7, 1, 'ANEJAR RACHID'),
(66, '27135-B-7', 'DACIA', '2020-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ALI BICHER HATTABOU'),
(67, '31577-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'JADIR ABDELATIF'),
(68, '31578-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'JAMAL MOHAMED'),
(69, '31587-T-6', 'CITROEN', '2022-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'HASSAN MLY MEHZI'),
(70, '31588-D-6', 'CITROEN', '2022-01-01', NULL, NULL, NULL, 4, 2, 5, 1, 'GLABI SOUFIANE'),
(71, '31589-T-6', 'CITROEN ', '0000-00-00', NULL, NULL, NULL, 1, 2, 5, 1, 'MUSTAPHA BENKAARACH'),
(72, '31590-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'BOURIDA MOHAMED'),
(73, '31591-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'MISSI MOHAMED '),
(74, '31592-T-6', 'FIAT', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'HAMID BADDOU'),
(75, '31593-T-6', 'CITROEN BERLINGO', '2022-01-01', NULL, NULL, NULL, 3, 2, 5, 1, 'BYJAOUANE MOHAMMED'),
(76, '31594-T-6', 'FIAT ', '0000-00-00', NULL, NULL, NULL, 6, 2, 5, 1, 'EL GHARS RACHID'),
(77, '31595-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'IDRISSI MOHAMED'),
(78, '31596-T-6', 'Fiat doblo panorama', '0000-00-00', NULL, NULL, NULL, 2, 2, 5, 1, 'REDOUANE JAMAL'),
(79, '31599-T-6', 'FIAT', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'RABIA BAIBY'),
(80, '31606-T-6', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'LAHKIM ZAKARIA '),
(81, '44355-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ACHRAF EZZABDI '),
(82, '44356-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'RAFIK AIT EL BEZ '),
(83, '44359-B-7', 'CITROEN ', '2022-01-01', NULL, NULL, NULL, 1, 2, 7, 1, 'ETTAZY ABDERRAHIM '),
(84, '44361-B-7', 'FIAT', '2022-01-01', NULL, NULL, NULL, 5, 2, 7, 1, 'SAISSI HASSAN'),
(85, '47682-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 4, 2, 11, 1, 'SOBTI LAKBIR'),
(86, '47681-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 1, 2, 11, 1, 'OUGGAG MUSTAPHA'),
(87, '47689-D-8', 'PEUGEOT', '2021-01-01', NULL, NULL, NULL, 6, 2, 11, 1, 'ABOUZAID HICHAM'),
(88, '55534-e-6', 'PEUGEOT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'EL MAHDAOUY ABDELFATTAH '),
(89, '55536-E-6', 'PEUGEOT', '0000-00-00', NULL, NULL, NULL, 1, 2, 0, 1, 'MOHAMD TIMOULAL'),
(90, '55951-E-6', 'PEUGEOT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'TIJANI MOHAMED'),
(91, '57364-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 6, 2, 6, 1, 'ELBASRI HICHAM'),
(92, '57365-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'ZOUINI SALEH'),
(93, '57366-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'KARBOUAI YOUNESS'),
(94, '57367-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'DRAI AZIZ'),
(95, '57368-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'HOUMINI MOHAMED'),
(96, '57369-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 4, 2, 6, 1, 'MAAROUF ABDELGHANI'),
(97, '57370-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MOSSADEQ ANAS'),
(98, '57371-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'LHOUCINE AIT DAOUD'),
(99, '57374-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'EL KAILANI KHALID'),
(100, '57408-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 6, 2, 6, 1, 'IDRISSI ABDELLATIF'),
(101, '57910-E-6', 'DACIA ', '2019-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'KHADMAOUI NOUREDDINE'),
(102, '58362-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'HAMID EL MANDOUR'),
(103, '58378-E-6', 'DACIA', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MOHAMED AMINE TLEMCENY'),
(104, '59019-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'LAZSIRI AZIZ'),
(105, '59020-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 7, 2, 6, 1, 'BENSGHIR DRISS'),
(106, '59021-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'YASSINE HAMIDA'),
(107, '59022-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'DAOUI YOUNESS'),
(108, '6008-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'AJDAR MUSTAPHA'),
(109, '6010-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'GHOUBY SMAIL'),
(110, '61336-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'BENAKA LAHCEN'),
(111, '61337-E-6', 'FIAT ', '2019-01-01', NULL, NULL, NULL, 6, 2, 6, 1, 'BOUSSELAM MUSTAPHA'),
(112, '61338-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 1, 2, 6, 1, 'MJID LAHJILI'),
(113, '61339-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 2, 2, 6, 1, 'MOUJIB MOHAMED'),
(114, '61340-E-6', 'FIAT', '2019-01-01', NULL, NULL, NULL, 5, 2, 6, 1, 'ABBOUD EL MOSTAPHA'),
(115, '761-T-6', 'DACIA ', '2021-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'ISMAIL AITSGHIR '),
(116, '762-T-6', 'DACIA', '2021-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'EL HOUARI SAID'),
(117, '78975-E-6', 'VOLGSWAGEN', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SOUANI ABDERRAHMAN'),
(118, '79623-E-6', 'PEUGEOT', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'med boulahcen'),
(119, '83683-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'NAFAA HAMID'),
(120, '83684-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 2, 2, 5, 1, 'AQUABA JAMAL'),
(121, '83685-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'EL BAOUI HASSAN'),
(122, '83686-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SOUHDI MUSTAPHA'),
(123, '83687-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 4, 2, 5, 1, 'EL GOUNTARI HICHAM'),
(124, '83688-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 3, 2, 5, 1, 'ABDELLAH DEBANI'),
(125, '83939-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'BOUZROUD OMAR'),
(126, '83940-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'SADIK ABDELAZIZ'),
(127, '83941-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'DEMHOUL HAMID'),
(128, '84415-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 7, 2, 5, 1, 'TOUAMI RACHID'),
(129, '85-T-6', 'FIAT ', '2021-01-01', NULL, NULL, NULL, 8, 2, 5, 1, 'YOUSSEF ABDEDDINE'),
(130, '85048-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 1, 2, 5, 1, 'ABDERRAHIM SEMLALY'),
(131, '85154-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 6, 2, 5, 1, 'JALAL KAMAL'),
(132, '85155-E-6', 'Citroen', '2020-01-01', NULL, NULL, NULL, 2, 2, 5, 1, 'HOUSNI MUSTAPHA'),
(133, '251659707', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'DEBIANI MOHAMED'),
(134, '251659708', 'Kymco', '2022-11-11', NULL, NULL, NULL, 7, 3, 5, 1, 'BELKHADEM AHMED'),
(135, '251659711', 'Kymco', '2022-11-11', NULL, NULL, NULL, 8, 3, 5, 1, 'lahcen belhou'),
(136, '251659713', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'Dahibi Mehdi'),
(137, '251659716', 'Kymco', '2022-11-11', NULL, NULL, NULL, 1, 3, 5, 1, 'BABAZIA ADIL'),
(138, '6-023097', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Ibrahim'),
(139, '6-023105', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Nassihi'),
(140, '6-023110', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahraifi Abdellah'),
(141, '6-023112', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Rafiq Mohamed'),
(142, '6-023114', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Youness'),
(143, '6-023115', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech'),
(144, '6-023121', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Naji Mohamed'),
(145, '6-023122', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech'),
(146, '6-023124', 'Kymco', '2018-07-12', NULL, NULL, NULL, 6, 3, 5, 1, 'Bouqssid Abde Rrazak'),
(147, '6-023128', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Ferdaouss Hicham'),
(148, '6-023131', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Ben Aami Mustapha '),
(149, '6-023132', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Ichanti Lahoucine'),
(150, '6-023135', 'Kymco', '2018-07-12', NULL, NULL, NULL, 4, 3, 5, 1, 'Lahlou Abdelfattah'),
(151, '6-023137', 'Kymco', '2018-07-12', NULL, NULL, NULL, 6, 3, 5, 1, 'Afqir Abdelaziz'),
(152, '6-023141', 'Kymco', '2018-07-12', NULL, NULL, NULL, 5, 3, 5, 1, 'Sobti Jamal'),
(153, '6-023146', 'Kymco', '2018-07-12', NULL, NULL, NULL, 3, 3, 5, 1, 'Hafid Benfilali'),
(154, '6-023157', 'Kymco', '2018-07-12', NULL, NULL, NULL, 2, 3, 5, 1, 'El Makhfi Najib'),
(155, '6-023162', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Sergali Jamal'),
(156, '6-023163', 'Kymco', '2019-02-06', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech'),
(157, '6-023167', 'Kymco', '2018-07-12', NULL, NULL, NULL, 7, 3, 5, 1, 'Baoui Fouad'),
(158, '6-023169', 'Kymco', '2018-07-12', NULL, NULL, NULL, 2, 3, 5, 1, 'Hilal Al Moutalib'),
(159, '6-023173', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Elrhars Rachid'),
(160, '6-023213', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Hannouri El Houssein'),
(161, '6-023215', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Aadani Mohamed'),
(162, '6-023223', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'EL BIARI SAID 02-02-2021'),
(163, '6-023225', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Minaoui Hassan'),
(164, '6-023226', 'Kymco', '2018-07-12', NULL, NULL, NULL, 1, 3, 5, 1, 'Souhdi Mhamed'),
(165, '6-023230', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Laouini Abdeaziz'),
(166, '6-023245', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Boukiri Mohamed'),
(167, '6-023368', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'En Arret ? Marrakech Accidente'),
(168, '6-023369', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Rachid Joudar'),
(169, '6-023372', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Chouib Abdelghani'),
(170, '6-023380', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Mehdi Sraidi'),
(171, '6-023390', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Babazia '),
(172, '6-023392', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Defyami Rachid '),
(173, '6-023394', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'El Basry Mly Kassem'),
(174, '6-023396', 'Kymco', '2018-12-26', NULL, NULL, NULL, 3, 3, 5, 1, 'El bouchra Mohamed'),
(175, '6-023397', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Hassan Mly Mehzi'),
(176, '6-023404', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Debyani Mohamed'),
(177, '6-023405', 'Kymco', '2018-09-28', NULL, NULL, NULL, 1, 3, 5, 1, 'Bouchouka Issam'),
(178, '6-023408', 'Kymco', '2018-07-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Aazouzi Mohamed '),
(179, '6-023410', 'Kymco', '2018-07-24', NULL, NULL, NULL, 6, 3, 5, 1, 'El Ghazi Imyass'),
(180, '6-023412', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Charqaoui Ahmed'),
(181, '6-023414', 'Kymco', '2018-07-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Yahsine Taha'),
(182, '6-023422', 'Kymco', '2019-03-15', NULL, NULL, NULL, 1, 3, 5, 1, 'Hicham Zerbane '),
(183, '6-023424', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'El Moumni Mouhamed'),
(184, '6-023426', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'El Ourguie Mouhamed'),
(185, '6-023430', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Ezzebdi Rachid'),
(186, '6-023449', 'Kymco', '2018-07-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Moulay Essaid Sarsar'),
(187, '6-023452', 'Kymco', '2018-09-04', NULL, NULL, NULL, 8, 3, 5, 1, 'Youssef Lmhadi'),
(188, '6-023459', 'Kymco', '2018-07-24', NULL, NULL, NULL, 1, 3, 5, 1, 'abdelaziz Ait Oulaid'),
(189, '6-024912', 'Kymco', '2019-02-06', NULL, NULL, NULL, 6, 3, 5, 1, 'Kricha Salaheddine'),
(190, '6-024913', 'Kymco', '2019-11-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Dahibi Mehdi'),
(191, '6-031480', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Jalal Bouloujour'),
(192, '6-031483', 'Kymco', '2019-08-01', NULL, NULL, NULL, 2, 3, 5, 1, 'Ben Bah Omar'),
(193, '6-031489', 'Kymco', '2019-08-01', NULL, NULL, NULL, 5, 3, 5, 1, 'El Idrissi Ayoub'),
(194, '6-031490', 'Kymco', '2019-08-01', NULL, NULL, NULL, 4, 3, 5, 1, 'Redouane El Maazouzi'),
(195, '6-031495', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Ouzal abdelghani'),
(196, '6-031500', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Soufiane Ait Oufkir'),
(197, '6-031505', 'Kymco', '2019-08-01', NULL, NULL, NULL, 2, 3, 5, 1, 'El Koudi Hafid'),
(198, '6-031510', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahcen El Khalifi'),
(199, '6-031517', 'Kymco', '2019-11-01', NULL, NULL, NULL, 7, 3, 5, 1, 'AHMED BEL KHADME'),
(200, '6-031523', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Youssef Diani'),
(201, '6-031533', 'Kymco', '2019-08-01', NULL, NULL, NULL, 4, 3, 5, 1, 'Barrad Zakaria'),
(202, '6-031539', 'Kymco', '2019-11-01', NULL, NULL, NULL, 8, 3, 5, 1, 'Lahcen Belhou'),
(203, '6-031540', 'Kymco', '2019-08-01', NULL, NULL, NULL, 1, 3, 5, 1, 'Benqraach Adil'),
(204, '6-031549', 'Kymco', '2019-08-01', NULL, NULL, NULL, 6, 3, 5, 1, 'KRICHA SALAH'),
(205, '6-038602', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'AGHRIB LAHCEN'),
(206, '6-038603', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'Saghni Fouad'),
(207, '6-038610', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'IDDAR MUSTAPHA'),
(208, '6-038616', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'BEN ALLAL IMAD'),
(209, '6-038619', 'Kymco', '2020-08-07', NULL, NULL, NULL, 5, 3, 5, 1, 'AZIZ ESSALMI'),
(210, '6-038620', 'Kymco', '2020-08-25', NULL, NULL, NULL, 3, 3, 5, 1, 'AYOUB RACHIQ'),
(211, '6-038622', 'Kymco', '2020-08-25', NULL, NULL, NULL, 6, 3, 5, 1, 'Manqouri Hicham'),
(212, '6-038623', 'Kymco', '2020-08-25', NULL, NULL, NULL, 4, 3, 5, 1, 'ZOUKAL AMINE'),
(213, '6-038624', 'Kymco', '2020-08-25', NULL, NULL, NULL, 3, 3, 5, 1, 'LAAOUINI MED'),
(214, '6-038625', 'Kymco', '2020-08-25', NULL, NULL, NULL, 8, 3, 5, 1, 'OUDDOU BRAHIM'),
(215, '6-038626', 'Kymco', '2020-08-25', NULL, NULL, NULL, 2, 3, 5, 1, 'Tarfaoui Bader'),
(216, '6-046809', 'Kymco', '2021-10-02', NULL, NULL, NULL, 1, 3, 5, 1, 'sridi 2023'),
(217, '6-049078', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'ZAKARIA BERRAD '),
(218, '6-049080', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'NAJI MOHAMMED'),
(219, '6-049082', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Youness'),
(220, '6-049083', 'Kymco', '0000-00-00', NULL, NULL, NULL, 5, 3, 5, 1, 'Sobti Jamal'),
(221, '6-049084', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Soufiane Ait Oufkir'),
(222, '6-049088', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Minaoui Hassan'),
(223, '6-049091', 'Kymco', '2021-09-15', NULL, NULL, NULL, 2, 3, 5, 1, 'HILAL A MOUTALIB'),
(224, '6-049096', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'LAHLOU ABDELFETTAH'),
(225, '6-049100', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hannouri El Houssein'),
(226, '6-049101', 'Kymco', '2021-09-15', NULL, NULL, NULL, 2, 3, 5, 1, 'EL MAKHFI NAJIB'),
(227, '6-049103', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'El Ourguie Mouhamed'),
(228, '6-049107', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Boukiri Mohamed'),
(229, '6-049110', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'El Ghazi Ilyass'),
(230, '6-049119', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Souhdi Mhamed'),
(231, '6-049120', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Laouini Abdeaziz'),
(232, '6-049121', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'Bouqssid Abde Rrazak'),
(233, '6-049122', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahraifi Abdellah'),
(234, '6-049123', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Ben Aami Mustapha '),
(235, '6-049124', 'Kymco', '2021-09-13', NULL, NULL, NULL, 3, 3, 5, 1, 'EL BOUCHRA MED'),
(236, '6-049128', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Aadani Mohamed'),
(237, '6-049130', 'Kymco', '2021-09-13', NULL, NULL, NULL, 7, 3, 5, 1, 'Baoui Fouad'),
(238, '6-049132', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Mehdi Sraidi'),
(239, '6-049133', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Moulay Essaid Sarsar'),
(240, '6-049134', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Hilmi Ibrahim'),
(241, '6-049135', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Adil Nassihi'),
(242, '6-049142', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'El Basry Mly Kassem'),
(243, '6-049138', 'Kymco', '2021-09-15', NULL, NULL, NULL, 6, 3, 5, 1, 'Afqir Abdelaziz'),
(244, '6-049146', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'EL BIARI SAID'),
(245, '6-049150', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Charqaoui Ahmed'),
(246, '6-049167', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Aazouzi Mohamed '),
(247, '6-049151', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Rachid Joudar'),
(248, '6-049156', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'CHAACHOUAA ABDELAZIZE'),
(249, '6-049158', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'RAFIQ MOHAMMED '),
(250, '6-049176', 'Kymco', '2021-09-13', NULL, NULL, NULL, 1, 3, 5, 1, 'Ichanti Lahoucine'),
(251, '6-049170', 'Kymco', '2021-09-13', NULL, NULL, NULL, 4, 3, 5, 1, 'FIRDAOUS HICHAM'),
(252, '6-049761', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Hassan Mly Mehzi'),
(253, '6-049764', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'El Moumni Mouhamed'),
(254, '6-049774', 'Kymco', '2021-10-08', NULL, NULL, NULL, 8, 3, 5, 1, 'Youssef Lmhadi'),
(255, '6-049780', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'SALIM ABDE RRAHIM'),
(256, '6-049802', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'GUENNANI AYOUB'),
(257, '6-049805', 'Kymco', '2022-03-22', NULL, NULL, NULL, 6, 3, 5, 1, 'EZZEBDI RACHID'),
(258, '6-049807', 'Kymco', '0000-00-00', NULL, NULL, NULL, 3, 3, 5, 1, 'HASSAN AHOUJEGAL '),
(259, '6-055548', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'non affect?\r\n260'),
(261, '6-055562', 'Kymco', '2022-08-24', NULL, NULL, NULL, 2, 3, 5, 1, 'RAKKAB OSSAMA'),
(262, '6-055563', 'Kymco', '2022-08-24', NULL, NULL, NULL, 2, 3, 5, 1, 'EL KODI HAFID'),
(263, '6-055564', 'Kymco', '2022-08-24', NULL, NULL, NULL, 6, 3, 5, 1, 'non affect?\r\n264'),
(265, '6-055566', 'Kymco', '2022-08-24', NULL, NULL, NULL, 7, 3, 5, 1, 'Touami Rachid'),
(266, '6-055567', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Benqraach Adil'),
(267, '6-055568', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Defyami Rachid '),
(268, '6-055569', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Jalal Bouloujour'),
(269, '6-055570', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Chouib Abdelghani'),
(270, '6-055571', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Lahcen El Khalifi'),
(271, '6-055572', 'Kymco', '2022-08-24', NULL, NULL, NULL, 1, 3, 5, 1, 'Hicham Zerbane '),
(272, '6-055573', 'Kymco', '2022-08-24', NULL, NULL, NULL, 4, 3, 5, 1, 'TAHA YAHCINE'),
(273, '6-055574', 'Kymco', '2022-08-24', NULL, NULL, NULL, 4, 3, 5, 1, 'Redouane El Maazouzi'),
(274, '6-055578', 'Kymco', '2022-08-24', NULL, NULL, NULL, 5, 3, 5, 1, 'SAISSI HASSANI ISMAIL');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `agences`
--
ALTER TABLE `agences`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_vhl_id_foreign` (`vhl_id`),
  ADD KEY `comments_statu_id_foreign` (`statu_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `intitules`
--
ALTER TABLE `intitules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kilometrages_vhl_id_foreign` (`vhl_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vhls_agence_id_foreign` (`agence_id`),
  ADD KEY `vhls_categorie_id_foreign` (`categorie_id`),
  ADD KEY `vhls_intitule_id_foreign` (`intitule_id`),
  ADD KEY `vhls_statu_id_foreign` (`statu_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `agences`
--
ALTER TABLE `agences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `intitules`
--
ALTER TABLE `intitules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `vhls`
--
ALTER TABLE `vhls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_statu_id_foreign` FOREIGN KEY (`statu_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `kilometrages`
--
ALTER TABLE `kilometrages`
  ADD CONSTRAINT `kilometrages_vhl_id_foreign` FOREIGN KEY (`vhl_id`) REFERENCES `vhls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vhls`
--
ALTER TABLE `vhls`
  ADD CONSTRAINT `vhls_agence_id_foreign` FOREIGN KEY (`agence_id`) REFERENCES `agences` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_intitule_id_foreign` FOREIGN KEY (`intitule_id`) REFERENCES `intitules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vhls_statu_id_foreign` FOREIGN KEY (`statu_id`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
