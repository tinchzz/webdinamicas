-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2021 a las 05:05:32
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividades`
--

CREATE TABLE `actividades` (
  `ID` int(2) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Profesor` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Dia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Hora` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `actividades`
--

INSERT INTO `actividades` (`ID`, `Nombre`, `Profesor`, `Dia`, `Hora`, `Direccion`) VALUES
(1, 'Ajedrez', 'Ruben A', 'Viernes', '14:00 a 15:00 || 15:00 a 16:00 Hs.', 'EP 11 , Chacabuco 771 y Av. Roca.'),
(2, 'Futbol Femenino/hockey', 'Ruben P', 'Lunes y Jueves', '14:30 a 15:30 Hs.', 'club J de Roca, Av roca y Chacabuco.'),
(3, 'Natación', 'Ruben', 'Lunes', '14:00 a 15:00 Hs.', 'A.C Emanuel, Coronel Bransen 1681 y Guemes.'),
(4, 'Gimnasia Femenina', 'Carolina', 'Martes', '18:00 a 19:00 Hs.', 'Av. Mitre 726 Anexo EP 1'),
(5, 'Zumba', 'Lorena Gomez', 'Jueves y Viernes', '18:15 a 19:15 Hs.', 'Av. Mitre 726 EP 1 y Av Mitre 4368 EP 5.'),
(6, 'EFI Casita \"Huilen\"', 'Nestor', 'Miercoles', '10:00 a 11:00 || 11:00 A 12:00 Hs.', 'Cangallo 440 Gerli'),
(7, 'Natación EP 42', 'Nestor', 'Martes', '13:00 a 14:00 Hs. || 14:00 A 15:00 Hs.|| 15:00 A 16:00 Hs.', 'A.C Emanuel Coronel Bransen 1681 y Guemes'),
(8, 'Strong By Zumba', 'Lorena Gomez', 'Viernes', '19:00 a 21:00 Hs.', 'EP 1 Av Mitre 726'),
(9, 'Basquet Recreativo', 'Ruben', 'Lunes y Viernes', '17:00 a 18:00 Hs.', 'Av. Mitre al 4368 Villa Dominico EP 5'),
(10, 'Canotaje y Kayak Polo', 'Escuela de Canotaje y Guardavidas del Cef 152', 'Lunes y Viernes', 'Turno Mañana y Turno Tarde', 'Av. Juan Díaz de Solís 3002, Villa Dominico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `titulo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `desarrollo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `fecha`, `desarrollo`) VALUES
(9, 'Encuentro de FÃºtbol Mixto para Ciclo BÃ¡sico de Escuelas TÃ©cnicas', '2019-08-13', '1er Encuentro deportivo recreativo de FÃºtbol mixto para alumnos de Escuelas Secundarias TÃ©cnicas del distrito de Avellaneda.\r\nEvento institucional organizado por el equipo docente del CEF 152 y la InspecciÃ³n de EducaciÃ³n FÃ­sica de Avellaneda.'),
(10, 'Encuentro de FÃºtbol Mixto para Ciclo Superior de Escuelas TÃ©cnicas', '2019-08-15', '1er encuentro deportivo recreativo de FÃºtbol mixto para alumnos de Ciclo Superior de Escuelas Secundarias TÃ©cnicas del distrito de Avellaneda. \r\nEvento institucional organizado por el equipo docente de CEF 152 y la InspecciÃ³n de EducaciÃ³n FÃ­sica de Avellaneda. '),
(11, 'Semana del BASQUET 3X3 Avellaneda', '2019-08-19', 'La Semana del 3X3 de Básquet es el 1er Encuentro Distrital Recreativo para Escuelas Primarias y Secundarias de gestión publica.\r\n\r\nUn acontecimiento Único en la ciudad de Avellaneda.\r\nOrganizado por los Centros de Educación Física 152 y 71.\r\n\r\nPueden participar un máximo de 6 equipos por escuela.\r\n\r\nPara PRIMARIAS:\r\nMartes 20 y Miércoles 21 Agosto.\r\nEn Polideportivo Emanuel.\r\nBrandsen 1861. Avellaneda.\r\nParticipan alumnos de 4to, 5to y 6to.\r\n\r\nPara SECUNDARIAS:\r\nJueves 20 y Viernes 21 Agosto. \r\nPara alumnos de Ciclo básico y Ciclo Superior.\r\nEn Sede CEF 71. YapeyÃº 1860. Wilde.\r\n\r\nInscripciones abiertas hasta el 12 de Agosto en Sede de InspecciÃ³n de Educación Física. Aldecoa 817. '),
(15, 'Fiesta Acuatica', '2019-08-02', 'AcciÃ³n de Invierno 2019. Â¡Fiesta en el AguaðŸ¤½â€â™‚ï¸!\r\nEn el marco del receso invernal el CEF 152 invita a los alumnos del Hogar Juan XXIII y Centro de DÃ­a \"Casita Huilen\" a jugar la pileta.'),
(16, 'Muestra Distrital De Gimnasia De Avellaneda', '2018-11-05', 'Proyecto desarrollado por la InspecciÃ²n de Ed. Fisica de Avellaneda con la colaboraciÃ²n de los dos CEF del distrito. CEF 71 y CEF 152.\r\n\r\nPolideportivo Gatica'),
(17, 'Jornada de SensibilizaciÃ³n y prevenciÃ³n contra el cÃ¡ncer de mama', '2018-11-03', 'Aprendimos, bailamos, nos divertimos.\r\n\r\nÂ¡Gracias a todos por acompaÃ±arnos!\r\n\r\nAndre del Cef 190, Joha Zin, Caro del CEF 71, Meli y Silvia del Centro de Salud de SUTEBA Avellaneda, AndrÃ©s el Doc del CEF 152 y Viviana Cianci, Inspectora de EF.'),
(18, 'Dia Del NiÃ±o \"GINCANA\"', '2018-08-23', 'Festejo del dia del niÃ±o para escuelas primarias de Avellaneda.\r\n\r\nJornada de grandes juegos en circuito de estaciones con actividades corporales y motrices.'),
(19, 'Zumbathon Solidario \"Baila CEF\"', '2019-07-23', 'Es un evento que realizamos todos los aÃ±os los Centros de EducaciÃ³n FÃ­sica de Avellaneda, el CEF 152 y el CEF 71, en un Multiespacio Educativo,en el que vamos a disfrutar de un clase especialÃ­sima de Zumba, donde ademÃ¡s vas a tener la oportunidad de darle una mano a quienes mas lo necesitan.'),
(20, '2Â° Encuentro de Gimnasia y Ritmos \"BailaCef 2017\"', '2017-07-18', 'Encuentro InterCEF de fitness, danzas y gimnasia expresiva.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_eventos`
--

CREATE TABLE `imagenes_eventos` (
  `id_imagen` int(11) NOT NULL,
  `imagen` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `thumbnail` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `id_evento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes_eventos`
--

INSERT INTO `imagenes_eventos` (`id_imagen`, `imagen`, `thumbnail`, `id_evento`) VALUES
(101, '1568375626_bcb2.jpg', '', 11),
(102, '1568375626_bcb4.jpg', '', 11),
(103, '1568375626_bcb6.jpg', '', 11),
(104, '1568375626_bcb10.jpg', '', 11),
(105, '1568375626_bcb11.jpg', '', 11),
(106, '1568375626_bcb15.jpg', '', 11),
(107, '1568375626_bcb18.jpg', '', 11),
(108, '1568375626_bcb28.jpg', '', 11),
(109, '1568376102_fmc2.jpg', '', 9),
(110, '1568376102_fmc5.jpg', '', 9),
(111, '1568376102_fmc7.jpg', '', 9),
(112, '1568376102_fmc8.jpg', '', 9),
(113, '1568376102_fmc10.jpg', '', 9),
(114, '1568376102_fmc13.jpg', '', 9),
(115, '1568376102_fmc18.jpg', '', 9),
(116, '1568376102_fmc21.jpg', '', 9),
(118, '1568376966_fm1.jpg', '', 10),
(119, '1568376966_fm3.jpg', '', 10),
(120, '1568376966_fm4.jpg', '', 10),
(121, '1568376966_fm5.jpg', '', 10),
(122, '1568376967_fm7.jpg', '', 10),
(123, '1568376967_fm9.jpg', '', 10),
(124, '1568376967_fm10.jpg', '', 10),
(125, '1568376967_fm12.jpg', '', 10),
(132, '1568382670_muestragim.jpg', '', 16),
(133, '1568382670_muestragim2.jpg', '', 16),
(134, '1568382670_muestragim3.jpg', '', 16),
(135, '1568383210_cancer.jpg', '', 17),
(136, '1568383210_cancer2.jpg', '', 17),
(137, '1568383210_cancer3.jpg', '', 17),
(138, '1568383210_cancer4.jpg', '', 17),
(149, '1568383607_diadelnino2.jpg', '', 18),
(150, '1568383607_diadelnino3.jpg', '', 18),
(151, '1568383607_diadelnino4.jpg', '', 18),
(152, '1568383607_diadelnino.jpg', '', 18),
(153, '1568383607_dia-del-nino.jpg', '', 18),
(159, '1568384460_baila.jpg', '', 20),
(160, '1568384460_baila2.jpg', '', 20),
(161, '1568384460_baila3.jpg', '', 20),
(162, '1568384461_baila4.jpg', '', 20),
(175, '1569594171_aqua.jpg', '1569594171_thumb_aqua.jpg', 15),
(176, '1569594171_aqua2.jpg', '1569594171_thumb_aqua2.jpg', 15),
(177, '1569594172_aqua3.jpg', '1569594172_thumb_aqua3.jpg', 15),
(178, '1569594172_aqua4.jpg', '1569594172_thumb_aqua4.jpg', 15),
(179, '1569594491_zumba2.0.jpg', '1569594491_thumb_zumba2.0.jpg', 19),
(180, '1569594491_zumbaanuncio2.jpg', '1569594491_thumb_zumbaanuncio2.jpg', 19),
(181, '1569594492_zumbathon.jpg', '1569594492_thumb_zumbathon.jpg', 19),
(182, '1569594492_zumbathon2.jpg', '1569594492_thumb_zumbathon2.jpg', 19),
(183, '1569594492_zumbathon3.jpg', '1569594492_thumb_zumbathon3.jpg', 19),
(184, '1569594493_zumbathon4.jpg', '1569594493_thumb_zumbathon4.jpg', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptos`
--

CREATE TABLE `inscriptos` (
  `id_user` int(11) NOT NULL,
  `nombreapellido` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `horario` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telverificado` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `vkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `inscriptos`
--

INSERT INTO `inscriptos` (`id_user`, `nombreapellido`, `dni`, `telefono`, `email`, `horario`, `telverificado`, `vkey`) VALUES
(5, 'Martin Pereyra', 44690545, 1158302131, 'asd@gmail.com', '15:00 a 16:00', 'no', ''),
(6, 'Tomas Domancich', 11111111, 11111111, 'asd@gmail.com', '14:00 a 15:00', 'no', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id_registro` int(11) NOT NULL,
  `id_inscripto` int(11) NOT NULL,
  `id_actividad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id_registro`, `id_inscripto`, `id_actividad`) VALUES
(14, 5, 1),
(15, 6, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_evento` (`id_evento`);

--
-- Indices de la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  ADD PRIMARY KEY (`id_user`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_inscripto` (`id_inscripto`),
  ADD KEY `id_actividad` (`id_actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes_eventos`
--
ALTER TABLE `imagenes_eventos`
  ADD CONSTRAINT `imagenes_eventos_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`id_actividad`) REFERENCES `actividades` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registros_ibfk_2` FOREIGN KEY (`id_inscripto`) REFERENCES `inscriptos` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
