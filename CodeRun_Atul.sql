-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 15, 2024 at 03:55 PM
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
-- Database: `CodeRun_Atul`
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
(36, 'Can view prompt', 9, 'view_prompt');

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
(2, 'pbkdf2_sha256$600000$6WKGjNumI7IwjA5Wf3rYsh$7zzsU6PvgtP860f5T0Iv0+79AEqB/w8mDoODXV2sihw=', '2024-04-15 12:38:35.035991', 0, 'webtunix.developers', '', '', 'webtunix.developers@gmail.com', 0, 1, '2024-04-12 13:15:51.168964'),
(3, 'pbkdf2_sha256$600000$RMjp67Qs7DykLmGv3THisI$HVbrR75DT2XP7IsIYpo957eWsYbAP1NXq50g/f+BpQs=', '2024-04-15 07:26:01.433260', 0, 'atul', '', '', 'atul@tradefinex.org', 0, 1, '2024-04-12 13:19:04.528811');

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
(1, 'contenttypes', '0001_initial', '2024-04-12 13:12:02.715419'),
(2, 'auth', '0001_initial', '2024-04-12 13:12:02.985134'),
(3, 'admin', '0001_initial', '2024-04-12 13:12:03.040323'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-12 13:12:03.049968'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-12 13:12:03.057464'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-12 13:12:03.098891'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-12 13:12:03.122911'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-12 13:12:03.137280'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-12 13:12:03.146477'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-12 13:12:03.166390'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-12 13:12:03.168875'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-12 13:12:03.175843'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-12 13:12:03.190140'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-12 13:12:03.199434'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-12 13:12:03.210167'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-12 13:12:03.217926'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-12 13:12:03.228882'),
(18, 'myApp', '0001_initial', '2024-04-12 13:12:03.257995'),
(19, 'myApp', '0002_text', '2024-04-12 13:12:03.266154'),
(20, 'myApp', '0003_rename_lastupdated_qa_last_updated', '2024-04-12 13:12:03.274483'),
(21, 'myApp', '0004_websitecollectionids_textcollectionids_and_more', '2024-04-12 13:12:03.366860'),
(22, 'myApp', '0005_documentnamespaceids_qanamespaceids_textnamespaceids_and_more', '2024-04-12 13:12:03.607705'),
(23, 'myApp', '0006_prompt', '2024-04-12 13:12:03.616528'),
(24, 'myApp', '0007_alter_prompt_text', '2024-04-12 13:12:03.624626'),
(25, 'myApp', '0008_passwordresettoken', '2024-04-12 13:12:03.636313'),
(26, 'myApp', '0009_passwordresettoken_created_at_and_more', '2024-04-12 13:12:03.744269'),
(27, 'myApp', '0010_remove_passwordresettoken_created_at_and_more', '2024-04-12 13:12:03.778039'),
(28, 'myApp', '0011_profile_delete_passwordresettoken', '2024-04-12 13:12:03.814069'),
(29, 'myApp', '0012_delete_chat_remove_qanamespaceids_qa_and_more', '2024-04-12 13:12:03.929406'),
(30, 'sessions', '0001_initial', '2024-04-12 13:12:03.942622');

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
('4jegx9q6w0pip3pk00mqwrw0ekcq0gqk', '.eJxVjEsOAiEQBe_C2hBI83Xp3jOQ7gZl1EAyn9XEuyvJLHT7qurtIuG21rQtZU5TFmcB4vS7EfKztAHyA9u9S-5tnSeSQ5EHXeS15_K6HO7fQcWljhqUdeEGni0TgXUArFihJoqloDURMTrvg3XaUDDamByYNbMNXy2K9wfgtjfP:1rwGj3:VE7wZuZtpTyS3rB_wztHlxewueXBN_Am5bonO1oJg3Q', '2024-04-29 07:26:01.436380'),
('97okcgs7teeewmopsiyk1sz6kdftif6w', '.eJxVjMsOwiAQRf-FtSHAUB4u3fsNBJhBqgaS0q6M_65NutDtPefcFwtxW2vYBi1hRnZmip1-txTzg9oO8B7brfPc27rMie8KP-jg1470vBzu30GNo35ryGAVOm3JKIeACmKxAoX0QgB5ABFT1o7SVCykIrRNVjo5UdGGvCH2_gDMVDd2:1rwLbX:VAYILPJ2WzKJJErkyChoaPhJM1YRQUkoRymcpjwEUvQ', '2024-04-29 12:38:35.041278'),
('olfiy6gvouctcm85rsm3e5cvnhfr2vq7', '.eJxVjEEOwiAQRe_C2pBhCjJ16d4zEGCmUjU0Ke3KeHfbpAvdvvf-f6sQ16WEtckcRlYXher0y1LMT6m74Ees90nnqS7zmPSe6MM2fZtYXtej_TsosZVtDV56Au8YspzBGMjkpGOkDpwAMyA6m8yQXUSyGyeygEPvyTtMkNXnC7n4Nqg:1rvGkx:qngGMeXqmG2HzUtiD-jBvBWnrPFv_G5bO47bl2WmHAk', '2024-04-26 13:15:51.893707'),
('rdpeg8hrv6tyfv1adn860uesepniwba9', '.eJxVjMsOwiAQRf-FtSHAUB4u3fsNBJhBqgaS0q6M_65NutDtPefcFwtxW2vYBi1hRnZmip1-txTzg9oO8B7brfPc27rMie8KP-jg1470vBzu30GNo35ryGAVOm3JKIeACmKxAoX0QgB5ABFT1o7SVCykIrRNVjo5UdGGvCH2_gDMVDd2:1rwGhd:RxNhbCgltDW4I2aFFWAg6htoBZNRG2_Xb_MxF9KKMH8', '2024-04-29 07:24:33.325136'),
('tv37f3dgqbsz3t0zbpb6vcgj19h24ux8', '.eJxVjEEOwiAQRe_C2hBmMpTi0r1nIMBMpWpoUtpV491tky50-997f1MhrksJa5M5jKyuCtXld0sxv6QegJ-xPiadp7rMY9KHok_a9H1ied9O9--gxFb22vYCQ5-tJwAxBonIOzI-DezIw846pES5w4yW0YGIOBS2YIyNiOrzBbPlNqw:1rvGvI:ynlubyaGDA4RTpYsko0n4-PHJ_cs3IkEJwv6oEHoAI4', '2024-04-26 13:26:32.223308');

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
(1, ' This GPT specializes in generating software code across various languages with a particular emphasis on smart contract development for the XinFin XDC Network. It aids users in designing applications optimized for the XDC Network\'s unique features and requirements, such as its consensus mechanism, EVM compatibility, and transaction speed. The GPT provides guidance on best practices for developing on the XinFin Network, including security considerations, gas optimization, and integration with XDC\'s specific protocols and services.\r\n\r\nWhen generating code or providing advice, the GPT will prioritize solutions and patterns that are most effective and efficient for the XDC Network\'s ecosystem. It supports developers in creating decentralized applications (DApps), smart contracts, and other blockchain-based solutions by offering tailored code snippets, smart contract templates, and developmental insights specific to the XDC Network. This focus ensures that users receive the most relevant and up-to-date information for their blockchain development projects on the XinFin Network.\r\n            \r\n        ');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `myApp_document`
--
ALTER TABLE `myApp_document`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `myApp_documentnamespaceids`
--
ALTER TABLE `myApp_documentnamespaceids`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `myApp_prompt`
--
ALTER TABLE `myApp_prompt`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
