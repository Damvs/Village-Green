-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 05 mars 2021 à 14:42
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
-- Base de données : `gescom_afpa`
--

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_dep_id`) VALUES
(1,'MOLETTE', 'Denis', '27 avenue Paul Lepoulpe', '80000', 'Amiens', 'dmolette@blabla.fr', '0102030405', 4),
(2,'NAGER', 'Emma', '14 rue Tabaga', '80300', 'Albert', 'emmanager@laposte.net', '0102030405', 6),
(3,'LEBOSSE', 'Hugo', '28 mail Ludovic Cruchot', '75001', 'Paris', 'leboss@jarditou.com', '0102030405', 8),
(4,'LAPAGE', 'Edith', '22 rue Stevy Boulay', '60300', 'Senlis', 'lapage60300@yahoo.fr', '0102030405', 6),
(5,'DRESSAMERE', 'Yvan', '224 avenue Caumartin', '75009', 'Paris', 'yvan75009@outlook.com', '0102030405', 6),
(6,'MERCE', 'Coco', '56 cours Loana', '02000', 'Laon', 'merce@wazaa.net', '0102030405', 6),
(7,'AMAR', 'Yann', '4 rue du papillon de lumière', '62000', 'Arras', 'amar@azerty.com', '0102030405', 6),
(8,'ASAP', 'Liliane', 'Appartement 202-3846 Suspendisse Chemin', 'FA46 ', 'Pekanbaru', 'convallis@Integer.com', '0102030405', 6),
(9,'LAVISSE', 'Edouard', '131-3667 Arcu. Rd.', '80136', 'Rivery', 'nulla.magna@Proinvel.co.uk', '0102030405', 4),
(10,'HILLARY', 'Dorian', '6824 Placerat. Route', '12787', 'Parramatta', 'mus@Morbi.co.uk', '0102030405', 6),
(11,'POUTIN', 'Vladimir', '251-633 Convallis Impasse', '8373 ', 'Colchester', 'facilisis.vitae.orci@indolor.net', '0102030405', 10),
(12,'DECLAN', 'Richard', 'Appartement 870-7677 Magna Av.', '42980', 'Dornbirn', 'Mauris@amet.ca', '0102030405', 5),
(13,'ABRAHAM', 'François', '612-4178 Urna Chemin', '87784', 'Llanidloes', 'sodales@malesuadaInteger.com', '0102030405', 6),
(14,'COOPER', 'Dale', '6954 Mauris Av.', '17543', 'Kalyan', 'Nunc.ullamcorper.velit@penatibuset.org', '0102030405', 6),
(15,'FULLER', 'Christophe', '977-8389 Dui. Ave', '9229', 'Konstanz', 'semper@metus.edu', '0102030405', 2),
(16,'TRON', 'Paul', '2323 Metus. Rue', '20403', 'Jumet', 'eu@gravidamauris.org', '0102030405', 6),
(17,'HASZIC', 'Alec', '370-2193 Sed Rd.', '39132', 'Orangeville', 'cursus.Nunc@amet.edu', '0102030405', 6),
(18,'VADENT', 'Sophie', 'CP 131, 8783 Nisi Impasse', '26972', 'Burnaby', 'a@vitaepurusgravida.org', '0102030405', 2),
(19,'BALZAC', 'Jérémy', 'CP 630, 2906 Mollis Route', '0247', 'Colchester', 'penatibus.et@sempertellusid.net', '0102030405', 6),
(20,'YETTA', 'Ahmed', '228-2670 Luctus. Route', '85726', 'Havillers', 'non@ac.edu', '0102030405', 6),
(21,'CHERET', 'Philippe', '443 Non Rue', '58015', 'Dolcedo', 'placerat.augue.Sed@mi.net', '0102030405', 6),
(22,'FERRIS', 'Anne', 'Appartement 172-7219 Ante Chemin', '5155 ', 'North Waziristan', 'Duis.risus.odio@at.com', '0102030405', 6),
(23,'TERIEUR', 'Alex', 'Appartement 733-1291 Velit Av.', '60100', 'Creil', 'alex@integereu.edu', '0102030405', 6),
(24,'JANA', 'Vincent', '1229 Laoreet Av.', '07789', 'Bad Ischl', 'lacus@iderat.org', '0102030405', 6),
(25,'LABALLE', 'Willy', '113-6834 At Rd.', 'B4X 7', 'Labuissire', 'Suspendisse@nec.ca', '0102030405', 6),
(26,'COCU', 'Stéphanie', 'CP 382, 9910 Massa. Avenue', '50718', 'Regina', 'ac.metus.vitae@quamquisdiam.net', '0102030405', 2),
(27,'DELISLE', 'Stéphane', 'Appartement 406-5833 Facilisis, Av.', '26986', 'Sainte-Flavie', 'natoque.penatibus.et@utnullaCras.edu', '0102030405', 6),
(28,'FULTON', 'Bernard', 'Appartement 896-3857 Sit Rue', '78933', 'Versailles', 'elit.elit@blanditNamnulla.ca', '0102030405', 8),
(29,'KELSIE', 'Kirsten', '5586 Mus. Ave', 'C2W 9', 'Kumluca', 'pharetra.Quisque@Suspendisse.net', '0102030405', 6),
(30,'RHONDA', 'Bradley', '7331 Pede. Rue', '01971', 'Pishin Valley', 'Nunc.lectus@leoMorbi.co.uk', '0102030405', 5),
(31,'ASPEN', 'Casey', '7026 Orci Route', '13075', 'Impe', 'enim@ornareelitelit.co.uk', '0102030405', 6),
(32,'KELSIE', 'Nadia', '723 Orci Rd.', '9989', "Isola del Gran Sasso d\'Italia", 'amet.risus.Donec@bibendumDonec.ca', '0102030405', 2),
(33,'DUMOULIN', 'Isabelle', 'Appartement 235-4026 Maecenas Chemin', '77-30', 'Glovertown', 'amet@habitant.edu', '0102030405', 5),
(34,'DRAKE', 'Ray', '902-1314 Ut Route', '93131', 'Sorbo Serpico', 'sapien.cursus@Donec.com', '0102030405', 6),
(35,'RICHARD', 'Destiny', '5004 Tellus Ave', '39013', 'Ambon', 'consectetuer@laciniaSedcongue.com', '0102030405', 6),
(36,'DUFOURD', 'Steve', '356-7367 Nec, Impasse', '30661', 'Bonnert', 'in@Nunc.edu', '0102030405', 6),
(37,'BECK', 'Carl', '9194 Nulla Ave', '87-14', 'Paris', 'tellus@et.ca', '0102030405', 6),
(38,'SIMONE', 'George', '700-7880 Gravida Av.', '52439', 'Allentown', 'nostra@fringillaest.ca', '0102030405', 6),
(39,'DORIAN', 'Zelda', 'CP 315, 4816 Dui. Chemin', '13801', 'Saravena', 'vehicula@turpis.org', '0102030405', 6),
(40,'FARINI', 'Jana', 'CP 578, 8898 Purus Impasse', '91148', 'Wiener Neustadt', 'cursus.in.hendrerit@egetvariusultrices.ca', '0102030405', 6),
(41,'GINGER', 'Tara', 'Appartement 254-6736 Sit Route', '74002', 'Amstelveen', 'iaculis@rutrum.org', '0102030405', 6),
(42,'CHARLOT', 'Elijah', '725-5577 Dictum Chemin', '63145', 'Annan', 'luctus.et@Nunc.net', '0102030405', 6),
(43,'DUPOND', 'Adrian', 'CP 919, 5276 Leo. Rue', '18974', 'Perquenco', 'Lorem.ipsum@amagnaLorem.net', '0102030405', 6),
(44,'ISAAC', 'Christine', 'Appartement 717-2181 Et Impasse', '88779', 'Roux', 'lacus@Donecnonjusto.co.uk', '0102030405', 6),
(45,'QUAMAR', 'Allistair', 'Appartement 223-3446 Mollis Rd.', '55469', 'Güssing', 'orci@ultricesiaculis.ca', '0102030405', 6),
(46,'PRINCE', 'Laurent', '665 Nibh. Rd.', '75217', 'Driffield', 'Curae.Phasellus.ornare@quamdignissimpharetra.net', '0102030405', 4),
(47,'DUMAS', 'Ingrid', '396-7762 Magna. Route', '50406', 'Frigento', 'in.molestie@anteipsumprimis.org', '0102030405', 6),
(48,'RAMERY', 'Bruno', '863 Nec Ave', '21485', 'Sint-Kruis-Winkel', 'at.lacus.Quisque@maurisipsum.edu', '0102030405', 5),
(49,'MALACHI', 'René', 'Appartement 165-7157 Auctor Impasse', '40583', 'Wambeek', 'tincidunt.orci@dolorvitae.co.uk', '0102030405', 6),
(50,'RENSTER', 'Jeannette', 'CP 758, 4652 Mauris Chemin', '85874', 'Gelbressee', 'iaculis@elementumat.ca', '0102030405', 6),
(51,'BERTAUX', 'Marc', '1664 Bibendum Avenue', '3274', 'Allein', 'mauris.blandit@temporarcuVestibulum.org', '0102030405', 6),
(52,'RIGEL', 'Armand', 'CP 694, 2496 Eget Rue', '1104', 'Drachten', 'Aenean.eget.metus@orciin.com', '0102030405', 6),
(53,'WYLIE', 'Jean-Michel', 'CP 725, 3993 Nec Av.', '97875', 'Maule', 'ac.turpis@maurissapiencursus.co.uk', '0102030405', 6),
(54,'HONORA', 'Anita', '414-9179 Phasellus Rue', '6971', 'Werder', 'Suspendisse.commodo.tincidunt@quispede.org', '0102030405', 10),
(55,'LANNOY', 'Julia', 'Appartement 111-9165 Metus. Rue', '0521 ', 'Mata de Plátano', 'Mauris.ut@urnajusto.co.uk', '0102030405', 5),
(56,'RICHAUMONT', 'Kendall', '954-5221 Dictum Avenue', '45146', 'Gulfport', 'natoque.penatibus.et@ametconsectetueradipiscing.net', '0102030405', 5),
(57,'MALIK', 'Keiko', 'Appartement 633-956 Quis, Rd.', '45000', 'Orléans', 'pede.ultrices.a@lacusEtiam.org', '0102030405', 6),
(58,'HECTOR', 'Macaulay', '2095 In Ave', '52-91', 'Emarèse', 'sem.Nulla.interdum@lobortis.ca', '0102030405', 6),
(59,'HANNAH', 'Amity', '537-1971 Vestibulum Rd.', '8203 ', 'Palagano', 'fermentum@quisturpisvitae.co.uk', '0102030405', 6),
(60,'HEDY', 'Katell', 'CP 850, 1578 In Rue', '9661', "Connah\'s Quay", 'lorem.sit.amet@pellentesque.co.uk', '0102030405', 2),
(61,'BELL', 'Oleg', 'Appartement 679-9483 Fringilla Route', 'B4 6E', 'Parndorf', 'Aenean.massa.Integer@dui.org', '0102030405', 2),
(62,'PAULA', 'Tasha', 'Appartement 193-7862 Mollis. Rue', '24446', 'McCallum', 'adipiscing.lobortis.risus@semmolestiesodales.com', '0102030405', 6),
(63,'POPOV', 'Yuri', '6111 Risus. Ave', '60214', 'Compiègne', 'yuri@gmail.com', '0102030405', 6),
(64,'DENIS', 'Jeanine', '8325 Ornare Avenue', '71414', 'Colico', 'Integer.id@blanditviverraDonec.edu', '0102030405', 6),
(65,'KEELY', 'Nassim', '14 avenue Isabelle Herdhebaut', '94086', 'San Juan de Dios', 'n.keely@yahoo.fr', '0102030405', 1),
(66,'FULTON', 'Michel', '245 avenue du Président Roosevelt', '80000', 'Amiens', 'faucibus@leoMorbi.org', '0102030405', 6),
(67,'Cole', 'ALLISTAIR', '27 rue Denis Garnier', '58318', 'Sierning', 'vel@vitae.net', '0102030405', 6),
(68,'JOEL', 'Rose', '855-6714 Metus. Rue', '00046', 'Lestizza', 'risus.a@odio.com', '0102030405', 6),
(69,'PRAZART', 'Emmanuel', '8515 Nullam Av.', '80500', 'Montdidier', 'dolor.tempus@augueid.com', '0102030405', 6),
(70,'GUERAFI', 'Hakim', '480-2381 Volutpat. Avenue', '41233', 'Porto Cesareo', 'hguerafi@laposte.net', '0102030405', 3),
(71,'AIMEE', 'Germaine', '5466 Nec Avenue', '96176', 'Melipilla', 'lorem@sociis.edu', '0102030405', 6),
(72,'CARTER', 'Robin', '497 Chemin Ante', '60195', 'Duncan', 'nisi@blandit.ca', '0102030405', 3),
(73,'LIRMA', 'Hugues', '91 bis rue Jarno', '62000', 'Arras', 'hugues.lirma@jarditou.com', '0102030405', 6),
(74,'FITZGERALD', 'Neil', 'CP 545, 2293 Aenean Rue', '4431', 'Algarrobo', 'Quisque.purus@Donectincidunt.org', '0102030405', 6),
(75,'AINSLEY', 'Hayden', '633-8228 Et Av.', '6878', 'Güstrow', 'Etiam@Cumsociis.ca', '0102030405', 3),
(76,'HILARY', 'Zia', '2945 Volutpat. Av.', 'T0X 3', 'Rabbi', 'ut.quam.vel@semut.net', '0102030405', 6),
(77,'MADELINE', 'Jonas', 'Appartement 521-8237 Ligula. Chemin', 'Z4232', 'Noginsk', 'ac.metus@tellusloremeu.net', '0102030405', 3),
(78,'TIMON', 'Alyssa', 'CP 503, 6759 Ultricies Avenue', '79444', 'Rockhampton', 'Sed.et.libero@necorci.org', '0102030405', 6),
(79,'PETER', 'Carly', 'Appartement 792-2242 Semper Rd.', '29429', 'Greater Sudbury', 'Etiam.imperdiet@Cumsociisnatoque.ca', '0102030405', 3),
(80,'TEEGAN', 'Benjamin', '915-3308 Morbi Avenue', '8258', 'Bottidda', 'habitant.morbi.tristique@tempor.com', '0102030405', 1),
(81,'WILLA', 'Nina', 'CP 708, 8796 Proin Avenue', '6562', 'Innsbruck', 'eros@sem.edu', '0102030405', 6),
(82,'CHANEY', 'Irma', '4854 Proin Chemin', '22235', 'Fort Providence', 'ultricies.sem.magna@non.com', '0102030405', 6),
(83,'LAITH', 'Ariel', 'CP 298, 9838 Porttitor Rue', '40182', 'Wilmington', 'non.bibendum@penatibus.co.uk', '0102030405', 3),
(84,'CALDWELL', 'Megan', 'CP 183, 6687 Vel Ave', '71913', 'Leerbeek', 'Proin.sed@tellusPhaselluselit.ca', '0102030405', 6),
(85,'HERMAN', 'Alan', 'CP 248, 4557 Augue. Route', '03002', 'Bridgeport', 'Phasellus@molestietortor.org', '0102030405', 6),
(86,'MICHAEL', 'Quinn', '777-2337 Pretium Chemin', '6350', 'Bilaspur', 'tellus@Uttinciduntvehicula.edu', '0102030405', 6),
(87,'DOLLE-RAYMOND', 'Christian', '3578 Fermentum Avenue', '69961', 'Greenwich', 'lobortis.quis@Phasellus.net', '0102030405', 6),
(88,'CALLUM', 'Howard', '7637 Nisi Av.', '16638', 'Gagliano del Capo', 'Aliquam@euligulaAenean.net', '0102030405', 6),
(89,'KEANE', 'Ashton', '772-9554 Ipsum Av.', '4095 ', 'Khanpur', 'metus@eratvel.edu', '0102030405', 6),
(90,'RANA', 'Charles-Henri', '2425 Aliquam Impasse', '10892', 'La Roche-sur-Yon', 'nisi.nibh@diamSeddiam.ca', '0102030405', 6),
(91,'CARDON', 'Yvonne', '986-8855 Lacus. Ave', '1865', 'Corozal', 'Integer@metuseu.edu', '0102030405', 1),
(92,'MASON', 'Martin', 'Appartement 397-5505 Leo, Avenue', '83701', 'General Lagos', 'a.facilisis@mollis.com', '0102030405', 3),
(93,'ADENA', 'Dorothée', '5988 Varius Chemin', '1666', 'Bonvicino', 'sem.consequat.nec@sagittisDuis.co.uk', '0102030405', 6),
(94,'ZELDA', 'Britney', '5 rue de la mine', '62300', 'Lens', 'pellentesque@neque.edu', '0102030405', 5),
(95,'RENARD', 'Caroline', '142-9516 Sed Rd.', '5685', 'Ross-on-Wye', 'mauris.Integer@tristiquesenectuset.net', '0102030405', 6),
(96,'GISELA', 'Guy', '440-6585 Risus. Route', '80800', 'Corbie', 'facilisis@nullamagnamalesuada.edu', '0102030405', 4),
(97,'ROSOFT', 'Mike', '646-1281 Vestibulum, Route', '15948', 'Barranquilla', 'id.libero.Donec@idmagna.com', '0102030405', 10),
(98,'MARAT', 'Hans', '8882 Sollicitudin Chemin', '45142', 'Solihull', 'ornare.sagittis@eleifendCras.net', '0102030405', 10),
(99,'LEMAIRE', 'Pierre-Jean', 'CP 456, 6156 Orci Ave', '96335', 'Nottingham', 'nulla.at.sem@anteblandit.ca', '0102030405', 10),
(100,'TRENET', 'Nathan', 'CP 286, 8977 Magna. Rue', '63661', 'Kasli', 'Lorem.ipsum.dolor@facilisis.ca', '0102030405', 10),
(101,'MECHELLE', 'Leila', 'CP 295, 7493 Sit Avenue', '87341', 'Rosarno', 'mi@tempordiamdictum.org', '0102030405', 6),
(102,'DEVIN', 'Timothée', 'Appartement 161-9249 Ac Rd.', '55053', 'Wismar', 'fringilla@orciDonec.ca', '0102030405', 10),
(103,'PALMER', 'Mia', '1044 Vivamus Ave', 'K1K 9', 'Rajanpur', 'et@lectus.edu', '0102030405', 6),
(104,'QUIN', 'Josiah', '1390 Sollicitudin Chemin', '07573', 'Kanpur Cantonment', 'tellus.imperdiet@cursuspurusNullam.org', '0102030405', 5),
(105,'COHEN', 'David', '4687 Ullamcorper Avenue', '41-72', 'Augusta', 'faucibus.orci.luctus@faucibus.com', '0102030405', 1),
(106,'XENOS', 'Illiana', '8543 Sed Impasse', '73070', 'Castelvecchio di Rocca Barbena', 'sem.mollis.dui@tinciduntadipiscingMauris.edu', '0102030405', 10),
(107,'MANNICK', 'Sébastien', 'CP 797, 7428 At, Av.', '53215', 'Söderhamn', 'Donec@quamafelis.edu', '0102030405', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
