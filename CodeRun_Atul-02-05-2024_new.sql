-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2024 at 08:59 AM
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
-- Database: `CodeRun_Atul-02-05-2024_new`
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
(29, 'Can add document namespace ids', 8, 'add_documentnamespaceids'),
(30, 'Can change document namespace ids', 8, 'change_documentnamespaceids'),
(31, 'Can delete document namespace ids', 8, 'delete_documentnamespaceids'),
(32, 'Can view document namespace ids', 8, 'view_documentnamespaceids'),
(33, 'Can add prompt', 9, 'add_prompt'),
(34, 'Can change prompt', 9, 'change_prompt'),
(35, 'Can delete prompt', 9, 'delete_prompt'),
(36, 'Can view prompt', 9, 'view_prompt'),
(37, 'Can add user input', 10, 'add_userinput'),
(38, 'Can change user input', 10, 'change_userinput'),
(39, 'Can delete user input', 10, 'delete_userinput'),
(40, 'Can view user input', 10, 'view_userinput'),
(41, 'Can add user tokens', 11, 'add_usertokens'),
(42, 'Can change user tokens', 11, 'change_usertokens'),
(43, 'Can delete user tokens', 11, 'delete_usertokens'),
(44, 'Can view user tokens', 11, 'view_usertokens'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add website', 13, 'add_website'),
(50, 'Can change website', 13, 'change_website'),
(51, 'Can delete website', 13, 'delete_website'),
(52, 'Can view website', 13, 'view_website'),
(53, 'Can add website namespace ids', 14, 'add_websitenamespaceids'),
(54, 'Can change website namespace ids', 14, 'change_websitenamespaceids'),
(55, 'Can delete website namespace ids', 14, 'delete_websitenamespaceids'),
(56, 'Can view website namespace ids', 14, 'view_websitenamespaceids');

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
(9, 'pbkdf2_sha256$600000$9JDTVPKiTeuMxUjWW1080r$AB2c2S3MnSp2X7YxXJxNkxjJXyjBqyJsYPG+ESEooZ4=', '2024-05-10 04:48:31.425184', 1, 'atul@tradefinex.org', '', '', 'atul@tradefinex.org', 1, 1, '2024-05-06 11:55:24.702203'),
(13, 'pbkdf2_sha256$600000$gm3gq2rnYBdSFwl39oA01F$mepP9gc480z6GqOznp9NvDSd221X7l6uJnC0IP5G64c=', NULL, 1, 'manjinder@gmail.com', '', '', 'manjinder@gmail.com', 1, 1, '2024-05-08 11:00:50.196948'),
(14, 'pbkdf2_sha256$600000$XuYGPxXXVSA6cVoJ2cofag$s1O/gtzzMTbesImnvNIzC45bJXrSrRkCkPlsPmnVpCM=', '2024-05-08 11:03:32.067546', 1, 'webtunix.developers@gmail.com', '', '', 'webtunix.developers@gmail.com', 1, 1, '2024-05-08 11:02:04.485356'),
(15, 'pbkdf2_sha256$600000$Ps9SGrTDT3wghrC46smxRP$ahyBMpJpN+piI7yU3qnC7qMHo1TQObx0fx3342pR5V0=', '2024-05-09 05:58:24.560996', 0, 'aman', '', '', 'aman@gmail.com', 0, 1, '2024-05-09 05:58:09.373970');

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
(8, 'myApp', 'documentnamespaceids'),
(9, 'myApp', 'prompt'),
(12, 'myApp', 'user'),
(10, 'myApp', 'userinput'),
(11, 'myApp', 'usertokens'),
(13, 'myApp', 'website'),
(14, 'myApp', 'websitenamespaceids'),
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
(1, 'contenttypes', '0001_initial', '2024-05-02 14:11:03.205813'),
(2, 'auth', '0001_initial', '2024-05-02 14:11:03.398406'),
(3, 'admin', '0001_initial', '2024-05-02 14:11:03.447236'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-02 14:11:03.456194'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-02 14:11:03.464396'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-02 14:11:03.496022'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-02 14:11:03.519447'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-02 14:11:03.531064'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-02 14:11:03.541718'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-02 14:11:03.560126'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-02 14:11:03.563324'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-02 14:11:03.584820'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-02 14:11:03.638427'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-02 14:11:03.678647'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-02 14:11:03.703970'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-02 14:11:03.720408'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-02 14:11:03.738246'),
(18, 'myApp', '0001_initial', '2024-05-02 14:11:03.780723'),
(19, 'myApp', '0002_text', '2024-05-02 14:11:03.792554'),
(20, 'myApp', '0003_rename_lastupdated_qa_last_updated', '2024-05-02 14:11:03.810320'),
(21, 'myApp', '0004_websitecollectionids_textcollectionids_and_more', '2024-05-02 14:11:03.999956'),
(22, 'myApp', '0005_documentnamespaceids_qanamespaceids_textnamespaceids_and_more', '2024-05-02 14:11:04.320674'),
(23, 'myApp', '0006_prompt', '2024-05-02 14:11:04.334571'),
(24, 'myApp', '0007_alter_prompt_text', '2024-05-02 14:11:04.345352'),
(25, 'myApp', '0008_passwordresettoken', '2024-05-02 14:11:04.361705'),
(26, 'myApp', '0009_passwordresettoken_created_at_and_more', '2024-05-02 14:11:04.423484'),
(27, 'myApp', '0010_remove_passwordresettoken_created_at_and_more', '2024-05-02 14:11:04.456884'),
(28, 'myApp', '0011_profile_delete_passwordresettoken', '2024-05-02 14:11:04.492197'),
(29, 'myApp', '0012_delete_chat_remove_qanamespaceids_qa_and_more', '2024-05-02 14:11:04.607051'),
(30, 'sessions', '0001_initial', '2024-05-02 14:11:04.621353'),
(31, 'myApp', '0013_userinput_usertokens', '2024-05-02 14:11:30.707473'),
(32, 'myApp', '0014_user', '2024-05-06 07:21:29.397064'),
(33, 'myApp', '0014_website', '2024-05-09 10:31:09.988401'),
(34, 'myApp', '0015_websitenamespaceids', '2024-05-09 11:36:30.991117');

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
('5aqpktopl6peyzjjotkuxvldflf5jz1g', '.eJxVjEEOwiAQRe_C2hAHGKAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtDReTwFvrkJT2iGAZFCBoYtIZzhyj8c76kp1WCotWnDFFOxh0iax4fwDHfzdI:1s4ynN:t7KIuAAgMhMhdoEguL3C3Mkt0AqNwR43T4pHbDMpR_0', '2024-05-23 08:06:29.607158'),
('6fplpkhout1mtbv6znhqse4y4h5t2z1o', '.eJxVjEEOwiAQRe_C2hAHGKAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtDReTwFvrkJT2iGAZFCBoYtIZzhyj8c76kp1WCotWnDFFOxh0iax4fwDHfzdI:1s3ycb:_RMNBnTG6Ei1ryZEprw6aTZy4N7LkN3n1eSwBVg9i8k', '2024-05-20 13:43:13.062254'),
('8kuyyzr5qhj5d08erxt86mkhkchfzrx9', '.eJxVjEEOwiAQRe_C2hAHGKAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtDReTwFvrkJT2iGAZFCBoYtIZzhyj8c76kp1WCotWnDFFOxh0iax4fwDHfzdI:1s5IBL:4eEm5JuXgZ0w7QQ5MuRij5cJiDTqi-QUmR6oXZo1O8M', '2024-05-24 04:48:31.431338'),
('autuoeeqti7cn08iucf7ojrkouyhemlh', '.eJxVjDsOwjAQBe_iGln-rG2Wkp4zWOsfDiBbipMKcXcSKQW0b2bem3lal-rXkWc_JXZhip1-t0DxmdsO0oPavfPY2zJPge8KP-jgt57y63q4fweVRt1qo4hKFiStsYBFmKwhkIxJokIE4ZxMUhksZxQhmkLaAWhnN6sAkGSfL9A-Nw0:1s3sqT:jNV8rBcP1VBunFlL1J-mtUr4Jdj76H3baSSBAvICpKA', '2024-05-20 07:33:09.474248'),
('uw42he53c8f4z26bmmrhi0i6o92im6m6', '.eJxVjEEOwiAQRe_C2hAHGKAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtDReTwFvrkJT2iGAZFCBoYtIZzhyj8c76kp1WCotWnDFFOxh0iax4fwDHfzdI:1s514K:G4dwXUxllyIy9bgSHWZ_tLAKIsTldRpL_Vt97bIn1qg', '2024-05-23 10:32:08.570288'),
('vqn3f3ym8qn5ljuur5xy5srxux0qx8hz', '.eJxVjEEOwiAQRe_C2hAHGKAu3fcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnERgzj9bpHSI7cd8J3abZZpbusyRbkr8qBdjjPn5_Vw_w4q9fqtDReTwFvrkJT2iGAZFCBoYtIZzhyj8c76kp1WCotWnDFFOxh0iax4fwDHfzdI:1s52Ff:52nOWiAcTnR7OMnN7IAu8OZuP0LgJ7d-RQNhTz6R3So', '2024-05-23 11:47:55.647390');

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

-- --------------------------------------------------------

--
-- Table structure for table `myApp_prompt`
--

CREATE TABLE `myApp_prompt` (
  `id` int(11) NOT NULL,
  `text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_prompt`
--

INSERT INTO `myApp_prompt` (`id`, `text`) VALUES
(1, 'This GPT specializes in generating software code across various languages with a particular emphasis on smart contract development for the XinFin XDC Network. It aids users in designing applications optimized for the XDC Network\'s unique features and requirements, such as its consensus mechanism, EVM compatibility, and transaction  speed. The GPT provides guidance on best practices for developing on the XinFin Network, including security considerations, gas optimization, and integration with XDC\'s specific protocols and services.\r\n\r\nWhen generating code or providing advice, the GPT will prioritize solutions and patterns that are most effective and efficient for the XDC Network\'s ecosystem. It supports developers in creating decentralized applications (DApps), smart contracts, and other blockchain-based solutions by offering tailored code snippets, smart contract templates, and developmental insights specific to the XDC Network. This focus ensures that users receive the most relevant and up-to-date information for their blockchain development projects on the XinFin Network.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `myApp_user`
--

CREATE TABLE `myApp_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_user`
--

INSERT INTO `myApp_user` (`id`, `name`, `email`, `password`) VALUES
(1, 'gfhfh', 'fdfd@gmail.com', 'atul@123'),
(2, 'ghbnfygh', 'ghgfh@tradefinex.org', 'atul@123'),
(3, 'aman', 'aman@gmail.com', '7yhb7yhb'),
(4, 'manjinder', 'manjinder@gmail.com', '7yhb7yhb');

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
(7, 'kkk', 'qjomqOOLZMgSgTj.WXsdBi1m2U_s.K90p7Ov0wtc7SsRo0.jnV', 1, '2024-05-06 11:59:27.041467', 9),
(8, 'gaourav', 'KDnqVeu0pylPk6vsG_Gq1BRFUYUYt6e8dX-e39AMTp3Pe-ifQK', 1, '2024-05-08 07:41:54.833662', 9),
(9, 'Gourav pathania', '2-.NQWcEjeyrDjqodER7X_lsJa0jyeZsWT.eBLwN7b7aTKtjKv', 1, '2024-05-08 08:14:46.876388', 9);

-- --------------------------------------------------------

--
-- Table structure for table `myApp_website`
--

CREATE TABLE `myApp_website` (
  `id` bigint(20) NOT NULL,
  `url` longtext NOT NULL,
  `no_of_characters` int(10) UNSIGNED DEFAULT NULL CHECK (`no_of_characters` >= 0),
  `no_of_chunks` int(10) UNSIGNED DEFAULT NULL CHECK (`no_of_chunks` >= 0),
  `created_at` datetime(6) NOT NULL,
  `status` varchar(1000) NOT NULL,
  `lastupdated` datetime(6) DEFAULT NULL,
  `description` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_website`
--

INSERT INTO `myApp_website` (`id`, `url`, `no_of_characters`, `no_of_chunks`, `created_at`, `status`, `lastupdated`, `description`, `user_id`) VALUES
(1, 'https://python.langchain.com/docs/get_started/introduction/', 3894, 5, '2024-05-09 12:00:16.592595', 'success', '2024-05-09 12:00:16.592657', '', 9);

-- --------------------------------------------------------

--
-- Table structure for table `myApp_websitenamespaceids`
--

CREATE TABLE `myApp_websitenamespaceids` (
  `id` bigint(20) NOT NULL,
  `web_id` varchar(100) NOT NULL,
  `web_name` varchar(500) NOT NULL,
  `namespace` varchar(100) NOT NULL,
  `index_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `website_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myApp_websitenamespaceids`
--

INSERT INTO `myApp_websitenamespaceids` (`id`, `web_id`, `web_name`, `namespace`, `index_name`, `user_id`, `website_id`) VALUES
(1, '7f5e2083-deac-4743-82ce-47a9975bebb9', 'https://python.langchain.com/docs/get_started/introduction/', '', 'coderunai', 9, 1),
(2, '7ca365c4-9196-4160-adcc-c9447a5b399a', 'https://python.langchain.com/docs/get_started/introduction/', '', 'coderunai', 9, 1),
(3, 'c7fb8687-f2af-42a8-a7f7-643b8c32b30b', 'https://python.langchain.com/docs/get_started/introduction/', '', 'coderunai', 9, 1),
(4, 'd28af1c2-957e-40dc-9b9b-ac4de88c383e', 'https://python.langchain.com/docs/get_started/introduction/', '', 'coderunai', 9, 1),
(5, '93c338b1-39be-4278-9683-48b107b88979', 'https://python.langchain.com/docs/get_started/introduction/', '', 'coderunai', 9, 1);

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
-- Indexes for table `myApp_user`
--
ALTER TABLE `myApp_user`
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
-- Indexes for table `myApp_website`
--
ALTER TABLE `myApp_website`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myApp_website_user_id_ac24f2e8_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `myApp_websitenamespaceids`
--
ALTER TABLE `myApp_websitenamespaceids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myApp_websitenamespaceids_user_id_3a5dfb3a_fk_auth_user_id` (`user_id`),
  ADD KEY `myApp_websitenamespa_website_id_31347538_fk_myApp_web` (`website_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `myApp_document`
--
ALTER TABLE `myApp_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myApp_documentnamespaceids`
--
ALTER TABLE `myApp_documentnamespaceids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `myApp_prompt`
--
ALTER TABLE `myApp_prompt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myApp_user`
--
ALTER TABLE `myApp_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `myApp_userinput`
--
ALTER TABLE `myApp_userinput`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myApp_usertokens`
--
ALTER TABLE `myApp_usertokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `myApp_website`
--
ALTER TABLE `myApp_website`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `myApp_websitenamespaceids`
--
ALTER TABLE `myApp_websitenamespaceids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `myApp_website`
--
ALTER TABLE `myApp_website`
  ADD CONSTRAINT `myApp_website_user_id_ac24f2e8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `myApp_websitenamespaceids`
--
ALTER TABLE `myApp_websitenamespaceids`
  ADD CONSTRAINT `myApp_websitenamespa_website_id_31347538_fk_myApp_web` FOREIGN KEY (`website_id`) REFERENCES `myApp_website` (`id`),
  ADD CONSTRAINT `myApp_websitenamespaceids_user_id_3a5dfb3a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
