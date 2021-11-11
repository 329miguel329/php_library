-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2021 a las 18:26:21
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `library`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_autors_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM autors WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_books_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM books WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_fines_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM fines WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_genders_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM genders WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_movements_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM movements WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_users_by_id` (IN `_id` BIGINT)  BEGIN
  DELETE FROM users WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_autors` (IN `_id` BIGINT, IN `_name` VARCHAR(45))  BEGIN
  INSERT INTO autors(id, name)
  VALUES (_id, _name);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_books` (IN `_id` BIGINT, IN `_title` VARCHAR(45), IN `_autors_id` BIGINT, IN `_publication_date` DATETIME)  BEGIN
  INSERT INTO books(id, title, autors_id, publication_date)
  VALUES (_id, _title, _autors_id, _publication_date);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_books_copies` (IN `_id` BIGINT, IN `_status` VARCHAR(45), IN `_books_id` BIGINT)  BEGIN
  INSERT INTO books_copies(id, status, books_id)
  VALUES (_id, _status, _books_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_books_has_genders` (IN `_books_id` BIGINT, IN `_genders_id` BIGINT)  BEGIN
  INSERT INTO books_has_genders(books_id, genders_id)
  VALUES (_books_id, _genders_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_fines` (IN `_id` BIGINT, IN `_movements_id` BIGINT, IN `_amount` FLOAT, IN `_is_cancelled` BOOLEAN)  BEGIN
  INSERT INTO fines(id, movements_id, amount, is_cancelled)
  VALUES (_id, _movements_id, _amount, _is_cancelled);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_genders` (IN `_id` BIGINT, IN `_name` VARCHAR(45))  BEGIN
  INSERT INTO genders(id, name)
  VALUES (_id, _name);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_movements` (IN `_id` BIGINT, IN `_loan` DATETIME, IN `_users_id` BIGINT, IN `_return` DATETIME, IN `_book_copies_id` BIGINT, IN `_loan_days` INT)  BEGIN
  INSERT INTO movements(id, loan, users_id, movements.return, book_copies_id, loan_days)
  VALUES (_id, _loan, _users_id, _return, _book_copies_id, _loan_days);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_users` (IN `_id` BIGINT, IN `_email` VARCHAR(45), IN `_password` VARCHAR(45), IN `_name` VARCHAR(45), IN `_last_name` VARCHAR(45), IN `_identification` VARCHAR(45))  BEGIN
  INSERT INTO users(id, email, password, name, last_name, identification)
  VALUES (_id, _email, _password, _name, _last_name, _identification);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_autors` ()  BEGIN
  SELECT * FROM autors;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_autors_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM autors WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_books` ()  BEGIN
  SELECT * FROM books;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_books_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM books WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_fines` ()  BEGIN
  SELECT * FROM fines;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_fines_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM fines WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_genders` ()  BEGIN
  SELECT * FROM genders;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_genders_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM genders WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_movements` ()  BEGIN
  SELECT * FROM movements;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_movements_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM movements WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_users` ()  BEGIN
  SELECT * FROM users;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `select_users_by_id` (IN `_id` BIGINT)  BEGIN
  SELECT * FROM users WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_autors` (IN `_id` BIGINT, IN `_name` VARCHAR(45))  BEGIN
  UPDATE autors SET name = _name WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_books` (IN `_id` BIGINT, IN `_title` VARCHAR(45), IN `_autors_id` BIGINT, IN `_publication_date` DATETIME)  BEGIN
  UPDATE books SET title = _title, autors_id = _autors_id, publication_date = _publication_date WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_fines` (IN `_id` BIGINT, IN `_movements_id` BIGINT, IN `_amount` FLOAT, IN `_is_cancelled` BOOLEAN)  BEGIN
  UPDATE fines SET movements_id = _movements_id, amount = _amount, is_cancelled = _is_cancelled WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_genders` (IN `_id` BIGINT, IN `_name` VARCHAR(45))  BEGIN
  UPDATE genders SET name = _name WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_movements` (IN `_id` BIGINT, IN `_loan` DATETIME, IN `_users_id` BIGINT, IN `_return` DATETIME, IN `_book_copies_id` BIGINT, IN `_loan_days` INT)  BEGIN
  UPDATE movements SET loan = _loan, users_id = _users_id, movements.return = _return, book_copies_id = _book_copies_id, loan_days = _loan_days WHERE id = _id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `update_users` (IN `_id` BIGINT, IN `_email` VARCHAR(45), IN `_password` VARCHAR(45), IN `_name` VARCHAR(45), IN `_last_name` VARCHAR(45), IN `_identification` VARCHAR(45))  BEGIN
  UPDATE users SET email = _email, password = _password, name = _name, last_name = _last_name, identification = _identification WHERE id = _id;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autors`
--

CREATE TABLE `autors` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `autors`
--

INSERT INTO `autors` (`id`, `name`) VALUES
(1, 'Olympe Thistleton'),
(2, 'Johan Orrick'),
(3, 'Ed Sedger'),
(4, 'Pamella Klesel'),
(5, 'Ilka Rive');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `autors_id` int(11) NOT NULL,
  `publication_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `title`, `autors_id`, `publication_date`) VALUES
(1, 'Smash His Camera', 1, '2021-07-05 00:00:00'),
(2, 'Follow the Bitch', 2, '2020-11-19 00:00:00'),
(3, 'Fireman, The', 1, '2021-07-21 00:00:00'),
(4, 'Corner Gas: The Movie', 1, '2021-08-19 00:00:00'),
(5, 'Antonio das Mortes (O Dragão da Maldade contr', 4, '2020-12-30 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books_has_genders`
--

CREATE TABLE `books_has_genders` (
  `books_id` int(11) NOT NULL,
  `genders_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `books_has_genders`
--

INSERT INTO `books_has_genders` (`books_id`, `genders_id`) VALUES
(1, 2),
(1, 4),
(4, 1),
(4, 5),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book_copies`
--

CREATE TABLE `book_copies` (
  `id` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `book_copies`
--

INSERT INTO `book_copies` (`id`, `status`, `books_id`) VALUES
(1, 'new', 5),
(2, 'used', 3),
(3, 'new', 3),
(4, 'deteriorated', 1),
(5, 'new', 5),
(6, 'deteriorated', 4),
(7, 'fixed up', 5),
(8, 'fixed up', 2),
(9, 'fixed up', 3),
(10, 'deteriorated', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fines`
--

CREATE TABLE `fines` (
  `id` int(11) NOT NULL,
  `movements_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT 0,
  `is_cancelled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genders`
--

CREATE TABLE `genders` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genders`
--

INSERT INTO `genders` (`id`, `name`) VALUES
(4, '(no genres listed)'),
(2, 'Adventure|Children|Comedy|Drama'),
(5, 'Comedy|Romance'),
(1, 'Drama|Romance'),
(3, 'Horror');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movements`
--

CREATE TABLE `movements` (
  `id` int(11) NOT NULL,
  `loan` datetime NOT NULL,
  `users_id` int(11) NOT NULL,
  `return` datetime DEFAULT NULL,
  `book_copies_id` int(11) NOT NULL,
  `loan_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `movements`
--

INSERT INTO `movements` (`id`, `loan`, `users_id`, `return`, `book_copies_id`, `loan_days`) VALUES
(1, '2021-01-18 00:00:00', 2, NULL, 1, 8),
(2, '2021-06-24 00:00:00', 2, '2021-09-11 00:00:00', 2, 7),
(3, '2021-01-24 00:00:00', 4, '2021-12-10 00:00:00', 3, 9),
(4, '2021-01-26 00:00:00', 4, '2021-09-10 00:00:00', 4, 4),
(5, '2021-05-10 00:00:00', 4, '2021-11-13 00:00:00', 5, 8),
(6, '2021-02-26 00:00:00', 4, NULL, 6, 3),
(7, '2021-01-25 00:00:00', 1, '2021-09-01 00:00:00', 7, 3),
(8, '2021-02-26 00:00:00', 4, '2021-08-03 00:00:00', 8, 8),
(9, '2021-03-13 00:00:00', 5, NULL, 9, 6),
(10, '2021-06-07 00:00:00', 3, NULL, 10, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `identification` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `last_name`, `identification`) VALUES
(1, 'cabella0@ezinearticles.com', 'zLxCuE6mgeE', 'Cleopatra', 'Abella', '3565380363'),
(2, 'wsholem1@guardian.co.uk', 'bNISwH1Og', 'Willard', 'Sholem', '5641822766'),
(3, 'hrickert2@wikia.com', 'CWFqFpaoM', 'Henriette', 'Rickert', '3577841945'),
(4, 'oluetchford3@paginegialle.it', 'FWPPGc', 'Ole', 'Luetchford', '2018656067'),
(5, 'mguyan4@tripod.com', 'v4KyG6RF', 'Marj', 'Guyan', '3547528938');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autors`
--
ALTER TABLE `autors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`,`autors_id`),
  ADD KEY `fk_books_autors1_idx` (`autors_id`);

--
-- Indices de la tabla `books_has_genders`
--
ALTER TABLE `books_has_genders`
  ADD PRIMARY KEY (`books_id`,`genders_id`),
  ADD KEY `fk_books_has_genders_genders1_idx` (`genders_id`),
  ADD KEY `fk_books_has_genders_books_idx` (`books_id`);

--
-- Indices de la tabla `book_copies`
--
ALTER TABLE `book_copies`
  ADD PRIMARY KEY (`id`,`books_id`),
  ADD KEY `fk_book_copies_books1_idx` (`books_id`);

--
-- Indices de la tabla `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`id`,`movements_id`),
  ADD KEY `fk_fines_movements1_idx` (`movements_id`);

--
-- Indices de la tabla `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indices de la tabla `movements`
--
ALTER TABLE `movements`
  ADD PRIMARY KEY (`id`,`users_id`,`book_copies_id`),
  ADD KEY `fk_movements_users1_idx` (`users_id`),
  ADD KEY `fk_movements_book_copies1_idx` (`book_copies_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `identification_UNIQUE` (`identification`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autors`
--
ALTER TABLE `autors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `book_copies`
--
ALTER TABLE `book_copies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `fines`
--
ALTER TABLE `fines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `movements`
--
ALTER TABLE `movements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_autors1` FOREIGN KEY (`autors_id`) REFERENCES `autors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `books_has_genders`
--
ALTER TABLE `books_has_genders`
  ADD CONSTRAINT `fk_books_has_genders_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_books_has_genders_genders1` FOREIGN KEY (`genders_id`) REFERENCES `genders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `book_copies`
--
ALTER TABLE `book_copies`
  ADD CONSTRAINT `fk_book_copies_books1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `fines`
--
ALTER TABLE `fines`
  ADD CONSTRAINT `fk_fines_movements1` FOREIGN KEY (`movements_id`) REFERENCES `movements` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `movements`
--
ALTER TABLE `movements`
  ADD CONSTRAINT `fk_movements_book_copies1` FOREIGN KEY (`book_copies_id`) REFERENCES `book_copies` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movements_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
