-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 03:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `catégorie`
--

CREATE TABLE `catégorie` (
  `IdCatégorie` int(10) NOT NULL,
  `NomCatégorie` varchar(100) DEFAULT NULL,
  `imageCatégorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catégorie`
--

INSERT INTO `catégorie` (`IdCatégorie`, `NomCatégorie`, `imageCatégorie`) VALUES
(1, 'Café', 'Rectangle44.png'),
(2, 'Hotel', 'Rectangle45.png'),
(3, 'Restaurant', 'Rectangle46.png');

-- --------------------------------------------------------

--
-- Table structure for table `favori`
--

CREATE TABLE `favori` (
  `Id` int(10) NOT NULL,
  `IdVisiteur` int(10) NOT NULL,
  `DateAjout` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `Id` int(10) NOT NULL,
  `IdCatégorie` int(10) DEFAULT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `Description` varchar(900) DEFAULT NULL,
  `Telephone` varchar(20) DEFAULT NULL,
  `website` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`Id`, `IdCatégorie`, `libelle`, `Description`, `Telephone`, `website`) VALUES
(1, 2, 'LE MIRAGE', 'L´Océan, la douceur de l´air que vient vivifier le chergui, un vent venu de l´Est, la pointe du Cap Spartel et les mythiques Grottes d´Hercule chantées par Homère…\r\n\r\nA 20 minutes de l´Aéroport International de Tanger et du Centre Ville, \"LE MIRAGE\" offre 45 résidences de luxe. A 8 kilomètres du \"Royal Golf Club\" (18 trous) et à seulement 15 kilomètres des Côtes Espagnoles.\r\n\r\nDepuis les terrasses, où des escaliers en cascades mènent à l´immense plage de sable qui s´étale à l´infini, les visiteurs découvrent la vue sur l´Océan \"à couper le souffle\"…', '212 539 333492', 'www.lemirage.com'),
(2, 2, 'Dar Sultan', 'Le Dar Sultan est une charmante Maison d\'Hôtes, la première homologuée à Tanger, située dans le quartier historique de la Kasbah, à quelques centaines de mètres des plages. Depuis son ouverture en 2003, nous, les propriétaires, et notre fidèle équipe, composée de sept personnes, veillons au bien-être de nos hôtes. Toujours prêts à vous rendre service, nous visons à rendre votre séjour le plus agréable possible. Les amoureux d\'authenticité apprécieront le charme de la Maison, de ses chambres et de ses alentours.', '0539336061', 'http://darsultan.com/'),
(3, 2, 'Dar Nour', 'Dar Nour ou « la Maison de la Lumière », est la plus ancienne chambre d’hôtes de Tan­ger, reconnue internationalement comme l’une des meilleures adresses du Maroc…\r\n\r\nElle attire les voyageurs amoureux de sensations, à la recherche d’une douceur de vivre et d’une hospitalité sincère et joyeuse.', '0662112724', 'http://www.darnour.com/'),
(4, 2, 'Kasabah Rose', '\"Je rêvais de diriger une maison d\'hôtes, depuis que j\'ai étudié l\'hôtellerie il y a 20 ans, et c\'est devenu réalité lorsque Kasbah Rose a ouvert ses portes en 2015. Accueillir des gens du monde entier est un bel échange quotidien de notre culture et de la leur\", déclare Lorraine Kleinveld .\r\n\r\nLa maison d\'hôtes est située sur l\'ancien mur de la Kasbah et à côté des marches menant à la rue de La Kasbah, vous vous trouverez au meilleur endroit pour explorer l\'ancienne Kasbah, la Médina et la nouvelle ville de Tanger. Kasbah Rose dispose de 5 chambres doubles dont 2 ont leur propre balcon et une avec une terrasse privée. La confortable terrasse sur le toit offre une vue spectaculaire nord/est sur la baie de Tanger et une vue sur la ville vers le sud.', '0653638071', 'http://kasbahrose.com/'),
(5, 2, 'Kasba Blanca', 'Le Kasba blanca est situé sur le front de mer de Tanger, à 1,4 km de la plage et à 100 mètres du Dar el Makhzen. Il propose un restaurant, une réception ouverte 24h/24, une cuisine commune et une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Des services d\'étage, de concierge et de change sont assurés.\r\n\r\nLeur salle de bains privative est pourvue d\'une douche et de peignoirs. Le linge de lit et les serviettes sont fournis.\r\n\r\nUn petit-déjeuner halal est servi tous les matins sur place.\r\n\r\nLe Kasba blanca possède une terrasse.\r\n\r\nLa maison d\'hôtes assure des services de repassage et de fax/photocopies.\r\n\r\nVous séjournerez à proximité du musée de la Kasbah, du musée de la légation américaine et du musée Forbes de Tanger. L\'aéroport le plus proche, celui de Tanger-Ibn Battouta, est situé à 11 km. Un service de navette aéroport peut être assuré moyennant des frais supplémentaires.', '0669629948', 'http://kasbablancatng.com/?utm_source=gmb&utm_medium=referral'),
(6, 2, 'Dar Essaki 1886', 'Vous pouvez bénéficier d\'une réduction Genius dans l\'établissement Dar Essaki 1886 ! Connectez-vous pour économiser.\r\n\r\nCet établissement est à 6 minutes à pied de la plage. Situé à Tanger, à moins de 1,1 km de la plage et à 2,9 km de Malabata, le Dar Essaki 1886 propose une connexion Wi-Fi gratuite dans l\'ensemble de ses locaux. Il propose des chambres familiales et une terrasse. Toutes les chambres comprennent une terrasse.\r\n\r\nLes chambres de ce riad comprennent une armoire. Le linge de lit et les serviettes sont fournis.\r\n\r\nVous séjournerez à proximité du Dar el Makhzen, du musée de la Kasbah et du musée Forbes de Tanger. L\'aéroport de Tanger-Ibn Battouta, le plus proche, est implanté à 13 km.', '0625713030', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Id` int(10) NOT NULL,
  `IdVisiteur` int(10) NOT NULL,
  `Note` int(5) DEFAULT NULL,
  `Commentaire` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visiteur`
--

CREATE TABLE `visiteur` (
  `IdVisiteur` int(10) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `MotDePasse` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catégorie`
--
ALTER TABLE `catégorie`
  ADD PRIMARY KEY (`IdCatégorie`);

--
-- Indexes for table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`Id`,`IdVisiteur`),
  ADD KEY `IdVisiteur` (`IdVisiteur`),
  ADD KEY `Id` (`Id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCatégorie` (`IdCatégorie`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Id`,`IdVisiteur`),
  ADD KEY `IdVisiteur` (`IdVisiteur`);

--
-- Indexes for table `visiteur`
--
ALTER TABLE `visiteur`
  ADD PRIMARY KEY (`IdVisiteur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catégorie`
--
ALTER TABLE `catégorie`
  MODIFY `IdCatégorie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publication`
--
ALTER TABLE `publication`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visiteur`
--
ALTER TABLE `visiteur`
  MODIFY `IdVisiteur` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favori`
--
ALTER TABLE `favori`
  ADD CONSTRAINT `favori_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`),
  ADD CONSTRAINT `favori_ibfk_2` FOREIGN KEY (`IdVisiteur`) REFERENCES `visiteur` (`IdVisiteur`),
  ADD CONSTRAINT `favori_ibfk_3` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`);

--
-- Constraints for table `publication`
--
ALTER TABLE `publication`
  ADD CONSTRAINT `publication_ibfk_1` FOREIGN KEY (`IdCatégorie`) REFERENCES `catégorie` (`IdCatégorie`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `publication` (`Id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`IdVisiteur`) REFERENCES `visiteur` (`IdVisiteur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
