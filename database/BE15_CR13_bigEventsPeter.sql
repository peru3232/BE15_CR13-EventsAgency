-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Apr 2022 um 23:44
-- Server-Version: 10.4.22-MariaDB
-- PHP-Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `be15_cr13_bigeventspeter`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_bigeventspeter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_bigeventspeter`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `event_name` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `description` varchar(655) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(9) NOT NULL,
  `email` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(35) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(65) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`id`, `event_name`, `event_date`, `description`, `picture`, `capacity`, `email`, `phone`, `address`, `url`, `type`) VALUES
(1024, 'Nationalteaterns Rockorkester', '2022-04-19 19:30:00', 'In the spring of 2022, Nationalteaterns Rockorkester embarks on a nationwide and final concert hall tour. The last time it happened was in the spring of 2018 and became an acclaimed smash hit with a \"patch on the door\" around the whole country!', 'Rockorkester.jpg', 2000, 'info@cirkus.se', '+46 766 123456', 'Djurgårdsslätten 43-45,  Stockholm,  Sweden', 'cirkus.se/sv/events/nationalteaterns-rockorkester-turne-2', 'concert'),
(1025, 'Kite', '2022-05-18 00:00:00', 'It was a great show, like always with Kite. Great visuals, great performance and a great voice. However also, like always with Kite, way too short. Only an hour long.', 'kite.jpg', 600, 'info@kite.se', '+46 761 654321', 'Royal Swedish Opera / Kungliga Operan - Gustav Adolfs torg 2 10322 Stockholm, Sweden', 'kite.se', 'opera'),
(1026, 'Lunch Concerts', '2022-04-19 12:30:00', 'EAT & DRINK • MUSIC   -      Lunch concerts are given several days a week in the beautiful Guldfoajén, featuring singers and musicians from the Royal Swedish Opera, and other distinguished artists. More information, menu and booking through the website.', 'lunch.jpg', 100, 'info@operan.se', '+46 222 524576', 'Gustav Adolfs torg 2, Stockholm, Sweden', 'operan.se/forestallningar/lunchkonsert/', 'concert'),
(1027, 'The Four Seasons', '2022-04-27 13:00:00', 'Bud. Leaf. Flower. Spring. Summer. Autumn. Winter. There is hope in all of them, life, a beginning, and an end. Everything depends on each other. Forever connected and inevitable. In this play, Dockteatern Tittut wants to radiate warmth as we discover the poetry in life and catch sight of the big in the small. With the point of departure being The four seasons by Antonio Vivaldi, the music is interpreted in an innovative matter and becomes the backbone, nervous system, and heart of the play.', 'four_seasons.jpg', 500, 'info@dockteaterntittut.se', '+46 761 223344', 'Lundagatan 33, Stockholm, Sweden', 'dockteaterntittut.se/', 'theatre'),
(1028, 'Psykakuten Deluxe', '2022-05-24 19:00:00', 'Psykakuten Deluxe is back. A unique mix of improvisation, theater, and therapy. The audience contributes by anonymously writing down their problems. A therapist and four actors then do everything to make the audience a little wiser and feel less alone. (Note! As a spectator, you are safely seated in the salon, no one needs to go up on stage).', 'psykakuten.jpg', 250, 'info@aktore.se', '+46 766 146890', 'Sveavägen 114, Stockholm, Sweden', 'aktore.se/psykakuten-deluxe-3/', 'theatre'),
(1029, 'Stockholm Culture Night 2022: All d', '2022-04-23 18:00:00', 'This night you will be able to enjoy all art forms of The Royal Swedish Opera – samples of the repertoire on the main stage and more intimate in open rehearsals and drop-in ballet classes. For the young visitors, there will be movie screenings!', 'opera.jpg', 1200, 'info@kulturnattstockholm.se', '+46 33 67532', 'Gustav Adolfs torg 2, Stockholm, Sweden', 'kulturnattstockholm.se/event/all-doors-open-in-the-opera-', 'opera');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
