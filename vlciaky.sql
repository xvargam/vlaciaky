-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2015 at 02:11 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.18

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vlciaky`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonitation`
--

CREATE TABLE IF NOT EXISTS `tbl_bonitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dog` (`id_dog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dog`
--

CREATE TABLE IF NOT EXISTS `tbl_dog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sex` tinyint(1) NOT NULL DEFAULT '1',
  `color` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `deathday` date DEFAULT NULL,
  `death_cause` varchar(300) DEFAULT NULL,
  `breed` varchar(100) NOT NULL,
  `old_regnumber` varchar(50) NOT NULL,
  `new_regnumber` varchar(50) NOT NULL,
  `tattoo` tinyint(1) NOT NULL,
  `chip` varchar(30) NOT NULL,
  `export_import` date NOT NULL,
  `breeding` varchar(30) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_health` int(11) DEFAULT NULL,
  `id_fertilisation` int(11) DEFAULT NULL,
  `id_owner` int(11) NOT NULL,
  `id_old_owner` int(11) DEFAULT NULL,
  `id_kennel_owner` int(11) DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_health` (`id_health`),
  KEY `id_fertilisation` (`id_fertilisation`),
  KEY `id_owner` (`id_owner`),
  KEY `id_old_owner` (`id_old_owner`),
  KEY `id_kennel_owner` (`id_kennel_owner`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_dog`
--

INSERT INTO `tbl_dog` (`id`, `name`, `sex`, `color`, `birthday`, `deathday`, `death_cause`, `breed`, `old_regnumber`, `new_regnumber`, `tattoo`, `chip`, `export_import`, `breeding`, `created_at`, `updated_at`, `id_health`, `id_fertilisation`, `id_owner`, `id_old_owner`, `id_kennel_owner`, `state`) VALUES
(3, 'Name1', 0, 'Color1', '2014-11-23', NULL, '', 'Breed1', 'Old1', 'New1', 0, 'Chip1', '2014-11-16', 'Breeding1', '2014-11-23 15:21:43', NULL, NULL, NULL, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_endurance_run`
--

CREATE TABLE IF NOT EXISTS `tbl_endurance_run` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `handler` varchar(200) NOT NULL,
  `type` varchar(50) NOT NULL,
  `evaluation` varchar(300) NOT NULL,
  `andurance_run_place` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `referee` varchar(200) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dog` (`id_dog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fertilisation`
--

CREATE TABLE IF NOT EXISTS `tbl_fertilisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fertilisation_date` date NOT NULL,
  `litter_date` date NOT NULL,
  `male_count` int(11) NOT NULL,
  `female_count` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `id_dog_mother` int(11) NOT NULL,
  `id_dog_father` int(11) NOT NULL,
  `id_kennel` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dog_mother` (`id_dog_mother`),
  KEY `id_dog_father` (`id_dog_father`),
  KEY `id_kennel` (`id_kennel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_health`
--

CREATE TABLE IF NOT EXISTS `tbl_health` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_health`
--

INSERT INTO `tbl_health` (`id`, `dlk`, `dbk`, `dwarf`, `dm`, `dna`, `testicles`, `teeth`, `head`, `eyes`, `ears`, `neck`, `trunk`, `upper_limbs`, `lower_limbs`, `tail`, `fur`, `color`, `movement`, `attachment_url`, `vet`, `date`, `created_at`, `updated_at`, `state`) VALUES
(1, 1, 1, 1, 1, 'dns1', 'testicles1', 'teeth1', 'head1', 'eyes1', 'ears1', 'neck1', 'trunk1', 'upper_limbs1', 'lower_limbs 1', 'tail1', 'fur1', 'color1', 'movement1', '1', '1', '2014-11-11', '2014-11-12 00:00:00', NULL, 1),
(2, 1, 1, 1, 1, 'dns2', 'testicles2', 'teeth2', 'head2', 'eyes2', 'ears2', 'neck2', 'trunk2', 'upper_limbs2', 'lower_limbs 2', 'tail2', 'fur2', 'color2', 'movement2', '1', '1', '2014-11-12', '2014-11-12 00:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE IF NOT EXISTS `tbl_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dog` int(11) NOT NULL,
  `image` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dog` (`id_dog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kennel`
--

CREATE TABLE IF NOT EXISTS `tbl_kennel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `reg_number` varchar(50) NOT NULL,
  `registered_at` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m110805_153437_installYiiUser', 1415637345),
('m110810_162301_userTimestampFix', 1415637345);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_profiles` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_profiles`
--

INSERT INTO `tbl_profiles` (`user_id`, `first_name`, `last_name`) VALUES
(1, 'Administrator', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_profiles_fields`
--

CREATE TABLE IF NOT EXISTS `tbl_profiles_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `varname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `field_type` varchar(50) NOT NULL DEFAULT '',
  `field_size` int(3) NOT NULL DEFAULT '0',
  `field_size_min` int(3) NOT NULL DEFAULT '0',
  `required` int(1) NOT NULL DEFAULT '0',
  `match` varchar(255) NOT NULL DEFAULT '',
  `range` varchar(255) NOT NULL DEFAULT '',
  `error_message` varchar(255) NOT NULL DEFAULT '',
  `other_validator` text,
  `default` varchar(255) NOT NULL DEFAULT '',
  `widget` varchar(255) NOT NULL DEFAULT '',
  `widgetparams` text,
  `position` int(3) NOT NULL DEFAULT '0',
  `visible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_profiles_fields`
--

INSERT INTO `tbl_profiles_fields` (`id`, `varname`, `title`, `field_type`, `field_size`, `field_size_min`, `required`, `match`, `range`, `error_message`, `other_validator`, `default`, `widget`, `widgetparams`, `position`, `visible`) VALUES
(1, 'first_name', 'First Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect First Name (length between 3 and 50 characters).', '', '', '', '', 1, 3),
(2, 'last_name', 'Last Name', 'VARCHAR', 255, 3, 2, '', '', 'Incorrect Last Name (length between 3 and 50 characters).', '', '', '', '', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `created_at` datetime NOT NULL COMMENT 'Èas vytvorenia žiadosti.',
  `updated_at` datetime NOT NULL COMMENT 'Èas úpravy admin.',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Stav potrvdenia žiadosti. ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `activkey` varchar(128) NOT NULL DEFAULT '',
  `superuser` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastvisit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`),
  UNIQUE KEY `user_email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `email`, `activkey`, `superuser`, `status`, `create_at`, `lastvisit_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'webmaster@example.com', '1eb7633a3bae0e9f1bfc69560937ccdb', 1, 1, '2014-11-10 16:35:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_youth_presentation`
--

CREATE TABLE IF NOT EXISTS `tbl_youth_presentation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assessment` varchar(1000) NOT NULL,
  `evaluation` int(200) NOT NULL,
  `youth_presentation_date` date NOT NULL,
  `youth_presentation_place` varchar(200) NOT NULL,
  `referee` varchar(200) NOT NULL,
  `id_dog` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dog` (`id_dog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
  ADD CONSTRAINT `tbl_dog_ibfk_2` FOREIGN KEY (`id_fertilisation`) REFERENCES `tbl_fertilisation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_dog_ibfk_3` FOREIGN KEY (`id_owner`) REFERENCES `tbl_profiles` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_dog_ibfk_4` FOREIGN KEY (`id_old_owner`) REFERENCES `tbl_dog` (`id`),
  ADD CONSTRAINT `tbl_dog_ibfk_5` FOREIGN KEY (`id_kennel_owner`) REFERENCES `tbl_users` (`id`);

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
-- Constraints for table `tbl_image`
--
ALTER TABLE `tbl_image`
  ADD CONSTRAINT `tbl_image_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_kennel`
--
ALTER TABLE `tbl_kennel`
  ADD CONSTRAINT `tbl_kennel_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_profiles`
--
ALTER TABLE `tbl_profiles`
  ADD CONSTRAINT `user_profile_id` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_youth_presentation`
--
ALTER TABLE `tbl_youth_presentation`
  ADD CONSTRAINT `tbl_youth_presentation_ibfk_1` FOREIGN KEY (`id_dog`) REFERENCES `tbl_dog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
