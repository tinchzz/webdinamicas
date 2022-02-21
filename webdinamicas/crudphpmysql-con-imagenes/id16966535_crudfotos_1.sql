-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-11-2021 a las 20:29:06
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id16966535_crudfotos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crudfotos`
--

CREATE TABLE `crudfotos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `imagen` varchar(75) NOT NULL,
  `Cantidad` int(255) NOT NULL,
  `Creado_El` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `crudfotos`
--

INSERT INTO `crudfotos` (`ID`, `Nombre`, `imagen`, `Cantidad`, `Creado_El`) VALUES
(75, 'Test', '1635039471-Sin tsdsdítulo-2.png', 1, '2021-10-24 01:37:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `crudfotos`
--
ALTER TABLE `crudfotos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `crudfotos`
--
ALTER TABLE `crudfotos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
