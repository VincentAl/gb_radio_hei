-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Client: 127.2.193.130:3306
-- Généré le: Lun 03 Août 2015 à 19:39
-- Version du serveur: 5.5.41
-- Version de PHP: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gbradio`
--

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `soundlink` varchar(255) NOT NULL,
  `type_id` int(11) NOT NULL,
  `created` date NOT NULL,
  `modified` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `link`, `soundlink`, `type_id`, `created`, `modified`) VALUES
(1, 'Libre Antenne #3 Téléthon', 'Troisième Libre Antenne sur le thème du Téléthon en compagnie de Maylis et Sixtine du Cap Solidaire et de Erwan du BDS. Ils nous racontent tout sur le téléthon organisé par HEI.<br>Toujours présentée par Stan et Thibaut.', 'img/photo.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/178451801&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2014-11-24', '2014-12-24'),
(2, 'Ghost Loft - So High (Axmod Remix)', '', 'img/youtube1.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/8rV1J5RHQwg" frameborder="0" allowfullscreen></iframe>', 2, '2015-04-28', '2015-04-28'),
(4, 'Ofenbach & KarlK - What I Want', '', 'img/youtube2.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/Mvu7IC5KFkU" frameborder="0" allowfullscreen></iframe>', 2, '2015-04-01', '2015-04-01'),
(5, 'Rodriguez - Can''t Get Away', '', 'img/youtube4.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/kUCTfKa2_EQ" frameborder="0" allowfullscreen></iframe>', 2, '2015-03-23', '2015-03-23'),
(6, 'Vague Wave - Someday', '', 'img/youtube5.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/VAdXer6kpfY" frameborder="0" allowfullscreen></iframe>', 2, '2015-02-22', '2015-02-22'),
(7, 'Voyage Machine - Titanium', '', 'img/youtube6.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/hi2kJlltmLc" frameborder="0" allowfullscreen></iframe>', 2, '2015-01-25', '2015-01-25'),
(8, 'Mr Probz - Nothing Really Matters', '', 'img/youtube7.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/GbiJPGnxk3k" frameborder="0" allowfullscreen></iframe>', 2, '2014-12-25', '2014-12-25'),
(9, 'Of Monsters and Men - Dirty Paws', '', 'img/youtube8.png', '<iframe width="100%" height="200" src="https://www.youtube.com/embed/ceI9zd2hos0" frameborder="0" allowfullscreen></iframe>', 2, '2014-12-22', '2014-12-22'),
(10, 'Libre Antenne #4 Spécial JFL', '4ème Libre Antenne de l''année avec l''interview exclusif de Jean François Lecrigny avant sont départ d''HEI.\r\nNous étions aussi accompagnés de Marin et de Charlotte, le président et la vice-présidente du BDE d''HEI.', 'img/jfl.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/182004300&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2014-12-14', '2014-12-14'),
(11, 'GB Sessions #9', 'GB Sessions est de retour pour vous jouer un mauvais tour avec Mozambo, Ofenbach and Oleska.', 'img/gbsessions9.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/205652885&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2015-05-16', '2015-05-16'),
(12, 'Les Grosses Ch''tiêtes #2', 'Les Grosses Ch''tiêtes reviennent en force pour parler avec vous de la Wild Week.', 'img/grosses.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/182222986&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2015-01-14', '2015-05-14'),
(13, 'Eco Sonore #5', 'Eco Sonore vous parle de sujets d''actualités brûlants et vous raconte des anecdotes et astuces pour une vie plus simple pour la cinquième fois !', 'img/ecosonore5.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/199873829&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2015-04-08', '2015-04-08'),
(14, 'StadeGB #6', 'L''actualité des stades est de retour pour la sixième fois, rien que pour vous chers auditeurs !', 'img/gbstade6.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/192141030&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2015-02-20', '2015-02-20'),
(15, 'GB Sessions #8', 'Tez Cadey est l''invité d''honneur de GB Sessions, vous oreilles vous diront merci.', 'img/gbsessions8.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/200186435&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 1, '2015-04-09', '2015-04-09'),
(16, 'HEI MUSIC AWARDS', '2ème édition des HEI MUSIC AWARDS organisée par Music Box et GB Radio. \r\nCette année nous avons eu la chance d''avoir Lipothez, Silent Elephant, The Clam''s et Hairsound qui nous ont enflammé la salle Henninot.', 'img/HMA.png', '', 3, '2015-05-22', '2015-05-22'),
(17, 'La « caresse » Thrupence', 'L’australien Jack Vanzet alias Thrupence, nous fait voyager à travers son nouvel album Lessons Original Mixtape (sorti en Novembre dernier).\r\nSonorités aériennes, rythmes épurés et soyeux font de ce nouvel opus une petite pépite qu’on ne se lasse pas d’écouter. On se délecte sans difficulté du savant et doux mélange de chill, blues ou encore hip-hop, comme dans le morceau ‘Don’t You Mind’.\r\nOn n’oubliera pas de prolonger l’expérience sensorielle en écoutant son précédent EP intitulé Voyages, téléchargé des milliers de fois lors de sa mise en ligne, on y retrouve l’atmosphère velouté et enivrante de Thrupence.\r\n*', 'img/thrupence.png', '<iframe width="100%" height="100" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/161175911&amp;color=ff5500&amp;inverse=false&amp;auto_play=false&amp;show_user=true"></iframe>', 4, '2015-05-22', '2015-05-22');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `type_link` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  PRIMARY KEY (`type_link`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `types`
--

INSERT INTO `types` (`type_link`, `theme`, `picture`) VALUES
(1, 'Emission différée', 'img/soundcloud.png'),
(2, 'Youtube', 'img/youtube.png'),
(3, 'Evènements', 'img/event.png'),
(4, 'Articles musicaux', 'img/article.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
