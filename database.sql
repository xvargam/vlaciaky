-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2014 at 04:15 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dog_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonitation`
--

CREATE TABLE IF NOT EXISTS `tbl_bonitation` (
  `id` int(11) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `bonitation_code` varchar(100) NOT NULL,
  `temperament` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `head_length` float NOT NULL,
  `head_width` float NOT NULL,
  `snout_length` float NOT NULL COMMENT 'dlzka medzi cumakom a vnutornou castou oka',
  `ear_length` float NOT NULL,
  `oblique_length` float NOT NULL,
  `chest_depth` float NOT NULL,
  `chest_circle` float NOT NULL COMMENT 'obvod hrudnika',
  `front_leg_length` float NOT NULL,
  `thigh_length` float NOT NULL,
  `pastern_length` float NOT NULL,
  `pastern_circle` float NOT NULL,
  `tarsus_length` float NOT NULL,
  `tibia_length` float NOT NULL,
  `harmony` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `bonitation_place` varchar(200) NOT NULL,
  `referee` varchar(200) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dog`
--

CREATE TABLE IF NOT EXISTS `tbl_dog` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '1',
  `color` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `deathday` date NOT NULL,
  `death_cause` varchar(300) NOT NULL,
  `breed` varchar(100) NOT NULL,
  `old_regnumber` varchar(20) NOT NULL,
  `new_regnumber` varchar(20) NOT NULL,
  `tattoo` tinyint(1) NOT NULL,
  `chip` varchar(30) NOT NULL,
  `export_import` date NOT NULL,
  `breeding` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id_health` int(11) NOT NULL,
  `id_fertilisation` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `id_old_owner` int(11) NOT NULL,
  `id_kennel_owner` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_endurance_run`
--

CREATE TABLE IF NOT EXISTS `tbl_endurance_run` (
`id` int(11) NOT NULL,
  `place` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `handler` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `evaluation` varchar(300) NOT NULL,
  `andurance_run_place` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `referee` varchar(200) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fertilisation`
--

CREATE TABLE IF NOT EXISTS `tbl_fertilisation` (
`id` int(11) NOT NULL,
  `fertilisation_date` date NOT NULL,
  `litter_date` date NOT NULL,
  `male_count` int(11) NOT NULL,
  `female_count` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `id_dog_mother` int(11) NOT NULL,
  `id_dog_father` int(11) NOT NULL,
  `id_kennel` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_health`
--

CREATE TABLE IF NOT EXISTS `tbl_health` (
`id` int(11) NOT NULL,
  `dlk` tinyint(1) NOT NULL,
  `dbk` tinyint(1) NOT NULL,
  `dwarf` tinyint(1) NOT NULL,
  `dm` tinyint(1) NOT NULL,
  `dna` varchar(200) NOT NULL,
  `testicles` varchar(200) NOT NULL,
  `teeth` varchar(200) NOT NULL,
  `head` varchar(200) NOT NULL,
  `eyes` varchar(200) NOT NULL,
  `ears` varchar(200) NOT NULL,
  `neck` varchar(200) NOT NULL,
  `trunk` varchar(200) NOT NULL,
  `upper_limbs` varchar(200) NOT NULL,
  `lower_limbs` varchar(200) NOT NULL,
  `tail` varchar(200) NOT NULL,
  `fur` varchar(200) NOT NULL,
  `color` varchar(200) NOT NULL,
  `movement` varchar(200) NOT NULL,
  `attachment_url` varchar(300) NOT NULL,
  `vet` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE IF NOT EXISTS `tbl_image` (
`id` int(11) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kennel`
--

CREATE TABLE IF NOT EXISTS `tbl_kennel` (
`id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `reg_number` varchar(50) NOT NULL,
  `registered_at` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `born_date` date DEFAULT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `street` varchar(100) NOT NULL,
  `address_number` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `psc` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `web_site` varchar(100) DEFAULT NULL,
  `phone_number` tinyint(1) DEFAULT NULL,
  `club_member` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Clen klunu',
  `request_member` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Ziadost o clenstvo v klube KCHCSV',
  `chs_owner` varchar(200) DEFAULT NULL COMMENT 'Majitel chovatelskej stanice',
  `chs_registred` date DEFAULT NULL COMMENT 'Datum registracie chovatelskej stanice',
  `chs_number` varchar(50) DEFAULT NULL COMMENT 'Cislo chovatelskej stanice',
  `rank` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT 'Čas vytvorenia žiadosti.',
  `updated_at` datetime NOT NULL COMMENT 'Čas úpravy admin.',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Stav potrvdenia žiadosti. '
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_youth_presentation`
--

CREATE TABLE IF NOT EXISTS `tbl_youth_presentation` (
`id` int(11) NOT NULL,
  `assessment` varchar(1000) NOT NULL,
  `evaluation` int(200) NOT NULL,
  `youth_presentation_date` date NOT NULL,
  `youth_presentation_place` varchar(200) NOT NULL,
  `referee` varchar(200) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `state` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bonitation`
--
ALTER TABLE `tbl_bonitation`
 ADD KEY `id_dog` (`id_dog`);

--
-- Indexes for table `tbl_dog`
--
ALTER TABLE `tbl_dog`
 ADD PRIMARY KEY (`id`), ADD KEY `id_health` (`id_health`), ADD KEY `id_fertilisation` (`id_fertilisation`);

--
-- Indexes for table `tbl_endurance_run`
--
ALTER TABLE `tbl_endurance_run`
 ADD PRIMARY KEY (`id`), ADD KEY `id_dog` (`id_dog`);

--
-- Indexes for table `tbl_fertilisation`
--
ALTER TABLE `tbl_fertilisation`
 ADD PRIMARY KEY (`id`), ADD KEY `id_dog_mother` (`id_dog_mother`), ADD KEY `id_dog_father` (`id_dog_father`), ADD KEY `id_kennel` (`id_kennel`);

--
-- Indexes for table `tbl_health`
--
ALTER TABLE `tbl_health`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image`
--
ALTER TABLE `tbl_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kennel`
--
ALTER TABLE `tbl_kennel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_youth_presentation`
--
ALTER TABLE `tbl_youth_presentation`
 ADD PRIMARY KEY (`id`), ADD KEY `id_dog` (`id_dog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dog`
--
ALTER TABLE `tbl_dog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_endurance_run`
--
ALTER TABLE `tbl_endurance_run`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_fertilisation`
--
ALTER TABLE `tbl_fertilisation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_health`
--
ALTER TABLE `tbl_health`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_image`
--
ALTER TABLE `tbl_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kennel`
--
ALTER TABLE `tbl_kennel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_youth_presentation`
--
ALTER TABLE `tbl_youth_presentation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bonitation`
--
ALTER TABLE `tbl_bonitation`
ADD CONSTRAINT `tbl_bonitation_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_dog`
--
ALTER TABLE `tbl_dog`
ADD CONSTRAINT `tbl_dog_ibfk_1` FOREIGN KEY (`id_health`) REFERENCES `tbl_health` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_dog_ibfk_2` FOREIGN KEY (`id_fertilisation`) REFERENCES `tbl_fertilisation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_endurance_run`
--
ALTER TABLE `tbl_endurance_run`
ADD CONSTRAINT `tbl_endurance_run_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_fertilisation`
--
ALTER TABLE `tbl_fertilisation`
ADD CONSTRAINT `tbl_fertilisation_ibfk_1` FOREIGN KEY (`id_dog_mother`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_fertilisation_ibfk_2` FOREIGN KEY (`id_dog_father`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tbl_fertilisation_ibfk_3` FOREIGN KEY (`id_kennel`) REFERENCES `tbl_kennel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_youth_presentation`
--
ALTER TABLE `tbl_youth_presentation`
ADD CONSTRAINT `tbl_youth_presentation_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
