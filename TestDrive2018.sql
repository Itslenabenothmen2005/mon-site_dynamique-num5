-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 14 mai 2023 à 21:58
-- Version du serveur : 10.4.8-MariaDB
-- Version de PHP : 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bac2018`
--

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `DateEval` date NOT NULL DEFAULT '0000-00-00',
  `IdHotel` int(11) NOT NULL DEFAULT 0,
  `NoteAccueil` int(11) NOT NULL DEFAULT 0,
  `NoteRest` int(11) NOT NULL DEFAULT 0,
  `NoteExtra` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`DateEval`, `IdHotel`, `NoteAccueil`, `NoteRest`, `NoteExtra`) VALUES
('2017-05-22', 10, 3, 1, 0),
('2017-06-15', 20, 3, 2, 2),
('2017-06-15', 30, 2, 1, 2),
('2018-02-20', 10, 2, 1, 1),
('2018-04-13', 30, 2, 2, 7);

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `IdHotel` int(11) NOT NULL DEFAULT 0,
  `NomHotel` varchar(50) NOT NULL DEFAULT '',
  `TelHotel` varchar(8) NOT NULL DEFAULT '',
  `VilleHotel` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`DateEval`,`IdHotel`),
  ADD KEY `IdHotel` (`IdHotel`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`IdHotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
