-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 11:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project9`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `lastname`, `firstname`) VALUES
(1, 'Reeves', 'Keanu'),
(2, 'Fishburne', 'Laurence'),
(3, 'Moss', 'Carrie-Anne'),
(4, 'Weaving', 'Hugo'),
(5, 'Cage', 'Nicolas'),
(6, 'Jolie', 'Angelina'),
(7, 'Duvall', 'Robert'),
(8, 'Ribisi', 'Giovanni'),
(9, 'Patton', 'Will'),
(10, 'Ford', 'Harrison'),
(11, 'Gosling', 'Ryan'),
(12, 'de Armas', 'Ana'),
(13, 'Paul', 'Aaron'),
(14, 'Cooper', 'Dominic'),
(15, 'Poots', 'Imogen'),
(16, 'Depp', 'Johnny'),
(17, 'Rush', 'Geoffrey'),
(18, 'Bloom', 'Orlando'),
(19, 'Knightley', 'Keira'),
(20, 'Pryce', 'Jonathan'),
(21, 'Bridges', 'Jeff'),
(22, 'Hedlund', 'Garrett'),
(23, 'Wilde', 'Olivia'),
(24, 'Urban', 'Karl'),
(25, 'Thirlby', 'Olivia'),
(26, 'Headey', 'Lena'),
(27, 'Bale', 'Christian'),
(28, 'Ledger', 'Heath'),
(29, 'Eckhart', 'Aaron'),
(30, 'Caine', 'Michael'),
(31, 'Gyllenhaal', 'Maggie'),
(32, 'Oldman', 'Gary'),
(33, 'Freeman', 'Morgan'),
(34, 'Murphy', 'Cillian'),
(35, 'Pacino', 'Al'),
(36, 'Bauer', 'Steven'),
(37, 'Pfeiffer', 'Michelle'),
(38, 'Pitt', 'Brad'),
(39, 'Norton', 'Edward'),
(40, 'Bonham Carter', 'Helena'),
(41, 'Ridley', 'Daisy'),
(42, 'Boyega', 'John'),
(43, 'Isaac', 'Oscar'),
(44, 'Fisher', 'Carrie'),
(45, 'Monaghan', 'Dominic'),
(46, 'Driver', 'Adam'),
(47, 'Hamill', 'Mark'),
(48, 'Sinise', 'Gary'),
(49, 'Wright', 'Robin'),
(50, 'Hanks', 'Tom');

-- --------------------------------------------------------

--
-- Table structure for table `actorsandmovies`
--

CREATE TABLE `actorsandmovies` (
  `movies.id` int(11) NOT NULL,
  `actors.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categoriesandmovies`
--

CREATE TABLE `categoriesandmovies` (
  `categoryid` int(11) NOT NULL,
  `moviesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Comedy'),
(2, 'Action'),
(3, 'Drama'),
(4, 'Fantasy'),
(5, 'Horror'),
(6, 'Mystery'),
(7, 'Romance'),
(8, 'Thriller'),
(9, 'Western'),
(10, 'Action/SF ');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `releasedate` year(4) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `synopsis` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `dateajout` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `releasedate`, `poster`, `synopsis`, `path`, `dateajout`) VALUES
(1, 'The Dark Knight', 2008, 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'darkknight.avi', 100),
(2, 'Gladiator', 2000, 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'gladiator.avi\r\n', 99),
(3, 'Borat: Subsequent Moviefilm', 2020, 'https://m.media-amazon.com/images/M/MV5BZmY2ZmM5YTktZThiOC00YjEzLTg4YTctMDAxYWEyZmEyZDlhXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Follow-up film to the 2006 comedy centering on the real-life adventures of a fictional Kazakh television journalist named Borat.', 'BORAT2.avi', 98),
(4, 'Les Sept de Chicago ', 2020, 'https://m.media-amazon.com/images/M/MV5BYjYzOGE1MjUtODgyMy00ZDAxLTljYTgtNzk0Njg2YWQwMTZhXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.', 'les7dechicago.mp4', 97),
(5, 'Tenet', 2020, 'https://m.media-amazon.com/images/M/MV5BYzg0NGM2NjAtNmIxOC00MDJmLTg5ZmYtYzM0MTE4NWE2NzlhXkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_UX182_CR0,0,182,268_AL_.jpg', 'Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.', 'tenetmovie.avi', 96),
(6, 'Freaky', 2020, 'https://m.media-amazon.com/images/M/MV5BMTRkYmJlY2ItNmFlZi00OWVhLTg1ZTctOGE0MjM5ZGMwMmY4XkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg', 'After swapping bodies with a deranged serial killer, a young girl in high school discovers she has less than 24 hours before the change becomes permanent.', 'FREAKY.mpg', 95),
(7, 'Matrix', 1999, 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Anonymous programmer, Thomas Anderson becomes Neo at night. Under this pseudonym, he is one of the most wanted hackers . Neo is assailed from a certain Morpheus. He urges him to find the answer to the question : what is the Matrix?', 'Matrix.avi', 110),
(8, 'Blade Runner 2049', 2017, 'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Young Blade Runner K\'s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who\'s been missing for thirty years.', 'bladerunner2019.avi', 110),
(9, 'Need For Speed', 2014, 'https://m.media-amazon.com/images/M/MV5BMTQ3ODY4NzYzOF5BMl5BanBnXkFtZTgwNjI3OTE4MDE@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Fresh from prison, a street racer who was framed by a wealthy business associate joins a cross-country race with revenge in mind. His ex-partner, learning of the plan, places a massive bounty on his head as the race begins.', 'Needforspeed.avi', 112),
(10, 'Dredd', 2012, 'https://m.media-amazon.com/images/M/MV5BODkyNDQzMzUzOF5BMl5BanBnXkFtZTcwODYyMDEyOA@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'In a violent, futuristic city where the police have the authority to act as judge, jury and executioner, a cop teams with a trainee to take down a gang that deals the reality-altering drug, SLO-MO.', 'dredd.avi', 113),
(11, 'Tron ', 2010, 'https://m.media-amazon.com/images/M/MV5BMTk4NTk4MTk1OF5BMl5BanBnXkFtZTcwNTE2MDIwNA@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'The son of a virtual world designer goes looking for his father and ends up inside the digital world that his father designed. He meets his father\'s corrupted creation and a unique ally who was born inside the digital world.', 'Tron.avi', 114),
(12, 'Pirates of the Caribbean: The Curse of the Black Pearl', 2003, 'https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Blacksmith Will Turner teams up with eccentric pirate \"Captain\" Jack Sparrow to save his love, the governor\'s daughter, from Jack\'s former pirate allies, who are now undead.', 'PiratesoftheCaribbean1.avi', 115),
(13, 'Scarface', 1983, 'https://m.media-amazon.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'scarface.avi', 116),
(14, 'Fight Club', 1999, 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'fightclub.avi', 117),
(15, 'Star Wars: L\'Ascension de Skywalker ', 2019, 'https://m.media-amazon.com/images/M/MV5BMDljNTQ5ODItZmQwMy00M2ExLTljOTQtZTVjNGE2NTg0NGIxXkEyXkFqcGdeQXVyODkzNTgxMDg@._V1_UX182_CR0,0,182,268_AL_.jpg', 'The surviving members of the resistance face the First Order once again, and the legendary conflict between the Jedi and the Sith reaches its peak bringing the Skywalker saga to its end.', 'StarWarsIX.avi', 118),
(16, 'Bad Boys for Life', 2020, 'https://m.media-amazon.com/images/M/MV5BMWU0MGYwZWQtMzcwYS00NWVhLTlkZTAtYWVjOTYwZTBhZTBiXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', 'Miami detectives Mike Lowrey and Marcus Burnett must face off against a mother-and-son pair of drug lords who wreak vengeful havoc on their city.', 'Badboysforlife.mkv', 119),
(17, 'Goodfellas ', 1990, 'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'goodfellas.avi', 120),
(18, 'Forrest Gump', 1994, 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'forrestgump.avi', 121);

-- --------------------------------------------------------

--
-- Table structure for table `moviesandplaylists`
--

CREATE TABLE `moviesandplaylists` (
  `playlistsid` int(11) NOT NULL,
  `moviesid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `creationdate` int(4) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `auth`) VALUES
(16, 'Nicolas', 'NOMAL', 'nicolasnomalpro@gmail.com', '$2y$10$h7RlQpFogeylFrC9J0T4sOBlLZeRNcj7Iyjxh4XnZ8Wmc0DUSYSh6', 'user'),
(17, 'Maxime', 'Friederich', 'max@max.lu', '$2y$10$ie5HXs5Pg2oINEgB0s64Oee8UfwuckCcH6HHrxFitQvbIJf6/H6pC', 'admin'),
(18, 'vyto', 'tas', 'vyto@vy.to', '$2y$10$JSDBcoxe8zMfXJv453p69.PTy0S3/y18NJ3b4veQWKCPpCnYbKhIW', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actorsandmovies`
--
ALTER TABLE `actorsandmovies`
  ADD KEY `c1` (`actors.id`),
  ADD KEY `c2` (`movies.id`);

--
-- Indexes for table `categoriesandmovies`
--
ALTER TABLE `categoriesandmovies`
  ADD KEY `c4` (`moviesid`),
  ADD KEY `c3` (`categoryid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moviesandplaylists`
--
ALTER TABLE `moviesandplaylists`
  ADD KEY `c5` (`moviesid`),
  ADD KEY `c6` (`playlistsid`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c7` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actorsandmovies`
--
ALTER TABLE `actorsandmovies`
  ADD CONSTRAINT `c1` FOREIGN KEY (`actors.id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c2` FOREIGN KEY (`movies.id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categoriesandmovies`
--
ALTER TABLE `categoriesandmovies`
  ADD CONSTRAINT `c3` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c4` FOREIGN KEY (`moviesid`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moviesandplaylists`
--
ALTER TABLE `moviesandplaylists`
  ADD CONSTRAINT `c5` FOREIGN KEY (`moviesid`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c6` FOREIGN KEY (`playlistsid`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `c7` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
