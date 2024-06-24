-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 09:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beta-shealth-ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add document', 7, 'add_document'),
(26, 'Can change document', 7, 'change_document'),
(27, 'Can delete document', 7, 'delete_document'),
(28, 'Can view document', 7, 'view_document'),
(29, 'Can add prompt', 8, 'add_prompt'),
(30, 'Can change prompt', 8, 'change_prompt'),
(31, 'Can delete prompt', 8, 'delete_prompt'),
(32, 'Can view prompt', 8, 'view_prompt'),
(33, 'Can add user input', 9, 'add_userinput'),
(34, 'Can change user input', 9, 'change_userinput'),
(35, 'Can delete user input', 9, 'delete_userinput'),
(36, 'Can view user input', 9, 'view_userinput'),
(37, 'Can add user tokens', 10, 'add_usertokens'),
(38, 'Can change user tokens', 10, 'change_usertokens'),
(39, 'Can delete user tokens', 10, 'delete_usertokens'),
(40, 'Can view user tokens', 10, 'view_usertokens'),
(41, 'Can add document namespace ids', 11, 'add_documentnamespaceids'),
(42, 'Can change document namespace ids', 11, 'change_documentnamespaceids'),
(43, 'Can delete document namespace ids', 11, 'delete_documentnamespaceids'),
(44, 'Can view document namespace ids', 11, 'view_documentnamespaceids');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ol8mRInGALyczk73yXwq0J$RSp+Puomq24FpWYkiZvOiwaGgjQJFZUHt5ZKX5hJ2TU=', '2024-05-10 05:40:24.342817', 1, 'admin@gmail.com', '', '', 'admin@gmail.com', 1, 1, '2024-05-09 06:27:13.100498'),
(2, 'pbkdf2_sha256$600000$N2cCAKF35Ep0MTd8qEzRFb$g1Nvq0VYoUKfVLaSSgVEAR5UOnh+IdvnYvY1OYF56cY=', '2024-05-10 05:40:10.585206', 0, 'riya@gmail.com', '', '', 'riya@gmail.com', 0, 1, '2024-05-10 05:38:59.790584');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'myApp', 'document'),
(11, 'myApp', 'documentnamespaceids'),
(8, 'myApp', 'prompt'),
(9, 'myApp', 'userinput'),
(10, 'myApp', 'usertokens'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-09 06:26:28.211574'),
(2, 'auth', '0001_initial', '2024-05-09 06:26:28.513530'),
(3, 'admin', '0001_initial', '2024-05-09 06:26:28.579562'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-09 06:26:28.587840'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-09 06:26:28.597201'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-09 06:26:28.631855'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-09 06:26:28.658197'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-09 06:26:28.670700'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-09 06:26:28.678927'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-09 06:26:28.700870'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-09 06:26:28.703583'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-09 06:26:28.714071'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-09 06:26:28.726165'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-09 06:26:28.735330'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-09 06:26:28.748493'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-09 06:26:28.757496'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-09 06:26:28.767673'),
(18, 'myApp', '0001_initial', '2024-05-09 06:26:28.851962'),
(19, 'sessions', '0001_initial', '2024-05-09 06:26:28.873229');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q4l76mlcscktu9col7leadhs0cssyvh7', '.eJxVjEEOwiAQRe_C2pABBgku3XsGMsNQqRqalHbVeHdt0oVu_3vvbyrRutS09jKnUdRFGXX63Zjys7QdyIPafdJ5ass8st4VfdCub5OU1_Vw_w4q9fqtbbYOyLPxThCdocI-5uCRsmHwLIROGGA4-2iDhAIDGLSADglMFPX-ANRfNzs:1s52ka:8dU2EtGibpFo_FBmh_h1BIbQTxL7TVJ4mwZkB3pidjg', '2024-05-23 12:19:52.552366'),
('ru4rzlwchwtlv38dqbjtagzia3k3q2qo', '.eJxVjEEOwiAQRe_C2pABBgku3XsGMsNQqRqalHbVeHdt0oVu_3vvbyrRutS09jKnUdRFGXX63Zjys7QdyIPafdJ5ass8st4VfdCub5OU1_Vw_w4q9fqtbbYOyLPxThCdocI-5uCRsmHwLIROGGA4-2iDhAIDGLSADglMFPX-ANRfNzs:1s4xq3:kostE5jKkmcJ455tsh3WCMXuzvW7Mi_ElPE0w7M-4lQ', '2024-05-23 07:05:11.943272'),
('sfp5jcp48pnup9c13ktul53zyvu7dpwm', '.eJxVjEEOwiAQRe_C2pABBgku3XsGMsNQqRqalHbVeHdt0oVu_3vvbyrRutS09jKnUdRFGXX63Zjys7QdyIPafdJ5ass8st4VfdCub5OU1_Vw_w4q9fqtbbYOyLPxThCdocI-5uCRsmHwLIROGGA4-2iDhAIDGLSADglMFPX-ANRfNzs:1s5IzY:4JN2aFunKcLlybsZGPpBg7TuxUjII8obDtLmD0yIwz8', '2024-05-24 05:40:24.346934');

-- --------------------------------------------------------

--
-- Table structure for table `myApp_document`
--

CREATE TABLE `myApp_document` (
  `id` bigint(20) NOT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `file_url` varchar(200) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `size` varchar(10) NOT NULL,
  `no_of_characters` int(10) UNSIGNED DEFAULT NULL CHECK (`no_of_characters` >= 0),
  `no_of_chunks` int(10) UNSIGNED DEFAULT NULL CHECK (`no_of_chunks` >= 0),
  `status` varchar(1000) DEFAULT NULL,
  `created_at` date NOT NULL,
  `last_updated` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_document`
--

INSERT INTO `myApp_document` (`id`, `filepath`, `file_url`, `name`, `size`, `no_of_characters`, `no_of_chunks`, `status`, `created_at`, `last_updated`) VALUES
(2, '1/1/The_Story_of_Gandhi.pdf', NULL, 'The Story of Gandhi.pdf', '5149356', 143468, 179, 'success', '2024-05-10', '2024-05-10 05:27:07.274122');

-- --------------------------------------------------------

--
-- Table structure for table `myApp_documentnamespaceids`
--

CREATE TABLE `myApp_documentnamespaceids` (
  `id` bigint(20) NOT NULL,
  `doc_id` varchar(100) NOT NULL,
  `doc_name` varchar(500) NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `index_name` varchar(100) NOT NULL,
  `document_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_documentnamespaceids`
--

INSERT INTO `myApp_documentnamespaceids` (`id`, `doc_id`, `doc_name`, `namespace`, `index_name`, `document_id`) VALUES
(180, 'c23134d2-0614-4d23-8dd0-3718839fde76', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(181, '7346364f-491d-4684-b181-be551e4411a8', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(182, '2dda9945-a465-4fbc-9439-14f41ea89ef4', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(183, 'ce1bb53a-eb45-4c72-97bc-14cc87108b8b', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(184, '2f8ecaa0-2a71-4ea9-83de-e15b9d8cbbbb', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(185, '88ff6d89-7868-4bcd-bd18-cad32f77fbf6', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(186, '836343c4-edfc-4bf2-913b-cf9d671219c4', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(187, '33b8a3c1-0983-4980-aaba-9ccd426b0e52', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(188, '2b68287e-c2c1-4b71-bf10-fbc0fadba92d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(189, 'e3fa0489-5c5b-4ad5-b4a8-a4c6e6590bfe', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(190, '4a330bcb-25e0-482c-88b7-59ea3047ac44', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(191, 'f7773f83-22e3-467a-a19f-86da641929f9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(192, '4731c755-9c14-4b72-a816-193172476bdb', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(193, 'c03b3256-46d3-4aed-bed3-4c6cd499d285', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(194, 'ecf86741-e4af-4fe1-a0cb-21d29c93af15', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(195, '0967dddf-75d1-488e-82d9-2efc9d0b40de', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(196, '6ab4603a-8842-42f0-9d2e-ad2e140bf8da', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(197, '8f8dddea-4261-43aa-8c77-3defa6bc79bd', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(198, '5bc680b5-e24a-41bb-a2c1-1c9728fe7427', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(199, '595df0b7-396f-45cd-9e47-a03943f8d452', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(200, 'f9297596-2796-4251-8eac-13143afab52b', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(201, '05983b1b-a4d2-415b-a98b-89cb7e23ef02', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(202, 'f4b286ae-14cd-4d92-94c4-3e171bf6f33d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(203, '26a8f739-1f33-4b78-a250-615c1fe38f45', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(204, '1e6dc494-ef55-4c28-bf2e-61997b38f50e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(205, '5a7c7941-8bee-4fb7-98cc-b0b327726d8d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(206, 'd0332f08-ce87-4b44-80d9-e58bc44ea030', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(207, 'c883f921-213d-4e5c-99c7-030b0dd97fe6', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(208, '7d7b10c0-2d1d-4def-a2ca-58b8bd18335a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(209, '35b34838-f7b8-4e0f-b57a-9a0dc4f7a5dc', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(210, '7ac63e15-a622-4d00-9253-77cd0f49c031', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(211, 'b469ec7b-e866-467a-9e62-b1adfb43e0f5', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(212, '39f2966b-f1c6-4a33-9ef3-94f1d909fb01', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(213, '2ee4b8b4-b35b-4030-be38-875fbae11e68', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(214, '306ec06a-46cf-419b-be01-6f8910b40448', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(215, '3e3cd5f0-09cf-4453-b439-223308c5735b', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(216, 'd617f4ac-ba95-444c-84b6-4b5d5d973586', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(217, 'e49c2f2f-a3e1-4f21-8c10-8c81faa1be2a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(218, 'ec61fe10-200e-490c-883f-d1e7ec0d6b22', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(219, '2a36ca4c-7e15-46a3-9e2d-528f9c62070a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(220, '87faeb19-24cf-4482-bb0e-dd4bfa1fba54', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(221, 'dab7bd9e-b6bd-4002-9ca6-c08f4e918156', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(222, 'b55faf6a-35df-406d-8541-e5bf3bc2c8e7', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(223, 'eda45aee-b5fa-4a7e-8884-46298af8cb00', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(224, '542b3568-e674-4f96-b3e3-d7a2e1ff4be8', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(225, '5a18503d-42da-4b7f-84e2-1d1c3d0aeaac', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(226, '567df0ca-a729-4ab5-8f01-ecbae2690d7e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(227, '0884e7fd-6ec6-41fc-9a06-cf7b1198e9ed', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(228, 'a8b066dc-deb5-4260-90a3-5c65a4ffd314', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(229, 'af6f9a97-78de-40dc-a391-75dbee8553c5', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(230, '97a87caf-9315-48f3-8684-ba5caca0cc8a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(231, '3db184b5-05d7-4f3f-b242-7536f74cbfef', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(232, '58bfa185-0580-4fc1-898d-dec5e4494d9a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(233, '8e9d3aa1-186f-40e2-8361-9d4ef8f79ba2', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(234, '77323e5e-1ca3-48e2-8db9-e944d46594f8', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(235, 'aca2f5d5-8b29-4197-ab45-943988b35392', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(236, '11363a3e-c127-4fe8-abda-e60ea356e8f4', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(237, '675bcb5d-e362-4106-ad0e-84e145dfba1c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(238, 'a5729a24-bc70-4382-ae65-cde0500b552c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(239, '7cd4fbf4-9fc9-4b82-9ad1-28fc4f3961aa', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(240, 'e11dbfbd-6360-4468-9d82-69b21a00cb0e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(241, '892aa3b6-2bc5-44e2-9e85-8fdb225221cc', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(242, 'a57b4b89-2ea7-42b5-8a46-f01aab259c6d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(243, 'f34ca3db-55a7-48f8-82ec-06154aae326c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(244, '130f4c39-1bd7-441f-985e-c9c275a291d9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(245, '24554599-f0bf-46bf-ac31-2b0bf434f3e1', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(246, 'cadff242-ca2f-485e-a7b7-bc93f2a63485', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(247, 'ad815700-3994-4f8b-b4bc-340a39fb65da', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(248, '4cc45124-5ea0-4ba7-b82a-38ae2b2040df', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(249, '8f26219e-d3e8-419e-9599-fc56a903e2e7', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(250, '81a18ccc-c363-4537-afe9-d5f69144ee86', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(251, '1923bdcc-5f5d-4479-9bf9-7c84ee7f0041', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(252, '08ad3845-e008-4ebe-b91d-961bca1086c2', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(253, '8e4a559a-e04c-45b6-8c30-107b32047de2', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(254, '571c09e8-e977-4198-b840-86d493094b07', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(255, '8023ca5a-843a-4845-b325-4d30dad4cef8', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(256, 'd4c5489e-7469-4d30-a08b-21356d25a429', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(257, '1993816e-bfd7-48d0-80d4-7e62d202bec5', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(258, '541b39b6-0a13-4e06-a842-97196cd27ed9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(259, 'fe841e3f-447c-4d4b-84dd-527e89e8b824', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(260, '6efccf41-0981-4240-99ad-ecdc6140868e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(261, '7faeb9a6-4226-443d-872f-aed4d33a5a34', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(262, '1bdd4a30-a20b-4303-8054-3614dff7258f', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(263, '20c500fd-7de5-4d66-9ae7-d2d483a9055c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(264, '706ae04e-3816-43ec-bc55-69b416719eaa', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(265, 'f89a9483-5470-4568-a636-64ab7c5739b4', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(266, '5203441b-5584-4276-bf54-63a8f21829d9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(267, '6defc4e3-f7cd-4715-9d95-3d33c3bdca3e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(268, '911163e1-92e2-4a67-b7d2-45bbda5bde6a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(269, 'b49afa9d-5e90-410c-85f3-d374f92e08ca', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(270, 'bc66dc73-ed36-4519-a7c2-f81772d29188', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(271, '8d00ac6e-d458-4215-a543-e8abd4ee00d7', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(272, 'cd1b6783-2011-4989-8654-445eb6dae8dd', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(273, 'bac9eada-d80c-4168-85fa-69e75a026a51', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(274, '2151e2f2-4af9-45b1-8614-fe2758ecba3c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(275, 'c1ffe60f-ec49-4cb2-9d53-ebeeba8a26f1', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(276, '023abf9a-df2e-45db-9660-af3b7dc56b10', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(277, '1c2cba2f-e81a-404e-b2f3-f48db481b412', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(278, '17146922-08b0-4ca9-875d-51b029c1e6ea', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(279, '83b9848b-57d2-41e9-ae0d-4cb9280f032e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(280, 'bb1c361d-1f08-463a-8852-36f0a4eb2a7d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(281, 'da7cd547-184a-4292-8912-9f06241dc56b', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(282, '942c11f8-119b-43d6-8e37-f8c34b28b961', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(283, 'f0bb9ed8-1180-4805-8db0-3c4151f45ec1', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(284, '270b1cdc-6ef6-40fc-a70b-8d0c1aee9ef6', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(285, '36477781-c4d6-4018-866c-12bf1fd71d99', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(286, '099fe043-1da6-40de-8467-119133959d12', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(287, '991e23b8-b454-43e5-bb3c-9eb69db869ea', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(288, '0a0da579-bc35-4d3b-aa65-b3bd7bfa7737', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(289, 'd7a22e1a-ebf7-4156-8e1f-401532ff6062', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(290, '1c1742da-cd34-40ea-850a-8d4f534d84af', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(291, '59b77640-7b19-41d1-99a1-f05a5aee99cc', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(292, '7e7c7e67-ad64-4823-9284-d8877aa93467', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(293, 'b1e8d9bc-1eac-4d2c-9cb5-8f98e0a9cc81', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(294, '9903ef1c-fc57-46cb-8623-aba3c7a30ddf', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(295, '022a8a14-b96d-41d2-a5fb-e4f71b8c1683', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(296, 'f69ebeaf-ea3f-4140-83ef-ffdaf8794074', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(297, '552afb65-f678-4d91-8906-ecaca288afce', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(298, '5265d5d6-0d41-494d-b563-e5d50e7bd746', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(299, 'd7c6bfe7-3f5d-4a43-b899-d3fb12d6b56c', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(300, 'ede2f5fb-cca7-416e-97b1-c79e853f2de7', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(301, '2674b01d-5fe3-4f05-ab53-e968c4446654', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(302, 'd92d56e5-d4f9-4834-a52a-577fbf81b1ba', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(303, '43f88ce9-b376-4659-8b78-d9663769650f', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(304, '913d3881-ba93-4e69-9028-340fc17a78d5', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(305, '51ab4d3e-14c0-4fc6-80a7-4f6a9c3f5a3b', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(306, '9b9f25ee-938e-4f04-b659-d713f03672e0', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(307, '2cd5b31d-adce-47e2-abb4-40f0188e97e0', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(308, 'a9343723-3cc5-47b3-a992-4a19eb0efd85', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(309, 'd5635be4-99e5-449e-b017-42658e2dede5', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(310, 'd90f8a67-3297-4ce9-874b-85e593878d01', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(311, 'd8b8a82d-cef6-48c0-a01e-abb8517ba013', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(312, '82361e9e-e8a9-4960-813d-e6043de58c5f', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(313, 'bdc2db0b-a975-42e3-9842-bca8d4ef31e6', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(314, '7fd0a09e-c981-4e69-9a87-13b6573b459a', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(315, 'cfa97624-6332-4cf9-bbc8-01b3b2393734', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(316, 'c762c3b5-818e-4c34-9858-a9d77d6605d9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(317, '7074ba03-d88b-4098-8990-eedad6bc6972', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(318, '508e2cf6-0d0d-4285-9c7d-975503e78b7d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(319, 'a07ac33d-fabc-4eaa-8473-3062b69b2b17', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(320, '534c5d1b-444f-4ea6-9006-6e4cd1cd16ab', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(321, 'f94d6b53-f5b7-4f52-b487-8979d67adca9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(322, '16c2bcd5-bc92-4b47-a9c0-d7a546e5b519', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(323, 'a312fabb-701c-40ec-b8f8-1815f0499cb2', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(324, '99af2b3d-169b-4708-ab43-7865973c8adb', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(325, 'c85626db-8abc-452e-b493-a25f60f80b5d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(326, 'a8705668-aa05-4fd3-b632-7634a41ffece', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(327, 'ce58f09e-0006-4e0d-a062-d5e8514d46d9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(328, 'ef3e7233-94fa-4d87-a9c6-520170104217', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(329, '74d18d0a-edbe-4b0a-9067-ba82dc80895e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(330, '6df3c56e-b0bc-4cfc-a992-686413cf9e7f', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(331, '117ee1bf-a079-4d3c-bfaf-2ceea89663e9', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(332, 'fa23c0db-f09f-451d-8f9f-f86c119bfc29', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(333, 'cd5c2f3a-54c5-4597-8085-05116c7a40d0', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(334, '898de709-a347-41ea-be3e-1f6b13dba68e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(335, '2cd1b131-6bc6-47c5-bf54-68721817bc28', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(336, '165ecdf3-30d3-424d-90b9-3f330fecd0b7', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(337, '691a47e8-8dd4-4de4-a188-3c0ddd15e879', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(338, '581d3968-9ae9-4e39-b982-6595594a760e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(339, 'db24dc96-5213-4bee-a332-0e9c1d8d84cc', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(340, 'b18567d4-8df2-45ec-9f8b-61b23d3d5df6', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(341, '2a7aaf94-71b9-4986-82d3-d0e089e14228', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(342, '0ef90721-0169-4251-b8ca-1a13fe3418da', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(343, 'd479d056-25fc-424c-acfe-e6cbaf7dbc69', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(344, 'afd37382-17e1-4893-8f52-6e267bd1fdb4', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(345, '12e0357d-c5d9-4107-8164-a975b2549f32', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(346, '529062e9-6785-4335-a6ea-6d313e360f63', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(347, '47b4f1ee-a89f-48da-b810-afc7925104ed', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(348, '2329a162-0dd6-4715-9247-de57188ec491', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(349, 'd732975b-2658-49e7-8f65-438f8479fa3e', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(350, 'fc77ac92-e13c-455c-bbed-c699135d8cdb', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(351, '19cb07e9-e581-43e3-a6a8-b10d799c13b1', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(352, '527a4658-57ca-42d1-9718-83d8ced7a783', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(353, '473d8c3b-2490-46e5-8397-0204a71c7a63', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(354, '536d412b-eece-49e1-af46-99b782e16d4d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(355, '4dfef269-f596-4353-9b49-84a2f4416d9d', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(356, 'e770bc28-6398-4b70-b3be-bcb95d5af911', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(357, 'cb732b03-5fc5-4ce3-81ea-184c93afc126', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2),
(358, 'b102da42-34ee-4edb-a2bd-2f9747f1bd1f', '/home/tech/shealth/media/The Story of Gandhi.pdf', '', 'beta-shealth-ai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `myApp_prompt`
--

CREATE TABLE `myApp_prompt` (
  `id` int(11) NOT NULL,
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myApp_userinput`
--

CREATE TABLE `myApp_userinput` (
  `id` int(11) NOT NULL,
  `input` longtext NOT NULL,
  `response` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myApp_usertokens`
--

CREATE TABLE `myApp_usertokens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_usertokens`
--

INSERT INTO `myApp_usertokens` (`id`, `name`, `token`, `status`, `created_at`, `user_id`) VALUES
(1, 'test', 'UIW1E23_7ITmwwE4Iq.dRE2tSrTgZuVRDNJQHLpmd8VTzIdg7j', 1, '2024-05-09 06:28:10.994555', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `myApp_document`
--
ALTER TABLE `myApp_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myApp_documentnamespaceids`
--
ALTER TABLE `myApp_documentnamespaceids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myApp_documentnamesp_document_id_dcbb25cd_fk_myApp_doc` (`document_id`);

--
-- Indexes for table `myApp_prompt`
--
ALTER TABLE `myApp_prompt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myApp_userinput`
--
ALTER TABLE `myApp_userinput`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myApp_usertokens`
--
ALTER TABLE `myApp_usertokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `myApp_usertokens_user_id_99b02946_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `myApp_document`
--
ALTER TABLE `myApp_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myApp_documentnamespaceids`
--
ALTER TABLE `myApp_documentnamespaceids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `myApp_prompt`
--
ALTER TABLE `myApp_prompt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myApp_userinput`
--
ALTER TABLE `myApp_userinput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myApp_usertokens`
--
ALTER TABLE `myApp_usertokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myApp_documentnamespaceids`
--
ALTER TABLE `myApp_documentnamespaceids`
  ADD CONSTRAINT `myApp_documentnamesp_document_id_dcbb25cd_fk_myApp_doc` FOREIGN KEY (`document_id`) REFERENCES `myApp_document` (`id`);

--
-- Constraints for table `myApp_usertokens`
--
ALTER TABLE `myApp_usertokens`
  ADD CONSTRAINT `myApp_usertokens_user_id_99b02946_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
