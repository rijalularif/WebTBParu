-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 05:16 AM
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
-- Database: `web_tbparu`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tuberculosis', 'tuberculosis', '2022-08-07 03:09:52', '2022-08-07 04:10:26'),
(2, 'Kesehatan', 'kesehatan', '2022-08-07 03:09:52', '2022-08-07 04:10:36'),
(3, 'Rumah Sakit', 'rumah-sakit', '2022-08-07 03:09:52', '2022-08-07 04:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dokter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`id`, `nama_dokter`, `created_at`, `updated_at`) VALUES
(1, 'dr. Marliza, Sp.P', '2022-08-07 04:01:53', '2022-08-07 04:01:53'),
(2, 'dr. Puspa Rosfadilla, Sp.P', '2022-08-07 04:01:59', '2022-08-07 04:01:59'),
(3, 'dr. Indra Buana, Sp.P', '2022-08-07 04:02:05', '2022-08-07 04:02:05');

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
-- Table structure for table `jenistbs`
--

CREATE TABLE `jenistbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jenistb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenistbs`
--

INSERT INTO `jenistbs` (`id`, `nama_jenistb`, `created_at`, `updated_at`) VALUES
(1, 'TB Paru', '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(2, 'TB Ekstra Paru', '2022-08-07 03:09:53', '2022-08-07 03:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `jks`
--

CREATE TABLE `jks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jks`
--

INSERT INTO `jks` (`id`, `nama_jk`, `created_at`, `updated_at`) VALUES
(1, 'Laki laki', '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(2, 'Perempuan', '2022-08-07 03:09:53', '2022-08-07 03:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geojson` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `nama_kecamatan`, `geojson`, `created_at`, `updated_at`) VALUES
(1, 'Sawang', 'geojson/24RrM1JqtkCvraQqwR0zVZTxqfXo408rrXO3sazr.json', '2022-08-07 03:09:53', '2022-08-07 03:17:51'),
(2, 'Nisam', 'geojson/HrOZdv08CFGq7JekNtXsWNwsi2KKQjRnnUcpKTPO.json', '2022-08-07 03:09:53', '2022-08-07 03:18:15'),
(3, 'Nisam Antara', 'geojson/VS2u3GBdcwQMP7UamzUP7M8rAXBgJZYRkuyJ9SJl.json', '2022-08-07 03:09:53', '2022-08-07 03:18:33'),
(4, 'Banda Baro', 'geojson/QkN7Wfxx1RryZ2kOW9mOdZzkQKipkILAsxB1nPid.json', '2022-08-07 03:09:53', '2022-08-07 03:18:52'),
(5, 'Kuta Makmur', 'geojson/3QSszCy5f1aZyyZP5hansKm1tJBv2Nk8dhLYzGFy.json', '2022-08-07 03:09:53', '2022-08-07 03:19:08'),
(6, 'Simpang Keuramat', 'geojson/YpalkufX1nbstp9UU1bz7MTmkWHc4cEfFm4XvmaD.json', '2022-08-07 03:09:53', '2022-08-07 03:19:21'),
(7, 'Syamtalira Bayu', 'geojson/X3fg9mdSiOTW9eziGPlYjEYbFzTCbsRQLWVGvUHp.json', '2022-08-07 03:09:53', '2022-08-07 03:19:39'),
(8, 'Geurudong Pase', 'geojson/cq7nXIqxsk1bojSqfcLDlZy1aM06Zzub9szcrTny.json', '2022-08-07 03:09:53', '2022-08-07 03:19:55'),
(9, 'Meurah Mulia', 'geojson/J9fVnxnvuGmHVH9p9nQC10Oa64q6XCUQnEeWsW3V.json', '2022-08-07 03:09:53', '2022-08-07 03:20:09'),
(10, 'Matangkuli', 'geojson/gGDFMmGOtob9amWx87mYiGLGKaIs7Yjpf8jHHGPH.json', '2022-08-07 03:09:53', '2022-08-07 03:22:13'),
(11, 'Paya Bakong', 'geojson/OfdsCHzptczNWFZZLOLBAKzYAoHauPQt6jctyo2X.json', '2022-08-07 03:09:53', '2022-08-07 03:22:32'),
(12, 'Pirak Timu', 'geojson/e7BCISOsHu4whsZdm6CLPowxaOhzFpn3wQeo6dkX.json', '2022-08-07 03:09:53', '2022-08-07 03:22:47'),
(13, 'Cot Girek', 'geojson/JGEJx3JwQt8fqODVpz5HLJzqvFKg83QS9Q2smJNf.json', '2022-08-07 03:09:53', '2022-08-07 03:23:04'),
(14, 'Tanah Jambo Aye', 'geojson/DLzBG2WcZTWSfs2eOfuK7KluSH19gowSqnhxUZna.json', '2022-08-07 03:09:53', '2022-08-07 03:23:21'),
(15, 'Langkahan', 'geojson/dITwr2gqsy3mdVha8nNDsfYmPByDCQywtkbIAUhC.json', '2022-08-07 03:09:53', '2022-08-07 03:23:42'),
(16, 'Seunuddon', 'geojson/UiJOcLQR12ICTeuyeDDirmZSeqEcpV0m7qtJFwLr.json', '2022-08-07 03:09:53', '2022-08-07 03:23:58'),
(17, 'Baktiya', 'geojson/WpwtQt5RA8MgNtiOWV5gWHQGaWcllVTW8XIBb00g.json', '2022-08-07 03:09:53', '2022-08-07 03:24:14'),
(18, 'Baktiya Barat', 'geojson/MyBKGxPo5r6EHW1OAT869AaKSk9XHgwRsSfO0Cb5.json', '2022-08-07 03:09:53', '2022-08-07 03:24:36'),
(19, 'Lhoksukon', 'geojson/tLrcJPknZwA9NrPqzoBROeqoiOrLKbNFCzp9Ti7R.json', '2022-08-07 03:09:53', '2022-08-07 03:24:55'),
(20, 'Tanah Luas', 'geojson/KR99e8Ip2HOd4QEWrlGJlaNZuzxmnApmKJkrcNNM.json', '2022-08-07 03:09:53', '2022-08-07 03:25:11'),
(21, 'Nibong', 'geojson/6yZ8h6gvqKgfcm0C1YyrnvBuhUUL6HhqxSfxeM2h.json', '2022-08-07 03:09:53', '2022-08-07 03:25:27'),
(22, 'Samudera', 'geojson/ipgt6dSj2DePc6stGsNXohUwNSnw50waFm5bxhX1.json', '2022-08-07 03:09:53', '2022-08-07 03:25:43'),
(23, 'Syamtalira Aron', 'geojson/JO2c39n7KngJB2OdMMrl7LZwYMrNDaP33SoRfvo7.json', '2022-08-07 03:09:53', '2022-08-07 03:26:01'),
(24, 'Tanah Pasir', 'geojson/EWRNNnkOPA2u58dThfDNDjyNkevs6yqVSMGhNSEL.json', '2022-08-07 03:09:53', '2022-08-07 03:26:16'),
(25, 'Lapang', 'geojson/QzfJ2xOQcBVEbdr4R6WLzLqqi63tmYHEpv8TW6XC.json', '2022-08-07 03:09:53', '2022-08-07 03:26:32'),
(26, 'Muara Batu', 'geojson/I6mGvZpAUuqpiRWWqK2Nj9tC6kP84kRc1oN0c1UK.json', '2022-08-07 03:09:53', '2022-08-07 03:26:46'),
(27, 'Dewantara', 'geojson/KDafJKMYclLc0shQcdIrNOWSPdp9OyUCDwhnR3US.json', '2022-08-07 03:09:53', '2022-08-07 03:26:59');

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
(5, '2022_06_07_145632_create_posts_table', 1),
(6, '2022_06_10_160056_create_categories_table', 1),
(7, '2022_07_13_140725_create_kecamatans_table', 1),
(8, '2022_07_14_082004_create_jenistbs_table', 1),
(9, '2022_07_14_084453_create_pasiens_table', 1),
(10, '2022_07_14_101637_create_jks_table', 1),
(11, '2022_07_14_163902_add_is_admin_to_users_table', 1),
(12, '2022_07_24_145041_create_dokters_table', 2),
(13, '2022_07_24_145537_add_dokter_id_to_pasiens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pasiens`
--

CREATE TABLE `pasiens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenistb_id` bigint(20) UNSIGNED NOT NULL,
  `kecamatan_id` bigint(20) UNSIGNED NOT NULL,
  `jk_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dokter_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `diagnosa` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pasiens`
--

INSERT INTO `pasiens` (`id`, `jenistb_id`, `kecamatan_id`, `jk_id`, `nama`, `umur`, `created_at`, `updated_at`, `dokter_id`, `diagnosa`) VALUES
(1, 1, 7, 1, 'M. YAKOB', 60, '2022-08-07 03:09:53', '2022-08-07 04:12:05', 2, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(2, 1, 1, 1, 'ABDURRAHMAN', 64, '2022-08-07 03:09:53', '2022-08-07 04:12:40', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(3, 1, 25, 2, 'JARIAH AJI', 71, '2022-08-07 03:09:53', '2022-08-07 04:13:19', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(4, 1, 22, 2, 'BARIAH', 38, '2022-08-07 03:09:53', '2022-08-07 04:13:59', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(5, 1, 22, 1, 'IRWAN AW', 43, '2022-08-07 03:09:53', '2022-08-07 04:14:33', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(6, 2, 9, 1, 'SAMION TALEB', 66, '2022-08-07 03:09:53', '2022-08-08 20:11:45', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(7, 1, 20, 1, 'ABAKAR ANSARI', 63, '2022-08-07 03:09:53', '2022-08-07 04:15:36', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(8, 1, 7, 2, 'NUR AULA', 51, '2022-08-07 03:09:53', '2022-08-07 04:16:07', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(9, 1, 6, 1, 'ALIBASYAH', 66, '2022-08-07 03:09:53', '2022-08-07 04:16:38', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(10, 1, 24, 1, 'IRWAN', 47, '2022-08-07 03:09:53', '2022-08-07 04:17:11', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(11, 1, 21, 2, 'RABIAH UMAR', 65, '2022-08-07 03:09:53', '2022-08-07 19:08:47', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(12, 1, 9, 1, 'MUHAMMAD TAHER', 45, '2022-08-07 03:09:53', '2022-08-07 19:09:25', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(13, 2, 27, 1, 'ABDUL MUNIR', 40, '2022-08-07 03:09:53', '2022-08-08 20:15:53', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(14, 1, 2, 1, 'ISMAIL BEN', 65, '2022-08-07 03:09:53', '2022-08-08 19:12:09', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(15, 1, 7, 2, 'KAMARIAH', 70, '2022-08-07 03:09:53', '2022-08-08 19:12:42', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(16, 1, 22, 1, 'IBRAHIM Y', 60, '2022-08-07 03:09:53', '2022-08-08 19:13:26', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(17, 1, 8, 1, 'MUHAMMAD SUID', 26, '2022-08-07 03:09:53', '2022-08-08 19:14:02', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(18, 1, 26, 1, 'ALIMUDDIN', 65, '2022-08-07 03:09:53', '2022-08-08 19:14:31', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(19, 1, 22, 2, 'CUT ALI', 71, '2022-08-07 03:09:53', '2022-08-08 19:15:04', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(20, 1, 1, 2, 'NILAWATI', 49, '2022-08-07 03:09:53', '2022-08-08 19:15:46', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(21, 1, 7, 1, 'BUKHARI YUNUS', 43, '2022-08-07 03:09:53', '2022-08-08 19:16:22', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(22, 1, 19, 2, 'NURHABSAH', 41, '2022-08-07 03:09:53', '2022-08-08 19:16:55', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(23, 1, 2, 1, 'ILYAS ALI', 54, '2022-08-07 03:09:53', '2022-08-08 19:17:56', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(24, 2, 19, 2, 'RAMULAH', 52, '2022-08-07 03:09:53', '2022-08-08 20:12:40', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(25, 1, 5, 1, 'MULYADI TARMIZI', 43, '2022-08-07 03:09:53', '2022-08-08 19:18:57', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(26, 1, 27, 1, 'ABDUL MUTALEB RUFIN', 77, '2022-08-07 03:09:53', '2022-08-08 19:19:29', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(27, 1, 13, 2, 'SI TJUT', 84, '2022-08-07 03:09:53', '2022-08-08 19:20:00', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(28, 1, 22, 2, 'NURAIDA', 46, '2022-08-07 03:09:53', '2022-08-08 19:20:40', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(29, 1, 6, 1, 'ABUBAKAR', 63, '2022-08-07 03:09:53', '2022-08-08 19:21:13', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(30, 1, 25, 1, 'BASYARUDDIN', 45, '2022-08-07 03:09:53', '2022-08-08 19:22:14', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(31, 1, 9, 1, 'BAKRI ALI', 56, '2022-08-07 03:09:53', '2022-08-08 19:23:03', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(32, 1, 27, 1, 'M JALIL', 64, '2022-08-07 03:09:53', '2022-08-08 19:23:47', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(33, 1, 20, 1, 'WAHYUDI', 25, '2022-08-07 03:09:53', '2022-08-08 19:24:23', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(34, 1, 21, 1, 'ABDUL MANAF', 55, '2022-08-07 03:09:53', '2022-08-08 19:24:50', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(35, 2, 10, 2, 'SALBIAH', 42, '2022-08-07 03:09:53', '2022-08-08 20:12:06', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(36, 1, 10, 2, 'WAHYUNI', 31, '2022-08-07 03:09:53', '2022-08-08 19:26:03', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(37, 1, 9, 2, 'MEISYA MIFTA CIANA', 1, '2022-08-07 03:09:53', '2022-08-08 19:26:44', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(38, 1, 19, 1, 'RUSLAN AHMAD', 63, '2022-08-07 03:09:53', '2022-08-08 19:27:28', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(39, 1, 25, 1, 'M NURHASYEM', 65, '2022-08-07 03:09:53', '2022-08-08 19:28:13', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(40, 1, 15, 1, 'ABD GHANI', 49, '2022-08-07 03:09:53', '2022-08-08 19:28:42', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(41, 1, 7, 1, 'LUKMAN', 48, '2022-08-07 03:09:53', '2022-08-08 19:29:12', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(42, 1, 22, 2, 'NURMALA ISMAIL', 44, '2022-08-07 03:09:53', '2022-08-08 19:29:48', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(43, 1, 2, 1, 'FAISAL', 44, '2022-08-07 03:09:53', '2022-08-08 19:30:17', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(44, 1, 23, 1, 'HAMID AHMAD', 83, '2022-08-07 03:09:53', '2022-08-08 19:30:52', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(45, 1, 7, 1, 'ABDUS SAMAD', 45, '2022-08-07 03:09:53', '2022-08-08 19:31:21', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(46, 1, 9, 1, 'M. SALEH', 66, '2022-08-07 03:09:53', '2022-08-08 19:31:50', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(47, 2, 2, 2, 'FIRZA RAHMATUL ULA', 19, '2022-08-07 03:09:53', '2022-08-08 20:08:54', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(48, 1, 19, 1, 'RUSLAN RUSLI', 33, '2022-08-07 03:09:53', '2022-08-08 19:33:17', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(49, 1, 5, 1, 'ZAKARIA ISHAK', 50, '2022-08-07 03:09:53', '2022-08-08 19:33:47', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(50, 1, 24, 1, 'MANSUR', 61, '2022-08-07 03:09:53', '2022-08-08 19:34:33', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(51, 1, 6, 1, 'MUSLIM HUSEN CUT', 48, '2022-08-07 03:09:53', '2022-08-08 19:35:50', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(52, 2, 5, 1, 'MASRIZAL MUKTAR', 39, '2022-08-07 03:09:53', '2022-08-08 20:10:22', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(53, 1, 8, 1, 'MAHMUDDIN', 46, '2022-08-07 03:09:53', '2022-08-08 19:36:52', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(54, 1, 24, 1, 'ABDUL AZIZ', 63, '2022-08-07 03:09:53', '2022-08-08 19:37:22', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(55, 1, 7, 2, 'SURYA NENGSIH', 47, '2022-08-07 03:09:53', '2022-08-08 19:37:57', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(56, 1, 22, 2, 'SUHARNI', 60, '2022-08-07 03:09:53', '2022-08-08 19:38:29', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(57, 1, 2, 1, 'M. TABRANI', 18, '2022-08-07 03:09:53', '2022-08-08 19:39:19', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(58, 1, 27, 1, 'TGK.H. HASAN PUTEH', 65, '2022-08-07 03:09:53', '2022-08-08 19:39:52', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(59, 1, 21, 1, 'MUHAMMAD JUMADIL', 5, '2022-08-07 03:09:53', '2022-08-08 19:40:39', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(60, 1, 19, 2, 'NURHAYANAH', 37, '2022-08-07 03:09:53', '2022-08-08 19:41:14', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(61, 2, 9, 2, 'NURYANA', 45, '2022-08-07 03:09:53', '2022-08-08 20:11:32', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(62, 1, 17, 2, 'HALIMAH', 75, '2022-08-07 03:09:53', '2022-08-08 19:42:31', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(63, 1, 1, 1, 'MURTALABUDDIN', 48, '2022-08-07 03:09:53', '2022-08-08 19:43:08', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(64, 1, 19, 1, 'M ADAM', 59, '2022-08-07 03:09:53', '2022-08-08 19:43:44', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(65, 1, 9, 1, 'MUHAMMAD HUSEN', 45, '2022-08-07 03:09:53', '2022-08-08 19:44:13', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(66, 1, 12, 2, 'HASANAH', 55, '2022-08-07 03:09:53', '2022-08-08 19:44:46', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(67, 1, 26, 2, 'AINSYAH', 42, '2022-08-07 03:09:53', '2022-08-08 19:45:21', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(68, 1, 7, 1, 'M JAMIL. B', 53, '2022-08-07 03:09:53', '2022-08-08 19:45:59', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(69, 1, 15, 1, 'ASNAWI', 61, '2022-08-07 03:09:53', '2022-08-08 19:46:40', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(70, 1, 10, 1, 'MUHAMMAD SYUKRAL', 13, '2022-08-07 03:09:53', '2022-08-08 19:47:14', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(71, 2, 5, 2, 'TI ZALIKHA', 71, '2022-08-07 03:09:53', '2022-08-08 20:09:48', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(72, 1, 26, 1, 'RAZALI', 49, '2022-08-07 03:09:53', '2022-08-08 19:48:29', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(73, 1, 3, 1, 'ELVASADI', 20, '2022-08-07 03:09:53', '2022-08-08 19:49:07', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(74, 1, 7, 2, 'AISYAH AMIN', 42, '2022-08-07 03:09:53', '2022-08-08 19:50:22', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(75, 1, 13, 1, 'MURSALIN ZULKIFLI', 32, '2022-08-07 03:09:53', '2022-08-08 19:50:53', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(76, 1, 10, 1, 'AMRIZAL', 20, '2022-08-07 03:09:53', '2022-08-08 19:51:38', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(77, 1, 6, 1, 'A MANSOR', 66, '2022-08-07 03:09:53', '2022-08-08 19:52:15', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(78, 1, 3, 2, 'LINDA WATI', 22, '2022-08-07 03:09:53', '2022-08-08 19:52:53', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(79, 1, 19, 1, 'TEUKU MUH HASBY RUDDIN', 48, '2022-08-07 03:09:53', '2022-08-08 19:53:26', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(80, 1, 26, 1, 'NURDIN', 59, '2022-08-07 03:09:53', '2022-08-08 19:54:10', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(81, 2, 21, 1, 'DARNA IRWANSYAH', 68, '2022-08-07 03:09:53', '2022-08-08 20:13:10', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(82, 1, 19, 1, 'SUPRIADI', 28, '2022-08-07 03:09:53', '2022-08-08 19:55:34', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(83, 1, 27, 1, 'MUHAMMAD ALI', 57, '2022-08-07 03:09:53', '2022-08-08 19:56:05', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(84, 1, 10, 1, 'AGUS SALEM', 18, '2022-08-07 03:09:53', '2022-08-08 19:56:37', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(85, 1, 19, 2, 'ENI SAHURI', 30, '2022-08-07 03:09:53', '2022-08-08 19:57:16', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(86, 1, 7, 1, 'TGK. M. ADAMI', 55, '2022-08-07 03:09:53', '2022-08-08 19:57:56', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(87, 1, 5, 1, 'ARFENDI A RAMAN', 49, '2022-08-07 03:09:53', '2022-08-08 19:58:31', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(88, 1, 21, 1, 'MUHAZIR', 27, '2022-08-07 03:09:53', '2022-08-08 19:59:02', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(89, 1, 3, 1, 'SABDA HADI', 35, '2022-08-07 03:09:53', '2022-08-08 19:59:45', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(90, 1, 7, 2, 'SAUDAH IBRAHIM', 45, '2022-08-07 03:09:53', '2022-08-08 20:00:24', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(91, 1, 17, 1, 'MAWARUDDIN', 37, '2022-08-07 03:09:53', '2022-08-08 20:01:08', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(92, 1, 1, 2, 'NUR SIAH', 53, '2022-08-07 03:09:53', '2022-08-08 20:01:44', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(93, 1, 16, 1, 'SUPRIADI', 37, '2022-08-07 03:09:53', '2022-08-08 20:02:35', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(94, 2, 22, 1, 'MUNAWAR', 27, '2022-08-07 03:09:53', '2022-08-08 20:15:23', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(95, 1, 14, 1, 'ZULKIFLI', 31, '2022-08-07 03:09:53', '2022-08-08 20:03:42', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(96, 1, 13, 1, 'NURDIN', 45, '2022-08-07 03:09:53', '2022-08-08 20:04:13', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(97, 1, 14, 1, 'AMIRUDDIN BIN HASAN', 46, '2022-08-07 03:09:53', '2022-08-08 20:04:43', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(98, 2, 6, 2, 'TRIWINARNI', 47, '2022-08-07 03:09:53', '2022-08-08 20:11:07', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(99, 1, 9, 1, 'MUNAZIR', 43, '2022-08-07 03:09:53', '2022-08-08 20:05:54', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>'),
(100, 2, 4, 1, 'M. NUR ADAM', 50, '2022-08-07 03:09:53', '2022-08-08 20:09:13', 1, '<div><strong>TB Paru</strong><br><br>Batuk selama 2-3 minggu, sesak napas, nafsu makan turun, berat badan turun</div>');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Penderita TBC di Aceh Terus Meningkat', 'penderita-tbc-di-aceh-terus-meningkat', NULL, 'Penderita TBC di Aceh Terus MeningkatTUBERKULOSIS alias TBC merupakan salah satu penyakit menular mematikan di dunia yang disebabkan oleh kuman Mycobacterium tuberculosis. Estimasi secara global seban...', '<div><strong>Penderita TBC di Aceh Terus Meningkat</strong><br><br>TUBERKULOSIS alias TBC merupakan salah satu penyakit menular mematikan di dunia yang disebabkan oleh kuman Mycobacterium tuberculosis. Estimasi secara global sebanyak 9.960.000 kasus. Terdiri dari 6.170.000 kasus pasien laki-laki dan 3.790.000 kasus pasien perempuan.<br><br></div><div>Indonesia sendiri sebagaimana data dari Kementerian Kesehatan (Kemenkes), menempati peringkat ketiga setelah India dan Cina dengan jumlah kasus 824 ribu dan kematian 93 ribu per tahun, atau setara dengan 11 kematian per jam.<br><br>Sebanyak 91 % kasus TBC di Indonesia adalah TBC paru yang berpotensi menularkan kepada orang yang sehat di sekitarnya. Dari 34 provinsi di Indonesia, kasus terbesar terjadi di provinsi Jawa Barat, disusul Jawa Timur, Jawa Tengah, DKI Jakarta, dan Sumatera Utara.<br><br>Lalu bagaimana dengan Aceh?<br>Meski kasus yang terjadi di provinsi ini tidak termasuk dalam 10 besar secara nasional, tetapi trend yang terjadi semakin mengkhawatirkan, dimana setiap tahun terus terjadi peningkatan kasus.<br><br></div><div>“Aceh tidak termasuk 10 besar, tapi hampir mendekati peringkat 10 besar secara nasional,” kata Kepala Bidang Pencegahan dan Pengendalian Penyakit (P2P) Dinas Kesehatan (Dinkes) Aceh, dr Iman Murahman.<br><br></div><div>Dokter Iman menyebutkan, tahun 2021 tercatat ada 7.170 kasus TBC di Aceh, meningkat dari tahun 2020 yang sebanyak 6.878 kasus. Sebanyak 4.578 kasus pada laki-laki, dan 2.592 kasus pada perempuan.<br><br></div><div>Sementara kasus kematian di Aceh karena TBC mencapai 276 kasus pada tahun 2021, atau 5:100.000 penduduk. “Angka ini meningkat drastis dari yang sebelumnya dilaporkan hanya 1:100.000 penduduk,” ungkap dr Iman.<br><br></div><div>Menurut Dokter Spesialis Paru Rumah Sakit Umum Zainoel Abidin (RSUZA) Banda Aceh, Dr dr Budi Yanti Sp P (K) FAPSR, kasus TBC di Aceh berada di urutan 12 secara nasional. Terbanyak di Kabupaten Aceh Utara.<br><br>“Di Aceh nomor 1 yang paling banyak itu di Aceh Utara, masih bertahan kalau saya pantau dari 2019 sampai 2020. Itu masih terus bertahan kasus TBC-nya,” sebut Budi Yanti.</div><div><br>Sedangkan pencapaian target angka pengobatan masih di bawah 85 persen, padahal yang direkomendasikan oleh WHO dan Kemenkes mencapai 90 persen. Rendahnya target angka pengobatan itu karena minimnya pengetahuan masyarakat terhadap penyakit TB. “Maka disitulah tugas dari tenaga kesehatan untuk terus mengedukasi tentang Tuberculosis ini,” terang dokter spesialis paru ini.<br><br></div><div><strong>Pengaruh Pola Hidup</strong><br>Kepala Bidang P2P Dinkes Aceh, dr Iman Murahman menjelaskan, meningkatnya kasus TBC di Aceh disebabkan oleh tiga hal, yang secara umum berkaitan dengan lingkungan dan pola hidup masyarakat yang tidak sehat.<br><br></div><div>“Ada tiga penyebab meningkatnya kasus TBC. Pertama, kuman TBC ini paling suka tinggal di tempat yang lembab. Kedua, perilaku hidup bersih dan sehat dari masyarakat Aceh, dan ketiga adalah faktor tidak memakai masker,” jelasnya.<br><br></div><div>Penularan TBC dijelaskan Iman, terjadi melalui udara, mirip seperti penularan Covid-19. Oleh karena itu, penting menjaga sirkulasi udara dan cahaya matahari masuk dalam rumah.</div>', NULL, '2022-08-07 03:09:53', '2022-08-07 04:21:52'),
(2, 2, 1, 'Aut saepe voluptas quisquam molestias omnis velit est nam.', 'dolorem-voluptas-quidem-qui-officiis-sint', NULL, 'Sapiente reiciendis et voluptas dolor velit laboriosam nemo sed est consequatur tenetur aut sed maiores sit sint harum.', '<p>Id unde delectus quis provident quisquam excepturi consequuntur autem. Est et accusamus aut ut veniam. Ducimus voluptas debitis a autem animi illum quos.</p><p>Voluptatem ut facere facilis nulla qui ex est. Sit occaecati blanditiis commodi deleniti sed ut sed. Ipsa qui non est.</p><p>A quidem magni est rerum quia deleniti amet. Qui non molestias saepe quisquam alias. Non aut cum eius nulla libero provident. Et sit nihil quia voluptates cum aut incidunt et.</p><p>Consequuntur odit fugiat repellendus quod. Quam similique quod voluptatibus similique impedit voluptates. Nostrum quidem porro veniam quia officia.</p><p>Quas ut magnam voluptates facilis sunt. Quod aut ex odit non possimus illo voluptatem sit. Amet in aut officiis quod. Explicabo laudantium vero laboriosam ut voluptate repudiandae.</p><p>Repellat eveniet esse excepturi. Eius magnam veniam nulla voluptatibus repellendus reprehenderit incidunt tempora. Nobis earum laboriosam quis aut laudantium id sequi. Mollitia fuga itaque eos iusto reiciendis atque.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(3, 3, 1, 'Quia non deleniti magnam.', 'inventore-numquam-facilis-vel-ex-ea-qui-magni', NULL, 'Commodi quas soluta nihil itaque ab magnam et accusamus quia.', '<p>Maxime nisi mollitia animi. Autem illum nulla iusto dolor a eveniet. Quis amet qui sint molestias nemo voluptatem.</p><p>Harum at totam odio quasi. Qui distinctio rem voluptas distinctio. Dolores id eligendi nesciunt aut natus perspiciatis. Amet quis tempore dolores perferendis.</p><p>Consequuntur rerum a voluptates nulla. Esse aut in natus vitae. Excepturi et ab dolores minus. Quidem et quo vel labore id perferendis perspiciatis.</p><p>Voluptatem et incidunt laborum earum autem aperiam hic. Perspiciatis aperiam fugiat sunt repellendus earum ea aut. Quos quam occaecati et odio distinctio sit.</p><p>Ut qui repellendus beatae voluptate repellat. Possimus ipsam explicabo numquam ex. Labore aliquam ad mollitia sunt reprehenderit id autem.</p><p>Laboriosam similique quibusdam autem ut ea alias. Reiciendis perspiciatis amet magni. Quo quia est facilis ipsa sit similique omnis ullam. Eos harum inventore ut aut.</p><p>Laborum ea alias consequatur aperiam voluptatem ipsum. Et et aut qui corporis voluptatibus explicabo. Nisi repellat voluptatem minima quae maxime.</p><p>Ut sit culpa fugit tenetur quod officia est. Voluptatibus et voluptatem aut repellendus quia aut velit.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(4, 1, 1, 'Autem sed cumque.', 'et-beatae-inventore-optio-voluptatibus-officia-odio', NULL, 'Quis eum harum fugiat et nobis sequi aperiam.', '<p>Optio minima est illo necessitatibus aut aut. Perferendis doloremque molestiae officia fuga sed ducimus consequatur maiores. Reprehenderit aperiam recusandae reiciendis eos.</p><p>Temporibus architecto rerum similique fuga quis perferendis. Consequatur corporis temporibus distinctio non incidunt velit ea. Ut debitis natus natus et ut voluptatibus porro. Aut aspernatur et velit sit ratione dolores. Quaerat consequuntur eligendi quia doloribus molestiae voluptas.</p><p>Beatae voluptates laborum commodi. Esse dicta veritatis est suscipit voluptas qui. Tempora non optio qui maxime. Et eum qui inventore eaque quia accusantium. Ipsam reprehenderit laborum quidem nam expedita aut et culpa.</p><p>Et sunt occaecati qui placeat sit laborum dolore. Officia nulla dolor autem alias. Non dolor sint et eum quo hic. Numquam provident quasi vel. Non voluptatem rerum aut perferendis.</p><p>Id distinctio placeat id voluptate molestiae doloremque aperiam. Labore autem occaecati sit dolorum. Possimus aliquam voluptatem molestiae ullam.</p><p>Perspiciatis deleniti repellendus autem. Veritatis rerum nulla doloremque omnis. Qui voluptatem dolorem quo. Et consequuntur et nihil rerum modi nobis.</p><p>Molestias culpa fugit vel. Dolor asperiores ut distinctio consequatur occaecati rerum magni. Impedit fugit corporis et et et.</p><p>Aut deleniti quam nesciunt voluptates tempore quia. Officiis distinctio dolorum excepturi quidem rerum aut et. Vero nam amet aut voluptatibus.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(5, 1, 1, 'Et doloremque numquam aut.', 'incidunt-nesciunt-placeat-quo-dignissimos-eligendi-mollitia', NULL, 'Omnis autem magni minima doloremque ut dolorum provident nobis quo reprehenderit.', '<p>Dolorem amet eligendi qui fugiat nulla eos. Ea vitae ut animi quasi error. Animi dolor aut ut non.</p><p>Est aut quo at et. Quo illo ut sint atque dolor id. Quibusdam id qui sapiente explicabo omnis.</p><p>Rerum optio non totam veritatis. Aut nam rerum voluptates nulla impedit ea. Aspernatur aut laborum veniam repudiandae harum libero sunt.</p><p>Quis veniam alias blanditiis numquam doloribus. Voluptatibus officiis et ratione deleniti laboriosam. Et sed nemo voluptas quia aut ut.</p><p>Nostrum et architecto tenetur aperiam ratione vitae. Veniam impedit natus omnis commodi sequi voluptatum doloribus. Sit quisquam sequi qui laboriosam sint ut et.</p><p>Vel sit minima cumque vero non odio qui. Nihil libero est esse recusandae fugit ducimus. Ut autem quia ut omnis omnis et. Aspernatur sit aspernatur natus.</p><p>Et sit quia voluptates aut suscipit ipsum voluptas. Provident iure sed aut deserunt. Voluptas necessitatibus qui laudantium distinctio sit incidunt.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(6, 2, 1, 'Sequi accusantium fuga qui provident consequatur saepe laudantium porro.', 'quod-dolores-delectus-rerum', NULL, 'Voluptatem qui autem quaerat sint mollitia vitae perferendis maiores ab veritatis optio voluptates laudantium aliquam.', '<p>Et ipsum distinctio vel. Quod dolorem ab quidem assumenda molestiae.</p><p>Soluta facere et et modi. Debitis facere quos quisquam non. Perferendis ut aut qui. Et enim dolores eius quod porro voluptate a.</p><p>Repellendus enim optio officia ea. Consequuntur quis molestiae consequatur officia enim ipsum officia. Laboriosam dolorem temporibus aperiam dicta ab consectetur. Dignissimos eum distinctio saepe ut rerum voluptate voluptatum.</p><p>Tempora autem aperiam aut aut soluta. Libero consectetur fugit quia perferendis. Veritatis tenetur nisi et minima aperiam. Quis delectus sit est voluptas dolorem dolores voluptas molestiae. Laboriosam dolore autem iure et sunt ratione consequatur non.</p><p>Distinctio tempora cum et labore quis. Repudiandae quia qui repudiandae ullam non nobis. Sed ratione qui et ratione praesentium et.</p><p>Quasi voluptatibus et totam esse. Architecto dolore sit exercitationem officia ut. Voluptatem aspernatur velit et molestiae eius. Et officiis dolorum et dicta dolorem omnis quis vel.</p><p>Quo quo qui est quo. Voluptatem harum dolor ut eos. Sed quis facere et aut. Facere autem dolorem qui in aliquid molestiae. Similique maiores possimus est doloribus sed atque.</p><p>Molestias consectetur non ducimus molestiae debitis non vero. Odit atque beatae culpa est necessitatibus voluptates provident. Sit aliquid ut possimus cum fugiat ad.</p><p>Magnam ut velit expedita est velit omnis. Expedita ullam autem ut impedit officiis consequatur. Beatae quidem excepturi aliquid nesciunt.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(7, 1, 1, 'Exercitationem corrupti quia sunt dignissimos quod.', 'qui-mollitia-suscipit-molestias-praesentium', NULL, 'Et velit velit facilis quasi odit provident odio sed vel id eveniet sed aspernatur quasi sequi at voluptatem illo libero sit.', '<p>Qui eligendi qui natus fugit ullam. Veniam corporis dolore eos ipsam eligendi omnis laboriosam. Rerum error sunt vero excepturi minus velit.</p><p>Et distinctio quia quibusdam error ex provident. Deserunt voluptatem quo rerum aut et reiciendis.</p><p>Minus culpa magnam cumque et. Amet magni asperiores necessitatibus dolorem. At aut sit et est sequi.</p><p>Et explicabo placeat excepturi dolore similique. Eveniet provident libero debitis atque illo officiis consequatur. Deserunt fugit amet voluptatem dolorum omnis accusamus. Aliquid labore velit ea quidem neque.</p><p>Fugit sit in magni dignissimos laborum sit optio. Cupiditate repellat sed ipsam animi. Quam est architecto rem.</p><p>Cum et sit blanditiis accusamus est fuga reprehenderit occaecati. Aspernatur atque ipsam dolorum nulla a fuga voluptatem facilis. Qui consequatur dicta sed.</p><p>Sit sint et excepturi inventore ad a. Dolor sit quod incidunt qui voluptate corporis. Et similique accusantium quia sed nostrum.</p><p>Voluptatem repellat eveniet et sequi vel voluptatem quia qui. Omnis debitis omnis dolores magnam. Doloremque impedit a autem dicta. Laborum adipisci sed omnis harum repellat quam.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53'),
(8, 1, 1, 'Et cumque sequi ut voluptatem officia.', 'libero-aut-commodi-impedit-repudiandae-explicabo-ea', NULL, 'Ipsa possimus ut quo fugiat non reprehenderit harum eius dolor consequatur dolor incidunt et aut eos hic veritatis doloremque mollitia aut voluptatem impedit inventore et.', '<p>Est excepturi quia animi enim autem ut. Beatae nam molestiae omnis doloribus. Iure numquam enim consequuntur modi harum expedita natus.</p><p>Qui expedita aspernatur perspiciatis totam mollitia ducimus sit. Et temporibus alias a itaque. Consequatur aut rerum rerum perferendis possimus aperiam ea.</p><p>Quas optio repellat necessitatibus iste non. Rem maiores sit tempore et doloremque. Omnis natus eveniet blanditiis exercitationem sapiente est.</p><p>Dolor corporis placeat esse sed. Eligendi totam et illum explicabo. Voluptatem ut nesciunt sint laborum delectus nesciunt.</p><p>Sunt vel omnis deserunt nihil. Eum autem fugiat aliquam dolor laborum amet. Eum necessitatibus unde quaerat. Non voluptatem enim ex ea voluptates voluptatem nesciunt.</p><p>Ea praesentium officia facere fugit consequatur dolor debitis non. A eligendi nihil dolor velit autem ut veniam. Et mollitia et tempora recusandae distinctio. Necessitatibus alias omnis qui quo qui aut saepe.</p>', NULL, '2022-08-07 03:09:53', '2022-08-07 03:09:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Rijalul Arif', 'rijalularif', 'rijalul.arif@gmail.com', '2022-08-07 03:09:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zAFOj08l0u', '2022-08-07 03:09:52', '2022-08-07 03:09:52', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenistbs`
--
ALTER TABLE `jenistbs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jks`
--
ALTER TABLE `jks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kecamatans_nama_kecamatan_unique` (`nama_kecamatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasiens`
--
ALTER TABLE `pasiens`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenistbs`
--
ALTER TABLE `jenistbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jks`
--
ALTER TABLE `jks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pasiens`
--
ALTER TABLE `pasiens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
