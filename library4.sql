-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2022 at 08:56 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library4`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Katelin Schmitt'),
(2, 'Edin Mujčić'),
(3, 'Ms. Lauriane Krajcik III'),
(4, 'Ottilie Buckridge'),
(5, 'Ms. Alvena Okuneva II'),
(6, 'Nash Runolfsdottir'),
(7, 'Dudley Spinka'),
(8, 'Kenyatta Pfannerstill'),
(9, 'Deshaun Veum'),
(10, 'Kiel Kuhlman'),
(11, 'Isac Bernhard'),
(12, 'Natalie Kautzer'),
(13, 'Napoleon Volkman'),
(14, 'Gisselle Grady'),
(15, 'Prof. Kathryn Raynor'),
(16, 'Alexa Wolff'),
(17, 'Raphael Denesik'),
(18, 'Ms. Ettie Raynor'),
(19, 'Preston Green'),
(20, 'Cassidy Harvey'),
(21, 'Ubaldo Bergstrom'),
(22, 'Julia Raynor'),
(23, 'Prof. Rickie Lang'),
(24, 'Mrs. Camila Bruen'),
(25, 'Bailey Quigley'),
(26, 'Dr. Everett Herzog'),
(27, 'Eleanora Spencer'),
(28, 'Toney Heidenreich'),
(29, 'Kelley Rogahn'),
(30, 'Dr. Roy Auer'),
(31, 'Annette Connelly'),
(32, 'Maxwell Feil'),
(33, 'Jacynthe Rippin'),
(34, 'Ms. Myrna Hodkiewicz V'),
(35, 'Alek Corwin'),
(36, 'Sally Grant Sr.'),
(37, 'Alisa Kris'),
(38, 'Henry O\'Hara'),
(39, 'Santina Dietrich'),
(40, 'Kameron Fay MD'),
(41, 'Saul Keeling'),
(42, 'Seth McClure MD'),
(43, 'Prof. Enrico Lynch Jr.'),
(44, 'Norwood Weissnat'),
(45, 'Liam Ankunding'),
(46, 'Mr. Keshawn Hills PhD'),
(47, 'Samantha Wiza MD'),
(48, 'Karine Tromp'),
(49, 'Janelle Connelly'),
(50, 'Damon Kovacek'),
(51, 'Lucinda Tillman V'),
(52, 'Jessie Kemmer'),
(53, 'Itzel Wolf DDS'),
(54, 'Prof. Cole Haag DDS'),
(55, 'Eva Lubowitz'),
(56, 'Dan Hoeger'),
(57, 'Geovany Kautzer'),
(58, 'Crystal Bradtke'),
(59, 'Dr. Gardner Runte DVM'),
(60, 'Arden Herzog'),
(61, 'Matilde Kris'),
(62, 'Federico Nicolas III'),
(63, 'Samson Crona'),
(64, 'Miss Alia Reichert'),
(65, 'Ms. River Baumbach'),
(66, 'Katarina Champlin'),
(67, 'Ms. Lottie Watsica'),
(68, 'Ms. Verla Marquardt'),
(69, 'Carley Hintz'),
(70, 'Prof. Elyse Cruickshank'),
(71, 'Dr. Kody Harris'),
(72, 'Anahi Little'),
(73, 'Eladio Morissette IV'),
(74, 'Annabel Wisozk'),
(75, 'Tabitha Howell'),
(76, 'Hannah Douglas'),
(77, 'Shaun Hills'),
(78, 'Dolores Parker'),
(79, 'Mr. Nathen Wehner III'),
(80, 'Dr. Burnice Koss'),
(81, 'Esteban Gusikowski I'),
(82, 'Miss Edyth Kuhic'),
(83, 'Prof. Lee Larson II'),
(84, 'Narciso Fritsch'),
(85, 'Prof. Henriette Treutel DDS'),
(86, 'Shany Turner'),
(87, 'Angeline Ortiz'),
(88, 'Camren Kunde'),
(89, 'David Wisoky MD'),
(90, 'Miss Brigitte Grimes'),
(91, 'Tod Abernathy PhD'),
(92, 'Jayda Turcotte'),
(93, 'Prof. Letitia Beier'),
(94, 'Modesta Schamberger PhD'),
(95, 'Parker Jast'),
(96, 'Miss Tia McClure'),
(97, 'Mrs. Kaylee Ledner DDS'),
(98, 'Prof. Icie Harvey'),
(99, 'Ms. Margie Cruickshank PhD'),
(100, 'Prof. Angelita Carroll');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagecount` int(11) NOT NULL,
  `typeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `pagecount`, `typeId`) VALUES
(3, 'Deleniti illo sint.', 231, 4),
(4, 'Dolores saepe nostrum ut.', 796, 8),
(5, 'Possimus facere deleniti.', 190, 10),
(6, 'Laborum ea nihil quidem.', 295, 10),
(7, 'Ut optio hic illum.', 737, 4),
(8, 'Tempora repellat ea similique aspernatur.', 482, 10),
(9, 'Voluptatem quia mollitia.', 511, 10),
(10, 'Omnis vero.', 803, 3),
(11, 'Sed et delectus.', 141, 5),
(12, 'Rem laboriosam id provident.', 758, 8),
(13, 'Dolorem voluptatem vitae illum.', 280, 5),
(14, 'Veniam sed sed nisi consequatur.', 283, 2),
(15, 'Quasi exercitationem id.', 535, 10),
(16, 'Voluptas exercitationem.', 891, 9),
(17, 'Saepe in maiores tempore.', 396, 10),
(18, 'Quae eveniet id.', 738, 6),
(19, 'Facilis dolore vel.', 245, 1),
(20, 'Sequi blanditiis sunt fugiat cupiditate.', 237, 10),
(21, 'A repellendus.', 548, 8),
(22, 'Tempore repellat sequi ut voluptas.', 623, 7),
(23, 'Et reiciendis minima debitis.', 206, 2),
(24, 'Sed consequuntur ab et.', 819, 10),
(25, 'Quia qui veniam exercitationem.', 245, 10),
(26, 'Incidunt incidunt eum inventore.', 803, 3),
(27, 'Aspernatur est non.', 537, 7),
(28, 'Sunt distinctio nihil illum.', 381, 6),
(29, 'Sit voluptas corrupti magni et.', 663, 8),
(30, 'Quibusdam maxime fuga nobis.', 682, 8),
(31, 'Molestias rerum iusto.', 236, 9),
(32, 'Libero laudantium sit.', 450, 6),
(33, 'Molestiae porro sunt cumque.', 452, 5),
(34, 'Odit veniam ut voluptas harum.', 109, 3),
(35, 'Non aspernatur qui.', 440, 8),
(36, 'Sapiente corporis omnis qui.', 159, 1),
(37, 'Ipsam suscipit voluptatum minima molestiae.', 303, 9),
(38, 'Nisi culpa qui.', 336, 8),
(39, 'Sit eaque ab.', 605, 7),
(40, 'Consequatur id pariatur unde.', 352, 10),
(41, 'Consectetur dolor.', 510, 8),
(42, 'Nostrum velit qui.', 865, 8),
(43, 'Tempore excepturi quis est.', 809, 3),
(44, 'Est dolor accusamus.', 450, 1),
(45, 'Placeat rerum quos.', 196, 5),
(46, 'Et ut dolores.', 125, 1),
(47, 'Quam impedit dolore.', 354, 5),
(48, 'Ut ipsa rerum fugiat.', 493, 1),
(49, 'Quia ab quia.', 820, 1),
(50, 'Adipisci eum sit officiis.', 278, 2),
(51, 'Quaerat fugit facilis.', 504, 8),
(52, 'Illo ab perferendis.', 803, 10),
(53, 'Nobis vel.', 424, 7),
(54, 'At et harum.', 427, 3),
(55, 'Amet autem.', 343, 5),
(56, 'Numquam aspernatur fugiat.', 461, 6),
(57, 'Sit aspernatur aperiam.', 794, 7),
(58, 'Consequuntur distinctio dolor.', 258, 1),
(59, 'Quis illum quos.', 678, 1),
(60, 'Atque corrupti.', 316, 5),
(61, 'Numquam saepe eius.', 268, 7),
(62, 'Iure beatae.', 348, 5),
(63, 'Temporibus explicabo.', 524, 6),
(64, 'Qui eveniet qui.', 293, 10),
(65, 'Deserunt inventore nostrum.', 769, 5),
(66, 'Sint sunt praesentium.', 288, 3),
(67, 'Et ratione ad.', 329, 3),
(68, 'Cupiditate numquam.', 333, 3),
(69, 'Qui ut.', 665, 7),
(70, 'Perferendis quo sed.', 388, 3),
(71, 'Reiciendis nulla dolorem.', 731, 4),
(72, 'Quo placeat consequuntur.', 384, 6),
(73, 'Non magnam.', 717, 3),
(74, 'Est soluta ut.', 790, 2),
(75, 'Sint illo possimus.', 379, 5),
(76, 'Quidem et hic.', 493, 2),
(77, 'Voluptatem voluptate et.', 240, 8),
(78, 'Et autem autem.', 647, 4),
(79, 'Sed suscipit.', 842, 5),
(80, 'Quae enim sunt.', 734, 5),
(81, 'Aut aspernatur.', 702, 8),
(82, 'Voluptatibus quia.', 398, 4),
(83, 'Quaerat nesciunt.', 859, 7),
(84, 'Autem laudantium.', 695, 9),
(85, 'Voluptatem distinctio.', 706, 9),
(86, 'Doloremque et.', 650, 4),
(87, 'Modi dolor deleniti.', 494, 9),
(88, 'Enim sed.', 888, 6),
(89, 'Culpa consectetur voluptatem.', 858, 3),
(90, 'Qui provident.', 727, 10),
(91, 'Et omnis magnam.', 655, 2),
(92, 'Sunt est.', 401, 7),
(93, 'Molestiae natus.', 794, 6),
(94, 'Inventore eos veritatis.', 331, 4),
(95, 'Numquam deserunt consequuntur.', 578, 3),
(96, 'Porro optio.', 684, 5),
(97, 'Provident minima.', 162, 6),
(98, 'Voluptatem officia qui.', 648, 10),
(99, 'Quia repellat sapiente.', 101, 4),
(100, 'Qui ea id.', 815, 9),
(101, 'Enim fuga minima.', 568, 4),
(102, 'Aperiam incidunt.', 117, 1),
(103, 'Nihil aspernatur.', 753, 4),
(104, 'Non quos quaerat.', 716, 4),
(105, 'Nostrum modi perferendis.', 864, 10),
(106, 'Iste distinctio.', 852, 1),
(107, 'Voluptas consequatur.', 443, 5),
(108, 'Eos fugit nam.', 772, 3),
(109, 'Nihil aut.', 120, 9),
(110, 'Nemo officia quae.', 252, 9),
(111, 'Vel natus.', 675, 9),
(112, 'Culpa sapiente quaerat.', 764, 10),
(113, 'Voluptatem ut vel.', 351, 3),
(114, 'Ad provident deleniti.', 666, 8),
(115, 'Fugit aliquam repellendus.', 520, 2),
(116, 'Quis rerum.', 871, 10),
(117, 'Porro et.', 439, 7),
(118, 'Quasi dolores.', 126, 4),
(119, 'Aperiam earum magnam.', 346, 3),
(120, 'Corporis reprehenderit.', 247, 7),
(121, 'Eum omnis beatae.', 848, 7),
(122, 'Aut tempora ex.', 649, 3),
(123, 'Neque dicta.', 521, 1),
(124, 'Inventore aut quam.', 513, 5),
(125, 'Amet veniam aut.', 774, 8),
(126, 'Magni quis nihil.', 653, 10),
(127, 'Cupiditate explicabo nobis.', 569, 3),
(128, 'Mollitia possimus.', 410, 7),
(129, 'Nam quis.', 156, 3),
(130, 'Doloribus molestiae odio.', 362, 1),
(131, 'Eius alias est.', 755, 10),
(132, 'Doloribus non.', 849, 7),
(133, 'Laboriosam quia veritatis.', 635, 10),
(134, 'Est ab.', 796, 1),
(135, 'Ducimus et.', 551, 1),
(136, 'Et iusto voluptatum.', 474, 2),
(137, 'Est dolor.', 749, 7),
(138, 'Optio cumque.', 300, 1),
(139, 'Labore cum consequatur.', 399, 3),
(140, 'Dolor et.', 163, 3),
(141, 'Reprehenderit et.', 719, 6),
(142, 'Quisquam consequatur.', 548, 5),
(143, 'Tempore nihil libero.', 488, 9),
(144, 'Ut minus.', 604, 5),
(145, 'Sunt aliquid dolorum.', 171, 1),
(146, 'Fuga voluptas.', 808, 6),
(147, 'Delectus illum qui.', 453, 10),
(148, 'Soluta saepe vitae.', 510, 9),
(149, 'Et expedita.', 342, 1),
(150, 'Molestias nostrum.', 844, 8),
(151, 'Quis est.', 215, 3),
(152, 'Non aspernatur.', 473, 6),
(153, 'Doloremque et nihil.', 509, 8),
(154, 'Minima sunt consequuntur.', 866, 9),
(155, 'Ad ratione vero.', 236, 7),
(156, 'Iusto non illum.', 299, 7),
(157, 'Qui asperiores ea.', 614, 7),
(158, 'Veniam non.', 112, 9),
(159, 'Soluta ipsa repellendus.', 503, 9),
(160, 'Repudiandae et temporibus.', 813, 9),
(161, 'Eum eum.', 450, 3),
(162, 'Dolorem tempora.', 506, 2),
(163, 'Esse ratione.', 544, 1),
(164, 'Perferendis accusantium eius.', 563, 8),
(165, 'Natus quia suscipit.', 727, 1),
(166, 'Eum et.', 679, 5),
(167, 'Aut et eum.', 734, 2),
(168, 'Iste explicabo.', 113, 1),
(169, 'Sint minima.', 426, 10),
(170, 'Quidem aut.', 216, 4),
(171, 'Sed eum.', 617, 3),
(172, 'Inventore non.', 516, 8),
(173, 'Non exercitationem non.', 540, 9),
(174, 'Sint totam voluptates.', 667, 5),
(175, 'Laborum ea nam.', 737, 10),
(176, 'Ea voluptatem.', 102, 7),
(177, 'Minima libero.', 130, 4),
(178, 'Molestiae aut enim.', 534, 2),
(179, 'Ipsa eum.', 815, 8),
(180, 'In modi.', 158, 4),
(181, 'Est quod.', 828, 3),
(182, 'Et voluptatem.', 125, 10),
(183, 'Sequi sed qui.', 626, 6),
(184, 'Nostrum fugit tenetur.', 585, 5),
(185, 'Dolorem aliquid.', 605, 9),
(186, 'Odit maxime dignissimos.', 738, 7),
(187, 'Ducimus et voluptatum.', 290, 4),
(188, 'Et voluptas.', 290, 9),
(189, 'Aut perferendis autem.', 833, 8),
(190, 'Et quasi.', 458, 6),
(191, 'Nobis aliquam.', 138, 9),
(192, 'Adipisci ipsum.', 133, 3),
(193, 'Ut enim iste.', 128, 1),
(194, 'Eos placeat sed.', 466, 1),
(195, 'Aliquid illo sunt.', 528, 10),
(196, 'Id aut.', 283, 10),
(197, 'Ducimus tenetur.', 770, 6),
(198, 'Maiores ex.', 118, 10),
(199, 'Nostrum eligendi vel.', 788, 6),
(200, 'Corrupti in officiis.', 599, 9),
(201, 'Exercitationem magnam.', 858, 2),
(202, 'Commodi quidem.', 548, 3),
(203, 'In optio aut.', 111, 5),
(204, 'Ut pariatur.', 358, 6),
(205, 'Voluptas voluptatum.', 827, 8),
(206, 'Necessitatibus et.', 213, 8),
(207, 'Reprehenderit sed et.', 568, 9),
(208, 'Earum placeat et.', 136, 3),
(209, 'Reprehenderit nemo.', 418, 10),
(210, 'Aut numquam.', 296, 9),
(211, 'Et voluptas.', 664, 10),
(212, 'Aut similique quisquam.', 576, 7),
(213, 'Asperiores minus.', 355, 3),
(214, 'Qui et.', 788, 3),
(215, 'Commodi et voluptatibus.', 232, 7),
(216, 'Unde corrupti.', 279, 8),
(217, 'Odit hic.', 693, 6),
(218, 'Natus aut repellat.', 758, 1),
(219, 'Facere dolor.', 742, 6),
(220, 'Tempora facilis optio.', 525, 1),
(221, 'Expedita ex.', 727, 4),
(222, 'Facere fugiat.', 750, 6),
(223, 'Repellendus similique.', 378, 7),
(224, 'Eligendi sunt.', 264, 10),
(225, 'Itaque quas.', 544, 7),
(226, 'Cum velit.', 240, 4),
(227, 'Id voluptatibus.', 629, 2),
(228, 'Non consequatur.', 289, 7),
(229, 'Est facilis recusandae.', 433, 9),
(230, 'Ea nesciunt.', 625, 10),
(231, 'Quibusdam et.', 334, 4),
(232, 'Sunt ut.', 673, 10),
(233, 'Est est.', 832, 1),
(234, 'Veniam voluptas.', 683, 10),
(235, 'Rem aut exercitationem.', 544, 7),
(236, 'Suscipit et corrupti.', 125, 10),
(237, 'Quia ut laudantium.', 548, 2),
(238, 'Consequatur sunt voluptatem.', 871, 6),
(239, 'Omnis dolorem soluta.', 755, 10),
(240, 'Sunt optio.', 134, 8),
(241, 'Perferendis est odio.', 363, 1),
(242, 'Illo quia.', 789, 9),
(243, 'Ut reiciendis fugiat.', 224, 4),
(244, 'Autem voluptas.', 131, 7),
(245, 'Hic ad id.', 348, 1),
(246, 'Quaerat vitae.', 539, 7),
(247, 'Aut et natus.', 899, 1),
(248, 'Eveniet est explicabo.', 209, 8),
(249, 'Voluptas corrupti.', 743, 5),
(250, 'Sunt labore nam.', 879, 4),
(251, 'Similique voluptatem.', 371, 5),
(252, 'Accusamus ipsum voluptas.', 345, 2),
(253, 'Quisquam sed.', 640, 4),
(254, 'Asperiores consequatur.', 185, 4),
(255, 'Sint et.', 468, 9),
(256, 'Numquam velit est.', 698, 9),
(257, 'Non cupiditate.', 393, 9),
(258, 'Blanditiis earum qui.', 455, 4),
(259, 'Repellat earum.', 145, 5),
(260, 'Sequi quo est.', 200, 1),
(261, 'Ad dolor laborum.', 470, 4),
(262, 'Hic est id.', 878, 3),
(263, 'Nesciunt optio voluptatibus.', 883, 9),
(264, 'Sapiente esse laudantium.', 539, 4),
(265, 'Similique consequatur ex.', 702, 4),
(266, 'Laudantium repudiandae nihil.', 586, 8),
(267, 'Aut est quia.', 803, 5),
(268, 'Nihil autem quas.', 513, 6),
(269, 'Exercitationem esse officiis.', 815, 1),
(270, 'Recusandae voluptates.', 265, 4),
(271, 'Minima rerum.', 155, 5),
(272, 'Quis occaecati et.', 119, 9),
(273, 'Ipsa consequatur rerum.', 743, 4),
(274, 'Modi rem.', 190, 6),
(275, 'Ab aperiam quis.', 777, 6),
(276, 'Omnis tenetur.', 663, 1),
(277, 'Expedita magnam sit.', 437, 5),
(278, 'Nobis id.', 274, 3),
(279, 'Earum eos.', 652, 1),
(280, 'Aliquam optio.', 527, 2),
(281, 'Est porro impedit.', 508, 7),
(282, 'Repellat impedit.', 628, 2),
(283, 'Eligendi culpa.', 618, 9),
(284, 'Voluptatem minima aperiam.', 551, 2),
(285, 'Soluta commodi.', 125, 9),
(286, 'In debitis voluptatem.', 778, 7),
(287, 'Ex aliquid.', 546, 6),
(288, 'Sunt aspernatur.', 184, 3),
(289, 'Quibusdam vero.', 215, 6),
(290, 'Consequatur iusto.', 441, 8),
(291, 'Sit facilis enim.', 255, 2),
(292, 'Doloremque dignissimos earum.', 145, 3),
(293, 'Aut omnis vero.', 499, 3),
(294, 'Et tempore alias.', 876, 10),
(295, 'Perferendis praesentium.', 378, 1),
(296, 'Dolore unde id.', 372, 9),
(297, 'Cum et.', 192, 6),
(298, 'Sequi dolorum aliquam.', 467, 9),
(299, 'Non voluptatem ullam.', 471, 7),
(300, 'Commodi quae ipsa.', 564, 6),
(301, 'Officia dolorem cum.', 790, 4),
(302, 'Pariatur repellat voluptas.', 263, 10),
(303, 'Distinctio qui.', 129, 5),
(304, 'Dolore et qui.', 117, 9),
(305, 'Voluptatibus similique.', 893, 10),
(306, 'Saepe qui quis.', 623, 1),
(307, 'Odio aut soluta.', 453, 9),
(308, 'Et ut.', 440, 6),
(309, 'Non labore.', 201, 5),
(310, 'Et modi harum.', 383, 3),
(311, 'Eaque voluptatem.', 633, 4),
(312, 'Nihil consequuntur.', 503, 4),
(313, 'Quo repellat.', 105, 6),
(314, 'In deleniti.', 309, 8),
(315, 'Velit aut velit.', 299, 10),
(316, 'Culpa impedit ratione.', 575, 1),
(317, 'Natus nemo.', 322, 5),
(318, 'Delectus distinctio.', 682, 7),
(319, 'Dolores quam.', 350, 1),
(320, 'Minima ut.', 509, 10),
(321, 'Optio molestiae eos.', 439, 8),
(322, 'Molestias qui ipsam.', 664, 1),
(323, 'Aut quo.', 783, 6),
(324, 'Quibusdam id.', 794, 4),
(325, 'Modi dignissimos.', 672, 10),
(326, 'Cumque laboriosam.', 532, 9),
(327, 'Voluptate sunt.', 626, 8),
(328, 'Hic est.', 355, 6),
(329, 'Et modi doloribus.', 728, 10),
(330, 'Voluptates quia voluptatum.', 804, 10),
(331, 'Sit neque.', 517, 7),
(332, 'Delectus ratione.', 698, 7),
(333, 'Mollitia nulla in.', 222, 5),
(334, 'Hic voluptatem magni.', 512, 2),
(335, 'Possimus sed nisi.', 872, 4),
(336, 'Est vero voluptates.', 611, 9),
(337, 'Alias qui.', 309, 9),
(338, 'Itaque aut.', 516, 9),
(339, 'Et adipisci vero.', 459, 4),
(340, 'Itaque corrupti recusandae.', 730, 4),
(341, 'Cupiditate unde nemo.', 752, 5),
(342, 'Laborum non.', 164, 7),
(343, 'At rerum at.', 468, 6),
(344, 'Dolores quibusdam.', 889, 9),
(345, 'Expedita fuga ea.', 264, 3),
(346, 'Itaque suscipit odio.', 652, 6),
(347, 'Illo officia non.', 629, 7),
(348, 'Excepturi nemo vero.', 489, 10),
(349, 'Eligendi maxime delectus.', 751, 3),
(350, 'Explicabo ipsum eius.', 669, 10),
(351, 'Voluptatem velit.', 808, 9),
(352, 'Perspiciatis non quidem.', 888, 9),
(353, 'Reiciendis ut.', 330, 5),
(354, 'Quam repellat aliquid.', 456, 2),
(355, 'Aliquid in.', 353, 2),
(356, 'Dolor iure.', 467, 8),
(357, 'Doloribus beatae saepe.', 646, 3),
(358, 'Deleniti soluta delectus.', 898, 10),
(359, 'Ad aut vitae.', 767, 10),
(360, 'Voluptatem sunt deserunt.', 846, 6),
(361, 'Ad ea quod.', 741, 1),
(362, 'Et temporibus qui.', 381, 7),
(363, 'Enim similique velit.', 542, 4),
(364, 'Voluptatem est inventore.', 744, 3),
(365, 'Sint ipsam est.', 310, 7),
(366, 'Temporibus laboriosam et.', 224, 2),
(367, 'Unde accusamus ducimus.', 234, 9),
(368, 'Rerum ut.', 556, 2),
(369, 'Repellendus impedit.', 566, 9),
(370, 'Rerum praesentium.', 550, 6),
(371, 'Nulla dignissimos.', 622, 8),
(372, 'Placeat non.', 797, 8),
(373, 'Magnam debitis.', 642, 8),
(374, 'Doloribus quaerat.', 543, 4),
(375, 'Esse qui.', 415, 9),
(376, 'Placeat eligendi assumenda.', 532, 9),
(377, 'In voluptas.', 651, 1),
(378, 'Aliquid sit aut.', 619, 5),
(379, 'Tempore expedita nihil.', 357, 1),
(380, 'Et accusamus optio.', 356, 3),
(381, 'Beatae id.', 616, 2),
(382, 'Consequatur temporibus aperiam.', 240, 6),
(383, 'Eum soluta.', 407, 9),
(384, 'Voluptatem excepturi.', 784, 7),
(385, 'Consequuntur ut iure.', 807, 4),
(386, 'Ut ad qui.', 584, 10),
(387, 'Provident distinctio hic.', 488, 10),
(388, 'Quisquam eum.', 404, 6),
(389, 'Illo optio excepturi.', 760, 6),
(390, 'Hic nam.', 538, 1),
(391, 'Quo at voluptas.', 816, 5),
(392, 'Earum est.', 522, 4),
(393, 'Qui voluptatem voluptas.', 634, 9),
(394, 'Totam adipisci.', 736, 7),
(395, 'Et qui architecto.', 816, 2),
(396, 'Non ut.', 296, 8),
(397, 'Qui et.', 850, 3),
(398, 'Qui provident.', 713, 2),
(399, 'Fugit impedit ut.', 668, 9),
(400, 'Quasi animi vitae.', 600, 5),
(401, 'Et optio.', 705, 5),
(402, 'Totam aliquam ipsum.', 845, 2),
(403, 'Eum quis.', 321, 4),
(404, 'Odit eum.', 749, 9),
(405, 'Sed voluptas.', 379, 4),
(406, 'Voluptas voluptatibus sit.', 678, 3),
(407, 'Voluptatem deleniti odio.', 747, 2),
(408, 'Odio minus.', 588, 6),
(409, 'Iusto qui incidunt.', 863, 4),
(410, 'Est aspernatur corporis.', 808, 4),
(411, 'Sit voluptas.', 463, 5),
(412, 'Sint qui qui.', 289, 8),
(413, 'Aut earum quia.', 344, 8),
(414, 'Est aspernatur.', 710, 2),
(415, 'Pariatur dolores reprehenderit.', 806, 7),
(416, 'Cumque voluptatem.', 690, 5),
(417, 'Qui vel.', 518, 6),
(418, 'Mollitia quo officiis.', 170, 6),
(419, 'Optio ab aut.', 136, 9),
(420, 'Cum repellat assumenda.', 371, 8),
(421, 'Ut dolores.', 248, 6),
(422, 'Ut cumque.', 719, 5),
(423, 'Aspernatur eveniet.', 310, 10),
(424, 'Ab tempora.', 438, 2),
(425, 'Aperiam nihil.', 856, 1),
(426, 'Deleniti explicabo rem.', 712, 3),
(427, 'Sit atque.', 791, 9),
(428, 'Et facere quibusdam.', 319, 8),
(429, 'Enim recusandae iste.', 442, 2),
(430, 'Et occaecati.', 816, 9),
(431, 'Ut voluptate.', 192, 1),
(432, 'Veniam reprehenderit magnam.', 823, 3),
(433, 'Est vel.', 876, 1),
(434, 'Ea provident.', 754, 1),
(435, 'Ut dicta modi.', 161, 1),
(436, 'Quibusdam quia.', 761, 2),
(437, 'Dolores neque ipsa.', 626, 7),
(438, 'Voluptas repudiandae.', 504, 7),
(439, 'Delectus fugiat nostrum.', 466, 3),
(440, 'Facere doloremque.', 897, 2),
(441, 'Voluptatem aut.', 655, 1),
(442, 'Omnis reprehenderit omnis.', 398, 10),
(443, 'Facere quia.', 473, 8),
(444, 'Eaque quas.', 519, 6),
(445, 'Aut voluptatum sed.', 344, 9),
(446, 'Sunt voluptate eius.', 456, 10),
(447, 'Quis tempore.', 757, 10),
(448, 'Aut saepe itaque.', 315, 2),
(449, 'Et id sunt.', 688, 6),
(450, 'Illum rerum.', 510, 10),
(451, 'Reprehenderit molestiae.', 547, 10),
(452, 'Reiciendis earum.', 370, 7),
(453, 'Similique dolorem.', 842, 3),
(454, 'Laboriosam praesentium ipsam.', 120, 1),
(455, 'Possimus sed doloremque.', 666, 3),
(456, 'Sequi quo.', 573, 8),
(457, 'Non perferendis.', 349, 9),
(458, 'Est quia.', 724, 2),
(459, 'Ex non.', 782, 2),
(460, 'Maiores earum.', 515, 1),
(461, 'Alias consequatur amet.', 214, 1),
(462, 'Possimus fugiat.', 805, 5),
(463, 'Vitae accusantium.', 707, 1),
(464, 'Perspiciatis officiis recusandae.', 810, 9),
(465, 'Deleniti vel ratione.', 687, 9),
(466, 'Sint veniam.', 460, 3),
(467, 'Libero dolores labore.', 826, 10),
(468, 'Omnis rerum.', 891, 3),
(469, 'Repellendus illum.', 765, 9),
(470, 'Sint modi.', 802, 10),
(471, 'Soluta incidunt.', 100, 2),
(472, 'Quasi laboriosam.', 711, 5),
(473, 'Non voluptatem.', 189, 1),
(474, 'Voluptatem quod.', 761, 6),
(475, 'Exercitationem impedit.', 240, 10),
(476, 'Nihil eligendi.', 628, 1),
(477, 'Repellendus rerum.', 234, 9),
(478, 'Repudiandae est.', 171, 1),
(479, 'Excepturi eos.', 492, 7),
(480, 'Sapiente sint numquam.', 488, 9),
(481, 'Et amet cumque.', 318, 2),
(482, 'Ut neque velit.', 457, 2),
(483, 'Fuga qui explicabo.', 859, 6),
(484, 'Quos sed ducimus.', 597, 3),
(485, 'Tenetur et.', 379, 8),
(486, 'Et eius.', 499, 6),
(487, 'Ut quos deserunt.', 129, 8),
(488, 'Molestiae quia.', 450, 10),
(489, 'Quis ut itaque.', 593, 7),
(490, 'Sequi voluptas.', 675, 10),
(491, 'Saepe dolorem quis.', 413, 3),
(492, 'Enim et totam.', 878, 2),
(493, 'Corporis vero dolorum.', 554, 5),
(494, 'Sed quaerat sint.', 271, 1),
(495, 'Veritatis consequuntur sit.', 203, 4),
(496, 'Ut enim.', 119, 10),
(497, 'Eos ducimus.', 567, 10),
(498, 'Autem magni.', 725, 1),
(499, 'Amet sed.', 516, 2),
(500, 'Quibusdam voluptates nisi.', 386, 4);

-- --------------------------------------------------------

--
-- Table structure for table `book__authors`
--

CREATE TABLE `book__authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookId` bigint(20) UNSIGNED NOT NULL,
  `authorId` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book__authors`
--

INSERT INTO `book__authors` (`id`, `bookId`, `authorId`) VALUES
(1, 436, 50),
(2, 192, 56),
(3, 371, 78),
(4, 348, 30),
(5, 220, 47),
(6, 367, 30),
(7, 495, 41),
(8, 21, 81),
(9, 253, 2),
(10, 333, 88),
(11, 258, 73),
(12, 340, 37),
(13, 159, 2),
(14, 309, 55),
(15, 259, 29),
(16, 366, 19),
(17, 18, 39),
(18, 182, 91),
(19, 196, 1),
(20, 424, 26),
(21, 161, 90),
(22, 23, 10),
(23, 93, 56),
(24, 469, 56),
(25, 245, 79),
(26, 327, 87),
(27, 34, 43),
(28, 394, 31),
(29, 466, 58),
(30, 42, 1),
(31, 58, 87),
(32, 22, 57),
(33, 412, 52),
(34, 462, 24),
(35, 67, 6),
(36, 360, 23),
(37, 99, 11),
(38, 269, 59),
(39, 465, 24),
(40, 329, 49),
(41, 147, 62),
(42, 17, 65),
(43, 169, 21),
(44, 241, 90),
(45, 40, 64),
(46, 214, 83),
(47, 151, 48),
(48, 323, 2),
(49, 460, 26),
(50, 328, 57),
(51, 54, 51),
(52, 441, 32),
(53, 101, 97),
(54, 345, 23),
(55, 392, 76),
(56, 236, 87),
(57, 279, 10),
(58, 423, 95),
(59, 185, 68),
(60, 374, 4),
(61, 190, 100),
(62, 337, 51),
(63, 287, 72),
(64, 430, 62),
(65, 205, 84),
(66, 5, 50),
(67, 212, 78),
(68, 114, 92),
(69, 475, 16),
(70, 79, 63),
(71, 488, 52),
(72, 305, 2),
(73, 311, 47),
(74, 160, 38),
(75, 301, 16),
(76, 145, 51),
(77, 346, 62),
(78, 290, 35),
(79, 173, 46),
(80, 232, 31),
(81, 191, 41),
(82, 149, 87),
(83, 91, 1),
(84, 207, 95),
(85, 234, 65),
(86, 200, 5),
(87, 202, 14),
(88, 291, 85),
(89, 59, 42),
(90, 20, 1),
(91, 474, 4),
(92, 146, 4),
(93, 447, 27),
(94, 285, 17),
(95, 411, 54),
(96, 351, 97),
(97, 41, 2),
(98, 176, 70),
(99, 429, 100),
(100, 8, 94),
(101, 199, 65),
(102, 38, 18),
(103, 143, 34),
(104, 390, 18),
(105, 484, 39),
(106, 292, 40),
(107, 365, 29),
(108, 45, 69),
(109, 326, 35),
(110, 440, 31),
(111, 362, 70),
(112, 396, 34),
(113, 454, 36),
(114, 204, 40),
(115, 452, 16),
(116, 417, 60),
(117, 416, 29),
(118, 420, 36),
(119, 480, 43),
(120, 111, 46),
(121, 125, 6),
(122, 357, 47),
(123, 120, 12),
(124, 289, 17),
(125, 60, 18),
(126, 402, 72),
(127, 178, 86),
(128, 73, 68),
(129, 92, 14),
(130, 133, 67),
(131, 231, 60),
(132, 368, 60),
(133, 118, 21),
(134, 314, 16),
(135, 264, 27),
(136, 324, 68),
(137, 154, 79),
(138, 194, 74),
(139, 369, 41),
(140, 486, 61),
(141, 70, 46),
(142, 44, 41),
(143, 110, 30),
(144, 257, 16),
(145, 117, 85),
(146, 448, 96),
(147, 243, 56),
(148, 393, 43),
(149, 419, 60),
(150, 183, 71),
(151, 189, 100),
(152, 130, 97),
(153, 229, 6),
(154, 406, 7),
(155, 265, 94),
(156, 288, 86),
(157, 410, 65),
(158, 347, 27),
(159, 25, 68),
(160, 398, 2),
(161, 260, 33),
(162, 24, 12),
(163, 223, 24),
(164, 36, 33),
(165, 27, 10),
(166, 64, 57),
(167, 56, 78),
(168, 31, 94),
(169, 277, 64),
(170, 3, 78),
(171, 74, 91),
(172, 206, 94),
(173, 344, 41),
(174, 341, 99),
(175, 343, 24),
(176, 221, 85),
(177, 428, 40),
(178, 338, 43),
(179, 52, 48),
(180, 458, 63),
(181, 459, 37),
(182, 95, 18),
(183, 218, 73),
(184, 53, 71),
(185, 409, 43),
(186, 275, 99),
(187, 295, 15),
(188, 66, 17),
(189, 485, 5),
(190, 57, 72),
(191, 442, 53),
(192, 331, 16),
(193, 211, 43),
(194, 83, 35),
(195, 278, 70),
(196, 315, 15),
(197, 177, 74),
(198, 193, 84),
(199, 240, 84),
(200, 187, 15),
(201, 90, 28),
(202, 271, 78),
(203, 342, 61),
(204, 363, 71),
(205, 186, 90),
(206, 167, 29),
(207, 383, 98),
(208, 483, 57),
(209, 15, 24),
(210, 76, 76),
(211, 78, 65),
(212, 464, 44),
(213, 237, 41),
(214, 224, 78),
(215, 138, 93),
(216, 210, 51),
(217, 97, 39),
(218, 478, 13),
(219, 370, 33),
(220, 404, 53),
(221, 382, 8),
(222, 28, 47),
(223, 238, 21),
(224, 491, 54),
(225, 353, 42),
(226, 274, 54),
(227, 123, 16),
(228, 361, 92),
(229, 10, 84),
(230, 82, 80),
(231, 150, 19),
(232, 170, 25),
(233, 155, 49),
(234, 164, 1),
(235, 13, 22),
(236, 166, 71),
(237, 71, 43),
(238, 256, 66),
(239, 217, 89),
(240, 449, 39),
(241, 312, 74),
(242, 349, 82),
(243, 174, 94),
(244, 250, 16),
(245, 230, 11),
(246, 251, 95),
(247, 127, 85),
(248, 276, 10),
(249, 48, 72),
(250, 443, 69),
(251, 1, 45),
(252, 457, 17),
(253, 4, 27),
(254, 418, 55),
(255, 482, 29),
(256, 303, 13),
(257, 165, 27),
(258, 262, 81),
(259, 494, 87),
(260, 255, 86),
(261, 471, 49),
(262, 261, 8),
(263, 380, 48),
(264, 399, 63),
(265, 322, 19),
(266, 293, 13),
(267, 296, 64),
(268, 334, 58),
(269, 172, 70),
(270, 497, 76),
(271, 286, 96),
(272, 496, 11),
(273, 209, 71),
(274, 248, 74),
(275, 385, 82),
(276, 121, 51),
(277, 139, 49),
(278, 325, 99),
(279, 115, 41),
(280, 395, 15),
(281, 481, 15),
(282, 227, 93),
(283, 435, 72),
(284, 162, 45),
(285, 266, 17),
(286, 6, 73),
(287, 308, 21),
(288, 379, 18),
(289, 446, 13),
(290, 112, 43),
(291, 175, 65),
(292, 80, 85),
(293, 267, 49),
(294, 2, 56),
(295, 89, 9),
(296, 252, 75),
(297, 492, 36),
(298, 270, 64),
(299, 9, 55),
(300, 407, 89),
(301, 304, 87),
(302, 249, 48),
(303, 29, 13),
(304, 134, 20),
(305, 400, 74),
(306, 63, 63),
(307, 468, 62),
(308, 157, 35),
(309, 181, 57),
(310, 239, 22),
(311, 228, 29),
(312, 122, 31),
(313, 381, 16),
(314, 450, 94),
(315, 479, 41),
(316, 432, 89),
(317, 96, 99),
(318, 156, 47),
(319, 222, 85),
(320, 445, 66),
(321, 197, 72),
(322, 184, 64),
(323, 37, 39),
(324, 437, 7),
(325, 397, 95),
(326, 132, 45),
(327, 39, 77),
(328, 313, 49),
(329, 11, 9),
(330, 242, 96),
(331, 247, 100),
(332, 470, 48),
(333, 498, 80),
(334, 282, 34),
(335, 403, 43),
(336, 136, 81),
(337, 332, 4),
(338, 463, 45),
(339, 119, 100),
(340, 389, 2),
(341, 431, 50),
(342, 49, 49),
(343, 88, 6),
(344, 75, 67),
(345, 375, 75),
(346, 298, 74),
(347, 427, 69),
(348, 477, 98),
(349, 179, 7),
(350, 103, 61),
(351, 35, 43),
(352, 142, 96),
(353, 499, 40),
(354, 302, 99),
(355, 359, 60),
(356, 358, 61),
(357, 158, 36),
(358, 434, 17),
(359, 98, 99),
(360, 77, 28),
(361, 310, 24),
(362, 283, 77),
(363, 135, 7),
(364, 203, 40),
(365, 51, 2),
(366, 307, 82),
(367, 284, 55),
(368, 373, 25),
(369, 316, 21),
(370, 201, 42),
(371, 113, 73),
(372, 415, 91),
(373, 7, 12),
(374, 280, 39),
(375, 376, 89),
(376, 168, 21),
(377, 180, 62),
(378, 336, 4),
(379, 320, 87),
(380, 213, 14),
(381, 104, 28),
(382, 451, 30),
(383, 421, 40),
(384, 386, 13),
(385, 453, 11),
(386, 294, 6),
(387, 148, 94),
(388, 137, 34),
(389, 355, 10),
(390, 235, 10),
(391, 195, 93),
(392, 144, 25),
(393, 467, 78),
(394, 405, 2),
(395, 81, 58),
(396, 47, 7),
(397, 364, 3),
(398, 72, 3),
(399, 350, 4),
(400, 106, 78),
(401, 330, 53),
(402, 493, 83),
(403, 426, 9),
(404, 281, 86),
(405, 33, 95),
(406, 105, 14),
(407, 272, 73),
(408, 354, 22),
(409, 116, 68),
(410, 128, 16),
(411, 108, 72),
(412, 124, 80),
(413, 378, 45),
(414, 26, 46),
(415, 317, 72),
(416, 126, 82),
(417, 384, 3),
(418, 319, 58),
(419, 387, 88),
(420, 94, 9),
(421, 68, 52),
(422, 254, 30),
(423, 198, 85),
(424, 273, 29),
(425, 62, 95),
(426, 141, 79),
(427, 388, 50),
(428, 85, 90),
(429, 456, 60),
(430, 489, 65),
(431, 50, 60),
(432, 30, 88),
(433, 171, 99),
(434, 268, 36),
(435, 414, 62),
(436, 244, 37),
(437, 46, 59),
(438, 32, 30),
(439, 372, 20),
(440, 318, 86),
(441, 438, 91),
(442, 188, 27),
(443, 208, 64),
(444, 87, 36),
(445, 401, 29),
(446, 140, 37),
(447, 356, 13),
(448, 455, 10),
(449, 439, 26),
(450, 444, 47),
(451, 107, 35),
(452, 215, 84),
(453, 131, 33),
(454, 263, 73),
(455, 433, 61),
(456, 153, 75),
(457, 339, 27),
(458, 226, 23),
(459, 12, 30),
(460, 14, 2),
(461, 129, 84),
(462, 86, 33),
(463, 377, 5),
(464, 490, 71),
(465, 408, 69),
(466, 476, 71),
(467, 152, 38),
(468, 473, 56),
(469, 100, 73),
(470, 321, 27),
(471, 352, 51),
(472, 306, 74),
(473, 461, 100),
(474, 219, 81),
(475, 297, 86),
(476, 299, 79),
(477, 19, 95),
(478, 391, 39),
(479, 163, 82),
(480, 487, 61),
(481, 43, 76),
(482, 246, 86),
(483, 84, 28),
(484, 413, 41),
(485, 422, 70),
(486, 61, 95),
(487, 335, 73),
(488, 65, 89),
(489, 16, 15),
(490, 216, 59),
(491, 55, 60),
(492, 69, 91),
(493, 500, 100),
(494, 472, 54),
(495, 109, 16),
(496, 300, 53),
(497, 425, 55),
(498, 102, 62),
(499, 233, 8),
(500, 225, 62);

-- --------------------------------------------------------

--
-- Table structure for table `borrows`
--

CREATE TABLE `borrows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `studentId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `takenDate` date NOT NULL,
  `broughtDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `borrows`
--

INSERT INTO `borrows` (`id`, `studentId`, `bookId`, `takenDate`, `broughtDate`) VALUES
(1, 82, 14, '2022-01-06', '2022-01-23'),
(2, 31, 23, '2021-12-24', '2022-01-29'),
(3, 53, 18, '2021-12-31', '2022-01-23'),
(4, 8, 268, '2021-12-26', '2022-02-01'),
(5, 48, 178, '2022-01-04', '2022-01-29'),
(6, 51, 98, '2021-12-23', '2022-01-21'),
(7, 21, 118, '2021-12-28', '2022-01-22'),
(8, 26, 189, '2021-12-29', '2022-01-22'),
(9, 94, 24, '2022-01-03', '2022-01-20'),
(10, 46, 358, '2021-12-30', '2022-01-30'),
(11, 65, 363, '2021-12-25', '2022-01-22'),
(12, 1, 29, '2021-12-29', '2022-01-29'),
(13, 9, 339, '2022-01-02', '2022-01-26'),
(14, 28, 469, '2021-12-27', '2022-01-25'),
(15, 89, 201, '2021-12-31', '2022-02-03'),
(16, 82, 205, '2021-12-28', '2022-01-29'),
(17, 76, 149, '2021-12-27', '2022-01-28'),
(18, 19, 239, '2021-12-29', '2022-01-23'),
(19, 1, 473, '2021-12-27', '2022-01-31'),
(20, 57, 390, '2021-12-28', '2022-01-26'),
(21, 14, 38, '2022-02-03', NULL),
(22, 16, 40, '2022-02-01', NULL),
(23, 77, 446, '2022-01-31', NULL),
(24, 67, 48, '2022-02-02', NULL),
(25, 25, 206, '2022-01-21', NULL),
(26, 57, 16, '2022-02-02', NULL),
(27, 29, 74, '2022-01-29', NULL),
(28, 17, 276, '2022-01-29', NULL),
(29, 82, 206, '2022-01-24', NULL),
(30, 46, 461, '2022-01-21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Elektrotehnički odsjek'),
(2, 'Mašinski odsjek'),
(3, 'Građevinski odsjek'),
(4, 'Tekstilni odsjek'),
(5, 'Drvnoindustrijski odsjek');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_02_02_194813_create_sessions_table', 1),
(25, '2022_02_02_195534_create_books_table', 2),
(26, '2022_02_02_195633_create_authors_table', 2),
(27, '2022_02_02_195720_create_students_table', 2),
(28, '2022_02_02_195805_create_departments_table', 2),
(29, '2022_02_02_195824_create_types_table', 2),
(30, '2022_02_02_195948_create_borrows_table', 2),
(31, '2022_02_02_200024_create_book__authors_table', 2);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dH08DzcXj7FG9AQYKufHIE9LLeLmKlF8XxA9Cad0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36 Edg/97.0.1072.76', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiYk5EbzR0S1kwd0s1OElsaUpFZFU0UEdVb3JQTzdKSU9YUXRiM1Q4TyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvdXBpdGkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkeVByMUxUa3J1YnJFT1AycndYZFpBdVVjZUZzNy9xcmZQdXBKdGJKQVQ3YTMvUmdOZE5EeHUiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHlQcjFMVGtydWJyRU9QMnJ3WGRaQXVVY2VGczcvcXJmUHVwSnRiSkFUN2EzL1JnTmRORHh1Ijt9', 1643907104);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `classId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `birthdate`, `gender`, `classId`) VALUES
(1, 'Amir Hirkić', '1981-07-27', 'Male', 5),
(2, 'Miss Lurline Hill', '1972-08-24', 'Female', 4),
(3, 'Darwin Hirthe', '2000-04-02', 'Male', 5),
(4, 'Elton Terry', '1993-06-28', 'Male', 2),
(5, 'Elaina Medhurst DVM', '1999-09-21', 'Female', 1),
(6, 'Xavier Haag', '1999-07-10', 'Male', 2),
(7, 'Mr. Jeramy Wunsch III', '1999-11-18', 'Male', 1),
(8, 'Miss Kirsten Kuvalis III', '1990-06-08', 'Female', 3),
(9, 'Miss Hilma Anderson', '1978-04-15', 'Female', 4),
(10, 'Mrs. Hosea Flatley III', '1983-07-27', 'Male', 4),
(11, 'Kendra Blick', '2000-09-24', 'Male', 4),
(12, 'Lois Pfeffer Jr.', '2000-12-28', 'Male', 4),
(13, 'Valentin Hills', '1983-11-23', 'Male', 4),
(14, 'Cyrus Becker', '1972-04-23', 'Male', 5),
(15, 'Robyn Von Sr.', '1978-10-31', 'Male', 1),
(16, 'Nayeli Padberg', '1983-02-01', 'Male', 4),
(17, 'Bianka Sawayn', '1978-01-09', 'Female', 4),
(18, 'Rylee Sanford', '1975-10-03', 'Male', 4),
(19, 'Juanita Shanahan', '1999-02-20', 'Male', 5),
(20, 'Marjorie Yost IV', '2001-08-30', 'Male', 1),
(21, 'Nola Waelchi', '1987-10-09', 'Male', 2),
(22, 'Russel Nienow', '1973-07-10', 'Female', 5),
(23, 'Abraham Beatty', '1997-04-24', 'Male', 4),
(24, 'Lily Erdman', '1975-01-31', 'Male', 1),
(25, 'Clemens Corwin', '1973-05-07', 'Female', 3),
(26, 'Miss Amaya Lebsack', '1973-11-05', 'Female', 3),
(27, 'Chesley Ratke', '1986-06-30', 'Female', 3),
(28, 'Mr. Zachary Pouros', '2001-02-11', 'Female', 5),
(29, 'Althea Rolfson', '1991-01-14', 'Female', 4),
(30, 'Elenora Beahan', '1987-03-19', 'Female', 2),
(31, 'Brooklyn Murphy DVM', '1996-11-11', 'Male', 5),
(32, 'Jade Abbott', '1987-03-23', 'Female', 5),
(33, 'Jackie Lind', '1981-12-18', 'Female', 2),
(34, 'Beatrice Abernathy', '1974-08-02', 'Male', 4),
(35, 'Ransom Rippin PhD', '1983-04-18', 'Female', 2),
(36, 'Retha Frami', '1970-07-02', 'Female', 5),
(37, 'Kathryne Funk', '2000-12-25', 'Female', 4),
(38, 'Verner Mosciski', '1990-09-10', 'Female', 2),
(39, 'Alexandrine Hoeger DDS', '1987-03-03', 'Female', 4),
(40, 'Micheal Huel', '1977-05-13', 'Female', 4),
(41, 'Omari Abshire', '1983-04-12', 'Female', 5),
(42, 'Nikki Bahringer II', '1974-11-13', 'Female', 2),
(43, 'Prof. Vinnie Nienow DDS', '1977-01-05', 'Male', 1),
(44, 'Kian Rodriguez', '1982-02-25', 'Male', 1),
(45, 'Hulda Waelchi', '1972-03-02', 'Male', 5),
(46, 'Ms. Onie Abernathy', '1995-08-04', 'Female', 4),
(47, 'Lura Senger', '1999-10-19', 'Female', 4),
(48, 'Kiarra Yost', '2001-03-10', 'Male', 5),
(49, 'Lupe Swaniawski', '1970-12-04', 'Male', 3),
(50, 'Prof. Mauricio Rohan', '1971-08-16', 'Female', 3),
(51, 'Wilton Daugherty', '2001-09-26', 'Female', 4),
(52, 'Prof. Nels Howe PhD', '1975-03-02', 'Male', 5),
(53, 'Hilbert Bartoletti', '2001-10-26', 'Female', 4),
(54, 'Dr. Dorothea Orn DDS', '1978-02-09', 'Female', 4),
(55, 'Frederik Waters', '1992-03-08', 'Female', 1),
(56, 'Mr. Aidan Daugherty', '1981-01-29', 'Male', 1),
(57, 'Prof. Laron McGlynn', '1989-01-05', 'Female', 5),
(58, 'Eloisa Carter Jr.', '1999-12-19', 'Male', 1),
(59, 'Dr. Kevin Nader DVM', '1975-09-22', 'Male', 1),
(60, 'Prof. Skye Zieme', '1981-03-25', 'Male', 2),
(61, 'Rigoberto Konopelski', '2000-05-26', 'Female', 1),
(62, 'Evelyn Jones', '1971-12-19', 'Female', 5),
(63, 'Greyson Ledner', '1986-05-05', 'Female', 4),
(64, 'Patrick Fahey', '1997-06-26', 'Male', 3),
(65, 'Dr. Holden Ward V', '1984-06-26', 'Male', 2),
(66, 'Tate Lesch', '1993-09-14', 'Female', 2),
(67, 'Meghan Feest III', '1981-08-17', 'Female', 4),
(68, 'Kendrick Kassulke DDS', '1995-09-21', 'Male', 3),
(69, 'Lindsey Yundt', '1989-06-29', 'Female', 4),
(70, 'Mikel Ritchie', '1973-10-20', 'Male', 5),
(71, 'Bret Jast', '1989-10-03', 'Female', 2),
(72, 'Jaycee Yost', '1994-10-27', 'Female', 1),
(73, 'Judson Harvey', '1997-08-21', 'Male', 4),
(74, 'Anahi Romaguera', '1977-01-31', 'Female', 4),
(75, 'Ms. Jacynthe Langworth', '1995-11-10', 'Male', 1),
(76, 'Zakary Cormier', '1995-04-18', 'Female', 4),
(77, 'Ansel Marvin', '1994-03-02', 'Male', 4),
(78, 'Valerie Hamill', '1985-01-17', 'Male', 4),
(79, 'Osborne Boyle', '1975-02-02', 'Female', 5),
(80, 'Prof. Celia Larson', '1975-09-09', 'Male', 4),
(81, 'Tomasa Koelpin', '1991-06-07', 'Male', 2),
(82, 'Jacklyn Spencer', '1972-11-25', 'Female', 2),
(83, 'Dr. Stanton Abshire DDS', '1997-11-15', 'Female', 4),
(84, 'Dr. Zora Wyman', '1996-10-20', 'Male', 4),
(85, 'Ellis Satterfield', '1970-07-13', 'Male', 4),
(86, 'Ryann Schumm', '1979-09-10', 'Female', 3),
(87, 'Dr. Dino Bauch V', '1989-05-11', 'Male', 5),
(88, 'Dr. Brice Zulauf II', '1978-04-19', 'Male', 4),
(89, 'Eldridge Hirthe PhD', '1988-09-04', 'Male', 1),
(90, 'Kaylee Osinski', '1973-06-01', 'Female', 1),
(91, 'Jadon Crooks', '1997-01-17', 'Female', 2),
(92, 'Shemar Mayer', '1970-08-14', 'Female', 5),
(93, 'Ms. Marjolaine Nicolas I', '1973-03-15', 'Female', 2),
(94, 'Oleta Senger', '1995-04-26', 'Male', 2),
(95, 'Ernest Effertz', '1996-04-15', 'Female', 5),
(96, 'Pedro Deckow', '1972-09-07', 'Male', 4),
(97, 'Terry Smith', '1980-10-30', 'Male', 5),
(98, 'Terrell Volkman I', '1974-01-28', 'Male', 4),
(99, 'Jordy Wolff', '1973-09-21', 'Female', 3),
(100, 'Douglas Pfannerstill', '1973-05-07', 'Female', 2);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'Elektronika'),
(2, 'Robotika'),
(3, 'Programiranje'),
(4, 'Matematika'),
(5, 'Fizika'),
(6, 'Mašinski elementi'),
(7, 'Elastičnost drveta'),
(8, 'Dizajn'),
(9, 'Automatsko upravljanje'),
(10, 'Računarske mreže');

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
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Amir', 'hirkic.amir@gmail.com', NULL, '$2y$10$yPr1LTkrubrEOP2rwXdZAuUceFs7/qrfPupJtbJAT7a3/RgNdNDxu', NULL, NULL, NULL, NULL, NULL, '2022-02-02 19:13:31', '2022-02-02 19:13:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book__authors`
--
ALTER TABLE `book__authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrows`
--
ALTER TABLE `borrows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `book__authors`
--
ALTER TABLE `book__authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `borrows`
--
ALTER TABLE `borrows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
