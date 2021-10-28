-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 28 okt 2021 om 11:15
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`) VALUES
(1, 'roeitrainer', 'roeitrainer.jpg'),
(2, 'crosstrainer', 'crosstrainer.jpg'),
(3, 'home trainer ', 'hometrainer.jpg'),
(4, 'loopband', 'loopband.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(9, 'crosstrainer.1', 'categories/crosstrainer/cr1.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor thuisgebruik. Deze crosstrainer is fluisterstil, heeft een relatief lange lengtepas, is stabiel en heeft een zwaar vliegwiel. Hierdoor heeft de Fox 3 al vier keer de \'Best Reviewed\' award van Kieskeurig.nl verdiend! Door de vele trainingsprogramma\'s is het mogelijk om effectief je persoonlijke doelen te behalen met deze crosstrainer.', 2),
(10, 'crosstrainer.2', 'categories/crosstrainer/cr2.jpg', ' de focus Fitness Fox 4 is een fantastische crosstrainer voor elke thuissporter. Deze voorwiel aangedreven crosstrainer heeft een ongelooflijk scherpe prijs voor de uitstekende specificaties die hij te bieden heeft. Met een eigen gewicht van 67 kg, een vliegwiel van 7 kg en een lengtepas van 50 cm is een comfortabele en stabiele sportervaring gegarandeerd.', 2),
(11, 'crosstrainer.3', 'categories/crosstrainer/cr3.jpg', 'Geen training is hetzelfde met de Flow Fitness Glider DCT2000i Crosstrainer. Met maar liefst 24 programma\'s, 16 weerstandsniveaus en een handige bediening met Smart Wheel én Quick Keys voldoet deze crosstrainer aan de wensen van vrijwel iedere thuissporter. En wat dacht je van de Bluetooth ontvanger, waarmee je het fitnessapparaat verbindt met je favoriete trainingsapps? De mogelijkheden zijn eindeloos.', 2),
(12, 'crosstrainer.4', 'categories/crosstrainer/cr4.jpg', 'De Crosstrainer - Focus Fitness Fox 5 is dankzij de zeer hoge kwaliteit en betaalbare prijs niet voor niets ons bestverkochte en best beoordeelde model.\r\n\r\nMede dankzij het vliegwiel van 10 kg zorgt de Fox 5 ervoor dat je altijd op een natuurlijke en soepele manier kunt trainen. Of je de Fox 5 gebruikt voor revalidatie, in beweging wilt blijven of er intensief gebruik van wilt maken. Deze crosstrainer is geschikt voor iedereen! En dat blijkt: in het verleden heeft de Focus Fitness Fox 5 crosstrainer een Kieskeurig Review Award gewonnen dankzij de positieve reviews van consumenten!\r\n\r\n', 2),
(13, 'crosstrainer.5', 'categories/crosstrainer/cr5.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor de thuissporter. De Fox 3 is niet alleen stabiel en sterk maar ook nog eens geruisloos. De crosstrainer is zo ontworpen dat de voetpedalen in drie standen te verstellen zijn. Verder is de Fox 3 voorzien van een elektronische kleuren led computer. Met deze computer is het mogelijk je weerstand te verhogen of verlagen. Er zijn 16 weerstandniveaus waarmee je kunt afwisselen. Dankzij het eenvoudig te bedienen en duidelijk af te lezen display is het mogelijk om vele trainingsgegevens in één oogopslag in beeld te hebben. Zo kun je de tijd, afstand, snelheid, aantal omwentelingen, omgevingstempratuur, calorieverbruik, uithoudingsvermogen en hartslag inzien.\r\n', 2),
(14, 'crosstrainer.6', 'categories/crosstrainer/cr6.jpg', 'De compacte maar robuuste crosstrainer is geweldig voor training in elk huishouden.\r\n\r\nDeze trainer heeft meerlaagse weerstandscontrole en een computer waardoor hij een efficiënte training mogelijk maakt. Je kan je prestaties volgen met het grote LCD-scherm dat automatisch informatie weergeeft over tijd, snelheid, afstand, verbrande calorieën en hartslag.\r\n\r\nDe crosstrainer is ergonomisch ontworpen. De vier hoogtes van de stangen bieden voldoende ruimte om een optimale positie en optimale krachtoverdracht van voet naar pedaal mogelijk te maken. De stangen bieden tevens een extra workout van het bovenlichaam.\r\n\r\nDe soepele en stille bandoverdracht van het apparaat zorgt dat je geen last hebt van hinderlijk geluid tijdens het trainen. Het geluid zal niet interfereren tijdens het tv-kijken of muziek luisteren. De rubberen onderzijde van de standaard beschermt je vloer en biedt extra stabiliteit. Bovendien zijn er twee rolwieltjes aan de zijkant van de onderste balk aan de voorzijde bevestigd, waardoor het apparaat probleemloos van de ene naar de andere ruimte kan worden verplaatst.', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `stars` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `times`
--

CREATE TABLE `times` (
  `dag` varchar(255) NOT NULL,
  `tijd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `times`
--

INSERT INTO `times` (`dag`, `tijd`) VALUES
('Maandag', '7:00-20:00'),
('Dinsdag', '8:00-20:00'),
('Woensdag', '7:00-20:00'),
('Donderdag', '8:00-20:00'),
('Vrijdag', '7:00-20:30'),
('Zaterdag', '8:00-13:00'),
('Zondag', '8:00-13:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` enum('member','admin') DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stars` (`stars`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Beperkingen voor tabel `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
