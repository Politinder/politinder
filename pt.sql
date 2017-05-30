-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 30, 2017 at 12:53 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt`
--

-- --------------------------------------------------------

--
-- Table structure for table `evnt`
--

CREATE TABLE `evnt` (
  `e_id` int(11) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `clock` varchar(45) DEFAULT NULL,
  `Fk_p_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keyissue`
--

CREATE TABLE `keyissue` (
  `ki_id` int(11) NOT NULL,
  `issue` varchar(200) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keyissue`
--

INSERT INTO `keyissue` (`ki_id`, `issue`, `description`) VALUES
(1, 'Sundhed', '\r\n    Fri, lige og gratis adgang til sundhedsydelser for alle borgere.\r\n    Mulighed for en vis brugerbetaling i praksissektoren, dette gælder også tandbehandling.\r\n    Fokus på sygdomsforebyggelse og sundhedsfremme. Det skal være en del af tilbuddet fra praktiserende læger og hospitaler.\r\n    Sundhedsvæsenet skal i større grad gennemføre forskning og udnytte den nyeste viden og teknologi.\r\n'),
(2, 'Uddannelse', '\r\n    Danmark skal være det førende vidensamfund præget af fleksibilitet og hurtig omstillingsevne.\r\n    Danmark skal være et centrum for udnyttelse af forskning og viden. Forskningsinstitutioner og erhvervslivet skal bidrage hertil.\r\n    Danmark skal satse på høj kvalitet og højteknologi og indsatsen skal prioriteres således at der forskes mere i dybden end i bredden. Samtidig skal vi indgå på eliteplan i det internationale forskningssamarbejde.\r\n    Danske universiteter skal tilhøre den internationale elite. Kvaliteten af forskning, undervisning og uddannelse skal være på højeste niveau. Kvaliteten skal fremmes ved at lade forskningsinstitutionerne konkurrere om midlerne, både på dansk og europæisk plan om EU’s forskningsbevillinger.\r\n    Undervisning for tosprogede elever på eget modersmål (modersmålsundervisning) er ikke en opgave for det offentlige og skal derfor ikke genindføres.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `n_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phonenb` varchar(45) DEFAULT NULL,
  `town_n` varchar(45) DEFAULT NULL,
  `Fk_e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`n_id`, `name`, `phonenb`, `town_n`, `Fk_e_id`) VALUES
(2, 'mille', '30494949', 'Taarnby', NULL),
(3, 'mille', '30494949', 'Taarnby', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `politiker`
--

CREATE TABLE `politiker` (
  `p_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `parti` varchar(100) NOT NULL,
  `Fk_ki_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `politiker`
--

INSERT INTO `politiker` (`p_id`, `name`, `town`, `parti`, `Fk_ki_id`) VALUES
(1, 'Thomas Jaskov', 'K&oslash;benhavn', 'Venstre', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evnt`
--
ALTER TABLE `evnt`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `Fk_p_id_idx` (`Fk_p_id`);

--
-- Indexes for table `keyissue`
--
ALTER TABLE `keyissue`
  ADD PRIMARY KEY (`ki_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `Fk_e_id_idx` (`Fk_e_id`);

--
-- Indexes for table `politiker`
--
ALTER TABLE `politiker`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `Fk_ki_id_idx` (`Fk_ki_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evnt`
--
ALTER TABLE `evnt`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keyissue`
--
ALTER TABLE `keyissue`
  MODIFY `ki_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `politiker`
--
ALTER TABLE `politiker`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `evnt`
--
ALTER TABLE `evnt`
  ADD CONSTRAINT `Fk_p_id` FOREIGN KEY (`Fk_p_id`) REFERENCES `politiker` (`p_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `Fk_e_id` FOREIGN KEY (`Fk_e_id`) REFERENCES `evnt` (`e_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `politiker`
--
ALTER TABLE `politiker`
  ADD CONSTRAINT `Fk_ki_id` FOREIGN KEY (`Fk_ki_id`) REFERENCES `keyissue` (`ki_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
