-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 17 avr. 2021 à 18:01
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `village_green`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_parent_id`) VALUES
(1, 'Vents', NULL),
(2, 'Cordes', NULL),
(3, 'Percussions', NULL),
(4, 'Guitare', 2),
(5, 'Violon', 2),
(6, 'Violoncelle', 2),
(7, 'Harpe', 2),
(8, 'Piano', 2),
(9, 'Trompette', 1),
(10, 'Saxophone', 1),
(11, 'Flûte', 1),
(12, 'Harmonica', 1),
(13, 'Batterie', 3),
(14, 'Tambour', 3),
(15, 'Xylophone', 3);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_coefficient` decimal(4,2) NOT NULL,
  `cus_ref` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_zipcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_countries` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_emp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_lastname`, `cus_firstname`, `cus_status`, `cus_coefficient`, `cus_ref`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_countries`, `cus_phone`, `cus_mail`, `cus_emp_id`) VALUES
(101, 'Hewitt', 'Cyrus', 'Professionnel', '2.00', '16560508 8169', 'Appartement 436-7671 Cubilia Route', '54911', 'Reims', 'France', '02 82 03 47 74', 'ipsum.cursus.vestibulum@cursus.com', 94),
(102, 'Bishop', 'Kellie', 'Professionnel', '2.00', '16040710 0494', 'CP 639, 3569 Mi Impasse', '92509', 'Schiltigheim', 'France', '06 35 86 81 57', 'elementum@eulacus.net', 94),
(103, 'Dudley', 'Lucius', 'Professionnel', '2.00', '16311110 3598', '7989 Ipsum. Rue', '8408', 'Brest', 'France', '01 33 94 12 20', 'Nullam.ut@vitaediamProin.ca', 94),
(104, 'Hyde', 'Fitzgerald', 'Particulier', '2.00', '16900212 9139', '9586 Nunc Avenue', '86802', 'Belfort', 'France', '01 78 90 79 84', 'lobortis.Class@parturient.edu', 94),
(105, 'Fisher', 'Bethany', 'Particulier', '2.00', '16290605 8041', '794-4394 Ipsum Av.', '69476', 'Limoges', 'France', '03 28 89 74 71', 'libero.Proin@Maecenasornare.net', 94),
(106, 'Allen', 'Cody', 'Particulier', '2.00', '16060503 7050', 'CP 758, 1508 Gravida. Avenue', '28594', 'Forbach', 'France', '07 66 11 55 08', 'eu.euismod.ac@velitPellentesque.org', 94),
(107, 'Kirkland', 'Tanisha', 'Professionnel', '2.00', '16260614 5189', 'Appartement 418-2123 Arcu Avenue', '98924', 'Clermont-Ferrand', 'France', '04 57 29 11 38', 'faucibus@InfaucibusMorbi.net', 94),
(108, 'Eaton', 'Stephanie', 'Professionnel', '2.00', '16070930 6625', 'Appartement 729-5859 Bibendum Rd.', '16532', 'Bordeaux', 'France', '05 77 29 95 16', 'est.Nunc@elitpharetraut.edu', 94),
(109, 'Alexander', 'Ashely', 'Professionnel', '2.00', '16480902 3593', 'CP 732, 1548 Vivamus Rd.', '25578', 'Compiègne', 'France', '07 52 00 17 49', 'nec.ante.Maecenas@ultrices.edu', 94),
(110, 'Mcneil', 'Jasmine', 'Particulier', '2.00', '16131021 4422', '672-781 Id Rd.', '72444', 'Dunkerque', 'France', '01 08 27 29 32', 'erat.Etiam.vestibulum@feugiatLoremipsum.ca', 94),
(111, 'Sutton', 'Keegan', 'Particulier', '2.00', '16770316 2367', '5416 Sit Impasse', '62848', 'Saint-Sébastien-sur-Loire', 'France', '07 16 87 71 41', 'pharetra.felis.eget@interdumfeugiat.org', 94),
(112, 'Bowers', 'Cedric', 'Particulier', '2.00', '16870701 6799', '326-520 Purus Chemin', '37053', 'Colmar', 'France', '08 16 75 19 95', 'non@tempus.com', 94),
(113, 'Nash', 'Tiger', 'Professionnel', '2.00', '16220924 0262', 'Appartement 507-3365 Ornare, Impasse', '26296', 'Bergerac', 'France', '03 70 40 55 25', 'sagittis@ligulaDonec.net', 94),
(114, 'Hoffman', 'Lois', 'Professionnel', '2.00', '16341218 6292', '1769 Iaculis Rd.', '64223', 'Chartres', 'France', '01 39 25 72 32', 'sodales.Mauris.blandit@cursus.net', 94),
(115, 'Bush', 'Sage', 'Professionnel', '2.00', '16660216 1439', '9025 Libero Rd.', '26430', 'Ajaccio', 'France', '09 26 60 59 00', 'augue.scelerisque.mollis@sitamet.ca', 94),
(116, 'Hopkins', 'Thane', 'Particulier', '2.00', '16111018 5228', 'Appartement 719-2614 Dis Impasse', '38328', 'Niort', 'France', '08 64 88 79 18', 'gravida@ligulaelit.ca', 94),
(117, 'Cortez', 'Mona', 'Particulier', '2.00', '16941117 2167', 'CP 597, 5330 Non, Route', '27281', 'Pontarlier', 'France', '01 46 88 44 65', 'Pellentesque.tincidunt@Phasellus.co.uk', 94),
(118, 'Sweeney', 'Steven', 'Particulier', '2.00', '16040522 9873', '193-9302 Mauris Av.', '16247', 'Maubeuge', 'France', '02 08 88 93 23', 'et@dictum.co.uk', 94),
(119, 'Tate', 'Mollie', 'Professionnel', '2.00', '16191118 1020', 'CP 444, 3746 Erat Rue', '16423', 'Argenteuil', 'France', '05 95 12 91 86', 'Mauris@elit.edu', 94),
(120, 'Rodgers', 'Rhonda', 'Professionnel', '2.00', '16520230 2799', '745 Ac Chemin', '55032', 'Thionville', 'France', '08 99 89 82 54', 'nibh@placerat.org', 94),
(121, 'Cabrera', 'Walter', 'Professionnel', '2.00', '16190514 3937', 'CP 964, 776 Fermentum Rue', '48344', 'Orléans', 'France', '09 78 72 11 67', 'ut@laoreetlectusquis.ca', 94),
(122, 'Blake', 'Erasmus', 'Particulier', '2.00', '16861109 0500', '842-5901 Nibh Ave', '11194', 'Biarritz', 'France', '01 09 18 83 28', 'dapibus.rutrum.justo@elitpedemalesuada.com', 94),
(123, 'Alford', 'Kirk', 'Particulier', '2.00', '16000602 7486', 'Appartement 934-4721 Ullamcorper Ave', '72326', 'Bastia', 'France', '02 27 52 97 75', 'Mauris.magna@nunc.com', 94),
(124, 'Burnett', 'Bradley', 'Particulier', '2.00', '16670627 9103', '382-9918 Etiam Impasse', '48464', 'Rennes', 'France', '01 34 17 86 65', 'erat.Vivamus.nisi@purus.co.uk', 94),
(125, 'George', 'Darryl', 'Professionnel', '2.00', '16310519 5568', 'CP 468, 9181 Sit Avenue', '69008', 'Abbeville', 'France', '05 88 44 86 87', 'non@Morbiaccumsan.co.uk', 94),
(126, 'Stokes', 'Chaim', 'Professionnel', '2.00', '16480222 6375', '758-5483 Nam Rd.', '10108', 'Niort', 'France', '04 86 33 24 65', 'vitae@Namtempor.ca', 94),
(127, 'Long', 'Hedy', 'Professionnel', '2.00', '16770822 3115', '4571 Mi. Rd.', '54228', 'Bègles', 'France', '09 42 21 18 97', 'risus.at@ultrices.co.uk', 94),
(128, 'Marshall', 'Finn', 'Particulier', '2.00', '16750221 9533', 'CP 482, 8784 Elit. Rd.', '40470', 'Châtellerault', 'France', '01 45 70 35 41', 'Phasellus.ornare.Fusce@ametluctus.co.uk', 94),
(129, 'Page', 'Jescie', 'Particulier', '2.00', '16871025 1185', '1466 A, Impasse', '15631', 'Clermont-Ferrand', 'France', '04 39 79 70 52', 'erat@eu.com', 94),
(130, 'Huber', 'Emily', 'Particulier', '2.00', '16490203 6351', '595-9600 Ornare Av.', '66172', 'Mulhouse', 'France', '02 88 37 00 57', 'dui@ut.co.uk', 94),
(131, 'Dillard', 'Lester', 'Professionnel', '2.00', '16510819 5990', 'CP 195, 3472 Turpis Avenue', '12376', 'Évreux', 'France', '01 62 81 19 63', 'Maecenas.malesuada.fringilla@nuncIn.co.uk', 94),
(132, 'Fernandez', 'Jacqueline', 'Professionnel', '2.00', '16360924 2775', '2812 Feugiat. Impasse', '45155', 'Belfort', 'France', '09 53 68 72 58', 'aliquet.molestie@ultriciesornare.co.uk', 94),
(133, 'Velez', 'Hayfa', 'Professionnel', '2.00', '16770306 2476', 'CP 197, 3615 Nisl Av.', '82745', 'Saint-Étienne-du-Rouvray', 'France', '01 56 05 43 34', 'dapibus.id.blandit@ligulaconsectetuerrhoncus.net', 94),
(134, 'Mullins', 'Rowan', 'Particulier', '2.00', '16870725 3228', '367-685 Turpis Avenue', '41518', 'Lens', 'France', '07 06 67 76 46', 'interdum@nonnisi.net', 94),
(135, 'Mcgowan', 'Kasimir', 'Particulier', '2.00', '16190824 8006', 'Appartement 898-8319 Nonummy Rd.', '22392', 'Boulogne-sur-Mer', 'France', '06 44 18 23 17', 'sed@laciniaSedcongue.edu', 94),
(136, 'Montoya', 'Karyn', 'Particulier', '2.00', '16530215 1146', '815-479 Lorem Impasse', '26892', 'Cannes', 'France', '06 39 03 55 16', 'ullamcorper.magna.Sed@ullamcorper.edu', 94),
(137, 'Hamilton', 'Rahim', 'Professionnel', '2.00', '16880708 6361', 'CP 585, 722 Mattis. Route', '242', 'Nice', 'France', '02 48 22 69 70', 'gravida.Praesent.eu@nequevitae.ca', 94),
(138, 'Shepard', 'Rae', 'Professionnel', '2.00', '16201202 0463', '845-4636 Suspendisse Av.', '56478', 'Pontarlier', 'France', '02 70 03 59 73', 'est@enimEtiam.edu', 94),
(139, 'Duncan', 'Malachi', 'Professionnel', '2.00', '16090314 9524', '9942 Et Route', '44602', 'Nice', 'France', '08 15 29 87 75', 'Pellentesque.tincidunt.tempus@Suspendisse.com', 94),
(140, 'Velez', 'Hiram', 'Particulier', '2.00', '16660619 6753', 'CP 319, 5222 Ut, Avenue', '76845', 'Vierzon', 'France', '09 67 01 03 35', 'non@ridiculusmusDonec.edu', 94),
(141, 'Cardenas', 'Cody', 'Particulier', '2.00', '16110810 2748', 'CP 393, 9102 Sapien. Avenue', '15314', 'Auxerre', 'France', '09 34 85 65 66', 'diam.eu@ipsumCurabitur.ca', 94),
(142, 'Graves', 'Brandon', 'Particulier', '2.00', '16000207 8558', 'CP 482, 6597 Pulvinar Impasse', '39011', 'Poitiers', 'France', '06 77 58 70 97', 'Donec.elementum@Duis.org', 94),
(143, 'Alford', 'April', 'Professionnel', '2.00', '16551207 7347', '6029 Mollis Impasse', '78159', 'Clermont-Ferrand', 'France', '07 48 73 00 08', 'dolor.Nulla.semper@aliquetdiam.co.uk', 94),
(144, 'Rowland', 'Neve', 'Professionnel', '2.00', '16490923 9479', 'Appartement 342-5795 Convallis Rd.', '39025', 'Brive-la-Gaillarde', 'France', '06 23 75 30 55', 'leo@malesuadamalesuadaInteger.edu', 94),
(145, 'Cleveland', 'Zephr', 'Professionnel', '2.00', '16021213 5420', '1371 Ligula. Rue', '12766', 'Sarreguemines', 'France', '09 75 14 68 94', 'eget@sed.org', 94),
(146, 'Witt', 'Stella', 'Particulier', '2.00', '16730419 3498', 'Appartement 683-1263 Sociis Avenue', '16239', 'Colomiers', 'France', '01 54 95 27 23', 'non.hendrerit.id@Quisque.com', 94),
(147, 'Tyson', 'Kasimir', 'Particulier', '2.00', '16420903 0933', 'Appartement 267-9590 Parturient Chemin', '12781', 'Dole', 'France', '02 57 18 47 95', 'feugiat.Sed@tinciduntvehicula.edu', 94),
(148, 'Brady', 'Reuben', 'Particulier', '2.00', '16781228 6982', 'Appartement 518-9874 Integer Rd.', '94750', 'Rodez', 'France', '07 23 20 50 27', 'Duis.dignissim.tempor@aliquetmagnaa.com', 94),
(149, 'Baxter', 'Jenna', 'Professionnel', '2.00', '16360719 9100', 'CP 992, 1095 Nec, Avenue', '91701', 'Sète', 'France', '02 95 02 77 30', 'lobortis.Class@elitpede.ca', 94),
(150, 'Wong', 'Theodore', 'Professionnel', '2.00', '16200910 7067', 'CP 924, 6300 Ac Impasse', '48532', 'Bègles', 'France', '08 03 67 12 02', 'ac@eu.edu', 94),
(151, 'Massey', 'Allistair', 'Professionnel', '2.00', '16621215 8114', 'CP 573, 5660 Sodales Avenue', '58532', 'Saint-Herblain', 'France', '05 66 25 37 93', 'et@ut.edu', 94),
(152, 'Carey', 'Savannah', 'Particulier', '2.00', '16140508 4672', 'Appartement 189-230 Fusce Avenue', '17893', 'Rueil-Malmaison', 'France', '07 21 36 97 91', 'Donec.non.justo@pedeacurna.org', 94),
(153, 'Peterson', 'Jaden', 'Particulier', '2.00', '16750226 0560', 'CP 612, 853 Montes, Route', '35960', 'Agen', 'France', '03 33 42 92 89', 'enim@nisisemsemper.net', 94),
(154, 'Wheeler', 'Hermione', 'Particulier', '2.00', '16260711 4895', '760-2303 Et Rue', '93071', 'Vandoeuvre-lès-Nancy', 'France', '02 03 68 20 44', 'rutrum@magnaSuspendisse.ca', 94),
(155, 'Crosby', 'Reuben', 'Professionnel', '2.00', '16270630 3688', '2939 Consequat Av.', '58', 'Saint-Étienne-du-Rouvray', 'France', '04 39 88 37 34', 'velit.dui@adipiscingelit.edu', 94),
(156, 'Huff', 'Stone', 'Professionnel', '2.00', '16530324 6812', '8377 Proin Ave', '38365', 'Boulogne-sur-Mer', 'France', '08 71 51 39 64', 'et.commodo.at@a.ca', 94),
(157, 'York', 'Signe', 'Professionnel', '2.00', '16041219 0530', 'Appartement 156-6953 Nisi Rd.', '6688', 'Compiègne', 'France', '05 12 80 42 79', 'Nunc@semmollisdui.net', 94),
(158, 'Ayers', 'Hanae', 'Particulier', '2.00', '16581021 5623', 'CP 912, 1504 Urna. Chemin', '76247', 'Metz', 'France', '06 39 69 83 00', 'scelerisque.sed.sapien@erat.org', 94),
(159, 'Flynn', 'Anjolie', 'Particulier', '2.00', '16410720 5223', '2812 Non Impasse', '20638', 'Sotteville-lès-Rouen', 'France', '01 26 12 57 47', 'pharetra@dolorsit.ca', 94),
(160, 'Figueroa', 'Maxine', 'Particulier', '2.00', '16910816 9583', '2258 Orci Avenue', '81326', 'Vandoeuvre-lès-Nancy', 'France', '02 00 74 22 23', 'ornare.lectus@quam.org', 94),
(161, 'Ruiz', 'Leilani', 'Professionnel', '2.00', '16670811 2492', 'Appartement 580-9553 Magna. Impasse', '16695', 'Rueil-Malmaison', 'France', '09 83 01 19 20', 'vel@metus.edu', 94),
(162, 'Bullock', 'Anjolie', 'Professionnel', '2.00', '16690528 3914', 'Appartement 206-8744 Malesuada Avenue', '9333', 'Dijon', 'France', '09 54 11 17 97', 'mauris.ipsum.porta@estacmattis.net', 94),
(163, 'Palmer', 'Paki', 'Professionnel', '2.00', '16410503 2900', 'CP 296, 4581 Vitae Chemin', '92785', 'Vannes', 'France', '02 75 80 60 86', 'dictum@dictummi.ca', 94),
(164, 'French', 'Dominic', 'Particulier', '2.00', '16811212 0525', 'Appartement 479-784 Quis, Rd.', '12139', 'Brive-la-Gaillarde', 'France', '05 07 47 94 34', 'at.fringilla@velit.co.uk', 94),
(165, 'Oneill', 'Kelly', 'Particulier', '2.00', '16460113 9266', '845 Erat. Avenue', '86331', 'Roubaix', 'France', '06 86 99 20 43', 'accumsan.convallis.ante@erat.ca', 94),
(166, 'Lowe', 'Felix', 'Particulier', '2.00', '16900806 9891', 'Appartement 832-7174 Non Rd.', '61363', 'Ajaccio', 'France', '05 36 59 31 98', 'luctus@quam.org', 94),
(167, 'Brady', 'Preston', 'Professionnel', '2.00', '16040130 0702', 'Appartement 132-4489 At Ave', '98517', 'Amiens', 'France', '09 27 57 42 05', 'Nulla.aliquet.Proin@auctorodio.net', 94),
(168, 'Sexton', 'Lewis', 'Professionnel', '2.00', '16320423 2387', '4631 Suspendisse Rue', '40828', 'Lille', 'France', '05 16 65 12 54', 'ligula.Nullam.enim@nullaatsem.edu', 94),
(169, 'Velasquez', 'Shelby', 'Professionnel', '2.00', '16740830 9958', 'CP 921, 6269 Integer Ave', '87197', 'Illkirch-Graffenstaden', 'France', '08 09 91 18 94', 'lorem@Aliquameratvolutpat.edu', 94),
(170, 'Erickson', 'Sacha', 'Particulier', '2.00', '16641114 9245', 'CP 929, 5185 Ante Rue', '14641', 'Évreux', 'France', '09 58 08 94 61', 'ornare@mauriserat.co.uk', 94),
(171, 'Holman', 'Quemby', 'Particulier', '2.00', '16270919 5446', '239 Tortor, Chemin', '38814', 'Vannes', 'France', '07 79 04 37 50', 'ornare.facilisis.eget@erosnonenim.ca', 94),
(172, 'Nelson', 'Hoyt', 'Particulier', '2.00', '16030404 7665', '244-6985 Mauris Rue', '76374', 'Saint-Malo', 'France', '05 95 15 51 68', 'tellus@disparturientmontes.net', 94),
(173, 'Durham', 'Hedy', 'Professionnel', '2.00', '16530402 7039', 'CP 615, 4176 Ut Rue', '26453', 'Béziers', 'France', '08 70 48 47 14', 'ut.cursus@Craseutellus.com', 94),
(174, 'Maddox', 'Nichole', 'Professionnel', '2.00', '16411209 8100', '190-2589 Fermentum Rd.', '68152', 'Mérignac', 'France', '07 21 96 41 79', 'eget@consectetuereuismod.co.uk', 94),
(175, 'Powell', 'Thane', 'Professionnel', '2.00', '16390621 3248', 'CP 114, 3326 Metus. Av.', '322', 'Brest', 'France', '07 65 14 96 97', 'primis.in@metusIn.edu', 94),
(176, 'Hanson', 'Macon', 'Particulier', '2.00', '16330807 7985', 'Appartement 203-5758 At, Route', '55566', 'Vichy', 'France', '03 19 76 42 89', 'lobortis.ultrices@ornaresagittis.co.uk', 94),
(177, 'Cervantes', 'Lysandra', 'Particulier', '2.00', '16570720 3427', 'CP 511, 5365 Risus. Route', '45875', 'Limoges', 'France', '08 63 10 47 12', 'iaculis.aliquet@anteipsumprimis.net', 94),
(178, 'Mays', 'Kamal', 'Particulier', '2.00', '16701023 9064', '9472 Luctus Rd.', '19478', 'Rouen', 'France', '06 55 34 05 91', 'consectetuer.adipiscing@ascelerisquesed.edu', 94),
(179, 'Garrison', 'Lael', 'Professionnel', '2.00', '16630810 5474', '1940 Sagittis Ave', '53626', 'Clermont-Ferrand', 'France', '07 45 51 78 12', 'diam.Duis@scelerisquescelerisque.edu', 94),
(180, 'Bird', 'Ginger', 'Professionnel', '2.00', '16090416 4464', '3627 Luctus Route', '33939', 'Marseille', 'France', '03 10 15 53 69', 'Etiam@etmalesuadafames.ca', 94),
(181, 'Watts', 'Wendy', 'Professionnel', '2.00', '16810616 0149', 'CP 720, 5923 Nascetur Route', '9156', 'Beauvais', 'France', '04 56 20 98 56', 'In.scelerisque@semPellentesqueut.co.uk', 94),
(182, 'Mccullough', 'Wylie', 'Particulier', '2.00', '16341118 3563', '350-8140 Magnis Av.', '80356', 'Dreux', 'France', '01 20 31 74 38', 'egestas.lacinia.Sed@musDonecdignissim.org', 94),
(183, 'Bass', 'Reagan', 'Particulier', '2.00', '16560402 4330', '385-473 Augue Ave', '7987', 'Béthune', 'France', '08 11 35 69 03', 'mollis@idmollisnec.net', 94),
(184, 'Calderon', 'Hayes', 'Particulier', '2.00', '16790320 3763', 'CP 543, 6090 Ullamcorper, Avenue', '24092', 'Perpignan', 'France', '09 88 33 20 45', 'In@loremeget.co.uk', 94),
(185, 'Mendoza', 'Cruz', 'Professionnel', '2.00', '16181003 1680', 'Appartement 274-9399 Euismod Rd.', '30279', 'Rouen', 'France', '09 17 90 73 09', 'ac.feugiat@parturientmontesnascetur.edu', 94),
(186, 'Nieves', 'Mollie', 'Professionnel', '2.00', '16710913 4069', '2537 Lacus. Rue', '6288', 'Calais', 'France', '04 90 13 89 08', 'velit.Quisque.varius@dolor.ca', 94),
(187, 'Chavez', 'Nathan', 'Professionnel', '2.00', '16550629 7224', '899-9698 In Chemin', '14211', 'Versailles', 'France', '07 06 39 49 33', 'gravida@dapibusrutrum.edu', 94),
(188, 'Petersen', 'Ariana', 'Particulier', '2.00', '16720705 7097', '361-2284 Urna Av.', '86675', 'Auxerre', 'France', '08 97 18 06 11', 'Aenean.massa.Integer@malesuada.co.uk', 94),
(189, 'Callahan', 'Raja', 'Particulier', '2.00', '16850125 1790', 'Appartement 306-8162 Ante. Av.', '35330', 'Colomiers', 'France', '06 50 30 34 12', 'semper.dui@inmagnaPhasellus.edu', 94),
(190, 'Wells', 'Perry', 'Particulier', '2.00', '16060227 4433', 'CP 853, 3203 Ridiculus Chemin', '62693', 'Saint-Brieuc', 'France', '09 06 28 30 91', 'diam.Pellentesque@ametfaucibus.co.uk', 94),
(191, 'Foster', 'Josephine', 'Professionnel', '2.00', '16300105 4281', '484-5614 Accumsan Chemin', '38799', 'Ajaccio', 'France', '08 18 46 27 61', 'facilisis@loremsitamet.org', 94),
(192, 'Gomez', 'Martha', 'Professionnel', '2.00', '16690302 4567', '5698 Fermentum Route', '78286', 'Auxerre', 'France', '02 74 23 46 65', 'dictum.eu.eleifend@utdolordapibus.org', 94),
(193, 'Kim', 'Fatima', 'Professionnel', '2.00', '16190901 9836', '2849 Orci Av.', '44565', 'Vierzon', 'France', '02 20 63 69 83', 'lobortis.tellus.justo@dignissimtemporarcu.edu', 94),
(194, 'Foster', 'Rachel', 'Particulier', '2.00', '16690509 3115', '918-7788 Auctor Rue', '96053', 'Perpignan', 'France', '02 82 98 32 62', 'lacus.Mauris.non@anteiaculisnec.co.uk', 94),
(195, 'Winters', 'Cyrus', 'Particulier', '2.00', '16980513 6406', 'CP 239, 2373 Auctor Rd.', '77391', 'Mâcon', 'France', '09 94 30 10 41', 'tristique.senectus.et@faucibus.com', 94),
(196, 'Stout', 'Roth', 'Particulier', '2.00', '16120704 7463', '578-3709 Dignissim Av.', '20122', 'Toulon', 'France', '03 06 14 61 60', 'dui.Fusce@varius.edu', 94),
(197, 'Gillespie', 'Kieran', 'Professionnel', '2.00', '16390814 6180', 'Appartement 401-2263 Aenean Av.', '36561', 'Bastia', 'France', '03 42 78 09 38', 'Sed.congue.elit@sedhendrerit.edu', 94),
(198, 'Page', 'Karly', 'Professionnel', '2.00', '16160516 7236', 'Appartement 652-9907 Velit Ave', '93768', 'Vierzon', 'France', '03 01 06 63 48', 'nonummy@parturientmontesnascetur.com', 94),
(199, 'Farley', 'Buckminster', 'Professionnel', '2.00', '16580413 6280', 'Appartement 414-9897 Phasellus Rd.', '66604', 'Saint-Brieuc', 'France', '04 07 92 87 34', 'luctus.vulputate@aliquet.net', 94),
(200, 'Dorsey', 'Helen', 'Particulier', '2.00', '16920604 6154', 'Appartement 491-4436 Nec Chemin', '50963', 'Dreux', 'France', '09 10 42 10 87', 'vel@purus.co.uk', 94);

-- --------------------------------------------------------

--
-- Structure de la table `departments`
--

CREATE TABLE `departments` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `departments`
--

INSERT INTO `departments` (`dep_id`, `dep_name`) VALUES
(1, 'Comptabilité'),
(2, 'Ressources Humaines'),
(3, 'Logistique'),
(4, 'Maintenance'),
(5, 'Marketing'),
(6, 'Distribution'),
(7, 'Achat'),
(8, 'Direction'),
(10, 'Direction des Systèmes d\'Information');

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_zipcode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_dep_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_dep_id`) VALUES
(1, 'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', 4),
(2, 'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', 6),
(3, 'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', 8),
(4, 'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', 6),
(5, 'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', 6),
(6, 'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', 6),
(7, 'AMAR', 'Yann', '4 rue du papillon de lumière', '62000', 'Arras', 'amar@azerty.com', '0102030405', 6),
(8, 'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', 6),
(9, 'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', 4),
(10, 'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', 6),
(11, 'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', 10),
(12, 'DECLAN', 'Richard', 'Appartement 870-7677 Magna Av.', '42980', 'Dornbirn', 'Mauris@amet.ca', '0102030405', 5),
(13, 'ABRAHAM', 'François', '612-4178 Urna Chemin', '87784', 'Llanidloes', 'sodales@malesuadaInteger.com', '0102030405', 6),
(14, 'COOPER', 'Dale', '6954 Mauris Av.', '17543', 'Kalyan', 'Nunc.ullamcorper.velit@penatibuset.org', '0102030405', 6),
(15, 'FULLER', 'Christophe', '977-8389 Dui. Ave', '9229', 'Konstanz', 'semper@metus.edu', '0102030405', 2),
(16, 'TRON', 'Paul', '2323 Metus. Rue', '20403', 'Jumet', 'eu@gravidamauris.org', '0102030405', 6),
(17, 'HASZIC', 'Alec', '370-2193 Sed Rd.', '39132', 'Orangeville', 'cursus.Nunc@amet.edu', '0102030405', 6),
(18, 'VADENT', 'Sophie', 'CP 131, 8783 Nisi Impasse', '26972', 'Burnaby', 'a@vitaepurusgravida.org', '0102030405', 2),
(19, 'BALZAC', 'Jérémy', 'CP 630, 2906 Mollis Route', '0247', 'Colchester', 'penatibus.et@sempertellusid.net', '0102030405', 6),
(20, 'YETTA', 'Ahmed', '228-2670 Luctus. Route', '85726', 'Havillers', 'non@ac.edu', '0102030405', 6),
(21, 'CHERET', 'Philippe', '443 Non Rue', '58015', 'Dolcedo', 'placerat.augue.Sed@mi.net', '0102030405', 6),
(22, 'FERRIS', 'Anne', 'Appartement 172-7219 Ante Chemin', '5155 ', 'North Waziristan', 'Duis.risus.odio@at.com', '0102030405', 6),
(23, 'TERIEUR', 'Alex', 'Appartement 733-1291 Velit Av.', '60100', 'Creil', 'alex@integereu.edu', '0102030405', 6),
(24, 'JANA', 'Vincent', '1229 Laoreet Av.', '07789', 'Bad Ischl', 'lacus@iderat.org', '0102030405', 6),
(25, 'LABALLE', 'Willy', '113-6834 At Rd.', 'B4X 7', 'Labuissire', 'Suspendisse@nec.ca', '0102030405', 6),
(26, 'COCU', 'Stéphanie', 'CP 382, 9910 Massa. Avenue', '50718', 'Regina', 'ac.metus.vitae@quamquisdiam.net', '0102030405', 2),
(27, 'DELISLE', 'Stéphane', 'Appartement 406-5833 Facilisis, Av.', '26986', 'Sainte-Flavie', 'natoque.penatibus.et@utnullaCras.edu', '0102030405', 6),
(28, 'FULTON', 'Bernard', 'Appartement 896-3857 Sit Rue', '78933', 'Versailles', 'elit.elit@blanditNamnulla.ca', '0102030405', 8),
(29, 'KELSIE', 'Kirsten', '5586 Mus. Ave', 'C2W 9', 'Kumluca', 'pharetra.Quisque@Suspendisse.net', '0102030405', 6),
(30, 'RHONDA', 'Bradley', '7331 Pede. Rue', '01971', 'Pishin Valley', 'Nunc.lectus@leoMorbi.co.uk', '0102030405', 5),
(31, 'ASPEN', 'Casey', '7026 Orci Route', '13075', 'Impe', 'enim@ornareelitelit.co.uk', '0102030405', 6),
(32, 'KELSIE', 'Nadia', '723 Orci Rd.', '9989', 'Isola del Gran Sasso d\'Italia', 'amet.risus.Donec@bibendumDonec.ca', '0102030405', 2),
(33, 'DUMOULIN', 'Isabelle', 'Appartement 235-4026 Maecenas Chemin', '77-30', 'Glovertown', 'amet@habitant.edu', '0102030405', 5),
(34, 'DRAKE', 'Ray', '902-1314 Ut Route', '93131', 'Sorbo Serpico', 'sapien.cursus@Donec.com', '0102030405', 6),
(35, 'RICHARD', 'Destiny', '5004 Tellus Ave', '39013', 'Ambon', 'consectetuer@laciniaSedcongue.com', '0102030405', 6),
(36, 'DUFOURD', 'Steve', '356-7367 Nec, Impasse', '30661', 'Bonnert', 'in@Nunc.edu', '0102030405', 6),
(37, 'BECK', 'Carl', '9194 Nulla Ave', '87-14', 'Paris', 'tellus@et.ca', '0102030405', 6),
(38, 'SIMONE', 'George', '700-7880 Gravida Av.', '52439', 'Allentown', 'nostra@fringillaest.ca', '0102030405', 6),
(39, 'DORIAN', 'Zelda', 'CP 315, 4816 Dui. Chemin', '13801', 'Saravena', 'vehicula@turpis.org', '0102030405', 6),
(40, 'FARINI', 'Jana', 'CP 578, 8898 Purus Impasse', '91148', 'Wiener Neustadt', 'cursus.in.hendrerit@egetvariusultrices.ca', '0102030405', 6),
(41, 'GINGER', 'Tara', 'Appartement 254-6736 Sit Route', '74002', 'Amstelveen', 'iaculis@rutrum.org', '0102030405', 6),
(42, 'CHARLOT', 'Elijah', '725-5577 Dictum Chemin', '63145', 'Annan', 'luctus.et@Nunc.net', '0102030405', 6),
(43, 'DUPOND', 'Adrian', 'CP 919, 5276 Leo. Rue', '18974', 'Perquenco', 'Lorem.ipsum@amagnaLorem.net', '0102030405', 6),
(44, 'ISAAC', 'Christine', 'Appartement 717-2181 Et Impasse', '88779', 'Roux', 'lacus@Donecnonjusto.co.uk', '0102030405', 6),
(45, 'QUAMAR', 'Allistair', 'Appartement 223-3446 Mollis Rd.', '55469', 'Güssing', 'orci@ultricesiaculis.ca', '0102030405', 6),
(46, 'PRINCE', 'Laurent', '665 Nibh. Rd.', '75217', 'Driffield', 'Curae.Phasellus.ornare@quamdignissimpharetra.net', '0102030405', 4),
(47, 'DUMAS', 'Ingrid', '396-7762 Magna. Route', '50406', 'Frigento', 'in.molestie@anteipsumprimis.org', '0102030405', 6),
(48, 'RAMERY', 'Bruno', '863 Nec Ave', '21485', 'Sint-Kruis-Winkel', 'at.lacus.Quisque@maurisipsum.edu', '0102030405', 5),
(49, 'MALACHI', 'René', 'Appartement 165-7157 Auctor Impasse', '40583', 'Wambeek', 'tincidunt.orci@dolorvitae.co.uk', '0102030405', 6),
(50, 'RENSTER', 'Jeannette', 'CP 758, 4652 Mauris Chemin', '85874', 'Gelbressee', 'iaculis@elementumat.ca', '0102030405', 6),
(51, 'BERTAUX', 'Marc', '1664 Bibendum Avenue', '3274', 'Allein', 'mauris.blandit@temporarcuVestibulum.org', '0102030405', 6),
(52, 'RIGEL', 'Armand', 'CP 694, 2496 Eget Rue', '1104', 'Drachten', 'Aenean.eget.metus@orciin.com', '0102030405', 6),
(53, 'WYLIE', 'Jean-Michel', 'CP 725, 3993 Nec Av.', '97875', 'Maule', 'ac.turpis@maurissapiencursus.co.uk', '0102030405', 6),
(54, 'HONORA', 'Anita', '414-9179 Phasellus Rue', '6971', 'Werder', 'Suspendisse.commodo.tincidunt@quispede.org', '0102030405', 10),
(55, 'LANNOY', 'Julia', 'Appartement 111-9165 Metus. Rue', '0521 ', 'Mata de Plátano', 'Mauris.ut@urnajusto.co.uk', '0102030405', 5),
(56, 'RICHAUMONT', 'Kendall', '954-5221 Dictum Avenue', '45146', 'Gulfport', 'natoque.penatibus.et@ametconsectetueradipiscing.ne', '0102030405', 5),
(57, 'MALIK', 'Keiko', 'Appartement 633-956 Quis, Rd.', '45000', 'Orléans', 'pede.ultrices.a@lacusEtiam.org', '0102030405', 6),
(58, 'HECTOR', 'Macaulay', '2095 In Ave', '52-91', 'Emarèse', 'sem.Nulla.interdum@lobortis.ca', '0102030405', 6),
(59, 'HANNAH', 'Amity', '537-1971 Vestibulum Rd.', '8203 ', 'Palagano', 'fermentum@quisturpisvitae.co.uk', '0102030405', 6),
(60, 'HEDY', 'Katell', 'CP 850, 1578 In Rue', '9661', 'Connah\'s Quay', 'lorem.sit.amet@pellentesque.co.uk', '0102030405', 2),
(61, 'BELL', 'Oleg', 'Appartement 679-9483 Fringilla Route', 'B4 6E', 'Parndorf', 'Aenean.massa.Integer@dui.org', '0102030405', 2),
(62, 'PAULA', 'Tasha', 'Appartement 193-7862 Mollis. Rue', '24446', 'McCallum', 'adipiscing.lobortis.risus@semmolestiesodales.com', '0102030405', 6),
(63, 'POPOV', 'Yuri', '6111 Risus. Ave', '60214', 'Compiègne', 'yuri@gmail.com', '0102030405', 6),
(64, 'DENIS', 'Jeanine', '8325 Ornare Avenue', '71414', 'Colico', 'Integer.id@blanditviverraDonec.edu', '0102030405', 6),
(65, 'KEELY', 'Nassim', '14 avenue Isabelle Herdhebaut', '94086', 'San Juan de Dios', 'n.keely@yahoo.fr', '0102030405', 1),
(66, 'FULTON', 'Michel', '245 avenue du Président Roosevelt', '80000', 'Amiens', 'faucibus@leoMorbi.org', '0102030405', 6),
(67, 'Cole', 'ALLISTAIR', '27 rue Denis Garnier', '58318', 'Sierning', 'vel@vitae.net', '0102030405', 6),
(68, 'JOEL', 'Rose', '855-6714 Metus. Rue', '00046', 'Lestizza', 'risus.a@odio.com', '0102030405', 6),
(69, 'PRAZART', 'Emmanuel', '8515 Nullam Av.', '80500', 'Montdidier', 'dolor.tempus@augueid.com', '0102030405', 6),
(70, 'GUERAFI', 'Hakim', '480-2381 Volutpat. Avenue', '41233', 'Porto Cesareo', 'hguerafi@laposte.net', '0102030405', 3),
(71, 'AIMEE', 'Germaine', '5466 Nec Avenue', '96176', 'Melipilla', 'lorem@sociis.edu', '0102030405', 6),
(72, 'CARTER', 'Robin', '497 Chemin Ante', '60195', 'Duncan', 'nisi@blandit.ca', '0102030405', 3),
(73, 'LIRMA', 'Hugues', '91 bis rue Jarno', '62000', 'Arras', 'hugues.lirma@jarditou.com', '0102030405', 6),
(74, 'FITZGERALD', 'Neil', 'CP 545, 2293 Aenean Rue', '4431', 'Algarrobo', 'Quisque.purus@Donectincidunt.org', '0102030405', 6),
(75, 'AINSLEY', 'Hayden', '633-8228 Et Av.', '6878', 'Güstrow', 'Etiam@Cumsociis.ca', '0102030405', 3),
(76, 'HILARY', 'Zia', '2945 Volutpat. Av.', 'T0X 3', 'Rabbi', 'ut.quam.vel@semut.net', '0102030405', 6),
(77, 'MADELINE', 'Jonas', 'Appartement 521-8237 Ligula. Chemin', 'Z4232', 'Noginsk', 'ac.metus@tellusloremeu.net', '0102030405', 3),
(78, 'TIMON', 'Alyssa', 'CP 503, 6759 Ultricies Avenue', '79444', 'Rockhampton', 'Sed.et.libero@necorci.org', '0102030405', 6),
(79, 'PETER', 'Carly', 'Appartement 792-2242 Semper Rd.', '29429', 'Greater Sudbury', 'Etiam.imperdiet@Cumsociisnatoque.ca', '0102030405', 3),
(80, 'TEEGAN', 'Benjamin', '915-3308 Morbi Avenue', '8258', 'Bottidda', 'habitant.morbi.tristique@tempor.com', '0102030405', 1),
(81, 'WILLA', 'Nina', 'CP 708, 8796 Proin Avenue', '6562', 'Innsbruck', 'eros@sem.edu', '0102030405', 6),
(82, 'CHANEY', 'Irma', '4854 Proin Chemin', '22235', 'Fort Providence', 'ultricies.sem.magna@non.com', '0102030405', 6),
(83, 'LAITH', 'Ariel', 'CP 298, 9838 Porttitor Rue', '40182', 'Wilmington', 'non.bibendum@penatibus.co.uk', '0102030405', 3),
(84, 'CALDWELL', 'Megan', 'CP 183, 6687 Vel Ave', '71913', 'Leerbeek', 'Proin.sed@tellusPhaselluselit.ca', '0102030405', 6),
(85, 'HERMAN', 'Alan', 'CP 248, 4557 Augue. Route', '03002', 'Bridgeport', 'Phasellus@molestietortor.org', '0102030405', 6),
(86, 'MICHAEL', 'Quinn', '777-2337 Pretium Chemin', '6350', 'Bilaspur', 'tellus@Uttinciduntvehicula.edu', '0102030405', 6),
(87, 'DOLLE-RAYMOND', 'Christian', '3578 Fermentum Avenue', '69961', 'Greenwich', 'lobortis.quis@Phasellus.net', '0102030405', 6),
(88, 'CALLUM', 'Howard', '7637 Nisi Av.', '16638', 'Gagliano del Capo', 'Aliquam@euligulaAenean.net', '0102030405', 6),
(89, 'KEANE', 'Ashton', '772-9554 Ipsum Av.', '4095 ', 'Khanpur', 'metus@eratvel.edu', '0102030405', 6),
(90, 'RANA', 'Charles-Henri', '2425 Aliquam Impasse', '10892', 'La Roche-sur-Yon', 'nisi.nibh@diamSeddiam.ca', '0102030405', 6),
(91, 'CARDON', 'Yvonne', '986-8855 Lacus. Ave', '1865', 'Corozal', 'Integer@metuseu.edu', '0102030405', 1),
(92, 'MASON', 'Martin', 'Appartement 397-5505 Leo, Avenue', '83701', 'General Lagos', 'a.facilisis@mollis.com', '0102030405', 3),
(93, 'ADENA', 'Dorothée', '5988 Varius Chemin', '1666', 'Bonvicino', 'sem.consequat.nec@sagittisDuis.co.uk', '0102030405', 6),
(94, 'ZELDA', 'Britney', '5 rue de la mine', '62300', 'Lens', 'pellentesque@neque.edu', '0102030405', 5),
(95, 'RENARD', 'Caroline', '142-9516 Sed Rd.', '5685', 'Ross-on-Wye', 'mauris.Integer@tristiquesenectuset.net', '0102030405', 6),
(96, 'GISELA', 'Guy', '440-6585 Risus. Route', '80800', 'Corbie', 'facilisis@nullamagnamalesuada.edu', '0102030405', 4),
(97, 'ROSOFT', 'Mike', '646-1281 Vestibulum, Route', '15948', 'Barranquilla', 'id.libero.Donec@idmagna.com', '0102030405', 10),
(98, 'MARAT', 'Hans', '8882 Sollicitudin Chemin', '45142', 'Solihull', 'ornare.sagittis@eleifendCras.net', '0102030405', 10),
(99, 'LEMAIRE', 'Pierre-Jean', 'CP 456, 6156 Orci Ave', '96335', 'Nottingham', 'nulla.at.sem@anteblandit.ca', '0102030405', 10),
(100, 'TRENET', 'Nathan', 'CP 286, 8977 Magna. Rue', '63661', 'Kasli', 'Lorem.ipsum.dolor@facilisis.ca', '0102030405', 10),
(101, 'MECHELLE', 'Leila', 'CP 295, 7493 Sit Avenue', '87341', 'Rosarno', 'mi@tempordiamdictum.org', '0102030405', 6),
(102, 'DEVIN', 'Timothée', 'Appartement 161-9249 Ac Rd.', '55053', 'Wismar', 'fringilla@orciDonec.ca', '0102030405', 10),
(103, 'PALMER', 'Mia', '1044 Vivamus Ave', 'K1K 9', 'Rajanpur', 'et@lectus.edu', '0102030405', 6),
(104, 'QUIN', 'Josiah', '1390 Sollicitudin Chemin', '07573', 'Kanpur Cantonment', 'tellus.imperdiet@cursuspurusNullam.org', '0102030405', 5),
(105, 'COHEN', 'David', '4687 Ullamcorper Avenue', '41-72', 'Augusta', 'faucibus.orci.luctus@faucibus.com', '0102030405', 1),
(106, 'XENOS', 'Illiana', '8543 Sed Impasse', '73070', 'Castelvecchio di Rocca Barbena', 'sem.mollis.dui@tinciduntadipiscingMauris.edu', '0102030405', 10),
(107, 'MANNICK', 'Sébastien', 'CP 797, 7428 At, Av.', '53215', 'Söderhamn', 'Donec@quamafelis.edu', '0102030405', 10);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `ord_ref` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_discount` decimal(7,2) DEFAULT NULL,
  `ord_date` datetime NOT NULL,
  `ord_method_payment` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ord_payment_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_d_payment` date DEFAULT NULL,
  `ord_d_ship` date DEFAULT NULL,
  `ord_d_reception` date DEFAULT NULL,
  `ord_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ord_billing_adress` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_delivery_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_ref`, `ord_discount`, `ord_date`, `ord_method_payment`, `ord_payment_status`, `ord_d_payment`, `ord_d_ship`, `ord_d_reception`, `ord_status`, `ord_billing_adress`, `ord_delivery_address`, `ord_cus_id`) VALUES
(1, 'QEU75HHU3ET', '9.00', '2020-01-13 00:00:00', 'Espèce', 'Validé', '2020-01-29', NULL, NULL, 'En préparation', '2640 Vulputate Road', '2640 Vulputate Road', 107),
(2, 'DIC97WHZ6RG', '10.00', '2021-06-29 00:00:00', 'Espèce', 'Validé', '2020-12-11', '2020-12-17', NULL, 'Envoyé', '456-6073 Dui. St.', '456-6073 Dui. St.', 101),
(3, 'WVE09MFV4SF', '0.00', '2021-01-28 00:00:00', 'Espèce', 'Validé', '2019-10-20', NULL, NULL, 'En préparation', 'Ap #541-1300 Orci Rd.', 'Ap #541-1300 Orci Rd.', 102),
(4, 'IQS96LVJ3ND', '0.00', '2021-07-09 00:00:00', 'Carte bancaire', 'Validé', '2020-09-15', '2020-12-23', NULL, 'Envoyé', '190-8737 Vel Street', '190-8737 Vel Street', 110),
(5, 'ABK93ZBI4WU', '3.00', '2021-02-10 00:00:00', 'Carte bancaire', 'Validé', '2020-05-13', '2020-12-26', NULL, 'Envoyé', '2640 Vulputate Road', '2640 Vulputate Road', 107),
(6, 'IDR43VYR4QP', '9.00', '2020-07-07 00:00:00', 'Chèque', 'Validé', '2021-07-04', NULL, NULL, 'En préparation', '284-9568 Phasellus Rd.', '284-9568 Phasellus Rd.', 106),
(7, 'PID99JPL8DY', '9.00', '2021-07-27 00:00:00', 'Carte bancaire', 'Validé', '2021-03-26', '2021-03-27', '2021-03-31', 'Livré', 'P.O. Box 327, 7517 Adipiscing, Av.', 'P.O. Box 327, 7517 Adipiscing, Av.', 103),
(8, 'ZHC73TKR8PE', '2.00', '2020-01-07 00:00:00', 'Espèce', 'Validé', '2019-11-09', NULL, NULL, 'En préparation', 'Ap #541-1300 Orci Rd.', 'Ap #541-1300 Orci Rd.', 102),
(9, 'JDH21ZIX3NA', '6.00', '2020-10-13 00:00:00', 'Chèque', 'Validé', '2021-06-01', '2021-08-01', '2021-08-10', 'Livré', '641-821 Eu Av.', '641-821 Eu Av.', 109),
(10, 'VAM76FSI5BW', '5.00', '2020-05-07 00:00:00', 'Carte bancaire', 'Validé', '2020-06-10', '2020-06-23', '2020-06-30', 'Livré', '456-6073 Dui. St.', '456-6073 Dui. St.', 101);

-- --------------------------------------------------------

--
-- Structure de la table `orders_details`
--

CREATE TABLE `orders_details` (
  `ode_id` int(11) NOT NULL,
  `ode_quantity` int(11) NOT NULL,
  `ode_unit_price` decimal(7,2) NOT NULL,
  `ode_discount` decimal(4,2) DEFAULT NULL,
  `ode_ord_id` int(11) DEFAULT NULL,
  `ode_pro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders_details`
--

INSERT INTO `orders_details` (`ode_id`, `ode_quantity`, `ode_unit_price`, `ode_discount`, `ode_ord_id`, `ode_pro_id`) VALUES
(1, 5, '311.47', '2.00', 9, 7),
(2, 3, '311.47', '4.00', 2, 7),
(3, 3, '55.56', '5.00', 2, 2),
(4, 2, '79.99', '2.00', 3, 4),
(5, 7, '79.99', '6.00', 1, 4),
(6, 5, '55.56', '5.00', 7, 2),
(7, 9, '83.99', '3.00', 1, 10),
(8, 10, '261.00', '6.00', 10, 3),
(9, 8, '6.00', '6.00', 4, 8),
(10, 10, '781.00', '1.00', 3, 9);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_ref` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_stock` int(11) NOT NULL,
  `pro_stock_alert` int(11) NOT NULL,
  `pro_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_add_date` date NOT NULL,
  `pro_update_date` date DEFAULT NULL,
  `pro_blocked` tinyint(1) NOT NULL,
  `pro_sup_id` int(11) NOT NULL,
  `pro_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`pro_id`, `pro_name`, `pro_desc`, `pro_price`, `pro_ref`, `pro_stock`, `pro_stock_alert`, `pro_color`, `pro_photo`, `pro_add_date`, `pro_update_date`, `pro_blocked`, `pro_sup_id`, `pro_cat_id`) VALUES
(1, 'Guitare Électrique LA, Red + Pack Ampli', 'Le plus beau des cadeaux pour des premier pas dans la musique. La guitare électrique 3/4 LA est linstrument parfait pour débuter dans le monde du Rock n Roll. \r\nSes micros à simple bobinage vous permettent de remplir lair de sonorités délicates et nettes ou de sons puissants pleins de distorsion. Un pack offrant un excellent rapport qualité/prix avec un ampli de guitare \r\nélectrique 10 W un câble une sangle et un accordeur électronique. Profitez des mêmes caractéristiques que notre guitare électrique LA la plus vendue - mais dans une taille plus petite. Tout ce dont un guitariste \r\nen herbe a besoin.', '143.50', 'TRH45TOZ9HF', 3, 8, 'orange', 'https://images-na.ssl-images-amazon.com/images/I/4', '2021-01-10', '2021-01-07', 2, 6, 4),
(2, 'Martin Smith Kit de Guitare Acoustique avec Médiat', 'La guitare acoustique Martin Smith W100 est le choix préféré pour des milliers de guitaristes \r\npour les ges 11+ Conçu spécialement pour les étudiants cette pleine grandeur guitare acoustique est livré avec des cordes en acier sangle de guitare cordes de guitare de rechange et médiators de guitare \r\nCe W-100 guitare acoustique a une taille complète 39\'\' corps parfaitement profilée pour une position de lecture confortable et avait une cheville en bas singulier pour attacher \r\nvotre sangle de guitare', '55.56', 'SZT98BVB4TL', 10, 2, 'rouge', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-12-05', '2021-02-13', 1, 10, 4),
(3, 'BDK-1 Kit de Batterie pour Debutant de Taille Stan', 'Faites votre entrée dans le monde de la batterie. Idéale pour le jeu à domicile, cette batterie vous permet de jouer dans tous \r\nles styles : rock, pop et bien plus encore. La batterie pour débutant BDK-2 comprend tout ce dont vous aurez besoin pour devenir un meilleur batteur. ', '261.00', 'FIT04OWL9SR', 1, 5, 'vert', 'https://images-na.ssl-images-amazon.com/images/I/4', '2019-12-29', '2020-10-07', 2, 2, 13),
(4, 'Eastar Flute Traversiere EFL-1 Nickel Plaqué 16 Tr', 'Eastar propose un pack à prix intéressant pour toutes les personnes qui souhaitent apprendre la flûte traversière. Il comprend tout le nécessaire \r\npour démarrer sur de bonnes bases dont une flûte traversière EFL-1, un étui, un socle, un tournevis ainsi que des accessoires nécessaires à son entretien, tels qu\'un gant à polir, un tige de nettoyage et un \r\nchiffon de nettoyage. ', '79.99', 'EJJ89BUI1EN', 4, 5, 'violet', 'dapibus', '2021-02-20', '2020-06-04', 1, 9, 11),
(5, 'East Top 10 Hole 20 Tones Professional Diatonic Ha', 'L\'harmonica diatonique à 10 trous est au format de poche avec des extrémités entièrement fermées. Le format de poche est facile à transporter et facile à apprendre. Vous pouvez jouer une variété de morceaux \r\nde musique: blues, folk, rock, country, jazz. Convient aux activités de plein air telles que la fête, la performance et les voyages. ', '24.99', 'KWY33EKC6KN', 7, 3, 'violet', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-09-19', '2021-08-14', 2, 9, 12),
(6, 'Harpe irlandaise 12 cordes en bois de Sheesham / H', 'Harpe irlandaise 12 cordes en bois de Sheesham/rose. Étui de transport inclus. Harpe celtique \r\nirlandaise 12 cordes en bois de rose/Sheesham Cette harpe est fabriquée en bois de rose massif/bois de Sheesham, avec un bois de bouleau contreplaqué et de la frêne au dos. 12 cordes en nylon mono tech 100 % \r\njouables ', '146.23', 'EJD86CDN7UB', 10, 10, 'indigo', 'https://images-na.ssl-images-amazon.com/images/I/6', '2021-05-05', '2020-08-13', 1, 10, 7),
(7, 'Yinfente Violoncelle électrique acoustique 4/4 en ', 'Violoncelle de la marque Yinfente. Entièrement fabriqué à la main. \r\nvioloncelle électrique acoustique Bois d\'érable et d\'épicéa. Avec raccords en ébène. Son doux et charmant. Notre qualité de violoncelle est très bien. Vendre à beaucoup de pays, Tant de clients aiment \r\nbeaucoup ', '311.47', 'UDC34OGJ9FR', 1, 6, 'bleu', 'https://images-na.ssl-images-amazon.com/images/I/7', '2021-07-16', '2019-11-29', 1, 4, 6),
(8, 'A-Star REC01BE Flûte à bec soprano/Enregistreur De', 'La flûte à bec soprano A-Star est l\'instrument idéal pour les jeunes qui débutent dans l\'apprentissage de la musique. \r\nCet instrument au son exceptionnel est accompagné d\'une housse de protection et bénéficie d\'un rapport qualité/prix très avantageux. Extrêmement populaire et hautement recommandée, la flûte à bec soprano A-Star \r\nest fabriquée en plastique très résistant couleur crème et munie d\'un système de doigté baroque. ', '6.00', 'QVY72AVX6OG', 7, 7, 'rouge', 'https://images-na.ssl-images-amazon.com/images/I/7', '2019-11-06', '2020-12-02', 2, 6, 11),
(9, 'Vangoa Clavier électronique 88 touches avec suppor', 'Le piano à clavier pleine taille à 88 touches sensibles à la vélocité vous permet de jouer de nombreux niveaux de volume différents, de \r\ndoux à fort. Équipé d\'un double haut-parleur stéréo, vous plongez dans le merveilleux monde de la musique, adapté aux artistes de différents niveaux, en particulier pour les débutants, les intermédiaires, les \r\nmélomanes et plus encore. ', '781.00', 'XTX77EUD2OP', 8, 9, 'orange', 'Maecenas', '2021-08-26', '2019-12-18', 2, 6, 8),
(10, 'Eastar Violon 3/4 avec Etui, Accordeur, Epaulière,', 'Sa table est en épicéa, son dos et ses éclisses sont en érable. Sa touche, sa mentonnière et ses chevilles sont quant à eux en ébène. \r\nPour un accordage simplifié et fiable, des tendeurs de précision sont présents sur le cordier. Le violon est totalement fabriqué à la main. Ce très bel instrument possède une belle finition antique avec un vernis \r\nappliqué semi-manuellement et de jolis filets incrustés. Ce violon est basé sur une conception sérieuse et robuste.', '83.99', 'CUX73ZDA3DG', 8, 7, 'orange', 'https://images-na.ssl-images-amazon.com/images/I/8', '2020-04-22', '2020-02-02', 1, 4, 5);

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_countries` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_mail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_phone` int(11) NOT NULL,
  `sup_zipcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_name`, `sup_address`, `sup_city`, `sup_countries`, `sup_mail`, `sup_phone`, `sup_zipcode`) VALUES
(1, 'Pede Institute', '72 Ante Av.', 'Lille', 'France', 'a@aodiosemper.org', 333912771, 77866),
(2, 'Nam Interdum Incorporated', '154 Av. Foch', 'Arras', 'France', 'imperdiet@In.edu', 131109232, 58652),
(3, 'Risus LLC', '1446 Vulputate Avenue', 'Milici', 'Canada', 'congue.In.scelerisque@laciniaSedcongue.net', 574248792, 66335),
(4, 'Vel Pede Blandit PC', '545 Nec Av.', 'Sapele', 'France', 'sed@scelerisquedui-co.uk', 675868438, 65877),
(5, 'Velit Cras Lorem Industries', '4845 Nascetur Avenue', 'Opheylissem', 'Belgique', 'Etiam.ligula.tortor@ante.com', 286007631, 56584),
(6, 'Enim Corp.', '2132 Mozart Street', 'Sachs Harbour', 'Canada', 'nibh.Quisque@semmolestiesodales.net', 838828762, 73554),
(7, 'Turpis Egestas LLC', '183 Phasellus Ave', 'Lago Verde', 'Belgique', 'feugiat.Sed@aliquet.com', 811196271, 82411),
(8, 'Felis Donec Tempor Incorporated', '927 Quis Street', 'Cottbus', 'France', 'tortor@Donec.net', 137836966, 47490),
(9, 'Aliquam Eros Turpis Corp.', '476 Non St.', 'Cap-de-la-Madeleine', 'France', 'lectus@anteMaecenasmi.fr', 603139476, 24918),
(10, 'Arcu Iaculis Enim Corp.', '858 Common Ave', 'Buggenhout', 'Canada', 'Aliquam.erat.volutpat@eunulla.ca', 624070976, 12853);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_products_suppliers`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `v_products_suppliers` (
`pro_id` int(11)
,`pro_name` varchar(50)
,`pro_desc` text
,`pro_price` decimal(7,2)
,`pro_ref` varchar(15)
,`pro_stock` int(11)
,`pro_stock_alert` int(11)
,`pro_color` varchar(50)
,`pro_photo` varchar(50)
,`pro_add_date` date
,`pro_update_date` date
,`pro_blocked` tinyint(1)
,`pro_sup_id` int(11)
,`pro_cat_id` int(11)
,`sup_id` int(11)
,`sup_name` varchar(50)
,`sup_address` text
,`sup_city` varchar(50)
,`sup_countries` varchar(50)
,`sup_mail` varchar(50)
,`sup_phone` int(11)
,`sup_zipcode` int(11)
);

-- --------------------------------------------------------

--
-- Structure de la vue `v_products_suppliers`
--
DROP TABLE IF EXISTS `v_products_suppliers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_products_suppliers`  AS SELECT `products`.`pro_id` AS `pro_id`, `products`.`pro_name` AS `pro_name`, `products`.`pro_desc` AS `pro_desc`, `products`.`pro_price` AS `pro_price`, `products`.`pro_ref` AS `pro_ref`, `products`.`pro_stock` AS `pro_stock`, `products`.`pro_stock_alert` AS `pro_stock_alert`, `products`.`pro_color` AS `pro_color`, `products`.`pro_photo` AS `pro_photo`, `products`.`pro_add_date` AS `pro_add_date`, `products`.`pro_update_date` AS `pro_update_date`, `products`.`pro_blocked` AS `pro_blocked`, `products`.`pro_sup_id` AS `pro_sup_id`, `products`.`pro_cat_id` AS `pro_cat_id`, `suppliers`.`sup_id` AS `sup_id`, `suppliers`.`sup_name` AS `sup_name`, `suppliers`.`sup_address` AS `sup_address`, `suppliers`.`sup_city` AS `sup_city`, `suppliers`.`sup_countries` AS `sup_countries`, `suppliers`.`sup_mail` AS `sup_mail`, `suppliers`.`sup_phone` AS `sup_phone`, `suppliers`.`sup_zipcode` AS `sup_zipcode` FROM (`products` join `suppliers` on((`products`.`pro_sup_id` = `suppliers`.`sup_id`))) ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `cat_parent_id` (`cat_parent_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`),
  ADD KEY `cus_emp_id` (`cus_emp_id`);

--
-- Index pour la table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dep_id`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `emp_dep_id` (`emp_dep_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `ord_cus_id` (`ord_cus_id`);

--
-- Index pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`ode_id`),
  ADD KEY `ode_pro_id` (`ode_pro_id`),
  ADD KEY `ode_ord_id` (`ode_ord_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `pro_cat_id` (`pro_cat_id`),
  ADD KEY `pro_sup_id` (`pro_sup_id`);

--
-- Index pour la table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT pour la table `departments`
--
ALTER TABLE `departments`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `ode_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`cat_parent_id`) REFERENCES `categories` (`cat_id`);

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`cus_emp_id`) REFERENCES `employees` (`emp_id`);

--
-- Contraintes pour la table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`emp_dep_id`) REFERENCES `departments` (`dep_id`);

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ord_cus_id`) REFERENCES `customers` (`cus_id`);

--
-- Contraintes pour la table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`ode_pro_id`) REFERENCES `products` (`pro_id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`ode_ord_id`) REFERENCES `orders` (`ord_id`);

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pro_cat_id`) REFERENCES `categories` (`cat_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`pro_sup_id`) REFERENCES `suppliers` (`sup_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
