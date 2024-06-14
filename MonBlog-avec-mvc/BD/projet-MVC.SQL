-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 14, 2024 at 12:13 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `inscrit_commenter`
--

DROP TABLE IF EXISTS `inscrit_commenter`;
CREATE TABLE IF NOT EXISTS `inscrit_commenter` (
  `BIL_ID` int NOT NULL,
  `INS_ID` int NOT NULL,
  `COM_DATE` datetime NOT NULL,
  `COM_CONTENU` varchar(255) NOT NULL,
  PRIMARY KEY (`BIL_ID`,`INS_ID`,`COM_DATE`),
  KEY `INS_ID` (`INS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `inscrit_liker`
--

DROP TABLE IF EXISTS `inscrit_liker`;
CREATE TABLE IF NOT EXISTS `inscrit_liker` (
  `BIL_ID` int NOT NULL,
  `INS_ID` int NOT NULL,
  `LIKE_TYPE` int NOT NULL,
  `LIKE_DATE` datetime NOT NULL,
  PRIMARY KEY (`BIL_ID`,`INS_ID`),
  KEY `INS_ID` (`INS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `t_billet`
--

DROP TABLE IF EXISTS `t_billet`;
CREATE TABLE IF NOT EXISTS `t_billet` (
  `BIL_ID` int NOT NULL AUTO_INCREMENT,
  `BIL_DATE` datetime NOT NULL,
  `BIL_THEME` varchar(50) NOT NULL,
  `BIL_TITRE` varchar(100) NOT NULL,
  `BIL_CONTENU` text NOT NULL,
  PRIMARY KEY (`BIL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `t_billet`
--

INSERT INTO `t_billet` (`BIL_ID`, `BIL_DATE`, `BIL_THEME`, `BIL_TITRE`, `BIL_CONTENU`) VALUES
(1, '2024-04-06 15:23:26', 'Greeting', 'Premier billet', 'Bonjour monde ! Ceci est le premier billet sur mon blog.'),
(2, '2024-04-06 15:23:26', 'Work', 'Au travail', 'Il faut enrichir ce blog dès maintenant.'),
(3, '2024-04-06 15:23:26', 'Technology', 'Les NTIC, une avancee vertigineuse', 'Les techologies de l\'information ont connu des progres significative....'),
(4, '2024-04-06 15:23:26', 'health', 'La sante au coeur du monde', 'L\'emencipation des NTIC a favorise la proliferation et surtout la degradation de l\'environnement.'),
(5, '2024-04-06 15:23:26', 'Automobile', 'Tesla au coeur du debat', 'Comme le dit on, l\'oeuvre humaine est tres loin de perfection, c\'est ce que tesla nous montre avec son premier accident....');

-- --------------------------------------------------------

--
-- Table structure for table `t_commentaire`
--

DROP TABLE IF EXISTS `t_commentaire`;
CREATE TABLE IF NOT EXISTS `t_commentaire` (
  `COM_ID` int NOT NULL AUTO_INCREMENT,
  `COM_DATE` datetime NOT NULL,
  `COM_AUTEUR` varchar(100) NOT NULL,
  `COM_CONTENU` varchar(255) NOT NULL,
  `BIL_ID` int NOT NULL,
  PRIMARY KEY (`COM_ID`),
  KEY `BIL_ID` (`BIL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `t_commentaire`
--

INSERT INTO `t_commentaire` (`COM_ID`, `COM_DATE`, `COM_AUTEUR`, `COM_CONTENU`, `BIL_ID`) VALUES
(1, '2024-04-06 15:23:26', 'A. Nonyme', 'Bravo pour ce début', 1),
(2, '2024-04-06 15:23:27', 'Moi', 'Merci ! Je vais continuer sur ma lancée', 1),
(9, '2024-06-05 21:15:57', '', '', 1),
(10, '2024-06-05 21:16:24', 'Sylla', 'Aly', 1),
(11, '2024-06-05 21:16:52', 'Bonjour', 'A dit', 1),
(12, '2024-06-05 21:17:19', '', '', 1),
(13, '2024-06-05 21:17:54', '', '', 1),
(14, '2024-06-05 21:18:21', 'Sylla', 'C\'est tetre a cause de JS', 1),
(15, '2024-06-05 21:20:28', 'Sylla N\'faly', 'Mon premier commentaire hhh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `t_inscrit`
--

DROP TABLE IF EXISTS `t_inscrit`;
CREATE TABLE IF NOT EXISTS `t_inscrit` (
  `INS_ID` int NOT NULL AUTO_INCREMENT,
  `INS_NOMS` varchar(200) NOT NULL,
  `INS_MAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`INS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inscrit_commenter`
--
ALTER TABLE `inscrit_commenter`
  ADD CONSTRAINT `inscrit_commenter_ibfk_1` FOREIGN KEY (`BIL_ID`) REFERENCES `t_billet` (`BIL_ID`),
  ADD CONSTRAINT `inscrit_commenter_ibfk_2` FOREIGN KEY (`INS_ID`) REFERENCES `t_inscrit` (`INS_ID`);

--
-- Constraints for table `inscrit_liker`
--
ALTER TABLE `inscrit_liker`
  ADD CONSTRAINT `inscrit_liker_ibfk_1` FOREIGN KEY (`BIL_ID`) REFERENCES `t_billet` (`BIL_ID`),
  ADD CONSTRAINT `inscrit_liker_ibfk_2` FOREIGN KEY (`INS_ID`) REFERENCES `t_inscrit` (`INS_ID`);

--
-- Constraints for table `t_commentaire`
--
ALTER TABLE `t_commentaire`
  ADD CONSTRAINT `t_commentaire_ibfk_1` FOREIGN KEY (`BIL_ID`) REFERENCES `t_billet` (`BIL_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
