-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 10:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fyp`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_playlist`
--

CREATE TABLE `accounts_playlist` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_playlist`
--

INSERT INTO `accounts_playlist` (`id`, `song_id`, `user_id`) VALUES
(10, 3, 7),
(18, 8, 7),
(19, 9, 7),
(20, 10, 7),
(21, 5, 7),
(22, 7, 7),
(23, 2, 7),
(26, 4, 7),
(27, 6, 7),
(36, 8, 2),
(38, 10, 2),
(40, 3, 2),
(41, 2, 11),
(42, 1, 11),
(43, 7, 11),
(44, 3, 11),
(46, 6, 12);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add songs', 1, 'add_songs'),
(2, 'Can change songs', 1, 'change_songs'),
(3, 'Can delete songs', 1, 'delete_songs'),
(4, 'Can view songs', 1, 'view_songs'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add playlist', 8, 'add_playlist'),
(30, 'Can change playlist', 8, 'change_playlist'),
(31, 'Can delete playlist', 8, 'delete_playlist'),
(32, 'Can view playlist', 8, 'view_playlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(10) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$EIJ04MDS612g$vCmrAYS8LrKqdlGcTcFNS9Z8yEHDioGpQNws932vQls=', '2020-05-24 08:38:38.753096', 0, 'Puzn', 'Kaju', 'Hirani', 'Raju1@gmail.com', 0, 1, '2020-04-13 09:27:11.266883'),
(2, 'pbkdf2_sha256$180000$Khv90lZzrAOg$kkUOpveyrqxZZ8+mO70GqiJm4H1jNifNy+qz+TINqOE=', '2020-06-18 06:10:50.787311', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-04-13 09:29:44.534364'),
(3, 'pbkdf2_sha256$180000$SHb9AAnXty2I$NlsDKmDZceBzFv4xUcNZ2S9DjnctwMfKqZ7wcyMZ7As=', '2020-05-24 08:38:03.608750', 0, 'arjun', 'Arjun', 'Chand', 'Arjun@gmail.com', 0, 1, '2020-05-24 08:37:39.550344'),
(4, 'pbkdf2_sha256$180000$10HYR9RTd38N$gzk6W5+oQEAt6jpLcLJjs38eDYtwqMXmLr3lls9+l20=', NULL, 0, 'Beckham', 'david', 'Beckham', 'beckham@gmail', 0, 1, '2020-05-27 08:12:12.508248'),
(5, 'Pujan', '2020-05-29 11:48:35.360473', 0, 'Sujan', 'raju', 'khan', 'cghcghc@gmail.com', 0, 1, '2020-05-29 11:48:15.554872'),
(7, 'pbkdf2_sha256$180000$2XXedGdCwzMp$m+2/1qWFbiwvBNpH/2jIQVfMui1fO7QXkxMTGH6YBIY=', '2020-06-05 14:45:51.526860', 0, 'papua', 'raju', 'khan', 'puznsharma1@gmail.com', 0, 1, '2020-06-04 10:10:57.267874'),
(8, 'pbkdf2_sha256$180000$qcsLUzWZlTKS$RsB6Ym6YhGKNFL2tnMLNj85Yt8+qjZLsUemhuO0c3+M=', NULL, 0, '1234567890', 'hjh', 'khan', 'puznsharma1@gmail.com', 0, 1, '2020-06-08 17:03:46.913047'),
(9, 'pbkdf2_sha256$180000$QRVFDOdqdnPl$ylrA5TJ7CpS44kEleRaUzTJ9KpnOCzizC9cfPzr4DUc=', NULL, 0, 'applebanan', 'raju', 'khan', 'puznsharma1@gmail.com', 0, 1, '2020-06-08 17:12:47.182191'),
(10, 'pbkdf2_sha256$180000$z9DuMkMyjflk$BWHPzQryGqmGBv8YiD5/pFYOzjVoZo12gAXt88XUZKw=', '2020-06-15 16:15:00.780057', 0, 'sijan', 'Sijan', 'Sharma', 'sijan@gmail.com', 0, 1, '2020-06-15 16:14:47.529177'),
(11, 'pbkdf2_sha256$180000$O3x0BtlFOldE$GfuUu9BWTb37qSY1qtoJifgWj2Fy+Ivb+qyY61ZdjG4=', '2020-06-17 15:22:53.315139', 0, 'david', 'raju', 'khan', 'cghcghc@gmail.com', 0, 1, '2020-06-17 15:22:37.736244'),
(12, 'pbkdf2_sha256$180000$HRr0kzaW0swp$4NkQaZJDyNW7QB6hoZDMsFFFOdGacCUCBE0j6ukym1Y=', '2020-06-18 06:23:56.353149', 0, 'joh', 'John', 'Sharma', 'Jonny@mail.com', 0, 1, '2020-06-18 06:23:37.247530');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-04-14 05:26:29.199170', '1', 'Yenti Yenti', 1, '[{\"added\": {}}]', 1, 2),
(2, '2020-04-14 05:27:48.478363', '2', 'Here comes the sun', 1, '[{\"added\": {}}]', 1, 2),
(3, '2020-04-15 09:50:30.353433', '3', 'Coming back to life', 1, '[{\"added\": {}}]', 1, 2),
(4, '2020-04-15 09:51:36.020681', '4', 'Creep', 1, '[{\"added\": {}}]', 1, 2),
(5, '2020-04-15 09:53:11.879365', '5', 'I will be there for yoo', 1, '[{\"added\": {}}]', 1, 2),
(6, '2020-04-15 10:02:00.375243', '6', 'Pretender', 1, '[{\"added\": {}}]', 1, 2),
(7, '2020-04-15 10:07:56.589447', '3', 'Coming back to life', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 1, 2),
(8, '2020-04-15 10:09:00.415896', '2', 'Here comes the sun', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 1, 2),
(9, '2020-04-15 10:10:04.169501', '1', 'Yenti Yenti', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 1, 2),
(10, '2020-05-24 06:09:17.840414', '7', 'Wonderwall', 1, '[{\"added\": {}}]', 1, 2),
(11, '2020-05-24 06:17:34.596045', '8', 'Adams Song', 1, '[{\"added\": {}}]', 1, 2),
(12, '2020-05-24 06:18:30.542557', '9', 'I miss u', 1, '[{\"added\": {}}]', 1, 2),
(13, '2020-05-24 06:19:46.988544', '10', 'Small Thimgs', 1, '[{\"added\": {}}]', 1, 2),
(14, '2020-05-24 06:20:05.453110', '1', 'Yenti Yenti', 2, '[{\"changed\": {\"fields\": [\"Song genre\"]}}]', 1, 2),
(15, '2020-05-24 06:20:26.666612', '5', 'I will be there for yoo', 2, '[{\"changed\": {\"fields\": [\"Song genre\"]}}]', 1, 2),
(16, '2020-05-24 06:20:44.046228', '2', 'Here comes the sun', 2, '[{\"changed\": {\"fields\": [\"Song genre\"]}}]', 1, 2),
(17, '2020-05-24 06:20:53.941635', '3', 'Coming back to life', 2, '[{\"changed\": {\"fields\": [\"Song genre\"]}}]', 1, 2),
(18, '2020-06-03 15:40:12.750304', '6', 'Admin1', 1, '[{\"added\": {}}]', 5, 2),
(19, '2020-06-03 15:41:57.453038', '6', 'Admin1', 3, '', 5, 2),
(20, '2020-06-05 16:06:35.812085', '10', 'Small Things', 2, '[{\"changed\": {\"fields\": [\"Song name\"]}}]', 1, 2),
(21, '2020-06-18 03:47:20.826373', '11', 'bad guy', 1, '[{\"added\": {}}]', 1, 2),
(22, '2020-06-18 03:52:01.695096', '11', 'bad guy', 3, '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'accounts', 'playlist'),
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(1, 'music', 'songs'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-04-13 09:24:01.803728'),
(2, 'auth', '0001_initial', '2020-04-13 09:24:04.190815'),
(3, 'admin', '0001_initial', '2020-04-13 09:24:19.351123'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-04-13 09:24:27.045427'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-04-13 09:24:27.139201'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-04-13 09:24:29.161223'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-04-13 09:24:30.783106'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-04-13 09:24:31.079876'),
(9, 'auth', '0004_alter_user_username_opts', '2020-04-13 09:24:31.290514'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-04-13 09:24:33.873044'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-04-13 09:24:34.097871'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-04-13 09:24:34.359734'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-04-13 09:24:34.956086'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-04-13 09:24:35.532186'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-04-13 09:24:36.371727'),
(16, 'auth', '0011_update_proxy_permissions', '2020-04-13 09:24:36.479592'),
(17, 'music', '0001_initial', '2020-04-13 09:24:37.488674'),
(18, 'music', '0002_auto_20200120_2308', '2020-04-13 09:24:38.182932'),
(19, 'music', '0003_songs_music', '2020-04-13 09:24:38.797999'),
(20, 'sessions', '0001_initial', '2020-04-13 09:24:39.729705'),
(21, 'music', '0004_auto_20200602_0129', '2020-06-02 08:38:50.247488'),
(22, 'accounts', '0001_initial', '2020-06-02 08:38:51.413190');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ps5wwjv87rip9wilus1gth51szigy8i2', 'NDc3OWY5NDRkOWE0YTBiZWY3N2Q3NDIzZjdlZjU3NjY0NjU3MjhmNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OWNlODgwOWUwNDIxODYyNjZjNGFkZTk5M2YyMDI4MGM4YjI1NTNhIn0=', '2020-04-29 11:24:11.928359'),
('soakzy1e5rd8kjflajk6aepu8vea6v73', 'NDc3OWY5NDRkOWE0YTBiZWY3N2Q3NDIzZjdlZjU3NjY0NjU3MjhmNTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OWNlODgwOWUwNDIxODYyNjZjNGFkZTk5M2YyMDI4MGM4YjI1NTNhIn0=', '2020-05-18 15:25:00.414996'),
('ys87z9zbxstlb8cnsjx2po656mh9rl0q', 'NDQ1NmJhMGI2YjQxMTdlYWI0ZmRlYTY2NDUxODEzNTJiMjU0ZWZiYTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmI5MTE3NjM1ZDQzOWM0MzgzZmVkYzQzYzU3NzE3NDVkN2U0ZDA2NCJ9', '2020-07-02 08:44:46.329600');

-- --------------------------------------------------------

--
-- Table structure for table `music_songs`
--

CREATE TABLE `music_songs` (
  `id` int(11) NOT NULL,
  `song_name` varchar(200) NOT NULL,
  `release_date` datetime(6) NOT NULL,
  `artist_name` varchar(200) NOT NULL,
  `song_genre` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `music` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music_songs`
--

INSERT INTO `music_songs` (`id`, `song_name`, `release_date`, `artist_name`, `song_genre`, `image`, `music`) VALUES
(1, 'Yenti Yenti', '2020-01-07 06:00:00.000000', 'Chinmayi', 'Movie, Romantic', 'media/Geeths.jpeg', 'media/Yenti_Yenti_Full_Video_Song_Geetha_Govindam_Songs_Vijay_Devarakonda_Rashmika_Manda_vmV6MOC.mp3'),
(2, 'Here comes the sun', '2011-11-10 06:00:00.000000', 'The Beatles', 'Pop, rock', 'media/beats.jpg', 'media/The_Beatles_-_Here_Comes_The_Sun_2019_Mix_udDUPyL.mp3'),
(3, 'Coming back to life', '2011-11-10 06:00:00.000000', 'Pink Floyd', 'Rock,contemporary', 'media/pink-floyd-800x500.jpg', 'media/Pink_Floyd_-_Coming_Back_to_Life_-_Division_Bell.mp3'),
(4, 'Creep', '2020-01-07 00:00:00.000000', 'RadioHead', 'Rock', 'media/Radiohead.jpg', 'media/Creep_-_Radiohead_Lyrics.mp3'),
(5, 'I will be there for yoo', '2011-11-10 00:00:00.000000', 'The Rembrandts', 'Romantic', 'media/FriendsLead.jpg', 'media/Friends_Theme_song_with_lyrics.mp3'),
(6, 'Pretender', '2020-01-07 00:00:00.000000', 'Foo Fighters', 'Rock', 'media/foofighters.jpg', 'media/The_Pretender_-_Foo_Fighters_Lyrics.mp3'),
(7, 'Wonderwall', '2020-01-07 06:00:00.000000', 'The Oasis', 'Rock', 'media/oasis.jpg', 'media/Oasis_-_Wonderwall_-_Official_Video.mp3'),
(8, 'Adams Song', '2011-11-10 00:00:00.000000', 'Blink 182', 'Rock,contemporary', 'media/Blink_182.jpg', 'media/blink-182_-_Adams_Song.mp3'),
(9, 'I miss u', '2020-01-07 06:00:00.000000', 'Blink 182', 'Movie, Romantic', 'media/bliin.jpg', 'media/blink-182_-_I_Miss_You_Official_Video.mp3'),
(10, 'Small Things', '2020-01-07 00:00:00.000000', 'Blink 182', 'Romantic, Punk Rock', 'media/Blink_182_HP1QZxI.jpg', 'media/blink-182_-_All_The_Small_Things_Official_Video.mp3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_playlist`
--
ALTER TABLE `accounts_playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_playlist_song_id_0438eaaa_fk_music_songs_id` (`song_id`),
  ADD KEY `accounts_playlist_user_id_531041df_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `music_songs`
--
ALTER TABLE `music_songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_playlist`
--
ALTER TABLE `accounts_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `music_songs`
--
ALTER TABLE `music_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_playlist`
--
ALTER TABLE `accounts_playlist`
  ADD CONSTRAINT `accounts_playlist_song_id_0438eaaa_fk_music_songs_id` FOREIGN KEY (`song_id`) REFERENCES `music_songs` (`id`),
  ADD CONSTRAINT `accounts_playlist_user_id_531041df_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
