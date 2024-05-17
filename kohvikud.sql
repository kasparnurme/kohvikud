-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 17, 2024 kell 11:19 EL
-- Serveri versioon: 10.4.27-MariaDB
-- PHP versioon: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentaar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukohad_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentaar`, `hinnang`, `toidukohad_id`) VALUES
(1, 'Hyatt, Bashirian and McClure', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 7, 50),
(2, 'Marvin-Gleason', 'Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 10, 98),
(3, 'Conn and Sons', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauri', 8, 4),
(4, 'Mante, Connelly and Schuppe', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 5, 79),
(5, 'Abbott, Parker and Kiehn', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve', 4, 57),
(6, 'Kirlin, Schmeler and Weber', 'Curabitur gravida nisi at nibh.', 7, 29),
(7, 'Donnelly-Haag', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit ', 8, 35),
(8, 'Wolff, McLaughlin and Crooks', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin ', 10, 52),
(9, 'McLaughlin-Williamson', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ', 9, 52),
(10, 'Farrell, Wilkinson and Ferry', 'Aliquam erat volutpat.', 9, 80),
(11, 'D\'Amore-Turcotte', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoq', 8, 69),
(12, 'Johnson-Barton', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat.', 5, 67),
(13, 'Treutel and Sons', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 6, 91),
(14, 'Mante-Hudson', 'Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 2, 61),
(15, 'Bode Group', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc.', 5, 47),
(16, 'Grady Inc', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 5, 67),
(17, 'Haley-Erdman', 'Pellentesque at nulla. Suspendisse potenti.', 4, 58),
(18, 'Torp Inc', 'Proin at turpis a pede posuere nonummy. Integer non velit.', 1, 81),
(19, 'Grady Inc', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 3, 44),
(20, 'Reilly-Jenkins', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat conval', 2, 82),
(21, 'Block-Feest', 'Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 4, 28),
(22, 'Parker-Pouros', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 7, 83),
(23, 'Keeling-Wehner', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris eni', 1, 61),
(24, 'Ziemann Group', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibu', 10, 56),
(25, 'Weimann, Medhurst and Larson', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus ', 8, 36),
(26, 'Champlin Group', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vita', 5, 38),
(27, 'Schaefer Inc', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integ', 7, 96),
(28, 'Jakubowski-Dicki', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 9, 84),
(29, 'Kihn, Wiegand and Hagenes', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 4, 90),
(30, 'Jones-Predovic', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 5, 78),
(31, 'Gutkowski-Pollich', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan', 8, 15),
(32, 'Gibson Group', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 9, 98),
(33, 'Davis and Sons', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 10, 99),
(34, 'Oberbrunner Group', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio.', 4, 82),
(35, 'Dare, Nitzsche and Runolfsdottir', 'Integer non velit.', 10, 36),
(36, 'Fritsch and Sons', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 6, 17),
(37, 'Flatley-Kub', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula ve', 5, 26),
(38, 'Collins-McLaughlin', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, 10),
(39, 'Little Inc', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam', 8, 97),
(40, 'Pollich, Borer and Maggio', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac conse', 6, 35),
(41, 'Bode, MacGyver and West', 'Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat du', 2, 26),
(42, 'Jast, Pollich and Waelchi', 'Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales s', 2, 39),
(43, 'Collins, Stracke and Ondricka', 'Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 3, 33),
(44, 'Hermann, Raynor and Wilkinson', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 9, 30),
(45, 'Langosh, Moen and Gottlieb', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 7, 5),
(46, 'Schuppe-Herzog', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 8, 3),
(47, 'Mohr LLC', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 5, 52),
(48, 'Swift-Kutch', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue qu', 4, 18),
(49, 'Langosh, Satterfield and Kerluke', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 4, 85),
(50, 'Grady-Nicolas', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh.', 3, 61),
(51, 'Wuckert-Howell', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 5, 71),
(52, 'Sanford and Sons', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. V', 9, 57),
(53, 'Kassulke, Hills and Kassulke', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ', 3, 42),
(54, 'Haag-Lakin', 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 8, 30),
(55, 'Osinski-Runolfsdottir', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. S', 5, 18),
(56, 'Hilll, Stehr and Stanton', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 7, 61),
(57, 'Cummings, Mohr and Cormier', 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin ', 4, 9),
(58, 'O\'Hara, Swift and Bogisich', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.', 1, 29),
(59, 'Homenick-Hoppe', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, 34),
(60, 'Homenick-Bechtelar', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 3, 80),
(61, 'Runolfsdottir, Boyle and Dibbert', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 1, 100),
(62, 'Swaniawski, Osinski and Hills', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien ia', 3, 4),
(63, 'Marvin-Reynolds', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla', 4, 77),
(64, 'McGlynn, Torp and Christiansen', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 9, 85),
(65, 'Murazik and Sons', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 10, 92),
(66, 'Wolf and Sons', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 7, 1),
(67, 'Dare-Bergnaum', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. ', 1, 47),
(68, 'Ferry, Funk and Williamson', 'Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Dui', 4, 97),
(69, 'Kuphal Inc', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecen', 8, 64),
(70, 'Stokes LLC', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 5, 54),
(71, 'Anderson LLC', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum.', 5, 17),
(72, 'Bartoletti-O\'Connell', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 3, 100),
(73, 'Cassin Inc', 'Integer a nibh. In quis justo.', 6, 46),
(74, 'Adams Group', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 9, 28),
(75, 'Carter, Becker and McCullough', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante.', 10, 17),
(76, 'Cole Inc', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 9, 80),
(77, 'Schmeler-Jacobi', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam', 6, 34),
(78, 'Grady Group', 'Duis ac nibh.', 10, 39),
(79, 'Erdman Group', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 9, 78),
(80, 'Casper LLC', 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.', 3, 68),
(81, 'Cartwright, Stracke and Auer', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo.', 8, 58),
(82, 'Beer LLC', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui.', 10, 91),
(83, 'Gibson and Sons', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', 9, 85),
(84, 'Hoeger-Rice', 'Sed sagittis.', 1, 7),
(85, 'Hodkiewicz-Hyatt', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue element', 4, 48),
(86, 'Schamberger-Hermiston', 'Integer ac leo. Pellentesque ultrices mattis odio.', 6, 79),
(87, 'Emmerich LLC', 'Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet ', 10, 29),
(88, 'Will, Strosin and Kassulke', 'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', 9, 88),
(89, 'Gerhold-Ledner', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 2, 39),
(90, 'Mante-Bednar', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 10, 6),
(91, 'Parker Inc', 'Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 10, 49),
(92, 'Bernier-Mann', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor p', 5, 1),
(93, 'DuBuque-Keebler', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et t', 6, 51),
(94, 'Marks Inc', 'Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', 5, 75),
(95, 'Sipes, Roob and Boyle', 'Etiam vel augue.', 5, 20),
(96, 'Yost Group', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 8, 74),
(97, 'Bradtke Group', 'Suspendisse potenti.', 1, 7),
(98, 'Goyette-Hahn', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', 10, 70),
(99, 'McCullough-Feeney', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 8, 50),
(100, 'Mertz and Sons', 'Duis at velit eu est congue elementum. In hac habitasse platea dictumst.', 5, 80);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `keskmine_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `keskmine_hinne`, `hinnatud`) VALUES
(1, 'Kathye', 'Sơn Tịnh', 6.4, 6),
(2, 'Felike', 'Kaloyanovo', 5.7, 64),
(3, 'Damian', 'Candelária', 5.1, 74),
(4, 'Kelsi', 'Dasol', 3.9, 42),
(5, 'Saxe', 'Itaparica', 2, 26),
(6, 'Karita', 'Buenavista', 1.9, 25),
(7, 'Boniface', 'Naas', 5.8, 34),
(8, 'Maris', 'Victoria', 7.1, 89),
(9, 'Adler', 'Hirado', 1.1, 56),
(10, 'Ava', 'Baicun', 6, 19),
(11, 'Faith', 'Troitsk', 8.7, 53),
(12, 'Gaston', 'Datarkadu', 4.3, 54),
(13, 'Saundra', 'Hullo', 3.7, 11),
(14, 'Donella', 'Satowebrang', 5.7, 100),
(15, 'Janelle', 'Bakalang', 5.7, 20),
(16, 'Brant', 'Morro do Chapéu', 9.4, 7),
(17, 'Ermin', 'Megalochórion', 3.5, 38),
(18, 'Kenton', 'Monywa', 6.6, 79),
(19, 'Jarrad', 'Abbeville', 9.2, 81),
(20, 'Brian', 'Ferkessédougou', 7.8, 90),
(21, 'Evin', 'Mitsuke', 3.4, 100),
(22, 'Anette', 'Tadabliro', 1.5, 27),
(23, 'Dill', 'Puerto Cisnes', 5.2, 61),
(24, 'Faun', 'Lingqiao', 9.5, 93),
(25, 'Kimbell', 'Santol', 6.2, 15),
(26, 'Mace', 'Międzyzdroje', 9.3, 77),
(27, 'Roddy', 'Villa Nueva', 7.2, 13),
(28, 'Kevan', 'Castelo', 2.6, 90),
(29, 'Roseanne', 'San Juan de Dios', 7.2, 56),
(30, 'Jeannie', 'Vergara', 9.2, 76),
(31, 'Adolphus', 'Aparecida de Goiânia', 2, 83),
(32, 'Mair', 'Yuejin', 3.4, 19),
(33, 'Pearline', 'Ulaan-Uul', 5.9, 87),
(34, 'Chilton', 'Tsimlyansk', 7.6, 31),
(35, 'Lorilee', 'Armenia', 9.8, 91),
(36, 'Chiquia', 'Huế', 5.9, 31),
(37, 'Quinlan', 'Seixas do Douro', 4.3, 60),
(38, 'Clare', 'Sonlit', 1.5, 12),
(39, 'Freddie', 'Shuibian', 7.2, 63),
(40, 'Sayres', 'Hudson', 7.2, 64),
(41, 'Lynette', 'Hudai', 5.4, 45),
(42, 'Elsworth', 'Meipu', 5.4, 95),
(43, 'Lina', 'Jiangduo', 1.6, 49),
(44, 'Gerladina', 'Gorey', 4.4, 24),
(45, 'Ortensia', 'Shaft', 7.7, 7),
(46, 'Cale', 'Nacka', 1.9, 9),
(47, 'Roxy', 'Pasatan', 4.4, 99),
(48, 'Clive', 'Agassiz', 6, 83),
(49, 'Dore', 'Nagano-shi', 2.9, 32),
(50, 'Ashlin', 'Kosong', 8.6, 8),
(51, 'Lazar', 'Popovi', 2.7, 7),
(52, 'Cosette', 'Klatakan', 4.2, 99),
(53, 'Tim', 'Pabuaran', 8.3, 93),
(54, 'Ives', 'Zhoutie', 1.5, 49),
(55, 'Jo', 'Kulevcha', 4.6, 42),
(56, 'Urson', 'Bélabo', 6.9, 88),
(57, 'Samson', 'Huanghuatan', 1.9, 19),
(58, 'Abrahan', 'Bol’shoye Skuratovo', 2.6, 86),
(59, 'Aili', 'Magallanes', 7.3, 37),
(60, 'Christal', 'Tongzha', 4.5, 23),
(61, 'Danyelle', 'Manila', 3, 98),
(62, 'Maribelle', 'Baranusa', 2, 26),
(63, 'Rachele', 'Piraí do Sul', 5, 5),
(64, 'Ferdinanda', 'Široki Brijeg', 7.2, 76),
(65, 'Farley', 'Doruchów', 8.9, 49),
(66, 'Laetitia', 'Caçapava', 6.2, 81),
(67, 'Nickey', 'Tegalsari', 6.1, 90),
(68, 'Bernhard', 'Krzykosy', 6.5, 70),
(69, 'Gates', 'Berëzovskiy', 8.8, 100),
(70, 'Melinde', 'Huacheng', 3.2, 60),
(71, 'Agnola', 'Sofiyivka', 2.7, 42),
(72, 'Deidre', 'Cerro', 5, 69),
(73, 'Georgie', 'Franco da Rocha', 4.2, 36),
(74, 'Buckie', 'Wantian', 8.7, 89),
(75, 'Hershel', 'Panaytayon', 3.4, 54),
(76, 'Gothart', 'Sicheng', 2.1, 46),
(77, 'Kikelia', 'Wiset Chaichan', 2.8, 96),
(78, 'Benedetta', 'Orekhovo-Zuyevo', 6.7, 70),
(79, 'Clovis', 'Pandaan', 2.7, 75),
(80, 'Margie', 'Xinsheng', 1.9, 95),
(81, 'Griffie', 'El Copey', 6.7, 8),
(82, 'Minerva', 'Bayangol', 3, 71),
(83, 'Emelen', 'María la Baja', 4.4, 23),
(84, 'Rivalee', 'Maliuzui', 6.4, 5),
(85, 'Neddie', 'Qīr Moāv', 3.5, 67),
(86, 'Nomi', 'Tayzhina', 8.4, 87),
(87, 'Lorita', 'Pā’īn-e Bāzār-e Rūdbār', 6, 25),
(88, 'Petronille', 'Soubré', 3.8, 6),
(89, 'Curran', 'Ipís', 8, 93),
(90, 'Westley', 'Osypenko', 6.3, 15),
(91, 'Cinderella', 'Nioro', 7.1, 79),
(92, 'Jehanna', 'San Jose', 9.2, 34),
(93, 'Cathlene', 'Markowa', 3.3, 87),
(94, 'Mercy', 'Angadanan', 1.1, 58),
(95, 'Aprilette', 'Pancur', 9.9, 79),
(96, 'Hobie', 'North Shore', 8.4, 37),
(97, 'Joye', 'Budapest', 1.7, 96),
(98, 'Brigitta', 'Ciemas', 4.4, 37),
(99, 'Godfrey', 'Londres', 8.7, 2),
(100, 'Jone', 'Dushanbe', 9.7, 96);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
