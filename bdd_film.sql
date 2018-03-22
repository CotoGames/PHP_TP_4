-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 08 fév. 2018 à 17:30
-- Version du serveur :  10.1.25-MariaDB
-- Version de PHP :  7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `resume` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nomFichier` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `genId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `film`
--

INSERT INTO `film` (`id`, `titre`, `resume`, `nomFichier`, `genId`) VALUES
(1, 'Star Wars : Episode I - La Menace fant?me', 'Avant de devenir un célèbre chevalier Jedi, et bien avant de se révèler l\'arme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. La Force est déjà puissante en lui et il est un remarquable pilote de Podracer. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel.\r\nPendant ce temps, l\'armée de droïdes de l\'insatiable Fédération du Commerce a envahi Naboo, une planète pacifique, dans le cadre d\'un plan secret des Sith visant à accroître leur pouvoir. Pour défendre la reine de Naboo, Amidala, les chevaliers Jedi vont devoir affronter le redoutable Seigneur Sith, Dark Maul.', 'starwars1.jpg', 1),
(2, 'Star Wars : Episode II - L\'Attaque des clone', 'Depuis le blocus de la planète Naboo par la Fédération du commerce, la République, gouvernée par le Chancelier Palpatine, connaît une véritable crise. Un groupe de dissidents, mené par le sombre Jedi comte Dooku, manifeste son mécontentement envers le fonctionnement du régime. Le Sénat et la population intergalactique se montrent pour leur part inquiets face à l\'émergence d\'une telle menace.\r\nCertains sénateurs demandent à ce que la République soit dotée d\'une solide armée pour empêcher que la situation ne se détériore davantage. Parallèlement, Padmé Amidala, devenue sénatrice, est menacée par les séparatistes et échappe de justesse à un attentat. Le Padawan Anakin Skywalker est chargé de sa protection. Son maître, Obi-Wan Kenobi, part enquêter sur cette tentative de meurtre et découvre la constitution d\'une mystérieuse armée de clones...', 'starwars2.jpg', 1),
(3, 'Les Émotifs anonymes', 'Jean-René, patron d\'une fabrique de chocolat, et Angélique, chocolatière de talent, sont deux grands émotifs. C\'est leur passion commune pour le chocolat qui les rapproche. Ils tombent amoureux l\'un de l\'autre sans oser se l\'avouer. Hélas, leur timidité maladive tend à les éloigner. Mais ils surmonteront leur manque de confiance en eux, au risque de dévoiler leurs sentiments.', 'fichier1.jpg', 11),
(4, 'Killing Bono', 'Neil McCormick, camarade de classe de Bono, a été témoin de l\'ascension du groupe U2 en même temps que lui-même échouait dans son désir de réussir.', 'fichier2.jpg', 11),
(5, '8 Mile', '1995. Jimmy a des rêves plein la tête mais il manque de mots pour les exprimer. Il accumule les déboires familiaux, professionnels et sentimentaux.', 'fichier3.jpg', 30);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `libelle`) VALUES
(1, 'Science Fiction'),
(2, 'Americana'),
(3, 'Art vidéo'),
(4, 'Buddy movie'),
(5, 'Chanbara'),
(6, 'Chronique'),
(7, 'Cinéma amateur'),
(8, 'Cinéma d\'auteur'),
(9, 'Cinéma de montagne'),
(10, 'Cinéma expérimental'),
(11, 'Comédie'),
(12, 'Documentaire'),
(13, 'Cinéma surréaliste '),
(14, 'Drame'),
(15, 'Film à sketches'),
(16, 'Film à suspense'),
(17, 'Film d\'action'),
(18, 'Film d\'aventure'),
(19, 'Film catastrophe'),
(20, 'Film érotique'),
(21, 'Film d\'espionnage'),
(22, 'Film d\'exploitation'),
(23, 'Film fantastique'),
(24, 'Film de guerre'),
(25, 'Film de guérilla'),
(26, 'Film historique'),
(27, 'Film institutionnel'),
(28, 'Film d\'horreur'),
(29, 'Film de super-héros'),
(30, 'Film musical'),
(31, 'Film policier'),
(32, 'Film d\'opéra'),
(33, 'Film pornographique'),
(34, 'Teen movie'),
(35, 'Ken Geki'),
(36, 'Masala'),
(37, 'Road movie'),
(38, 'Film d\'amour'),
(39, 'Péplum'),
(41, 'Sérial'),
(42, 'Thriller'),
(43, 'Troma'),
(44, 'Western');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_GENRE` (`genId`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_GENRE` FOREIGN KEY (`genId`) REFERENCES `genre` (`id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
