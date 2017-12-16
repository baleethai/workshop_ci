-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 05:07 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('open','draft') NOT NULL DEFAULT 'draft',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `author` int(11) DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `status` enum('open','draft') NOT NULL DEFAULT 'draft',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `author`, `view`, `image`, `status`, `created`) VALUES
(1, 'Quality Engineer', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', 1, 1, 'http://dummyimage.com/196x121.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:13'),
(2, 'Junior Executive', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 2, 2, 'http://dummyimage.com/220x235.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:13'),
(3, 'Associate Professor', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est', 3, 3, 'http://dummyimage.com/167x159.jpg/ff4444/ffffff', '', '2017-12-12 16:05:13'),
(4, 'Sales Representative', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 4, 4, 'http://dummyimage.com/120x112.bmp/ff4444/ffffff', 'open', '2017-12-12 16:05:13'),
(5, 'Senior Sales Associate', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 5, 5, 'http://dummyimage.com/169x154.png/ff4444/ffffff', 'open', '2017-12-12 16:05:13'),
(6, 'Account Representative I', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', 6, 6, 'http://dummyimage.com/225x167.png/5fa2dd/ffffff', '', '2017-12-12 16:05:13'),
(7, 'Geological Engineer', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', 7, 7, 'http://dummyimage.com/156x200.jpg/dddddd/000000', '', '2017-12-12 16:05:14'),
(8, 'VP Quality Control', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 8, 8, 'http://dummyimage.com/172x164.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:14'),
(9, 'Geological Engineer', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', 9, 9, 'http://dummyimage.com/101x126.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:14'),
(10, 'VP Marketing', 'lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', 10, 10, 'http://dummyimage.com/130x111.jpg/dddddd/000000', '', '2017-12-12 16:05:14'),
(11, 'Pharmacist', 'sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', 11, 11, 'http://dummyimage.com/106x240.png/dddddd/000000', '', '2017-12-12 16:05:14'),
(12, 'Senior Sales Associate', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 12, 12, 'http://dummyimage.com/215x248.jpg/ff4444/ffffff', 'open', '2017-12-12 16:05:14'),
(13, 'Data Coordiator', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 13, 13, 'http://dummyimage.com/124x143.bmp/dddddd/000000', 'open', '2017-12-12 16:05:14'),
(14, 'Structural Analysis Engineer', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', 14, 14, 'http://dummyimage.com/153x136.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:14'),
(15, 'Quality Control Specialist', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis', 15, 15, 'http://dummyimage.com/120x155.jpg/dddddd/000000', 'open', '2017-12-12 16:05:14'),
(16, 'Database Administrator III', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae', 16, 16, 'http://dummyimage.com/222x232.jpg/cc0000/ffffff', '', '2017-12-12 16:05:14'),
(17, 'Quality Control Specialist', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 17, 17, 'http://dummyimage.com/148x191.bmp/ff4444/ffffff', 'open', '2017-12-12 16:05:14'),
(18, 'Senior Sales Associate', 'duis bibendum morbi non quam nec dui luctus rutrum nulla', 18, 18, 'http://dummyimage.com/166x193.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:14'),
(19, 'Design Engineer', 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa', 19, 19, 'http://dummyimage.com/217x110.bmp/cc0000/ffffff', '', '2017-12-12 16:05:14'),
(20, 'Teacher', 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo', 20, 20, 'http://dummyimage.com/148x108.png/5fa2dd/ffffff', '', '2017-12-12 16:05:14'),
(21, 'Civil Engineer', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 21, 21, 'http://dummyimage.com/182x225.png/ff4444/ffffff', 'open', '2017-12-12 16:05:14'),
(22, 'Paralegal', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 22, 22, 'http://dummyimage.com/190x108.png/dddddd/000000', '', '2017-12-12 16:05:14'),
(23, 'Speech Pathologist', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet', 23, 23, 'http://dummyimage.com/107x179.bmp/cc0000/ffffff', 'open', '2017-12-12 16:05:14'),
(24, 'GIS Technical Architect', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', 24, 24, 'http://dummyimage.com/108x168.jpg/dddddd/000000', '', '2017-12-12 16:05:14'),
(25, 'Information Systems Manager', 'quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 25, 25, 'http://dummyimage.com/136x221.png/dddddd/000000', '', '2017-12-12 16:05:14'),
(26, 'Assistant Manager', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede', 26, 26, 'http://dummyimage.com/165x245.jpg/dddddd/000000', '', '2017-12-12 16:05:14'),
(27, 'Junior Executive', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 27, 27, 'http://dummyimage.com/112x205.jpg/cc0000/ffffff', 'open', '2017-12-12 16:05:15'),
(28, 'Teacher', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et', 28, 28, 'http://dummyimage.com/129x182.png/dddddd/000000', '', '2017-12-12 16:05:15'),
(29, 'Compensation Analyst', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 29, 29, 'http://dummyimage.com/143x234.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:15'),
(30, 'Senior Sales Associate', 'eu massa donec dapibus duis at velit eu est congue elementum in hac', 30, 30, 'http://dummyimage.com/110x220.bmp/cc0000/ffffff', '', '2017-12-12 16:05:15'),
(31, 'Programmer Analyst IV', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', 31, 31, 'http://dummyimage.com/230x218.bmp/cc0000/ffffff', '', '2017-12-12 16:05:15'),
(32, 'Food Chemist', 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 32, 32, 'http://dummyimage.com/128x178.png/cc0000/ffffff', 'open', '2017-12-12 16:05:15'),
(33, 'Accounting Assistant III', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', 33, 33, 'http://dummyimage.com/136x245.png/5fa2dd/ffffff', '', '2017-12-12 16:05:15'),
(34, 'Senior Financial Analyst', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 34, 34, 'http://dummyimage.com/221x248.png/dddddd/000000', 'open', '2017-12-12 16:05:15'),
(35, 'Tax Accountant', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', 35, 35, 'http://dummyimage.com/213x197.png/dddddd/000000', '', '2017-12-12 16:05:15'),
(36, 'Senior Developer', 'diam erat fermentum justo nec condimentum neque sapien placerat ante', 36, 36, 'http://dummyimage.com/241x234.png/dddddd/000000', 'open', '2017-12-12 16:05:15'),
(37, 'Clinical Specialist', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 37, 37, 'http://dummyimage.com/128x166.bmp/dddddd/000000', '', '2017-12-12 16:05:15'),
(38, 'Payment Adjustment Coordinator', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', 38, 38, 'http://dummyimage.com/232x194.jpg/ff4444/ffffff', '', '2017-12-12 16:05:15'),
(39, 'Assistant Manager', 'nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 39, 39, 'http://dummyimage.com/225x238.jpg/dddddd/000000', 'open', '2017-12-12 16:05:15'),
(40, 'Nuclear Power Engineer', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 40, 40, 'http://dummyimage.com/208x161.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:15'),
(41, 'Financial Advisor', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum', 41, 41, 'http://dummyimage.com/100x226.jpg/ff4444/ffffff', 'open', '2017-12-12 16:05:15'),
(42, 'Marketing Manager', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', 42, 42, 'http://dummyimage.com/209x150.png/ff4444/ffffff', 'open', '2017-12-12 16:05:15'),
(43, 'Data Coordiator', 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 43, 43, 'http://dummyimage.com/102x122.bmp/dddddd/000000', '', '2017-12-12 16:05:15'),
(44, 'Programmer IV', 'tristique est et tempus semper est quam pharetra magna ac consequat metus sapien', 44, 44, 'http://dummyimage.com/184x159.bmp/cc0000/ffffff', '', '2017-12-12 16:05:15'),
(45, 'Actuary', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat', 45, 45, 'http://dummyimage.com/167x102.jpg/dddddd/000000', 'open', '2017-12-12 16:05:15'),
(46, 'Director of Sales', 'consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', 46, 46, 'http://dummyimage.com/112x101.bmp/5fa2dd/ffffff', 'open', '2017-12-12 16:05:15'),
(47, 'Payment Adjustment Coordinator', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 47, 47, 'http://dummyimage.com/144x170.bmp/5fa2dd/ffffff', '', '2017-12-12 16:05:15'),
(48, 'Occupational Therapist', 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum', 48, 48, 'http://dummyimage.com/135x183.png/cc0000/ffffff', 'open', '2017-12-12 16:05:15'),
(49, 'Environmental Tech', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero', 49, 49, 'http://dummyimage.com/245x238.bmp/ff4444/ffffff', 'open', '2017-12-12 16:05:15'),
(50, 'Nuclear Power Engineer', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 50, 50, 'http://dummyimage.com/188x124.jpg/dddddd/000000', 'open', '2017-12-12 16:05:15'),
(51, 'Web Developer I', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', 51, 51, 'http://dummyimage.com/172x216.jpg/dddddd/000000', '', '2017-12-12 16:05:15'),
(52, 'Computer Systems Analyst III', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', 52, 52, 'http://dummyimage.com/102x175.bmp/ff4444/ffffff', '', '2017-12-12 16:05:15'),
(53, 'Speech Pathologist', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 53, 53, 'http://dummyimage.com/157x163.jpg/ff4444/ffffff', '', '2017-12-12 16:05:15'),
(54, 'Internal Auditor', 'in congue etiam justo etiam pretium iaculis justo in hac habitasse', 54, 54, 'http://dummyimage.com/221x113.bmp/dddddd/000000', '', '2017-12-12 16:05:16'),
(55, 'Chemical Engineer', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 55, 55, 'http://dummyimage.com/203x161.jpg/ff4444/ffffff', 'open', '2017-12-12 16:05:16'),
(56, 'Recruiting Manager', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', 56, 56, 'http://dummyimage.com/238x100.bmp/cc0000/ffffff', 'open', '2017-12-12 16:05:16'),
(57, 'Physical Therapy Assistant', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', 57, 57, 'http://dummyimage.com/240x195.bmp/dddddd/000000', '', '2017-12-12 16:05:16'),
(58, 'Nurse', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', 58, 58, 'http://dummyimage.com/156x128.jpg/dddddd/000000', '', '2017-12-12 16:05:16'),
(59, 'Software Test Engineer III', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 59, 59, 'http://dummyimage.com/103x128.bmp/5fa2dd/ffffff', '', '2017-12-12 16:05:16'),
(60, 'Software Consultant', 'lobortis sapien sapien non mi integer ac neque duis bibendum', 60, 60, 'http://dummyimage.com/190x101.jpg/5fa2dd/ffffff', 'open', '2017-12-12 16:05:16'),
(61, 'Food Chemist', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', 61, 61, 'http://dummyimage.com/222x149.jpg/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(62, 'Recruiting Manager', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros', 62, 62, 'http://dummyimage.com/166x222.jpg/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(63, 'Web Developer IV', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis', 63, 63, 'http://dummyimage.com/172x132.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:16'),
(64, 'General Manager', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', 64, 64, 'http://dummyimage.com/211x219.jpg/cc0000/ffffff', 'open', '2017-12-12 16:05:16'),
(65, 'Pharmacist', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 65, 65, 'http://dummyimage.com/102x123.png/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(66, 'Computer Systems Analyst IV', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque', 66, 66, 'http://dummyimage.com/195x222.png/ff4444/ffffff', 'open', '2017-12-12 16:05:16'),
(67, 'Pharmacist', 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 67, 67, 'http://dummyimage.com/243x162.bmp/cc0000/ffffff', 'open', '2017-12-12 16:05:16'),
(68, 'Human Resources Assistant IV', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', 68, 68, 'http://dummyimage.com/125x214.jpg/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(69, 'Project Manager', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', 69, 69, 'http://dummyimage.com/220x112.bmp/dddddd/000000', 'open', '2017-12-12 16:05:16'),
(70, 'VP Quality Control', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', 70, 70, 'http://dummyimage.com/181x179.png/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(71, 'Human Resources Assistant II', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris', 71, 71, 'http://dummyimage.com/215x176.bmp/dddddd/000000', '', '2017-12-12 16:05:16'),
(72, 'Senior Sales Associate', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis', 72, 72, 'http://dummyimage.com/226x224.bmp/ff4444/ffffff', '', '2017-12-12 16:05:16'),
(73, 'Geological Engineer', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 73, 73, 'http://dummyimage.com/118x127.png/dddddd/000000', '', '2017-12-12 16:05:16'),
(74, 'Sales Representative', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 74, 74, 'http://dummyimage.com/193x232.png/cc0000/ffffff', '', '2017-12-12 16:05:16'),
(75, 'Junior Executive', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat', 75, 75, 'http://dummyimage.com/231x198.jpg/dddddd/000000', '', '2017-12-12 16:05:17'),
(76, 'Actuary', 'curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque', 76, 76, 'http://dummyimage.com/170x244.png/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(77, 'Recruiter', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo', 77, 77, 'http://dummyimage.com/225x138.bmp/dddddd/000000', 'open', '2017-12-12 16:05:17'),
(78, 'Civil Engineer', 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non', 78, 78, 'http://dummyimage.com/110x241.jpg/5fa2dd/ffffff', '', '2017-12-12 16:05:17'),
(79, 'Systems Administrator IV', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', 79, 79, 'http://dummyimage.com/115x149.jpg/cc0000/ffffff', '', '2017-12-12 16:05:17'),
(80, 'Administrative Assistant II', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', 80, 80, 'http://dummyimage.com/140x138.bmp/cc0000/ffffff', '', '2017-12-12 16:05:17'),
(81, 'Marketing Manager', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 81, 81, 'http://dummyimage.com/241x228.png/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(82, 'Information Systems Manager', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', 82, 82, 'http://dummyimage.com/233x125.png/cc0000/ffffff', '', '2017-12-12 16:05:17'),
(83, 'Research Associate', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', 83, 83, 'http://dummyimage.com/145x250.png/ff4444/ffffff', 'open', '2017-12-12 16:05:17'),
(84, 'Chemical Engineer', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 84, 84, 'http://dummyimage.com/125x155.jpg/cc0000/ffffff', '', '2017-12-12 16:05:17'),
(85, 'Automation Specialist II', 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst', 85, 85, 'http://dummyimage.com/164x226.png/dddddd/000000', 'open', '2017-12-12 16:05:17'),
(86, 'Nurse Practicioner', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 86, 86, 'http://dummyimage.com/178x101.jpg/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(87, 'Chief Design Engineer', 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', 87, 87, 'http://dummyimage.com/250x142.bmp/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(88, 'Professor', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc', 88, 88, 'http://dummyimage.com/210x184.png/cc0000/ffffff', '', '2017-12-12 16:05:17'),
(89, 'Human Resources Assistant IV', 'quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis', 89, 89, 'http://dummyimage.com/248x190.bmp/dddddd/000000', '', '2017-12-12 16:05:17'),
(90, 'Senior Financial Analyst', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 90, 90, 'http://dummyimage.com/172x188.bmp/5fa2dd/ffffff', '', '2017-12-12 16:05:17'),
(91, 'Paralegal', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh', 91, 91, 'http://dummyimage.com/227x154.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:17'),
(92, 'Systems Administrator I', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', 92, 92, 'http://dummyimage.com/100x219.png/5fa2dd/ffffff', '', '2017-12-12 16:05:17'),
(93, 'Senior Sales Associate', 'dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', 93, 93, 'http://dummyimage.com/147x116.bmp/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(94, 'Quality Engineer', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 94, 94, 'http://dummyimage.com/123x102.bmp/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(95, 'Environmental Tech', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat', 95, 95, 'http://dummyimage.com/134x233.png/ff4444/ffffff', 'open', '2017-12-12 16:05:17'),
(96, 'Human Resources Assistant II', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', 96, 96, 'http://dummyimage.com/242x150.png/5fa2dd/ffffff', 'open', '2017-12-12 16:05:17'),
(97, 'VP Sales', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo', 97, 97, 'http://dummyimage.com/212x238.png/ff4444/ffffff', 'open', '2017-12-12 16:05:17'),
(98, 'Staff Accountant II', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', 98, 98, 'http://dummyimage.com/156x234.jpg/ff4444/ffffff', '', '2017-12-12 16:05:17'),
(99, 'Operator', 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 99, 99, 'http://dummyimage.com/134x210.jpg/cc0000/ffffff', 'open', '2017-12-12 16:05:17'),
(100, 'Geological Engineer', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 100, 100, 'http://dummyimage.com/183x201.bmp/ff4444/ffffff', '', '2017-12-12 16:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
