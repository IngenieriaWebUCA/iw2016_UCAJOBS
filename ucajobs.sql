CREATE DATABASE  IF NOT EXISTS `ucajobs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ucajobs`;
-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2016 a las 12:58:58
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ucajobs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `version`) VALUES
(1, 'Cádiz', 0),
(2, 'Sevilla', 0),
(3, 'Huelva', 0),
(4, 'Granada', 0),
(5, 'Jaén', 0),
(6, 'Córdoba', 0),
(7, 'Almería', 0),
(8, 'Málaga', 0),
(9, 'Madrid', 0),
(10, 'Barcelona', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `demandante`
--

CREATE TABLE `demandante` (
  `id` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `perfil` bigint(20) DEFAULT NULL,
  `usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `demandante`
--

INSERT INTO `demandante` (`id`, `version`, `perfil`, `usuario`) VALUES
(1, 0, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL,
  `actividad` varchar(255) NOT NULL,
  `cif` varchar(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `empleados` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `usuario` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `actividad`, `cif`, `email`, `empleados`, `nombre`, `version`, `usuario`) VALUES
(1, 'Telefonía Móvil', '12345678B', 'www.movistar.es', '2084', 'Movistar', 0, 2),
(2, 'Diseño y creación de componentes mecánicos', '45678912A', 'www.airbus.com', '5523', 'Airbus', 0, 2),
(3, 'Servicio de Consultoría', '123456789', 'info@everis.com', '1236', 'Everis', 0, 2),
(4, 'Restaurante', '21345678A', 'www.macdonald.com', '8645', 'Macdonald', 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_ciudades`
--

CREATE TABLE `empresa_ciudades` (
  `empresa` bigint(20) NOT NULL,
  `ciudades` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa_ciudades`
--

INSERT INTO `empresa_ciudades` (`empresa`, `ciudades`) VALUES
(1, 9),
(2, 1),
(2, 9),
(3, 2),
(3, 9),
(3, 10),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_ofertas`
--

CREATE TABLE `empresa_ofertas` (
  `empresa` bigint(20) NOT NULL,
  `ofertas` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `experiencia` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` bigint(20) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `estado_inscripcion` bit(1) NOT NULL,
  `fecha_inscripcion` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `demandante` bigint(20) DEFAULT NULL,
  `oferta` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `estado`, `estado_inscripcion`, `fecha_inscripcion`, `version`, `demandante`, `oferta`) VALUES
(1, 2, b'1', '2016-06-02 00:00:00', 0, 1, 1),
(2, 4, b'1', '2016-05-31 00:00:00', 0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oferta_trabajo`
--

CREATE TABLE `oferta_trabajo` (
  `id` bigint(20) NOT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `salario` double NOT NULL,
  `tipologia_contrato` int(11) NOT NULL,
  `vacantes` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `localizacion` bigint(20) DEFAULT NULL,
  `nombre_puesto` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `oferta_trabajo`
--

INSERT INTO `oferta_trabajo` (`id`, `duracion`, `estado`, `salario`, `tipologia_contrato`, `vacantes`, `version`, `localizacion`, `nombre_puesto`, `descripcion`) VALUES
(1, '6 meses', 1, 1500, 3, 4, 0, 1, 1, 'Se busca ingenieros informáticos para la creación de una aplicación web con la herramienta Spring Roo.'),
(2, '-', 1, 850, 0, 1, 0, 2, 2, 'Se busca camarero con buena presencia y ganas de trabajar'),
(3, '-', 1, 1100, 0, 2, 0, 9, 3, 'Personas responsables y carnet E de conducir'),
(4, '2 meses', 1, 650, 3, 1, 0, 4, 4, 'Se busca jardinero para temporada de verano.'),
(5, '6 meses', 1, 1250, 3, 2, 0, 6, 5, 'Se busca personal para la restauración de un viejo edificio.'),
(6, '4 meses', 4, 450.5, 2, 1, 0, 3, 7, 'Recién titulados.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` bigint(20) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `version`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_experiencia`
--

CREATE TABLE `perfil_experiencia` (
  `perfil` bigint(20) NOT NULL,
  `experiencia` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_titulos`
--

CREATE TABLE `perfil_titulos` (
  `perfil` bigint(20) NOT NULL,
  `titulos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_titulos`
--

INSERT INTO `perfil_titulos` (`perfil`, `titulos`) VALUES
(1, 1),
(1, 5),
(1, 11),
(1, 12),
(2, 1),
(2, 5),
(2, 11),
(2, 12),
(2, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil_trabajos`
--

CREATE TABLE `perfil_trabajos` (
  `perfil` bigint(20) NOT NULL,
  `trabajos` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil_trabajos`
--

INSERT INTO `perfil_trabajos` (`perfil`, `trabajos`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `version`) VALUES
(1, 'Administrador', NULL),
(2, 'Gestor_ETT', NULL),
(3, 'Usuario Registrado', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulo`
--

CREATE TABLE `titulo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `titulo`
--

INSERT INTO `titulo` (`id`, `nombre`, `version`) VALUES
(1, 'Ingeniero Infórmatico', 0),
(2, 'Ingeniero Industrial', 0),
(3, 'Ingeniero Electrico', 0),
(4, 'Ingeniero Aeroespacial', 0),
(5, 'B1 Inglés', 0),
(6, 'B2 Inglés', 0),
(7, 'C1 Inglés', 0),
(8, 'B1 Aleman', 0),
(9, 'B2 Aleman', 0),
(10, 'C1 Aleman', 0),
(11, 'Bachiller', 0),
(12, 'E.S.O', 0),
(13, 'Estudios Primarios', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo`
--

CREATE TABLE `trabajo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajo`
--

INSERT INTO `trabajo` (`id`, `nombre`, `version`) VALUES
(1, 'Informático', 0),
(2, 'Camarero', 0),
(3, 'Camionero', 0),
(4, 'Jardinero', 0),
(5, 'Obrero', 0),
(6, 'Masajista', 0),
(7, 'Preparador Físico', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `activado` bit(1) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fecha_registro` date NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sexo` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `rol` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `activado`, `apellidos`, `dni`, `email`, `fecha_registro`, `nombre`, `password`, `sexo`, `usuario`, `version`, `rol`) VALUES
(1, b'1', 'Cabrera López', '12345678K', 'cabriunt@gmail.com', '2016-06-02', 'Daniel', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1, 'admin', NULL, 1),
(2, b'1', 'de Empresas', '98765432A', 'gestor@gmail.com', '2016-06-02', 'Señor Gestor', '0bd66e5612153f99a1a193e638fa154694de99912c0911c8e6a28dc120719e6b', 0, 'gestor', 0, 2),
(3, b'1', 'Nieve', '48974956K', 'nieve@gmail.com', '2016-06-02', 'John', '67aec09f77b6a7a879e68908ad4fdf01779262656190acb3c0616fdfed6bf764', 0, 'demandante', 0, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `demandante`
--
ALTER TABLE `demandante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_6mnowhfkr7gqotgmci4yrry5r` (`perfil`),
  ADD KEY `FK_easbdttsurflhhldddb36shvn` (`usuario`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_d3nm4bkmn198h94okwmqdfh6w` (`usuario`);

--
-- Indices de la tabla `empresa_ciudades`
--
ALTER TABLE `empresa_ciudades`
  ADD PRIMARY KEY (`empresa`,`ciudades`),
  ADD KEY `FK_54t8po7f1anchllr3ojcjnnq0` (`ciudades`);

--
-- Indices de la tabla `empresa_ofertas`
--
ALTER TABLE `empresa_ofertas`
  ADD PRIMARY KEY (`empresa`,`ofertas`),
  ADD UNIQUE KEY `UK_lke4ptljdpq9qub5p55blob8s` (`ofertas`);

--
-- Indices de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_ospcbcdkox1m92d6acftub7bu` (`demandante`),
  ADD KEY `FK_jtwnnskbxax0f2q8butty5yj` (`oferta`);

--
-- Indices de la tabla `oferta_trabajo`
--
ALTER TABLE `oferta_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_bgc9yhusvmwf4wxfumiioibn` (`localizacion`),
  ADD KEY `FK_5e0ft96xkm2l8csll6lhx59wf` (`nombre_puesto`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil_experiencia`
--
ALTER TABLE `perfil_experiencia`
  ADD PRIMARY KEY (`perfil`,`experiencia`),
  ADD KEY `FK_h0t1mh5nbibdjjkvehlcvrm1f` (`experiencia`);

--
-- Indices de la tabla `perfil_titulos`
--
ALTER TABLE `perfil_titulos`
  ADD PRIMARY KEY (`perfil`,`titulos`),
  ADD KEY `FK_kuiwdi86tywvauei8cj9xf80q` (`titulos`);

--
-- Indices de la tabla `perfil_trabajos`
--
ALTER TABLE `perfil_trabajos`
  ADD PRIMARY KEY (`perfil`,`trabajos`),
  ADD KEY `FK_subj6bqsks8o0oca6r3f480by` (`trabajos`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulo`
--
ALTER TABLE `titulo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_g5ahsrnfa430jc3jggu261yjt` (`rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `demandante`
--
ALTER TABLE `demandante`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `experiencia`
--
ALTER TABLE `experiencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `oferta_trabajo`
--
ALTER TABLE `oferta_trabajo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `titulo`
--
ALTER TABLE `titulo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `trabajo`
--
ALTER TABLE `trabajo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `demandante`
--
ALTER TABLE `demandante`
  ADD CONSTRAINT `FK_6mnowhfkr7gqotgmci4yrry5r` FOREIGN KEY (`perfil`) REFERENCES `demandante` (`id`),
  ADD CONSTRAINT `FK_easbdttsurflhhldddb36shvn` FOREIGN KEY (`usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_d3nm4bkmn198h94okwmqdfh6w` FOREIGN KEY (`usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `empresa_ciudades`
--
ALTER TABLE `empresa_ciudades`
  ADD CONSTRAINT `FK_323fstj2rd9y37me9fku62esd` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_54t8po7f1anchllr3ojcjnnq0` FOREIGN KEY (`ciudades`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `empresa_ofertas`
--
ALTER TABLE `empresa_ofertas`
  ADD CONSTRAINT `FK_5em233ramnftmckh6wkmv9w9n` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  ADD CONSTRAINT `FK_lke4ptljdpq9qub5p55blob8s` FOREIGN KEY (`ofertas`) REFERENCES `oferta_trabajo` (`id`);

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_jtwnnskbxax0f2q8butty5yj` FOREIGN KEY (`oferta`) REFERENCES `oferta_trabajo` (`id`),
  ADD CONSTRAINT `FK_ospcbcdkox1m92d6acftub7bu` FOREIGN KEY (`demandante`) REFERENCES `demandante` (`id`);

--
-- Filtros para la tabla `oferta_trabajo`
--
ALTER TABLE `oferta_trabajo`
  ADD CONSTRAINT `FK_5e0ft96xkm2l8csll6lhx59wf` FOREIGN KEY (`nombre_puesto`) REFERENCES `trabajo` (`id`),
  ADD CONSTRAINT `FK_bgc9yhusvmwf4wxfumiioibn` FOREIGN KEY (`localizacion`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `perfil_experiencia`
--
ALTER TABLE `perfil_experiencia`
  ADD CONSTRAINT `FK_h0t1mh5nbibdjjkvehlcvrm1f` FOREIGN KEY (`experiencia`) REFERENCES `experiencia` (`id`),
  ADD CONSTRAINT `FK_td680g6icetcek3d8m41x7g6v` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`);

--
-- Filtros para la tabla `perfil_titulos`
--
ALTER TABLE `perfil_titulos`
  ADD CONSTRAINT `FK_kuiwdi86tywvauei8cj9xf80q` FOREIGN KEY (`titulos`) REFERENCES `titulo` (`id`),
  ADD CONSTRAINT `FK_nwvswsuck42bvad67iiqx4dq1` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`);

--
-- Filtros para la tabla `perfil_trabajos`
--
ALTER TABLE `perfil_trabajos`
  ADD CONSTRAINT `FK_pd5upg5st1qn05wlssvidt2q` FOREIGN KEY (`perfil`) REFERENCES `perfil` (`id`),
  ADD CONSTRAINT `FK_subj6bqsks8o0oca6r3f480by` FOREIGN KEY (`trabajos`) REFERENCES `trabajo` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_g5ahsrnfa430jc3jggu261yjt` FOREIGN KEY (`rol`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
