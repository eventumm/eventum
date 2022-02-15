-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 15 fév. 2022 à 01:24
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion`
--

-- --------------------------------------------------------

--
-- Structure de la table `aziz`
--

CREATE TABLE `aziz` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `camping`
--

CREATE TABLE `camping` (
  `id` int(11) NOT NULL,
  `nom_camp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut_camp` date NOT NULL,
  `date_fin_camp` date NOT NULL,
  `lieu_camp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descri_camp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbre_place_camp` int(11) NOT NULL,
  `image_camp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_camp` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `carte`
--

CREATE TABLE `carte` (
  `id` int(11) NOT NULL,
  `userid_id` int(11) DEFAULT NULL,
  `numfid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `carte_fidelite`
--

CREATE TABLE `carte_fidelite` (
  `id` int(11) NOT NULL,
  `num_fid` int(11) NOT NULL,
  `date_debut_fid` date NOT NULL,
  `date_fin_fid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carte_fidelite`
--

INSERT INTO `carte_fidelite` (`id`, `num_fid`, `date_debut_fid`, `date_fin_fid`) VALUES
(1, 35635, '2022-02-10', '2022-02-17'),
(2, 35635, '2022-02-10', '2022-02-17'),
(3, 68699, '2022-02-15', '2022-02-16'),
(4, 454, '2022-02-10', '2022-02-23');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom_categorie`) VALUES
(1, 'sdf'),
(2, 'fe');

-- --------------------------------------------------------

--
-- Structure de la table `cmt`
--

CREATE TABLE `cmt` (
  `id` int(11) NOT NULL,
  `descri_cmt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `date_cmd` date NOT NULL,
  `produit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220213194419', '2022-02-13 20:45:01', 881),
('DoctrineMigrations\\Version20220213200323', '2022-02-13 21:07:21', 361),
('DoctrineMigrations\\Version20220213203654', '2022-02-13 21:37:03', 1814),
('DoctrineMigrations\\Version20220213225535', '2022-02-13 23:55:45', 2494),
('DoctrineMigrations\\Version20220214000811', '2022-02-14 01:08:17', 2047),
('DoctrineMigrations\\Version20220214002830', '2022-02-14 01:28:35', 1385),
('DoctrineMigrations\\Version20220214005452', '2022-02-14 01:54:58', 553),
('DoctrineMigrations\\Version20220214005704', '2022-02-14 01:57:09', 3291),
('DoctrineMigrations\\Version20220214014147', '2022-02-14 02:41:57', 2368),
('DoctrineMigrations\\Version20220214020642', '2022-02-14 03:07:26', 7369),
('DoctrineMigrations\\Version20220214075219', '2022-02-14 08:52:41', 1212),
('DoctrineMigrations\\Version20220214132726', '2022-02-14 14:27:53', 300),
('DoctrineMigrations\\Version20220214134054', '2022-02-14 14:40:59', 1396),
('DoctrineMigrations\\Version20220214171201', '2022-02-14 18:12:10', 1965);

-- --------------------------------------------------------

--
-- Structure de la table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `nom_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_debut_event` date NOT NULL,
  `date_fin_event` date NOT NULL,
  `lieu_event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descri_event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_event` double NOT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `event`
--

INSERT INTO `event` (`id`, `nom_event`, `date_debut_event`, `date_fin_event`, `lieu_event`, `descri_event`, `image`, `prix_event`, `categorie_id`) VALUES
(2, 'dfgdf', '2017-01-01', '2017-01-01', 'sdf', 'fsdf', 'sdf', 6555, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `sujet_forum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descri_forum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_forum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forum`
--

INSERT INTO `forum` (`id`, `sujet_forum`, `descri_forum`, `image_forum`) VALUES
(1, 'ybè_', 'bè', 'bè');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom_prod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_prod` date NOT NULL,
  `prix_prod` double NOT NULL,
  `descri_prod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_prod` int(11) NOT NULL,
  `image_prod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `nom_prod`, `date_prod`, `prix_prod`, `descri_prod`, `stock_prod`, `image_prod`) VALUES
(1, 'xvds', '2017-01-01', 2, 'fgd', 66, 'hhiu');

-- --------------------------------------------------------

--
-- Structure de la table `reservationcamp`
--

CREATE TABLE `reservationcamp` (
  `id` int(11) NOT NULL,
  `date_reserc_camp` date NOT NULL,
  `camping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservationevent`
--

CREATE TABLE `reservationevent` (
  `id` int(11) NOT NULL,
  `date_reser_event` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservationvoy`
--

CREATE TABLE `reservationvoy` (
  `id` int(11) NOT NULL,
  `date_reser_voy` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_nai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `nom`, `prenom`, `date_nai`) VALUES
(2, 'boubaker', 'asma', '26/04/1998'),
(21, 'ben', 'soumaya', '12/12/1996'),
(22, 'rhibi', 'nour', '21/02/1998');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mdp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `email`, `mdp`) VALUES
(1, 'sfdf', 'sdf', 'dfs');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `mot_passe_utili` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_utili` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_utili` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `nbre_place` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carte_fid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `mot_passe_utili`, `nom_utili`, `tel_utili`, `role`, `type`, `nbre_place`, `email`, `image`, `carte_fid_id`) VALUES
(8, 'kwsd', 'wdf', 57, 'sdf', 54, 44, 'jvh@gmail.com', 'jh', 1),
(9, ',sdg', 'sd', 444, '77dsd', 777, 77, 'jvh@gmail.com', '4', 2);

-- --------------------------------------------------------

--
-- Structure de la table `voyage`
--

CREATE TABLE `voyage` (
  `id` int(11) NOT NULL,
  `date_debut_voy` date NOT NULL,
  `date_fin_voy` date NOT NULL,
  `descri_voy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_voy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nbre_place_voy` int(11) NOT NULL,
  `image_voy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix_voy` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `zouhour`
--

CREATE TABLE `zouhour` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aziz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aziz`
--
ALTER TABLE `aziz`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `camping`
--
ALTER TABLE `camping`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BAD4FFFD58E0A285` (`userid_id`);

--
-- Index pour la table `carte_fidelite`
--
ALTER TABLE `carte_fidelite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cmt`
--
ALTER TABLE `cmt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_32EB0CA429CCBAD0` (`forum_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6EEAA67DF347EFB` (`produit_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3BAE0AA7BCF5E72D` (`categorie_id`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservationcamp`
--
ALTER TABLE `reservationcamp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9FD76153CC6385` (`camping_id`);

--
-- Index pour la table `reservationevent`
--
ALTER TABLE `reservationevent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservationvoy`
--
ALTER TABLE `reservationvoy`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1D1C63B3C0ED449F` (`carte_fid_id`);

--
-- Index pour la table `voyage`
--
ALTER TABLE `voyage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `zouhour`
--
ALTER TABLE `zouhour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4CBE4C7913B4FF6E` (`aziz_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `aziz`
--
ALTER TABLE `aziz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `camping`
--
ALTER TABLE `camping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `carte`
--
ALTER TABLE `carte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `carte_fidelite`
--
ALTER TABLE `carte_fidelite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cmt`
--
ALTER TABLE `cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reservationcamp`
--
ALTER TABLE `reservationcamp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservationevent`
--
ALTER TABLE `reservationevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservationvoy`
--
ALTER TABLE `reservationvoy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `voyage`
--
ALTER TABLE `voyage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `zouhour`
--
ALTER TABLE `zouhour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `FK_BAD4FFFD58E0A285` FOREIGN KEY (`userid_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cmt`
--
ALTER TABLE `cmt`
  ADD CONSTRAINT `FK_32EB0CA429CCBAD0` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DF347EFB` FOREIGN KEY (`produit_id`) REFERENCES `produit` (`id`);

--
-- Contraintes pour la table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_3BAE0AA7BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `reservationcamp`
--
ALTER TABLE `reservationcamp`
  ADD CONSTRAINT `FK_D9FD76153CC6385` FOREIGN KEY (`camping_id`) REFERENCES `camping` (`id`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `FK_1D1C63B3C0ED449F` FOREIGN KEY (`carte_fid_id`) REFERENCES `carte_fidelite` (`id`);

--
-- Contraintes pour la table `zouhour`
--
ALTER TABLE `zouhour`
  ADD CONSTRAINT `FK_4CBE4C7913B4FF6E` FOREIGN KEY (`aziz_id`) REFERENCES `aziz` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
