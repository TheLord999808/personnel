-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 02 avr. 2022 à 21:15
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `personnel`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_Employe` int(50) NOT NULL AUTO_INCREMENT,
  `N_Employe` varchar(50) DEFAULT NULL,
  `P_Employe` varchar(50) DEFAULT NULL,
  `Mail_Employe` varchar(50) DEFAULT NULL,
  `Droit_Root` tinyint(1) DEFAULT NULL,
  `Mdp_Employe` varchar(50) DEFAULT NULL,
  `Date_début` date DEFAULT NULL,
  `Id_Ligue` int(50) DEFAULT NULL,
  `Id_Ligue_1` int(50) DEFAULT NULL,
  PRIMARY KEY (`id_Employe`),
  UNIQUE KEY `Id_Ligue` (`Id_Ligue`),
  KEY `Id_Ligue_1` (`Id_Ligue_1`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_Employe`, `N_Employe`, `P_Employe`, `Mail_Employe`, `Droit_Root`, `Mdp_Employe`, `Date_début`, `Id_Ligue`, `Id_Ligue_1`) VALUES
(1, 'test', 'testa', 'test@gmail.com', 0, '123456', '2021-08-24', 1, 1),
(2, 'test', 'testa', 'test@gmail.com', 0, '123456', '2021-08-24', 7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `employé_parti`
--

DROP TABLE IF EXISTS `employé_parti`;
CREATE TABLE IF NOT EXISTS `employé_parti` (
  `id_Employe` int(50) NOT NULL,
  `Date_fin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Employe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ligue`
--

DROP TABLE IF EXISTS `ligue`;
CREATE TABLE IF NOT EXISTS `ligue` (
  `Id_Ligue` int(50) NOT NULL AUTO_INCREMENT,
  `N_Ligue` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Ligue`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligue`
--

INSERT INTO `ligue` (`Id_Ligue`, `N_Ligue`) VALUES
(1, 'testo'),
(2, 'testi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
