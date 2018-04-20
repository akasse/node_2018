-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 20 Avril 2018 à 10:56
-- Version du serveur :  5.7.20-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nestdb`
--
-- --------------------------------------------------------

--
-- Structure de la table `ak_projet`
--

CREATE TABLE `ak_projet` (
  `id` varchar(255) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `createdDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Contenu de la table `ak_projet`
--

INSERT INTO `ak_projet` (`id`, `nom`, `type`, `description`, `status`, `createdDate`, `updatedDate`, `utilisateur_id`) VALUES
('03cff90f-74e7-4d7b-97c1-ae5e397488b6', 'Projet 0 sit', 'VSAT', 'Description Projet, Projet 0 sit TYPEVSAT', 1, '2018-04-20 10:54:32.368000', '2018-04-20 10:54:32.368000', 'ce4c62d7-cd3f-4db9-b214-32cdd2f3949a'),
('0b00fc98-ed23-4474-bdaa-e2ba9b13f3e4', 'Projet 49 magna', 'FH', 'Description Projet, Projet 49 magna TYPEFH', 1, '2018-04-20 10:54:32.402000', '2018-04-20 10:54:32.402000', '8b9d148d-5eb8-44d6-a0d0-f538e5807d8f'),
('111a1d61-7bb7-4302-ab4f-801e633b9ddc', 'Projet 30 mollit', 'FO', 'Description Projet, Projet 30 mollit TYPEFO', 1, '2018-04-20 10:54:32.390000', '2018-04-20 10:54:32.390000', 'd72da4f9-8264-4cb5-ab0e-c0a4af00171a'),
('11d7bc10-7335-4782-aa7c-dde40dc68f88', 'Projet 33 est', 'VSAT', 'Description Projet, Projet 33 est TYPEVSAT', 1, '2018-04-20 10:54:32.391000', '2018-04-20 10:54:32.391000', 'a7be80fc-c30c-47ea-927e-7b2e9d77ca42'),
('15e52a45-7478-4154-ab28-079d01ee59af', 'Projet 14 laborum', 'FO', 'Description Projet, Projet 14 laborum TYPEFO', 1, '2018-04-20 10:54:32.383000', '2018-04-20 10:54:32.383000', '256f4763-8101-4043-b998-13d82e61b1b3'),
('17d69194-395f-4593-8b80-85233fc028c1', 'Projet 5 ad', 'FO', 'Description Projet, Projet 5 ad TYPEFO', 1, '2018-04-20 10:54:32.380000', '2018-04-20 10:54:32.380000', '062574d6-267b-4bf1-b76b-5f3d5dca194e'),
('181a3cd3-3363-4c4e-a129-69e5d1968f40', 'Projet 9 magna', 'FO', 'Description Projet, Projet 9 magna TYPEFO', 1, '2018-04-20 10:54:32.382000', '2018-04-20 10:54:32.382000', '6a614581-e303-49d6-ab36-8aa854dd02d4'),
('1b772e73-522e-4fd5-b6be-77991650778c', 'Projet 1 incididunt', 'FH', 'Description Projet, Projet 1 incididunt TYPEFH', 1, '2018-04-20 10:54:32.378000', '2018-04-20 10:54:32.378000', 'b63da607-40b7-4a71-bb48-73c1be2eeb7f'),
('22dfdea7-e580-4b80-92f7-967b4e2edf3c', 'Projet 37 laborum', 'FH', 'Description Projet, Projet 37 laborum TYPEFH', 1, '2018-04-20 10:54:32.392000', '2018-04-20 10:54:32.392000', '5ebbd792-5910-43c7-8a17-1df5a931166b'),
('2cf9c917-2f76-445a-baaf-2da68b0546a5', 'Projet 2 reprehenderit', 'FH', 'Description Projet, Projet 2 reprehenderit TYPEFH', 1, '2018-04-20 10:54:32.379000', '2018-04-20 10:54:32.379000', '6a614581-e303-49d6-ab36-8aa854dd02d4'),
('364a06d6-cf01-4e1f-90d1-fa84bf65cb12', 'Projet 27 anim', 'FH', 'Description Projet, Projet 27 anim TYPEFH', 1, '2018-04-20 10:54:32.387000', '2018-04-20 10:54:32.387000', '8b9d148d-5eb8-44d6-a0d0-f538e5807d8f'),
('4c2e7117-cfb8-42e2-8429-daa14dfb2f49', 'Projet 39 ex', 'FH', 'Description Projet, Projet 39 ex TYPEFH', 1, '2018-04-20 10:54:32.396000', '2018-04-20 10:54:32.396000', '75a7468d-a4a5-423b-beec-1cc97bf45c8a'),
('4df198d8-8637-4d91-8ad1-1934176604be', 'Projet 42 duis', 'FH', 'Description Projet, Projet 42 duis TYPEFH', 1, '2018-04-20 10:54:32.397000', '2018-04-20 10:54:32.397000', '28517a96-45b4-41fa-b0c2-e5de7260c3d9'),
('52320950-d1e5-47f8-b584-b36a0ca11111', 'Projet 32 ut', 'FO', 'Description Projet, Projet 32 ut TYPEFO', 1, '2018-04-20 10:54:32.390000', '2018-04-20 10:54:32.390000', '75a7468d-a4a5-423b-beec-1cc97bf45c8a'),
('67d09568-c6a9-4ca0-bfe2-f378487f3a7b', 'Projet 3 id', 'FO', 'Description Projet, Projet 3 id TYPEFO', 1, '2018-04-19 17:48:41.821000', '2018-04-19 17:48:41.821000', '00618dee-6d3e-4cc1-bd8a-4488fa4d88eb'),
('6b501ff6-7dbc-4c19-9dad-dbe2fc3423e6', 'Projet 34 laboris', 'FO', 'Description Projet, Projet 34 laboris TYPEFO', 1, '2018-04-20 10:54:32.391000', '2018-04-20 10:54:32.391000', 'a18d499a-a270-489d-b39c-bb9537207525'),
('707b89f7-a55a-4e7f-9eae-c4d21a5a6db2', 'Projet 4 aliqua', 'VSAT', 'Description Projet, Projet 4 aliqua TYPEVSAT', 1, '2018-04-19 17:48:41.822000', '2018-04-19 17:48:41.822000', '00618dee-6d3e-4cc1-bd8a-4488fa4d88eb'),
('725badea-6d89-4b2e-b6c0-5cbe48281353', 'Projet 28 aliqua', 'FO', 'Description Projet, Projet 28 aliqua TYPEFO', 1, '2018-04-20 10:54:32.388000', '2018-04-20 10:54:32.388000', 'a7be80fc-c30c-47ea-927e-7b2e9d77ca42'),
('75750977-4e2e-49c3-b5b4-5e85a76631b9', 'Projet 7 nisi', 'FH', 'Description Projet, Projet 7 nisi TYPEFH', 1, '2018-04-20 10:54:32.380000', '2018-04-20 10:54:32.380000', '8b9d148d-5eb8-44d6-a0d0-f538e5807d8f'),
('7808a2cd-e918-401f-8ad3-2fdd9fe3ce0c', 'Projet 8 laborum', 'VSAT', 'Description Projet, Projet 8 laborum TYPEVSAT', 1, '2018-04-20 10:54:32.381000', '2018-04-20 10:54:32.381000', '824dbcbe-6c62-4e5d-9b53-121b94cd0697'),
('7b2c66c9-c878-4ebc-9bfc-68454d2abdf1', 'Projet 21 incididunt', 'FO', 'Description Projet, Projet 21 incididunt TYPEFO', 1, '2018-04-20 10:54:32.386000', '2018-04-20 10:54:32.386000', '062574d6-267b-4bf1-b76b-5f3d5dca194e'),
('7e362acc-6e64-4516-a0cc-3791a3c9ff30', 'Projet 17 tempor', 'FH', 'Description Projet, Projet 17 tempor TYPEFH', 1, '2018-04-20 10:54:32.384000', '2018-04-20 10:54:32.384000', '5bb8787b-bdcf-4461-82b1-6365ce70539b'),
('8576d3a5-9197-4924-a6c4-c1e406c44895', 'Projet 2 aliquip', 'FO', 'Description Projet, Projet 2 aliquip TYPEFO', 1, '2018-04-19 17:48:41.820000', '2018-04-19 17:48:41.820000', '00618dee-6d3e-4cc1-bd8a-4488fa4d88eb'),
('862b560d-6fa7-42ff-96ce-0e97b6bdb52c', 'Projet 12 cupidatat', 'FH', 'Description Projet, Projet 12 cupidatat TYPEFH', 1, '2018-04-20 10:54:32.383000', '2018-04-20 10:54:32.383000', '43ebb857-8878-41ad-bf8b-79865a07e5d2'),
('8d4a13df-5548-4f65-910e-6f51b6eeb191', 'Projet 38 ullamco', 'VSAT', 'Description Projet, Projet 38 ullamco TYPEVSAT', 1, '2018-04-20 10:54:32.393000', '2018-04-20 10:54:32.393000', '757ddcd5-9843-4296-ad26-7228e512e98b'),
('90494bb5-14da-48d1-a7ac-0f41d3d459b7', 'Projet 45 laboris', 'FO', 'Description Projet, Projet 45 laboris TYPEFO', 1, '2018-04-20 10:54:32.398000', '2018-04-20 10:54:32.398000', '730bf461-b0dd-4503-b201-c60662e66538'),
('91481c36-4408-41b0-a0a4-7dfbc57b6264', 'Projet 20 cillum', 'FH', 'Description Projet, Projet 20 cillum TYPEFH', 1, '2018-04-20 10:54:32.386000', '2018-04-20 10:54:32.386000', '1b26dcd8-b462-4590-b89d-ce835a83e419'),
('94d109c3-f4af-4487-a336-420becca7990', 'Projet 0 nisi', 'FH', 'Description Projet, Projet 0 nisi TYPEFH', 1, '2018-04-19 17:48:41.808000', '2018-04-19 17:48:41.808000', '00618dee-6d3e-4cc1-bd8a-4488fa4d88eb'),
('9d1ff2b4-22aa-460b-b33c-00255ea93d1f', 'Projet 48 ut', 'VSAT', 'Description Projet, Projet 48 ut TYPEVSAT', 1, '2018-04-20 10:54:32.400000', '2018-04-20 10:54:32.400000', '5ebbd792-5910-43c7-8a17-1df5a931166b'),
('9f2a5be3-7de0-4f77-9d17-53377793f49c', 'Projet 16 dolor', 'FO', 'Description Projet, Projet 16 dolor TYPEFO', 1, '2018-04-20 10:54:32.384000', '2018-04-20 10:54:32.384000', 'a18d499a-a270-489d-b39c-bb9537207525'),
('a01efe89-38cc-463b-919d-d0bf817db52b', 'Projet 4 veniam', 'FO', 'Description Projet, Projet 4 veniam TYPEFO', 1, '2018-04-20 10:54:32.380000', '2018-04-20 10:54:32.380000', '022e7194-5feb-4101-95ba-edd3b24adfea'),
('a1b7c94f-5042-4efc-84d2-c1a22c692e43', 'Projet 6 occaecat', 'FH', 'Description Projet, Projet 6 occaecat TYPEFH', 1, '2018-04-20 10:54:32.380000', '2018-04-20 10:54:32.380000', 'b63da607-40b7-4a71-bb48-73c1be2eeb7f'),
('a1d70e73-5939-410f-b6f5-a5a372254c1c', 'Projet 31 pariatur', 'VSAT', 'Description Projet, Projet 31 pariatur TYPEVSAT', 1, '2018-04-20 10:54:32.390000', '2018-04-20 10:54:32.390000', 'a7be80fc-c30c-47ea-927e-7b2e9d77ca42'),
('a9cf755a-ac4f-4062-a1a2-0cf7db7190f6', 'Projet 35 aute', 'FH', 'Description Projet, Projet 35 aute TYPEFH', 1, '2018-04-20 10:54:32.391000', '2018-04-20 10:54:32.391000', '022e7194-5feb-4101-95ba-edd3b24adfea'),
('ad203022-9d33-4077-86c0-d7897e6a0439', 'Projet 10 cupidatat', 'VSAT', 'Description Projet, Projet 10 cupidatat TYPEVSAT', 1, '2018-04-20 10:54:32.382000', '2018-04-20 10:54:32.382000', '5ebbd792-5910-43c7-8a17-1df5a931166b'),
('b3d2f761-af33-4a19-b157-931cfeb94d98', 'Projet 40 proident', 'FO', 'Description Projet, Projet 40 proident TYPEFO', 1, '2018-04-20 10:54:32.396000', '2018-04-20 10:54:32.396000', '5ebbd792-5910-43c7-8a17-1df5a931166b'),
('b62d1a6e-234d-4ece-9c2e-74cd7a22a073', 'Projet 36 in', 'FH', 'Description Projet, Projet 36 in TYPEFH', 1, '2018-04-20 10:54:32.392000', '2018-04-20 10:54:32.392000', '1b26dcd8-b462-4590-b89d-ce835a83e419'),
('c17e7a6d-3aab-494a-b548-bdd9d1f4094e', 'Projet 11 ex', 'VSAT', 'Description Projet, Projet 11 ex TYPEVSAT', 1, '2018-04-20 10:54:32.383000', '2018-04-20 10:54:32.383000', 'd72da4f9-8264-4cb5-ab0e-c0a4af00171a'),
('c350cc82-edc8-4ce9-be47-839d737a8ad2', 'Projet 26 sunt', 'VSAT', 'Description Projet, Projet 26 sunt TYPEVSAT', 1, '2018-04-20 10:54:32.387000', '2018-04-20 10:54:32.387000', '6a614581-e303-49d6-ab36-8aa854dd02d4'),
('c43a1b21-e30d-46a0-ae1f-9e50f9deff60', 'Projet 24 eiusmod', 'FO', 'Description Projet, Projet 24 eiusmod TYPEFO', 1, '2018-04-20 10:54:32.387000', '2018-04-20 10:54:32.387000', '1b26dcd8-b462-4590-b89d-ce835a83e419'),
('c72adc32-1222-416e-a76b-1ac3e6930c97', 'Projet 47 nostrud', 'VSAT', 'Description Projet, Projet 47 nostrud TYPEVSAT', 1, '2018-04-20 10:54:32.399000', '2018-04-20 10:54:32.399000', '43ebb857-8878-41ad-bf8b-79865a07e5d2'),
('c94ef22b-223d-4c4f-acc8-aa8b7967bdfc', 'Projet 22 veniam', 'FO', 'Description Projet, Projet 22 veniam TYPEFO', 1, '2018-04-20 10:54:32.386000', '2018-04-20 10:54:32.386000', '256f4763-8101-4043-b998-13d82e61b1b3'),
('cdf242e4-ba64-4b71-ae5b-841eb5c12fb4', 'Projet 41 sit', 'FO', 'Description Projet, Projet 41 sit TYPEFO', 1, '2018-04-20 10:54:32.397000', '2018-04-20 10:54:32.397000', 'ce4c62d7-cd3f-4db9-b214-32cdd2f3949a'),
('cf31f45a-392d-4602-9313-55db92a5e24b', 'Projet 25 sint', 'FH', 'Description Projet, Projet 25 sint TYPEFH', 1, '2018-04-20 10:54:32.387000', '2018-04-20 10:54:32.387000', '6537a150-5766-4287-b31b-e9c415b56e8a'),
('d3d2c7cd-2e5e-4fef-a991-9c61d0b5d526', 'Projet 3 ad', 'VSAT', 'Description Projet, Projet 3 ad TYPEVSAT', 1, '2018-04-20 10:54:32.379000', '2018-04-20 10:54:32.379000', '20bdacbf-2e8c-4061-ae43-247d622c0a49'),
('d499fc3d-11bc-4e19-9791-8110d2b67d9b', 'Projet 18 ad', 'FO', 'Description Projet, Projet 18 ad TYPEFO', 1, '2018-04-20 10:54:32.384000', '2018-04-20 10:54:32.384000', '824dbcbe-6c62-4e5d-9b53-121b94cd0697'),
('d5c9b619-e80b-4523-b3fd-e4d764f98f93', 'Projet 1 sit', 'VSAT', 'Description Projet, Projet 1 sit TYPEVSAT', 1, '2018-04-19 17:48:41.819000', '2018-04-19 17:48:41.819000', '00618dee-6d3e-4cc1-bd8a-4488fa4d88eb'),
('ddf3ac2f-16ef-481b-af23-49d4dc627621', 'Projet 29 tempor', 'FH', 'Description Projet, Projet 29 tempor TYPEFH', 1, '2018-04-20 10:54:32.389000', '2018-04-20 10:54:32.389000', '730bf461-b0dd-4503-b201-c60662e66538'),
('de08047c-f611-426c-9b10-b8fdb5a77eff', 'Projet 46 ipsum', 'FH', 'Description Projet, Projet 46 ipsum TYPEFH', 1, '2018-04-20 10:54:32.399000', '2018-04-20 10:54:32.399000', '256f4763-8101-4043-b998-13d82e61b1b3'),
('e52e8833-314b-4754-b923-4dbb4b5bf86b', 'Projet 43 in', 'VSAT', 'Description Projet, Projet 43 in TYPEVSAT', 1, '2018-04-20 10:54:32.398000', '2018-04-20 10:54:32.398000', '6a614581-e303-49d6-ab36-8aa854dd02d4'),
('ec525a72-0076-4d77-be35-b336890b0301', 'Projet 13 veniam', 'FH', 'Description Projet, Projet 13 veniam TYPEFH', 1, '2018-04-20 10:54:32.383000', '2018-04-20 10:54:32.383000', '00fdba6b-9066-4579-928f-787d7d790ba4'),
('f23f35e4-c6e6-4b21-acf0-a7f76b4a22a6', 'Projet 44 exercitation', 'VSAT', 'Description Projet, Projet 44 exercitation TYPEVSAT', 1, '2018-04-20 10:54:32.398000', '2018-04-20 10:54:32.398000', 'b63da607-40b7-4a71-bb48-73c1be2eeb7f'),
('f324fb8d-b99e-471b-94f2-c2d8c24d8c14', 'Projet 23 nisi', 'FO', 'Description Projet, Projet 23 nisi TYPEFO', 1, '2018-04-20 10:54:32.386000', '2018-04-20 10:54:32.386000', '824dbcbe-6c62-4e5d-9b53-121b94cd0697'),
('fc7f8e97-d4a4-4493-aa73-3ac99adf283d', 'Projet 19 labore', 'VSAT', 'Description Projet, Projet 19 labore TYPEVSAT', 1, '2018-04-20 10:54:32.385000', '2018-04-20 10:54:32.385000', '43ebb857-8878-41ad-bf8b-79865a07e5d2'),
('ff66a5ef-80e4-47be-b9c1-38842ec9766f', 'Projet 15 aute', 'FH', 'Description Projet, Projet 15 aute TYPEFH', 1, '2018-04-20 10:54:32.384000', '2018-04-20 10:54:32.384000', '256f4763-8101-4043-b998-13d82e61b1b3');

-- --------------------------------------------------------

--
-- Structure de la table `ak_role`
--

CREATE TABLE `ak_role` (
  `nom` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ak_role`
--

INSERT INTO `ak_role` (`nom`, `description`) VALUES
('ADMIN', 'administrateur'),
('STAFF', 'group'),
('USER', 'simple');

-- --------------------------------------------------------

--
-- Structure de la table `ak_users_roles`
--

CREATE TABLE `ak_users_roles` (
  `akUtilisateurId` varchar(255) NOT NULL,
  `akRoleNom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ak_users_roles`
--

INSERT INTO `ak_users_roles` (`akUtilisateurId`, `akRoleNom`) VALUES
('18c6972d-66b7-4714-bfae-ab29d189d5fe', 'ADMIN'),
('39473cd6-858a-4759-8552-db40047bef25', 'ADMIN'),
('3bf0ca1c-bfa3-4c76-941d-46c43d024b39', 'ADMIN'),
('43ebb857-8878-41ad-bf8b-79865a07e5d2', 'ADMIN'),
('4c1a6186-e17e-4e37-9055-25b0d46d0446', 'ADMIN'),
('4c63979f-0eca-41f8-acf7-6b8b1750e011', 'ADMIN'),
('5c7ff6f1-27c5-4ff0-96b1-71539635fd87', 'ADMIN'),
('667de7ce-7b71-4706-9878-30c57c41010b', 'ADMIN'),
('685b4821-39e2-4fae-8635-e7bab1868d80', 'ADMIN'),
('6ebbd2e5-eb46-4935-9554-87f09ef3ff51', 'ADMIN'),
('72409192-a2ee-4d88-a397-6c8531c19677', 'ADMIN'),
('730bf461-b0dd-4503-b201-c60662e66538', 'ADMIN'),
('75a7468d-a4a5-423b-beec-1cc97bf45c8a', 'ADMIN'),
('785c7062-6c3e-49dd-a516-f7390e19435b', 'ADMIN'),
('792c3d91-9029-4c4e-8496-dbb209228421', 'ADMIN'),
('81d4dbf1-a526-4c44-adb3-34cce7717425', 'ADMIN'),
('81fd3dfa-601a-40d9-94f5-b581471def1e', 'ADMIN'),
('821b5c73-d957-4175-95e1-c003a515bd1c', 'ADMIN'),
('824dbcbe-6c62-4e5d-9b53-121b94cd0697', 'ADMIN'),
('8476c878-0be1-4112-8f20-47e467a9a5b9', 'ADMIN'),
('98ccf0b6-f19f-4233-a508-4cb70c8adfec', 'ADMIN'),
('9c817229-0b11-4ab0-8c92-566beea50796', 'ADMIN'),
('9f6272d6-b79e-4610-8a42-7da8fc40a105', 'ADMIN'),
('a63b7e33-4305-4f3b-8459-5f419f8518e4', 'ADMIN'),
('ad4b84f5-0726-4b2a-a9fc-76b286f9bbd4', 'ADMIN'),
('bf026685-66b0-4ed8-8f02-8ac12a914334', 'ADMIN'),
('ce4c62d7-cd3f-4db9-b214-32cdd2f3949a', 'ADMIN'),
('d778ba3f-9104-41c5-8849-de0562e907cd', 'ADMIN'),
('d8f15e80-c2cc-4660-a6d5-3cef9b1c9c7b', 'ADMIN'),
('e7700f9c-79e6-4f02-8d02-712d93340450', 'ADMIN'),
('eb2f7298-aed7-40e7-a1c9-8b1b2642b7e6', 'ADMIN'),
('fcb41a53-fb27-42c4-b1e9-61f13da89dc8', 'ADMIN'),
('00618dee-6d3e-4cc1-bd8a-4488fa4d88eb', 'STAFF'),
('00fdba6b-9066-4579-928f-787d7d790ba4', 'STAFF'),
('022e7194-5feb-4101-95ba-edd3b24adfea', 'STAFF'),
('062574d6-267b-4bf1-b76b-5f3d5dca194e', 'STAFF'),
('0a4e45dd-a8f6-44d4-b91a-d66123e9c7ac', 'STAFF'),
('0cefb7df-da59-430c-9af5-e8a84d8f7559', 'STAFF'),
('12bcfbcb-32c8-4cfe-ad01-df119fa649e0', 'STAFF'),
('1b26dcd8-b462-4590-b89d-ce835a83e419', 'STAFF'),
('256f4763-8101-4043-b998-13d82e61b1b3', 'STAFF'),
('26db821d-1b8d-48f5-8281-080ab1000539', 'STAFF'),
('327eb962-71d9-44e7-b8ab-0cc96bec99bc', 'STAFF'),
('331e5420-8261-496c-a1bc-17bb9071f7c2', 'STAFF'),
('376e22df-b0c8-475e-a1c9-b5274f5b2404', 'STAFF'),
('38fcdef0-7d79-44d9-8498-9f4509e1fc57', 'STAFF'),
('3eb61476-1468-4670-8772-01f842133650', 'STAFF'),
('504f5670-4767-4444-975d-ecd918238ecc', 'STAFF'),
('5bb8787b-bdcf-4461-82b1-6365ce70539b', 'STAFF'),
('5f8c54c0-c067-4e98-b18a-4fa31c7bc86c', 'STAFF'),
('6537a150-5766-4287-b31b-e9c415b56e8a', 'STAFF'),
('68955689-654f-46fe-b834-8858cbf20a40', 'STAFF'),
('6ee5c6c3-3336-4ee1-ac7f-3098b36b864e', 'STAFF'),
('791f08fe-c62c-4175-a3eb-e3fae0c23a5f', 'STAFF'),
('792c3d91-9029-4c4e-8496-dbb209228421', 'STAFF'),
('8b01dc55-5e32-4937-8b39-537711455885', 'STAFF'),
('8bfb3712-1d5c-40f2-bbe8-5d93ea3ef670', 'STAFF'),
('9b5c0f4b-9d5a-4dce-b58e-4d3d9611c93a', 'STAFF'),
('9ce77ce2-f20e-4b0b-b816-14203a05e297', 'STAFF'),
('a18d499a-a270-489d-b39c-bb9537207525', 'STAFF'),
('a7be80fc-c30c-47ea-927e-7b2e9d77ca42', 'STAFF'),
('b2686d34-c433-48f3-b75f-560a12460d34', 'STAFF'),
('b63da607-40b7-4a71-bb48-73c1be2eeb7f', 'STAFF'),
('e05549e0-a9ef-4069-9306-b404b2b5b230', 'STAFF'),
('e3a88d11-517a-4e7a-b6be-7bd0104311dd', 'STAFF'),
('e4bb4040-ab35-41c3-9d8d-34483597357c', 'STAFF'),
('fabbbc2f-c505-4baf-9b1d-28ecbad1401e', 'STAFF'),
('fcfb232c-514c-4fb8-8930-532e321a100c', 'STAFF'),
('046c7d07-2c59-48da-9914-a8fc10109a3a', 'USER'),
('0c50526e-7c08-44aa-b03a-e5d7b1ace5d4', 'USER'),
('0d1c7ef5-717c-4a7b-9bd4-873eb9b9b5b7', 'USER'),
('180dfecc-0238-4790-b812-a1b54130e7d4', 'USER'),
('20bdacbf-2e8c-4061-ae43-247d622c0a49', 'USER'),
('28517a96-45b4-41fa-b0c2-e5de7260c3d9', 'USER'),
('2fcddf6e-fc21-43d8-bc19-1343eafd800a', 'USER'),
('40dda446-cbf4-4a27-b358-6ed2773d6d5f', 'USER'),
('4ac1af15-9a20-456d-ae93-827dc78575fc', 'USER'),
('4f0910c5-6da8-465c-80e2-e525b2bda82f', 'USER'),
('5ebbd792-5910-43c7-8a17-1df5a931166b', 'USER'),
('5f2cc0e8-9ae8-45ed-a489-22742e5cee20', 'USER'),
('6a614581-e303-49d6-ab36-8aa854dd02d4', 'USER'),
('757ddcd5-9843-4296-ad26-7228e512e98b', 'USER'),
('7e00db0f-5c8d-44f7-9944-b39ad7003daf', 'USER'),
('84b77d1a-581e-4dee-a64b-e173da82d4de', 'USER'),
('8b9d148d-5eb8-44d6-a0d0-f538e5807d8f', 'USER'),
('8d07b5d8-e127-42db-91cf-e0512b78e3c6', 'USER'),
('8d353e66-87d3-4131-bc0d-af0e984bd9ee', 'USER'),
('90d5c2ca-9ca7-49aa-8b11-2970782ab982', 'USER'),
('a8df30ce-1a4f-44b0-8e43-f306abd3781c', 'USER'),
('c4c3f14f-c0b8-4415-bbe7-fa8caccef0fa', 'USER'),
('c5e1f4d2-7416-4f48-a51c-60e34c6b1957', 'USER'),
('d72da4f9-8264-4cb5-ab0e-c0a4af00171a', 'USER'),
('daaea021-2f15-4648-b9cb-040c606475cd', 'USER'),
('e9d5f4b5-3cb3-4e7c-ad09-5133be7d45f4', 'USER'),
('f02078e8-88ef-4d67-9fc3-eb6b265d9964', 'USER'),
('f95cfec0-543f-4acb-a664-bd26cb59347b', 'USER');

-- --------------------------------------------------------

--
-- Structure de la table `ak_utilisateur`
--

CREATE TABLE `ak_utilisateur` (
  `id` varchar(255) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `createdDate` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Contenu de la table `ak_utilisateur`
--

INSERT INTO `ak_utilisateur` (`id`, `prenom`, `nom`, `email`, `password`, `status`, `createdDate`, `updatedDate`) VALUES
('00618dee-6d3e-4cc1-bd8a-4488fa4d88eb', 'Knapp Carson', 'Roy', 'knapproy@halap.com', 'passer', 0, '2018-04-19 17:40:18.019000', '2018-04-19 17:40:18.019000'),
('00fdba6b-9066-4579-928f-787d7d790ba4', 'Dixie Logan', 'Osborn', 'dixieosborn@halap.com', 'passer', 0, '2018-04-19 17:42:30.940000', '2018-04-19 17:42:30.940000'),
('022e7194-5feb-4101-95ba-edd3b24adfea', 'Ellison Armstrong', 'Mcleod', 'ellisonmcleod@halap.com', 'passer', 0, '2018-04-19 17:42:30.945000', '2018-04-19 17:42:30.945000'),
('046c7d07-2c59-48da-9914-a8fc10109a3a', 'Jolene Calderon', 'Wise', 'jolenewise@halap.com', 'passer', 0, '2018-04-19 17:42:30.946000', '2018-04-19 17:42:30.946000'),
('062574d6-267b-4bf1-b76b-5f3d5dca194e', 'Conner Reynolds', 'Dixon', 'connerdixon@halap.com', 'passer', 0, '2018-04-19 17:42:30.946000', '2018-04-19 17:42:30.946000'),
('0a4e45dd-a8f6-44d4-b91a-d66123e9c7ac', 'Hood Morin', 'Adams', 'hoodadams@halap.com', 'passer', 0, '2018-04-19 17:40:18.018000', '2018-04-19 17:40:18.018000'),
('0c50526e-7c08-44aa-b03a-e5d7b1ace5d4', 'Toni Mcgee', 'Warner', 'toniwarner@halap.com', 'passer', 0, '2018-04-19 17:42:30.953000', '2018-04-19 17:42:30.953000'),
('0cefb7df-da59-430c-9af5-e8a84d8f7559', 'Macias Small', 'Sutton', 'maciassutton@halap.com', 'passer', 0, '2018-04-19 17:42:30.951000', '2018-04-19 17:42:30.951000'),
('0d1c7ef5-717c-4a7b-9bd4-873eb9b9b5b7', 'Waller Meyer', 'Witt', 'wallerwitt@halap.com', 'passer', 0, '2018-04-19 17:42:30.965000', '2018-04-19 17:42:30.965000'),
('12bcfbcb-32c8-4cfe-ad01-df119fa649e0', 'Amy Rodgers', 'Boone', 'amyboone@halap.com', 'passer', 0, '2018-04-19 17:40:18.028000', '2018-04-19 17:40:18.028000'),
('180dfecc-0238-4790-b812-a1b54130e7d4', 'Sally Lester', 'Thompson', 'sallythompson@halap.com', 'passer', 0, '2018-04-19 17:42:30.942000', '2018-04-19 17:42:30.942000'),
('18c6972d-66b7-4714-bfae-ab29d189d5fe', 'Maynard Reilly', 'Andrews', 'maynardandrews@halap.com', 'passer', 0, '2018-04-19 17:42:30.944000', '2018-04-19 17:42:30.944000'),
('1b26dcd8-b462-4590-b89d-ce835a83e419', 'Church Gross', 'Haynes', 'churchhaynes@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('20bdacbf-2e8c-4061-ae43-247d622c0a49', 'Ester Monroe', 'Sheppard', 'estersheppard@halap.com', 'passer', 0, '2018-04-19 17:42:30.951000', '2018-04-19 17:42:30.951000'),
('256f4763-8101-4043-b998-13d82e61b1b3', 'Eloise Ferguson', 'Howell', 'eloisehowell@halap.com', 'passer', 0, '2018-04-19 17:42:30.955000', '2018-04-19 17:42:30.955000'),
('26db821d-1b8d-48f5-8281-080ab1000539', 'Richards Reeves', 'Sellers', 'richardssellers@halap.com', 'passer', 0, '2018-04-19 17:42:30.942000', '2018-04-19 17:42:30.942000'),
('28517a96-45b4-41fa-b0c2-e5de7260c3d9', 'Carmela Parks', 'Cannon', 'carmelacannon@halap.com', 'passer', 0, '2018-04-19 17:42:30.939000', '2018-04-19 17:42:30.939000'),
('2fcddf6e-fc21-43d8-bc19-1343eafd800a', 'Sellers Bean', 'Shannon', 'sellersshannon@halap.com', 'passer', 0, '2018-04-19 17:40:18.028000', '2018-04-19 17:40:18.028000'),
('327eb962-71d9-44e7-b8ab-0cc96bec99bc', 'Mccray Pratt', 'Cobb', 'mccraycobb@halap.com', 'passer', 0, '2018-04-19 17:42:30.941000', '2018-04-19 17:42:30.941000'),
('331e5420-8261-496c-a1bc-17bb9071f7c2', 'Lorene Saunders', 'Everett', 'loreneeverett@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('376e22df-b0c8-475e-a1c9-b5274f5b2404', 'Carter Merritt', 'Jennings', 'carterjennings@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('38fcdef0-7d79-44d9-8498-9f4509e1fc57', 'Rodgers Lee', 'Dale', 'rodgersdale@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('39473cd6-858a-4759-8552-db40047bef25', 'Talley Christensen', 'Massey', 'talleymassey@halap.com', 'passer', 0, '2018-04-19 17:40:18.028000', '2018-04-19 17:40:18.028000'),
('3bf0ca1c-bfa3-4c76-941d-46c43d024b39', 'Jamie Mcclure', 'Hale', 'jamiehale@halap.com', 'passer', 0, '2018-04-19 17:42:30.954000', '2018-04-19 17:42:30.954000'),
('3eb61476-1468-4670-8772-01f842133650', 'Knowles Glover', 'Stephenson', 'knowlesstephenson@halap.com', 'passer', 0, '2018-04-19 17:42:30.940000', '2018-04-19 17:42:30.940000'),
('40dda446-cbf4-4a27-b358-6ed2773d6d5f', 'Russell Mcfarland', 'Buckner', 'russellbuckner@halap.com', 'passer', 0, '2018-04-19 17:42:30.954000', '2018-04-19 17:42:30.954000'),
('43ebb857-8878-41ad-bf8b-79865a07e5d2', 'Alexis Stevens', 'Goodwin', 'alexisgoodwin@halap.com', 'passer', 0, '2018-04-19 17:42:30.955000', '2018-04-19 17:42:30.955000'),
('4ac1af15-9a20-456d-ae93-827dc78575fc', 'Sweeney Wood', 'Morton', 'sweeneymorton@halap.com', 'passer', 0, '2018-04-19 17:42:30.940000', '2018-04-19 17:42:30.940000'),
('4c1a6186-e17e-4e37-9055-25b0d46d0446', 'Loretta Mckay', 'Montgomery', 'lorettamontgomery@halap.com', 'passer', 0, '2018-04-19 17:42:30.950000', '2018-04-19 17:42:30.950000'),
('4c63979f-0eca-41f8-acf7-6b8b1750e011', 'Michael Walter', 'Bowman', 'michaelbowman@halap.com', 'passer', 0, '2018-04-19 17:42:30.956000', '2018-04-19 17:42:30.956000'),
('4f0910c5-6da8-465c-80e2-e525b2bda82f', 'Mayer Cook', 'Hawkins', 'mayerhawkins@halap.com', 'passer', 0, '2018-04-19 17:42:30.941000', '2018-04-19 17:42:30.941000'),
('504f5670-4767-4444-975d-ecd918238ecc', 'Gertrude Cherry', 'Strong', 'gertrudestrong@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('5bb8787b-bdcf-4461-82b1-6365ce70539b', 'Candace Whitaker', 'Joseph', 'candacejoseph@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('5c7ff6f1-27c5-4ff0-96b1-71539635fd87', 'Morgan Vega', 'Pena', 'morganpena@halap.com', 'passer', 0, '2018-04-19 17:40:18.027000', '2018-04-19 17:40:18.027000'),
('5ebbd792-5910-43c7-8a17-1df5a931166b', 'Benita Reyes', 'Hunt', 'benitahunt@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('5f2cc0e8-9ae8-45ed-a489-22742e5cee20', 'Hudson Todd', 'Goff', 'hudsongoff@halap.com', 'passer', 0, '2018-04-19 17:40:18.021000', '2018-04-19 17:40:18.021000'),
('5f8c54c0-c067-4e98-b18a-4fa31c7bc86c', 'Evangelina Vincent', 'Gill', 'evangelinagill@halap.com', 'passer', 0, '2018-04-19 17:42:30.955000', '2018-04-19 17:42:30.955000'),
('6537a150-5766-4287-b31b-e9c415b56e8a', 'Eula Chaney', 'Donovan', 'euladonovan@halap.com', 'passer', 0, '2018-04-19 17:40:18.019000', '2018-04-19 17:40:18.019000'),
('667de7ce-7b71-4706-9878-30c57c41010b', 'Warner Harmon', 'Stafford', 'warnerstafford@halap.com', 'passer', 0, '2018-04-19 17:42:30.941000', '2018-04-19 17:42:30.941000'),
('685b4821-39e2-4fae-8635-e7bab1868d80', 'Lorna Ingram', 'Hammond', 'lornahammond@halap.com', 'passer', 0, '2018-04-19 17:40:18.016000', '2018-04-19 17:40:18.016000'),
('68955689-654f-46fe-b834-8858cbf20a40', 'Crawford Mitchell', 'Melendez', 'crawfordmelendez@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('6a614581-e303-49d6-ab36-8aa854dd02d4', 'Anita Shepherd', 'Fisher', 'anitafisher@halap.com', 'passer', 0, '2018-04-19 17:40:18.020000', '2018-04-19 17:40:18.020000'),
('6ebbd2e5-eb46-4935-9554-87f09ef3ff51', 'Hurst Britt', 'Cross', 'hurstcross@halap.com', 'passer', 0, '2018-04-19 17:40:18.023000', '2018-04-19 17:40:18.023000'),
('6ee5c6c3-3336-4ee1-ac7f-3098b36b864e', 'Frederick Sloan', 'Battle', 'frederickbattle@halap.com', 'passer', 0, '2018-04-19 17:40:18.020000', '2018-04-19 17:40:18.020000'),
('72409192-a2ee-4d88-a397-6c8531c19677', 'Owen Burks', 'Wolf', 'owenwolf@halap.com', 'passer', 0, '2018-04-19 17:42:30.952000', '2018-04-19 17:42:30.952000'),
('730bf461-b0dd-4503-b201-c60662e66538', 'Cherry Joseph', 'Blankenship', 'cherryblankenship@halap.com', 'passer', 0, '2018-04-19 17:40:18.027000', '2018-04-19 17:40:18.027000'),
('757ddcd5-9843-4296-ad26-7228e512e98b', 'Bridges Sellers', 'Ellis', 'bridgesellis@halap.com', 'passer', 0, '2018-04-19 17:40:18.026000', '2018-04-19 17:40:18.026000'),
('75a7468d-a4a5-423b-beec-1cc97bf45c8a', 'Avila Riggs', 'Jenkins', 'avilajenkins@halap.com', 'passer', 0, '2018-04-19 17:40:18.019000', '2018-04-19 17:40:18.019000'),
('785c7062-6c3e-49dd-a516-f7390e19435b', 'Isabella Bates', 'Ortiz', 'isabellaortiz@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('791f08fe-c62c-4175-a3eb-e3fae0c23a5f', 'Tania Jackson', 'Rosario', 'taniarosario@halap.com', 'passer', 0, '2018-04-19 17:42:30.947000', '2018-04-19 17:42:30.947000'),
('792c3d91-9029-4c4e-8496-dbb209228421', 'admin', 'admin ', 'admin@gmail.com', 'admin', 0, '2018-04-19 15:31:04.402000', '2018-04-19 15:31:04.402000'),
('7e00db0f-5c8d-44f7-9944-b39ad7003daf', 'Key Barr', 'Porter', 'keyporter@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('81d4dbf1-a526-4c44-adb3-34cce7717425', 'Schwartz Shepard', 'Guerra', 'schwartzguerra@halap.com', 'passer', 0, '2018-04-19 17:40:18.019000', '2018-04-19 17:40:18.019000'),
('81fd3dfa-601a-40d9-94f5-b581471def1e', 'Carol Alexander', 'Hopkins', 'carolhopkins@halap.com', 'passer', 0, '2018-04-19 17:42:30.942000', '2018-04-19 17:42:30.942000'),
('821b5c73-d957-4175-95e1-c003a515bd1c', 'Watkins Foley', 'Rosa', 'watkinsrosa@halap.com', 'passer', 0, '2018-04-19 17:40:18.020000', '2018-04-19 17:40:18.020000'),
('824dbcbe-6c62-4e5d-9b53-121b94cd0697', 'Beulah Wilcox', 'Holland', 'beulahholland@halap.com', 'passer', 0, '2018-04-19 17:40:18.017000', '2018-04-19 17:40:18.017000'),
('8476c878-0be1-4112-8f20-47e467a9a5b9', 'Kim Camacho', 'Hood', 'kimhood@halap.com', 'passer', 0, '2018-04-19 17:42:30.955000', '2018-04-19 17:42:30.955000'),
('84b77d1a-581e-4dee-a64b-e173da82d4de', 'Maldonado Hickman', 'Burks', 'maldonadoburks@halap.com', 'passer', 0, '2018-04-19 17:40:18.020000', '2018-04-19 17:40:18.020000'),
('8b01dc55-5e32-4937-8b39-537711455885', 'Katharine Elliott', 'Atkins', 'katharineatkins@halap.com', 'passer', 0, '2018-04-19 17:42:30.941000', '2018-04-19 17:42:30.941000'),
('8b9d148d-5eb8-44d6-a0d0-f538e5807d8f', 'Angelica Gibbs', 'Mays', 'angelicamays@halap.com', 'passer', 0, '2018-04-19 17:40:18.015000', '2018-04-19 17:40:18.015000'),
('8bfb3712-1d5c-40f2-bbe8-5d93ea3ef670', 'Sykes Pugh', 'Hudson', 'sykeshudson@halap.com', 'passer', 0, '2018-04-19 17:42:30.940000', '2018-04-19 17:42:30.940000'),
('8d07b5d8-e127-42db-91cf-e0512b78e3c6', 'Sharlene Hyde', 'Richmond', 'sharlenerichmond@halap.com', 'passer', 0, '2018-04-19 17:42:30.951000', '2018-04-19 17:42:30.951000'),
('8d353e66-87d3-4131-bc0d-af0e984bd9ee', 'user', 'user ', 'user@gmail.com', 'user', 0, '2018-04-19 15:31:11.340000', '2018-04-19 15:31:11.340000'),
('90d5c2ca-9ca7-49aa-8b11-2970782ab982', 'Stacy Madden', 'Miles', 'stacymiles@halap.com', 'passer', 0, '2018-04-19 17:40:18.023000', '2018-04-19 17:40:18.023000'),
('98ccf0b6-f19f-4233-a508-4cb70c8adfec', 'Owen Dickerson', 'Delacruz', 'owendelacruz@halap.com', 'passer', 0, '2018-04-19 17:40:18.029000', '2018-04-19 17:40:18.029000'),
('9b5c0f4b-9d5a-4dce-b58e-4d3d9611c93a', 'Liliana Lynn', 'Vasquez', 'lilianavasquez@halap.com', 'passer', 0, '2018-04-19 17:42:30.956000', '2018-04-19 17:42:30.956000'),
('9c817229-0b11-4ab0-8c92-566beea50796', 'Ruiz Burke', 'Shaw', 'ruizshaw@halap.com', 'passer', 0, '2018-04-19 17:42:30.955000', '2018-04-19 17:42:30.955000'),
('9ce77ce2-f20e-4b0b-b816-14203a05e297', 'Vang Hays', 'Burnett', 'vangburnett@halap.com', 'passer', 0, '2018-04-19 17:40:18.026000', '2018-04-19 17:40:18.026000'),
('9f6272d6-b79e-4610-8a42-7da8fc40a105', 'Phillips Stephens', 'Pittman', 'phillipspittman@halap.com', 'passer', 0, '2018-04-19 17:42:30.945000', '2018-04-19 17:42:30.945000'),
('a18d499a-a270-489d-b39c-bb9537207525', 'Beryl Lynn', 'Foster', 'berylfoster@halap.com', 'passer', 0, '2018-04-19 17:40:18.026000', '2018-04-19 17:40:18.026000'),
('a63b7e33-4305-4f3b-8459-5f419f8518e4', 'Emma Watkins', 'Frank', 'emmafrank@halap.com', 'passer', 0, '2018-04-19 17:40:18.023000', '2018-04-19 17:40:18.023000'),
('a7be80fc-c30c-47ea-927e-7b2e9d77ca42', 'Briana Sosa', 'Savage', 'brianasavage@halap.com', 'passer', 0, '2018-04-19 17:40:18.023000', '2018-04-19 17:40:18.023000'),
('a8df30ce-1a4f-44b0-8e43-f306abd3781c', 'Sears Schwartz', 'Neal', 'searsneal@halap.com', 'passer', 0, '2018-04-19 17:42:30.965000', '2018-04-19 17:42:30.965000'),
('ad4b84f5-0726-4b2a-a9fc-76b286f9bbd4', 'Kelly Houston', 'Odom', 'kellyodom@halap.com', 'passer', 0, '2018-04-19 17:40:18.019000', '2018-04-19 17:40:18.019000'),
('b2686d34-c433-48f3-b75f-560a12460d34', 'Inez Chapman', 'Welch', 'inezwelch@halap.com', 'passer', 0, '2018-04-19 17:42:30.945000', '2018-04-19 17:42:30.945000'),
('b63da607-40b7-4a71-bb48-73c1be2eeb7f', 'Angelia Carrillo', 'Delacruz', 'angeliadelacruz@halap.com', 'passer', 0, '2018-04-19 17:42:30.948000', '2018-04-19 17:42:30.948000'),
('bf026685-66b0-4ed8-8f02-8ac12a914334', 'Fuller Castro', 'Richard', 'fullerrichard@halap.com', 'passer', 0, '2018-04-19 17:40:18.017000', '2018-04-19 17:40:18.017000'),
('c4c3f14f-c0b8-4415-bbe7-fa8caccef0fa', 'Susan Dodson', 'Brady', 'susanbrady@halap.com', 'passer', 0, '2018-04-19 17:40:18.027000', '2018-04-19 17:40:18.027000'),
('c5e1f4d2-7416-4f48-a51c-60e34c6b1957', 'Leta Fulton', 'Pearson', 'letapearson@halap.com', 'passer', 0, '2018-04-19 17:42:30.951000', '2018-04-19 17:42:30.951000'),
('ce4c62d7-cd3f-4db9-b214-32cdd2f3949a', 'Dionne Dorsey', 'Myers', 'dionnemyers@halap.com', 'passer', 0, '2018-04-19 17:42:30.948000', '2018-04-19 17:42:30.948000'),
('d72da4f9-8264-4cb5-ab0e-c0a4af00171a', 'Chelsea Mclaughlin', 'Serrano', 'chelseaserrano@halap.com', 'passer', 0, '2018-04-19 17:42:30.956000', '2018-04-19 17:42:30.956000'),
('d778ba3f-9104-41c5-8849-de0562e907cd', 'Marta Cooke', 'Gillespie', 'martagillespie@halap.com', 'passer', 0, '2018-04-19 17:42:30.948000', '2018-04-19 17:42:30.948000'),
('d8f15e80-c2cc-4660-a6d5-3cef9b1c9c7b', 'Conley Nolan', 'Joyner', 'conleyjoyner@halap.com', 'passer', 0, '2018-04-19 17:40:18.017000', '2018-04-19 17:40:18.017000'),
('daaea021-2f15-4648-b9cb-040c606475cd', 'Sharpe Molina', 'Coffey', 'sharpecoffey@halap.com', 'passer', 0, '2018-04-19 17:42:30.954000', '2018-04-19 17:42:30.954000'),
('e05549e0-a9ef-4069-9306-b404b2b5b230', 'staff', 'staff ', 'staff@gmail.com', 'staff', 0, '2018-04-19 15:30:31.434000', '2018-04-19 15:30:31.434000'),
('e3a88d11-517a-4e7a-b6be-7bd0104311dd', 'Nelda Vaughn', 'Yang', 'neldayang@halap.com', 'passer', 0, '2018-04-19 17:42:30.951000', '2018-04-19 17:42:30.951000'),
('e4bb4040-ab35-41c3-9d8d-34483597357c', 'Simpson Howe', 'Good', 'simpsongood@halap.com', 'passer', 0, '2018-04-19 17:40:18.020000', '2018-04-19 17:40:18.020000'),
('e7700f9c-79e6-4f02-8d02-712d93340450', 'Delaney Bailey', 'Woodard', 'delaneywoodard@halap.com', 'passer', 0, '2018-04-19 17:40:18.023000', '2018-04-19 17:40:18.023000'),
('e9d5f4b5-3cb3-4e7c-ad09-5133be7d45f4', 'Gates Fulton', 'Bass', 'gatesbass@halap.com', 'passer', 0, '2018-04-19 17:40:18.017000', '2018-04-19 17:40:18.017000'),
('eb2f7298-aed7-40e7-a1c9-8b1b2642b7e6', 'Vicki Cash', 'Moore', 'vickimoore@halap.com', 'passer', 0, '2018-04-19 17:40:18.024000', '2018-04-19 17:40:18.024000'),
('f02078e8-88ef-4d67-9fc3-eb6b265d9964', 'Emerson Giles', 'Wallace', 'emersonwallace@halap.com', 'passer', 0, '2018-04-19 17:40:18.017000', '2018-04-19 17:40:18.017000'),
('f95cfec0-543f-4acb-a664-bd26cb59347b', 'Schneider Craft', 'Rush', 'schneiderrush@halap.com', 'passer', 0, '2018-04-19 17:42:30.942000', '2018-04-19 17:42:30.942000'),
('fabbbc2f-c505-4baf-9b1d-28ecbad1401e', 'Miranda Copeland', 'Everett', 'mirandaeverett@halap.com', 'passer', 0, '2018-04-19 17:40:18.029000', '2018-04-19 17:40:18.029000'),
('fcb41a53-fb27-42c4-b1e9-61f13da89dc8', 'Green Dennis', 'Cabrera', 'greencabrera@halap.com', 'passer', 0, '2018-04-19 17:42:30.940000', '2018-04-19 17:42:30.940000'),
('fcfb232c-514c-4fb8-8930-532e321a100c', 'Reeves Holman', 'Delaney', 'reevesdelaney@halap.com', 'passer', 0, '2018-04-19 17:40:18.021000', '2018-04-19 17:40:18.021000');

-- --------------------------------------------------------

--
-- Structure de la table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `isPublished` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photos`
--

INSERT INTO `photos` (`id`, `name`, `description`, `filename`, `views`, `isPublished`) VALUES
(1, 'photo1244444444', 'test2 nest ak', 'test2', 222, 1),
(2, 'photo1244444444', 'test2 nest ak', 'test2', 11, 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `ak_role`
--
ALTER TABLE `ak_role`
  ADD PRIMARY KEY (`nom`);

--
-- Index pour la table `ak_users_roles`
--
ALTER TABLE `ak_users_roles`
  ADD PRIMARY KEY (`akUtilisateurId`,`akRoleNom`),
  ADD KEY `ind_a35cdbb17cbc6e8fde0ed947f4` (`akUtilisateurId`),
  ADD KEY `ind_e0e0d0232d85b726770c9f2cb3` (`akRoleNom`);

--
-- Index pour la table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `ak_users_roles`
--
ALTER TABLE `ak_users_roles`
  ADD CONSTRAINT `fk_6033dcebe6411e5a5c12f36541b` FOREIGN KEY (`akUtilisateurId`) REFERENCES `ak_utilisateur` (`id`),
  ADD CONSTRAINT `fk_f19096edf822ae81891c0795adb` FOREIGN KEY (`akRoleNom`) REFERENCES `ak_role` (`nom`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;