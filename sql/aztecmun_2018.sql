-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-06-2018 a las 15:30:53
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aztecmun_2018`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contacto`
--

CREATE TABLE `Contacto` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Asunto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Comentario` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paises`
--

CREATE TABLE `Paises` (
  `id` int(4) NOT NULL,
  `Id_Comite` int(4) NOT NULL,
  `Paises` varchar(80) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Paises`
--

INSERT INTO `Paises` (`id`, `Id_Comite`, `Paises`) VALUES
(86, 2, 'Canada'),
(21, 2, 'Estonia'),
(22, 2, 'Luxembourg'),
(23, 2, 'Lithuania'),
(85, 2, 'Spain'),
(25, 2, 'Iceland'),
(67, 2, 'Hungary'),
(27, 2, 'Greece'),
(28, 2, 'Montenegro'),
(30, 2, 'Romania'),
(32, 2, 'Slovenia'),
(34, 2, 'Turkey'),
(35, 2, 'Bulgaria'),
(89, 3, 'Juez Julia Sebutinde (Uganda)'),
(70, 3, 'Juez Patrick Lipton Robinson (Jamaica)\r\n'),
(71, 3, ' Juez James Richard Crawford (Australia)'),
(46, 4, 'Angola'),
(48, 4, 'Bahamas'),
(50, 4, 'Cameroon'),
(53, 4, 'Haiti'),
(55, 4, 'Iran'),
(58, 4, 'Kazakhstan'),
(87, 2, 'Czech Republic'),
(60, 4, 'Morocco'),
(61, 4, 'Republic of Korea'),
(62, 4, 'South Africa'),
(63, 4, 'Uganda'),
(88, 3, 'Juez Ronny Abraham (Francia)'),
(84, 1, 'Delegado 12'),
(82, 1, 'Delegado 13\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Registro`
--

CREATE TABLE `Registro` (
  `id` int(2) NOT NULL,
  `Nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Matricula` int(10) NOT NULL,
  `Grupo` int(3) NOT NULL,
  `Comite` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Pais` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Numero` bigint(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Contacto`
--
ALTER TABLE `Contacto`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `Paises`
--
ALTER TABLE `Paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Registro`
--
ALTER TABLE `Registro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Contacto`
--
ALTER TABLE `Contacto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Paises`
--
ALTER TABLE `Paises`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `Registro`
--
ALTER TABLE `Registro`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
