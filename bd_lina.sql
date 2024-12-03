-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 23 fév. 2024 à 20:07
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bd_lina`
--

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `notextrat` int(11) NOT NULL,
  `dateeval` int(11) NOT NULL,
  `noteacceuil` int(11) NOT NULL,
  `idhotel` int(11) NOT NULL,
  `noterest` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `IdHotel` int(11) NOT NULL DEFAULT 0,
  `NomHotel` varchar(50) NOT NULL DEFAULT '',
  `TelHotel` varchar(8) NOT NULL DEFAULT '',
  `VilleHotel` varchar(30) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`IdHotel`, `NomHotel`, `TelHotel`, `VilleHotel`) VALUES
(10, '5 Stars', '76333444', 'Tozeur'),
(20, 'Globe', '78111111', 'Tabarka'),
(30, 'The Sun', '73888888', 'Monastir');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`idhotel`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`IdHotel`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`idhotel`) REFERENCES `hotel` (`IdHotel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
