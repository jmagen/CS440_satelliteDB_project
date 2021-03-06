SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE  `categories` (
  `name` varchar(71) NOT NULL,
  `count` int(5) NOT NULL,
  CONSTRAINT PK_Categories PRIMARY KEY (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `categories` (`name`, `count`) VALUES
('AMATEUR RADIO', 374),
('BEIDOU NAVIGATION SYSTEM', 45),
('BRIGHTEST', 134),
('CELESTIS', 2),
('CUBESATS', 177),
('DISASTER MONITORING', 28),
('EARTH RESOURCES', 150),
('EDUCATION', 20),
('ENGINEERING', 61),
('EXPERIMENTAL', 161),
('FLOCK', 197),
('GALILEO', 26),
('GEODETIC', 50),
('GEOSTATIONARY', 954),
('GLOBAL POSITIONING SYSTEM (GPS) CONSTELLATION', 71),
('GLOBAL POSITIONING SYSTEM (GPS) OPERATIONAL', 31),
('GLOBALSTAR', 84),
('GLONASS CONSTELLATION', 133),
('GLONASS OPERATIONAL', 25),
('GOES', 17),
('GONETS', 21),
('GORIZONT', 33),
('INTELSAT', 86),
('IRIDIUM', 120),
('IRNSS', 9),
('ISS', 14),
('LEMUR', 73),
('MILITARY', 570),
('MOLNIYA', 38),
('NAVY NAVIGATION SATELLITE SYSTEM', 37),
('NOAA', 23),
('O3B NETWORKS', 16),
('ORBCOMM', 61),
('PARUS', 95),
('QZSS', 4),
('RADAR CALIBRATION', 24),
('RADUGA', 44),
('RUSSIAN LEO NAVIGATION', 15),
('SATELLITE-BASED AUGMENTATION SYSTEM', 14),
('SEARCH & RESCUE', 16),
('SPACE & EARTH SCIENCE', 552),
('STRELA', 565),
('TRACKING AND DATA RELAY SATELLITE SYSTEM', 22),
('TSELINA', 62),
('TSIKADA', 24),
('TSIKLON', 28),
('TV', 408),
('WEATHER', 103),
('WESTFORD NEEDLES', 46),
('XM AND SIRIUS', 10),
('YAOGAN', 47);

COMMIT;
