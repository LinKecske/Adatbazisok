-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 01. 20:08
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `munkakozvetito`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allasajanlatok`
--

CREATE TABLE `allasajanlatok` (
  `allasajanlat_id` int(11) NOT NULL,
  `munkakori_pozicio` varchar(255) NOT NULL,
  `elvart_eletkor` int(11) NOT NULL,
  `kapcsolattarto_email` varchar(255) NOT NULL,
  `telephely_id` int(11) NOT NULL,
  `aktualis_e` tinyint(1) NOT NULL,
  `ki_rogzitette` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `allasajanlatok`
--

INSERT INTO `allasajanlatok` (`allasajanlat_id`, `munkakori_pozicio`, `elvart_eletkor`, `kapcsolattarto_email`, `telephely_id`, `aktualis_e`, `ki_rogzitette`) VALUES
(232, 'Fejlesztő', 14, 'contact1@example.com', 51, 1, 51),
(233, 'Projektmenedzser', 15, 'contact2@example.com', 52, 0, 52),
(234, 'Tesztelő', 16, 'contact3@example.com', 53, 1, 51),
(235, 'Rendszergazda', 17, 'contact4@example.com', 54, 0, 52),
(236, 'Üzleti Elemző', 18, 'contact5@example.com', 55, 1, 51),
(237, 'HR Munkatárs', 14, 'contact6@example.com', 56, 1, 52),
(238, 'Marketinges', 15, 'contact7@example.com', 57, 0, 51),
(239, 'Pénzügyi Asszisztens', 16, 'contact8@example.com', 58, 1, 52),
(240, 'Szoftverfejlesztő', 17, 'contact9@example.com', 59, 0, 51),
(241, 'Ügyfélszolgálati Képviselő', 18, 'contact10@example.com', 60, 1, 52),
(242, 'Grafikus', 14, 'contact11@example.com', 61, 1, 51),
(243, 'Adatbázis Adminisztrátor', 15, 'contact12@example.com', 62, 0, 52),
(244, 'Hálózati Mérnök', 16, 'contact13@example.com', 63, 1, 51),
(245, 'Szoftver Tesztelő', 17, 'contact14@example.com', 64, 0, 52),
(246, 'Frontend Fejlesztő', 18, 'contact15@example.com', 65, 1, 51),
(247, 'Backend Fejlesztő', 14, 'contact16@example.com', 66, 0, 52),
(248, 'IT Tanácsadó', 15, 'contact17@example.com', 67, 1, 51),
(249, 'Adatmérnök', 16, 'contact18@example.com', 68, 0, 52),
(250, 'Üzletfejlesztési Menedzser', 17, 'contact19@example.com', 69, 1, 51),
(251, 'Termékmenedzser', 18, 'contact20@example.com', 70, 1, 52),
(252, 'Könyvelő', 14, 'contact21@example.com', 71, 0, 51),
(253, 'Operációs Manager', 15, 'contact22@example.com', 72, 1, 52),
(254, 'Logisztikai Menedzser', 16, 'contact23@example.com', 73, 0, 51),
(255, 'Jogi Tanácsadó', 17, 'contact24@example.com', 74, 1, 52),
(256, 'Kutató', 18, 'contact25@example.com', 75, 0, 51),
(257, 'Karbantartó', 14, 'contact26@example.com', 76, 1, 52),
(258, 'Beszerzési Menedzser', 15, 'contact27@example.com', 77, 0, 51),
(259, 'Minőségbiztosítási Munkatárs', 16, 'contact28@example.com', 78, 1, 52),
(260, 'Üzleti Tanácsadó', 17, 'contact29@example.com', 79, 0, 51),
(261, 'Stratégiai Tervező', 18, 'contact30@example.com', 80, 1, 52),
(262, 'Menedzsment Asszisztens', 14, 'contact31@example.com', 81, 1, 51),
(263, 'Fejlesztési Menedzser', 15, 'contact32@example.com', 82, 0, 52),
(264, 'Értékesítési Képviselő', 16, 'contact33@example.com', 83, 1, 51),
(265, 'Ügyféltámogató', 17, 'contact34@example.com', 84, 0, 52),
(266, 'Tréner', 18, 'contact35@example.com', 85, 1, 51),
(267, 'Adatvédelmi Tisztviselő', 14, 'contact36@example.com', 86, 1, 52),
(268, 'Termelési Vezető', 15, 'contact37@example.com', 87, 0, 51),
(269, 'Közösségi Média Menedzser', 16, 'contact38@example.com', 88, 1, 52),
(270, 'Értékesítési Menedzser', 17, 'contact39@example.com', 89, 0, 51),
(271, 'Szolgáltatás Menedzser', 18, 'contact40@example.com', 90, 1, 52),
(272, 'HR Igazgató', 14, 'contact41@example.com', 91, 0, 51),
(273, 'Grafikai Tervező', 15, 'contact42@example.com', 92, 1, 52),
(274, 'Projekt Igazgató', 16, 'contact43@example.com', 93, 1, 51),
(275, 'Áruház Vezető', 17, 'contact44@example.com', 94, 0, 52),
(276, 'Ellátási Lánc Menedzser', 18, 'contact45@example.com', 95, 1, 51),
(277, 'Folyamatfejlesztési Vezető', 14, 'contact46@example.com', 96, 0, 52),
(278, 'Kockázatkezelési Tanácsadó', 15, 'contact47@example.com', 97, 1, 51),
(279, 'Minőségellenőr', 16, 'contact48@example.com', 98, 1, 52),
(280, 'Logisztikai Képviselő', 17, 'contact49@example.com', 99, 0, 51),
(281, 'Marketing Igazgató', 18, 'contact50@example.com', 100, 1, 52),
(282, 'Biztonsági Szakértő', 14, 'contact51@example.com', 101, 1, 51),
(283, 'Üzemeltetési Vezető', 15, 'contact52@example.com', 102, 0, 52),
(284, 'Ügyfélszolgálati Menedzser', 16, 'contact53@example.com', 103, 1, 51),
(285, 'Pénzügyi Elemző', 17, 'contact54@example.com', 104, 0, 52),
(286, 'Termékfejlesztési Vezető', 18, 'contact55@example.com', 105, 1, 51),
(287, 'Közönségkapcsolati Vezető', 14, 'contact56@example.com', 106, 1, 52),
(288, 'Beszerzési Igazgató', 15, 'contact57@example.com', 107, 0, 51),
(289, 'Eseményszervező', 16, 'contact58@example.com', 108, 1, 52),
(290, 'Egészségügyi Tanácsadó', 17, 'contact59@example.com', 109, 0, 51),
(291, 'Minőségbiztosítási Igazgató', 18, 'contact60@example.com', 110, 1, 52),
(292, 'Kutatási Igazgató', 14, 'contact61@example.com', 111, 1, 51),
(293, 'Adatvédelmi Igazgató', 15, 'contact62@example.com', 112, 0, 52),
(294, 'Marketing Koordinátor', 16, 'contact63@example.com', 113, 1, 51),
(295, 'Termék Igazgató', 17, 'contact64@example.com', 114, 1, 52),
(296, 'Ügyvezető Igazgató', 18, 'contact65@example.com', 115, 0, 51),
(297, 'Pénzügyi Vezető', 14, 'contact66@example.com', 116, 1, 52),
(298, 'HR Menedzser', 15, 'contact67@example.com', 117, 0, 51),
(299, 'Pályázati Tanácsadó', 16, 'contact68@example.com', 118, 1, 52);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cegek`
--

CREATE TABLE `cegek` (
  `ceg_id` int(11) NOT NULL,
  `ceg_neve` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `cegek`
--

INSERT INTO `cegek` (`ceg_id`, `ceg_neve`) VALUES
(1, 'Alpha Technologies'),
(2, 'Beta Innovations'),
(3, 'Gamma Industries'),
(4, 'Delta Solutions'),
(5, 'Epsilon Enterprises'),
(6, 'Zeta Holdings'),
(7, 'Eta Corporations'),
(8, 'Theta Systems'),
(9, 'Iota Services'),
(10, 'Kappa Enterprises'),
(11, 'Lambda Works'),
(12, 'Mu Developments'),
(13, 'Nu Innovations'),
(14, 'Xi Productions'),
(15, 'Omicron Tech'),
(16, 'Pi Holdings'),
(17, 'Rho Solutions'),
(18, 'Sigma Enterprises'),
(19, 'Tau Technologies'),
(20, 'Upsilon Industries'),
(21, 'Phi Services'),
(22, 'Chi Developments'),
(23, 'Psi Productions'),
(24, 'Omega Innovations'),
(25, 'Ares Enterprises'),
(26, 'Apollo Holdings'),
(27, 'Athena Tech'),
(28, 'Artemis Solutions'),
(29, 'Hermes Enterprises'),
(30, 'Hephaestus Industries'),
(31, 'Dionysus Services'),
(32, 'Demeter Developments'),
(33, 'Hera Productions'),
(34, 'Hades Technologies'),
(35, 'Poseidon Industries'),
(36, 'Zeus Services'),
(37, 'Pandora Enterprises'),
(38, 'Prometheus Holdings'),
(39, 'Hestia Solutions'),
(40, 'Hercules Technologies'),
(41, 'Aphrodite Industries'),
(42, 'Hebe Services'),
(43, 'Iris Developments'),
(44, 'Nyx Productions'),
(45, 'Selene Innovations'),
(46, 'Erebus Enterprises'),
(47, 'Chaos Holdings'),
(48, 'Eros Tech'),
(49, 'Gaia Solutions'),
(50, 'Link és társa');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elvart_kepessegek`
--

CREATE TABLE `elvart_kepessegek` (
  `allasajanlat_id` int(11) NOT NULL,
  `kepesseg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `elvart_kepessegek`
--

INSERT INTO `elvart_kepessegek` (`allasajanlat_id`, `kepesseg_id`) VALUES
(232, 1),
(232, 2),
(233, 3),
(233, 4),
(234, 5),
(234, 6),
(235, 7),
(235, 8),
(236, 9),
(236, 10),
(237, 11),
(237, 12),
(238, 13),
(238, 14),
(239, 15),
(239, 16),
(240, 17),
(240, 18),
(241, 19),
(241, 20),
(242, 21),
(242, 22),
(243, 23),
(243, 24),
(244, 25),
(244, 26),
(245, 27),
(245, 28),
(246, 29),
(246, 30),
(247, 31),
(247, 32),
(248, 33),
(248, 34),
(249, 35),
(249, 36),
(250, 37),
(250, 38),
(251, 39),
(251, 40),
(252, 41),
(252, 42),
(253, 43),
(253, 44),
(254, 45),
(254, 46),
(255, 47),
(255, 48),
(256, 49),
(256, 50),
(257, 1),
(257, 2),
(258, 3),
(258, 4),
(259, 5),
(259, 6),
(260, 7),
(260, 8),
(261, 9),
(261, 10),
(262, 11),
(262, 12),
(263, 13),
(263, 14),
(264, 15),
(264, 16),
(265, 17),
(265, 18),
(266, 19),
(266, 20),
(267, 21),
(267, 22),
(268, 23),
(268, 24),
(269, 25),
(269, 26),
(270, 27),
(270, 28),
(271, 29),
(271, 30),
(272, 31),
(272, 32),
(273, 33),
(273, 34),
(274, 35),
(274, 36),
(275, 37),
(275, 38),
(276, 39),
(276, 40),
(277, 41),
(277, 42),
(278, 43),
(278, 44),
(279, 45),
(279, 46),
(280, 47),
(280, 48),
(281, 49),
(281, 50),
(282, 1),
(282, 2),
(283, 3),
(283, 4),
(284, 5),
(284, 6),
(285, 7),
(285, 8),
(286, 9),
(286, 10),
(287, 11),
(287, 12),
(288, 13),
(288, 14),
(289, 15),
(289, 16),
(290, 17),
(290, 18),
(291, 19),
(291, 20),
(292, 21),
(292, 22),
(293, 23),
(293, 24),
(294, 25),
(294, 26),
(295, 27),
(295, 28),
(296, 29),
(296, 30),
(297, 31),
(297, 32),
(298, 33),
(298, 34),
(299, 35),
(299, 36),
(299, 37),
(299, 38);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `felhasznalo_id` int(11) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `elotag` varchar(10) DEFAULT NULL,
  `nev` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `szerepkor` varchar(255) NOT NULL,
  `regisztracio_datuma` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalok`
--

INSERT INTO `felhasznalok` (`felhasznalo_id`, `jelszo`, `elotag`, `nev`, `email`, `szerepkor`, `regisztracio_datuma`) VALUES
(1, 'password1', 'Mr.', 'John Doe', 'john.doe@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(2, 'password2', 'Ms.', 'Jane Smith', 'jane.smith@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(3, 'password3', 'Dr.', 'Emily Davis', 'emily.davis@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(4, 'password4', 'Mrs.', 'Mary Johnson', 'mary.johnson@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(5, 'password5', 'Mr.', 'Michael Brown', 'michael.brown@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(6, 'password6', 'Ms.', 'Linda Wilson', 'linda.wilson@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(7, 'password7', 'Dr.', 'James Taylor', 'james.taylor@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(8, 'password8', 'Mrs.', 'Patricia Anderson', 'patricia.anderson@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(9, 'password9', 'Mr.', 'Robert Thomas', 'robert.thomas@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(10, 'password10', 'Ms.', 'Barbara Jackson', 'barbara.jackson@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(11, 'password11', 'Dr.', 'William White', 'william.white@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(12, 'password12', 'Mrs.', 'Elizabeth Harris', 'elizabeth.harris@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(13, 'password13', 'Mr.', 'David Martin', 'david.martin@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(14, 'password14', 'Ms.', 'Susan Thompson', 'susan.thompson@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(15, 'password15', 'Dr.', 'Joseph Garcia', 'joseph.garcia@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(16, 'password16', 'Mrs.', 'Jessica Martinez', 'jessica.martinez@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(17, 'password17', 'Mr.', 'Daniel Robinson', 'daniel.robinson@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(18, 'password18', 'Ms.', 'Sarah Clark', 'sarah.clark@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(19, 'password19', 'Dr.', 'Charles Lewis', 'charles.lewis@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(20, 'password20', 'Mrs.', 'Karen Lee', 'karen.lee@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(21, 'password21', 'Mr.', 'Christopher Walker', 'christopher.walker@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(22, 'password22', 'Ms.', 'Nancy Hall', 'nancy.hall@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(23, 'password23', 'Dr.', 'Steven Allen', 'steven.allen@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(24, 'password24', 'Mrs.', 'Betty Young', 'betty.young@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(25, 'password25', 'Mr.', 'Paul Hernandez', 'paul.hernandez@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(26, 'password26', 'Ms.', 'Dorothy King', 'dorothy.king@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(27, 'password27', 'Dr.', 'Mark Wright', 'mark.wright@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(28, 'password28', 'Mrs.', 'Carol Lopez', 'carol.lopez@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(29, 'password29', 'Mr.', 'Edward Hill', 'edward.hill@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(30, 'password30', 'Ms.', 'Ruth Scott', 'ruth.scott@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(31, 'password31', 'Dr.', 'Brian Green', 'brian.green@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(32, 'password32', 'Mrs.', 'Shirley Adams', 'shirley.adams@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(33, 'password33', 'Mr.', 'George Baker', 'george.baker@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(34, 'password34', 'Ms.', 'Sandra Gonzalez', 'sandra.gonzalez@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(35, 'password35', 'Dr.', 'Kenneth Carter', 'kenneth.carter@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(36, 'password36', 'Mrs.', 'Anna Mitchell', 'anna.mitchell@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(37, 'password37', 'Mr.', 'Joshua Perez', 'joshua.perez@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(38, 'password38', 'Ms.', 'Emily Roberts', 'emily.roberts@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(39, 'password39', 'Dr.', 'Ryan Turner', 'ryan.turner@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(40, 'password40', 'Mrs.', 'Deborah Phillips', 'deborah.phillips@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(41, 'password41', 'Mr.', 'Matthew Campbell', 'matthew.campbell@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(42, 'password42', 'Ms.', 'Ashley Parker', 'ashley.parker@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(43, 'password43', 'Dr.', 'Andrew Evans', 'andrew.evans@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(44, 'password44', 'Mrs.', 'Donna Edwards', 'donna.edwards@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(45, 'password45', 'Mr.', 'Justin Collins', 'justin.collins@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(46, 'password46', 'Ms.', 'Rebecca Stewart', 'rebecca.stewart@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(47, 'password47', 'Dr.', 'Aaron Sanchez', 'aaron.sanchez@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(48, 'password48', 'Mrs.', 'Laura Morris', 'laura.morris@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(49, 'password49', 'Mr.', 'Kevin Rogers', 'kevin.rogers@example.com', 'dolgozó', '2024-11-27 19:25:33'),
(50, 'password50', 'Ms.', 'Megan Reed', 'megan.reed@example.com', 'álláskereső', '2024-11-27 19:25:33'),
(51, '12345', 'Mr.', 'admin1', 'admin1@gmail.com', 'admin', '2024-11-27 22:44:33'),
(52, '12345', 'Mr.', 'admin2', 'admin2@gmail.com', 'admin', '2024-11-27 22:44:40'),
(69, '12345', 'Dr.', 'álláskereső', 'defallaskereso@gmail.com', 'álláskereső', '2024-11-28 12:37:12'),
(70, '12345', 'Dr.', 'dolgozó', 'defdolgozo@gmail.com', 'dolgozó', '2024-11-28 12:37:12'),
(72, '12345', 'MR', 'noname', 'noname@gmail.com', 'dolgozó', '2024-11-28 15:52:49'),
(73, '12345', 'Dr.', 'Móni', 'proba@gmail.com', 'dolgozó', '2024-11-28 17:14:40'),
(74, '12345', 'Mr. ', 'Matyi', 'matyi@gmail.com', 'álláskereső', '2024-11-28 17:56:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepessegek`
--

CREATE TABLE `kepessegek` (
  `kepesseg_id` int(11) NOT NULL,
  `kepesseg_neve` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kepessegek`
--

INSERT INTO `kepessegek` (`kepesseg_id`, `kepesseg_neve`) VALUES
(1, 'Python'),
(2, 'Java'),
(3, 'JavaScript'),
(4, 'C#'),
(5, 'C++'),
(6, 'PHP'),
(7, 'Ruby'),
(8, 'Object-Oriented Programming (OOP)'),
(9, 'Agile/Scrum Methodologies'),
(10, 'Version Control (Git)'),
(11, 'Test-Driven Development (TDD)'),
(12, 'Continuous Integration/Continuous Deployment (CI/CD)'),
(13, 'HTML/CSS'),
(14, 'React.js'),
(15, 'Angular'),
(16, 'Node.js'),
(17, 'jQuery'),
(18, 'SQL'),
(19, 'NoSQL (MongoDB, Cassandra)'),
(20, 'Database Design'),
(21, 'Data Modeling'),
(22, 'Performance Tuning'),
(23, 'Network Configuration'),
(24, 'System Administration (Linux/Windows)'),
(25, 'Cloud Computing (AWS, Azure, Google Cloud)'),
(26, 'Cybersecurity'),
(27, 'VPN Configuration'),
(28, 'Data Analysis'),
(29, 'Data Mining'),
(30, 'Machine Learning'),
(31, 'Big Data Technologies (Hadoop, Spark)'),
(32, 'Data Visualization (Tableau, Power BI)'),
(33, 'Project Planning'),
(34, 'Risk Management'),
(35, 'Time Management'),
(36, 'Stakeholder Communication'),
(37, 'Resource Allocation'),
(38, 'Customer Service'),
(39, 'Technical Support'),
(40, 'Problem Solving'),
(41, 'Written and Verbal Communication'),
(42, 'Conflict Resolution'),
(43, 'Docker'),
(44, 'Kubernetes'),
(45, 'Terraform'),
(46, 'Ansible'),
(47, 'PowerShell'),
(48, 'Excel'),
(49, 'R'),
(50, 'TensorFlow');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepzesek`
--

CREATE TABLE `kepzesek` (
  `kepzes_id` int(11) NOT NULL,
  `kepzes_neve` varchar(255) NOT NULL,
  `kepzes_szintje` varchar(255) NOT NULL,
  `kepzettseg_megnevezese` varchar(255) NOT NULL,
  `kepzes_ara` int(11) NOT NULL,
  `kezdes_datuma` date NOT NULL,
  `befejezes_datuma` date NOT NULL,
  `max_letszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kepzesek`
--

INSERT INTO `kepzesek` (`kepzes_id`, `kepzes_neve`, `kepzes_szintje`, `kepzettseg_megnevezese`, `kepzes_ara`, `kezdes_datuma`, `befejezes_datuma`, `max_letszam`) VALUES
(1, 'Introduction to Python', 'Kezdő', 'Python Alapismeretek', 50000, '2024-01-01', '2024-02-01', 30),
(2, 'Advanced Java Programming', 'Haladó', 'Java Mester', 70000, '2024-02-02', '2024-03-02', 25),
(3, 'Web Development with React', 'Középhaladó', 'React Fejlesztő', 60000, '2024-03-03', '2024-04-03', 30),
(4, 'Data Analysis with SQL', 'Középhaladó', 'Adat Elemző', 55000, '2024-04-04', '2024-05-04', 20),
(5, 'Machine Learning Basics', 'Kezdő', 'Gépitanulás Alapok', 65000, '2024-05-05', '2024-06-05', 25),
(6, 'Agile Project Management', 'Középhaladó', 'Agilis Projektmenedzser', 60000, '2024-06-06', '2024-07-06', 20),
(7, 'Cybersecurity Fundamentals', 'Kezdő', 'Kiberbiztonság Alapok', 50000, '2024-07-07', '2024-08-07', 30),
(8, 'Cloud Computing with AWS', 'Haladó', 'AWS Felhőszakértő', 70000, '2024-08-08', '2024-09-08', 25),
(9, 'Mobile App Development', 'Középhaladó', 'Mobil App Fejlesztő', 60000, '2024-09-09', '2024-10-09', 30),
(10, 'Big Data with Hadoop', 'Haladó', 'Hadoop Szakértő', 75000, '2024-10-10', '2024-11-10', 20),
(11, 'Introduction to Linux', 'Kezdő', 'Linux Alapismeretek', 50000, '2024-11-11', '2024-12-11', 30),
(12, 'Digital Marketing Strategies', 'Középhaladó', 'Digitális Marketing Szakértő', 60000, '2024-12-12', '2025-01-12', 25),
(13, 'Network Administration', 'Haladó', 'Hálózati Adminisztrátor', 70000, '2025-01-13', '2025-02-13', 20),
(14, 'Database Design', 'Középhaladó', 'Adatbázis Tervező', 60000, '2025-02-14', '2025-03-14', 25),
(15, 'AI and Deep Learning', 'Haladó', 'AI és Mélytanulás Szakértő', 80000, '2025-03-15', '2025-04-15', 20),
(16, 'DevOps Practices', 'Középhaladó', 'DevOps Mérnök', 65000, '2025-04-16', '2025-05-16', 30),
(17, 'Blockchain Technology', 'Haladó', 'Blockchain Szakértő', 75000, '2025-05-17', '2025-06-17', 25),
(18, 'Frontend Development with Angular', 'Középhaladó', 'Angular Fejlesztő', 60000, '2025-06-18', '2025-07-18', 30),
(19, 'Backend Development with Node.js', 'Középhaladó', 'Node.js Fejlesztő', 60000, '2025-07-19', '2025-08-19', 25),
(20, 'Technical Writing for Professionals', 'Kezdő', 'Technikai Író', 45000, '2025-08-20', '2025-09-20', 20),
(21, 'Game Development Basics', 'Kezdő', 'Játékfejlesztés Alapok', 55000, '2025-09-21', '2025-10-21', 30),
(22, 'Cloud Security', 'Haladó', 'Felhő Biztonsági Szakértő', 70000, '2025-10-22', '2025-11-22', 25),
(23, 'Introduction to Docker', 'Kezdő', 'Docker Alapismeretek', 50000, '2025-11-23', '2025-12-23', 30),
(24, 'Kubernetes for Beginners', 'Kezdő', 'Kubernetes Alapismeretek', 50000, '2025-12-24', '2026-01-24', 30),
(25, 'Data Visualization with Tableau', 'Középhaladó', 'Tableau Szakértő', 60000, '2026-01-25', '2026-02-25', 25),
(26, 'Scrum Master Certification', 'Haladó', 'Scrum Master', 70000, '2026-02-26', '2026-03-26', 20),
(27, 'Ethical Hacking', 'Haladó', 'Etikus Hacker', 75000, '2026-03-27', '2026-04-27', 25),
(28, 'ITIL Foundation', 'Középhaladó', 'ITIL Alapok', 60000, '2026-04-28', '2026-05-28', 20),
(29, 'SAP ERP Basics', 'Kezdő', 'SAP ERP Alapismeretek', 55000, '2026-05-29', '2026-06-29', 25),
(30, 'Microsoft Azure Fundamentals', 'Középhaladó', 'Azure Alapok', 60000, '2026-06-30', '2026-07-30', 30),
(31, 'Advanced SQL Queries', 'Haladó', 'SQL Mester', 65000, '2026-07-31', '2026-08-31', 25),
(32, 'AI Programming with Python', 'Középhaladó', 'AI Programozás', 70000, '2026-09-01', '2026-10-01', 20),
(33, 'Business Intelligence with Power BI', 'Haladó', 'BI Szakértő', 75000, '2026-10-02', '2026-11-02', 20),
(34, 'Introduction to IT Security', 'Kezdő', 'IT Biztonság Alapok', 50000, '2026-11-03', '2026-12-03', 25),
(35, 'Full Stack Web Development', 'Haladó', 'Full Stack Fejlesztő', 80000, '2026-12-04', '2027-01-04', 20),
(36, 'Introduction to R Programming', 'Kezdő', 'R Programozás Alapok', 45000, '2027-01-05', '2027-02-05', 30),
(37, 'Terraform for Infrastructure as Code', 'Középhaladó', 'Terraform Szakértő', 60000, '2027-02-06', '2027-03-06', 25),
(38, 'AWS Certified Solutions Architect', 'Haladó', 'AWS Megoldásépítész', 70000, '2027-03-07', '2027-04-07', 20),
(39, 'Digital Transformation Strategies', 'Középhaladó', 'Digitális Transzformáció', 65000, '2027-04-08', '2027-05-08', 25),
(40, 'Data Engineering with Spark', 'Haladó', 'Adatmérnök', 75000, '2027-05-09', '2027-06-09', 20),
(41, 'Cybersecurity Risk Management', 'Középhaladó', 'Kiberbiztonság', 70000, '2027-06-10', '2027-07-10', 25),
(42, 'AI Ethics and Policy', 'Középhaladó', 'AI Etika', 60000, '2027-07-11', '2027-08-11', 20),
(43, 'Python for Data Science', 'Haladó', 'Adattudomány', 75000, '2027-08-12', '2027-09-12', 20),
(44, 'Agile Leadership', 'Középhaladó', 'Agilis Vezetés', 60000, '2027-09-13', '2027-10-13', 30),
(45, 'DevSecOps Practices', 'Haladó', 'DevSecOps Mérnök', 70000, '2027-10-14', '2027-11-14', 25),
(46, 'ITIL Foundation Advanced', 'Haladó', 'ITIL Alapok Haladó', 70000, '2027-12-16', '2028-01-16', 20),
(47, 'Advanced Machine Learning', 'Haladó', 'Gépitanulás Mester', 80000, '2028-01-17', '2028-02-17', 25),
(48, 'Quantum Computing Basics', 'Kezdő', 'Kvantumszámítás Alapok', 50000, '2028-02-18', '2028-03-18', 30),
(49, 'Robotic Process Automation', 'Középhaladó', 'Robotikai Folyamat Automatizálás', 65000, '2028-03-19', '2028-04-19', 25),
(50, 'AI for Healthcare', 'Haladó', 'AI az Egészségügyben', 75000, '2028-04-20', '2028-05-20', 20);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `resztvevok`
--

CREATE TABLE `resztvevok` (
  `kepzes_id` int(11) NOT NULL,
  `felhasznalo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `resztvevok`
--

INSERT INTO `resztvevok` (`kepzes_id`, `felhasznalo_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5),
(4, 5),
(4, 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telephelyek`
--

CREATE TABLE `telephelyek` (
  `telephely_id` int(11) NOT NULL,
  `ceg_id` int(11) NOT NULL,
  `Iranyitoszam` int(11) NOT NULL,
  `telepules` varchar(255) NOT NULL,
  `kozterulet_neve` varchar(255) NOT NULL,
  `hazszam` int(11) NOT NULL,
  `kapcsolattarto_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `telephelyek`
--

INSERT INTO `telephelyek` (`telephely_id`, `ceg_id`, `Iranyitoszam`, `telepules`, `kozterulet_neve`, `hazszam`, `kapcsolattarto_email`) VALUES
(51, 1, 10001, 'Budapest', 'Fő utca', 1, 'contact1@example.com'),
(52, 2, 10002, 'Budapest', 'Szabadság tér', 2, 'contact2@example.com'),
(53, 3, 10003, 'Budapest', 'Kossuth Lajos utca', 3, 'contact3@example.com'),
(54, 4, 10004, 'Budapest', 'Andrássy út', 4, 'contact4@example.com'),
(55, 5, 10005, 'Budapest', 'Váci utca', 5, 'contact5@example.com'),
(56, 6, 10006, 'Budapest', 'Szent István körút', 6, 'contact6@example.com'),
(57, 7, 10007, 'Budapest', 'Rákóczi út', 7, 'contact7@example.com'),
(58, 8, 10008, 'Budapest', 'Petőfi Sándor utca', 8, 'contact8@example.com'),
(59, 9, 10009, 'Budapest', 'Bartók Béla út', 9, 'contact9@example.com'),
(60, 10, 10010, 'Budapest', 'Árpád út', 10, 'contact10@example.com'),
(61, 11, 20001, 'Győr', 'Baross utca', 11, 'contact11@example.com'),
(62, 12, 20002, 'Győr', 'Szent István út', 12, 'contact12@example.com'),
(63, 13, 20003, 'Győr', 'Csaba utca', 13, 'contact13@example.com'),
(64, 14, 20004, 'Győr', 'Széchenyi tér', 14, 'contact14@example.com'),
(65, 15, 20005, 'Győr', 'Vásárhelyi utca', 15, 'contact15@example.com'),
(66, 16, 20006, 'Győr', 'Bajcsy-Zsilinszky út', 16, 'contact16@example.com'),
(67, 17, 20007, 'Győr', 'Erzsébet utca', 17, 'contact17@example.com'),
(68, 18, 20008, 'Győr', 'Pannonhalmi út', 18, 'contact18@example.com'),
(69, 19, 20009, 'Győr', 'Kossuth Lajos tér', 19, 'contact19@example.com'),
(70, 20, 20010, 'Győr', 'Radnóti Miklós utca', 20, 'contact20@example.com'),
(71, 21, 30001, 'Debrecen', 'Piac utca', 21, 'contact21@example.com'),
(72, 22, 30002, 'Debrecen', 'Böszörményi út', 22, 'contact22@example.com'),
(73, 23, 30003, 'Debrecen', 'Csapó utca', 23, 'contact23@example.com'),
(74, 24, 30004, 'Debrecen', 'Nagyerdei körút', 24, 'contact24@example.com'),
(75, 25, 30005, 'Debrecen', 'Dózsa György utca', 25, 'contact25@example.com'),
(76, 26, 30006, 'Debrecen', 'Kossuth Lajos utca', 26, 'contact26@example.com'),
(77, 27, 30007, 'Debrecen', 'Petőfi tér', 27, 'contact27@example.com'),
(78, 28, 30008, 'Debrecen', 'Simonyi út', 28, 'contact28@example.com'),
(79, 29, 30009, 'Debrecen', 'Bem tér', 29, 'contact29@example.com'),
(80, 30, 30010, 'Debrecen', 'Jókai utca', 30, 'contact30@example.com'),
(81, 31, 40001, 'Szeged', 'Tisza Lajos körút', 31, 'contact31@example.com'),
(82, 32, 40002, 'Szeged', 'Dugonics tér', 32, 'contact32@example.com'),
(83, 33, 40003, 'Szeged', 'Petőfi Sándor sugárút', 33, 'contact33@example.com'),
(84, 34, 40004, 'Szeged', 'Kálvin tér', 34, 'contact34@example.com'),
(85, 35, 40005, 'Szeged', 'Aradi vértanúk tere', 35, 'contact35@example.com'),
(86, 36, 40006, 'Szeged', 'Kárász utca', 36, 'contact36@example.com'),
(87, 37, 40007, 'Szeged', 'Szentháromság utca', 37, 'contact37@example.com'),
(88, 38, 40008, 'Szeged', 'Mikszáth Kálmán utca', 38, 'contact38@example.com'),
(89, 39, 40009, 'Szeged', 'Tömörkény utca', 39, 'contact39@example.com'),
(90, 40, 40010, 'Szeged', 'Rákóczi utca', 40, 'contact40@example.com'),
(91, 41, 50001, 'Pécs', 'Rákóczi út', 41, 'contact41@example.com'),
(92, 42, 50002, 'Pécs', 'Király utca', 42, 'contact42@example.com'),
(93, 43, 50003, 'Pécs', 'Petőfi utca', 43, 'contact43@example.com'),
(94, 44, 50004, 'Pécs', 'Felsővámház utca', 44, 'contact44@example.com'),
(95, 45, 50005, 'Pécs', 'Zsolnay Vilmos utca', 45, 'contact45@example.com'),
(96, 46, 50006, 'Pécs', 'Mátyás király utca', 46, 'contact46@example.com'),
(97, 47, 50007, 'Pécs', 'Irinyi János utca', 47, 'contact47@example.com'),
(98, 48, 50008, 'Pécs', 'Kórház tér', 48, 'contact48@example.com'),
(99, 49, 50009, 'Pécs', 'Széchenyi tér', 49, 'contact49@example.com'),
(100, 49, 50010, 'Pécs', 'Béke utca', 50, 'contact50@example.com'),
(101, 1, 60001, 'Székesfehérvár', 'Várkörút', 1, 'contact51@example.com'),
(102, 2, 60002, 'Székesfehérvár', 'Fő utca', 2, 'contact52@example.com'),
(103, 3, 60003, 'Székesfehérvár', 'Táncsics utca', 3, 'contact53@example.com'),
(104, 4, 60004, 'Székesfehérvár', 'Jókai utca', 4, 'contact54@example.com'),
(105, 5, 60005, 'Székesfehérvár', 'Kossuth Lajos utca', 5, 'contact55@example.com'),
(106, 6, 60006, 'Székesfehérvár', 'Rákóczi út', 6, 'contact56@example.com'),
(107, 7, 60007, 'Székesfehérvár', 'Arany János utca', 7, 'contact57@example.com'),
(108, 8, 60008, 'Székesfehérvár', 'Petőfi Sándor utca', 8, 'contact58@example.com'),
(109, 9, 60009, 'Székesfehérvár', 'Radnóti Miklós utca', 9, 'contact59@example.com'),
(110, 10, 60010, 'Székesfehérvár', 'Ady Endre utca', 10, 'contact60@example.com'),
(111, 11, 70001, 'Tatabánya', 'Dózsa György utca', 11, 'contact61@example.com'),
(112, 12, 70002, 'Tatabánya', 'Kossuth tér', 12, 'contact62@example.com'),
(113, 13, 70003, 'Tatabánya', 'Rákóczi út', 13, 'contact63@example.com'),
(114, 14, 70004, 'Tatabánya', 'Béke utca', 14, 'contact64@example.com'),
(115, 15, 70005, 'Tatabánya', 'Széchenyi út', 15, 'contact65@example.com'),
(116, 16, 70006, 'Tatabánya', 'Petőfi utca', 16, 'contact66@example.com'),
(117, 17, 70007, 'Tatabánya', 'Baross utca', 17, 'contact67@example.com'),
(118, 18, 70008, 'Tatabánya', 'Szent István út', 18, 'contact68@example.com'),
(119, 19, 70009, 'Tatabánya', 'Bajcsy-Zsilinszky út', 19, 'contact69@example.com'),
(120, 20, 70010, 'Tatabánya', 'Váci utca', 20, 'contact70@example.com'),
(121, 21, 80001, 'Szolnok', 'Kossuth Lajos utca', 21, 'contact71@example.com'),
(122, 22, 80002, 'Szolnok', 'Táncsics utca', 22, 'contact72@example.com'),
(123, 23, 80003, 'Szolnok', 'Rákóczi út', 23, 'contact73@example.com'),
(124, 24, 80004, 'Szolnok', 'Petőfi Sándor utca', 24, 'contact74@example.com'),
(125, 25, 80005, 'Szolnok', 'Arany János utca', 25, 'contact75@example.com'),
(126, 26, 80006, 'Szolnok', 'Jókai utca', 26, 'contact76@example.com'),
(127, 27, 80007, 'Szolnok', 'Béke utca', 27, 'contact77@example.com'),
(128, 28, 80008, 'Szolnok', 'Bartók Béla út', 28, 'contact78@example.com'),
(129, 29, 80009, 'Szolnok', 'Radnóti Miklós utca', 29, 'contact79@example.com'),
(130, 30, 80010, 'Szolnok', 'Ady Endre utca', 30, 'contact80@example.com'),
(131, 31, 90001, 'Zalaegerszeg', 'Széchenyi tér', 31, 'contact81@example.com'),
(132, 32, 90002, 'Zalaegerszeg', 'Kossuth Lajos utca', 32, 'contact82@example.com'),
(133, 33, 90003, 'Zalaegerszeg', 'Petőfi Sándor utca', 33, 'contact83@example.com'),
(134, 34, 90004, 'Zalaegerszeg', 'Arany János utca', 34, 'contact84@example.com'),
(135, 35, 90005, 'Zalaegerszeg', 'Jókai utca', 35, 'contact85@example.com'),
(136, 36, 90006, 'Zalaegerszeg', 'Rákóczi út', 36, 'contact86@example.com'),
(137, 37, 90007, 'Zalaegerszeg', 'Béke utca', 37, 'contact87@example.com'),
(138, 38, 90008, 'Zalaegerszeg', 'Bartók Béla út', 38, 'contact88@example.com'),
(139, 39, 90009, 'Zalaegerszeg', 'Radnóti Miklós utca', 39, 'contact89@example.com'),
(140, 40, 90010, 'Zalaegerszeg', 'Ady Endre utca', 40, 'contact90@example.com'),
(141, 41, 100001, 'Szombathely', 'Kossuth Lajos utca', 41, 'contact91@example.com'),
(142, 42, 100002, 'Szombathely', 'Rákóczi út', 42, 'contact92@example.com'),
(143, 43, 100003, 'Szombathely', 'Petőfi Sándor utca', 43, 'contact93@example.com'),
(144, 44, 100004, 'Szombathely', 'Arany János utca', 44, 'contact94@example.com'),
(145, 45, 100005, 'Szombathely', 'Jókai utca', 45, 'contact95@example.com'),
(146, 46, 100006, 'Szombathely', 'Béke utca', 46, 'contact96@example.com'),
(147, 47, 100007, 'Szombathely', 'Bartók Béla út', 47, 'contact97@example.com'),
(148, 48, 100008, 'Szombathely', 'Radnóti Miklós utca', 48, 'contact98@example.com'),
(149, 49, 100009, 'Szombathely', 'Ady Endre utca', 49, 'contact99@example.com'),
(150, 50, 100010, 'Szombathely', 'Széchenyi tér', 50, 'contact100@example.com');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allasajanlatok`
--
ALTER TABLE `allasajanlatok`
  ADD PRIMARY KEY (`allasajanlat_id`),
  ADD KEY `ki_rogzitette` (`ki_rogzitette`),
  ADD KEY `telephely_id` (`telephely_id`);

--
-- A tábla indexei `cegek`
--
ALTER TABLE `cegek`
  ADD PRIMARY KEY (`ceg_id`);

--
-- A tábla indexei `elvart_kepessegek`
--
ALTER TABLE `elvart_kepessegek`
  ADD PRIMARY KEY (`allasajanlat_id`,`kepesseg_id`),
  ADD KEY `kepesseg_id` (`kepesseg_id`);

--
-- A tábla indexei `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`felhasznalo_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `kepessegek`
--
ALTER TABLE `kepessegek`
  ADD PRIMARY KEY (`kepesseg_id`);

--
-- A tábla indexei `kepzesek`
--
ALTER TABLE `kepzesek`
  ADD PRIMARY KEY (`kepzes_id`);

--
-- A tábla indexei `resztvevok`
--
ALTER TABLE `resztvevok`
  ADD PRIMARY KEY (`kepzes_id`,`felhasznalo_id`),
  ADD KEY `felhasznalo_id` (`felhasznalo_id`);

--
-- A tábla indexei `telephelyek`
--
ALTER TABLE `telephelyek`
  ADD PRIMARY KEY (`telephely_id`),
  ADD KEY `ceg_id` (`ceg_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allasajanlatok`
--
ALTER TABLE `allasajanlatok`
  MODIFY `allasajanlat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT a táblához `cegek`
--
ALTER TABLE `cegek`
  MODIFY `ceg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `felhasznalo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT a táblához `kepessegek`
--
ALTER TABLE `kepessegek`
  MODIFY `kepesseg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT a táblához `kepzesek`
--
ALTER TABLE `kepzesek`
  MODIFY `kepzes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT a táblához `telephelyek`
--
ALTER TABLE `telephelyek`
  MODIFY `telephely_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `allasajanlatok`
--
ALTER TABLE `allasajanlatok`
  ADD CONSTRAINT `allasajanlatok_ibfk_1` FOREIGN KEY (`ki_rogzitette`) REFERENCES `felhasznalok` (`felhasznalo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allasajanlatok_ibfk_2` FOREIGN KEY (`telephely_id`) REFERENCES `telephelyek` (`telephely_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `elvart_kepessegek`
--
ALTER TABLE `elvart_kepessegek`
  ADD CONSTRAINT `elvart_kepessegek_ibfk_1` FOREIGN KEY (`allasajanlat_id`) REFERENCES `allasajanlatok` (`allasajanlat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `elvart_kepessegek_ibfk_2` FOREIGN KEY (`kepesseg_id`) REFERENCES `kepessegek` (`kepesseg_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `resztvevok`
--
ALTER TABLE `resztvevok`
  ADD CONSTRAINT `resztvevok_ibfk_1` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`felhasznalo_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resztvevok_ibfk_2` FOREIGN KEY (`kepzes_id`) REFERENCES `kepzesek` (`kepzes_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `telephelyek`
--
ALTER TABLE `telephelyek`
  ADD CONSTRAINT `telephelyek_ibfk_1` FOREIGN KEY (`ceg_id`) REFERENCES `cegek` (`ceg_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
