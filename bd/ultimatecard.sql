-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2020 a las 17:49:42
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ultimatecard`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album`
--

CREATE TABLE `album` (
  `ID_USUARIO` char(20) NOT NULL,
  `ID_CARTA` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carta`
--

CREATE TABLE `carta` (
  `ID_CARTA` int(20) NOT NULL,
  `NOMBRE_CARTA` char(20) NOT NULL,
  `DESCRIPCION_CARTA` char(20) NOT NULL,
  `RAREZA_CARTA` char(20) NOT NULL,
  `VALOR_CARTA` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_partidas`
--

CREATE TABLE `historial_partidas` (
  `ID_USUARIO` char(20) NOT NULL,
  `ID_PARTIDA` char(20) NOT NULL,
  `FECHA_PARTIDA` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partida`
--

CREATE TABLE `partida` (
  `ID_PARTIDA` int(20) NOT NULL,
  `TIPO_PARTIDA` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_USUARIO` int(20) NOT NULL,
  `NOMBRE_USUARIO` char(20) NOT NULL,
  `APELLIDO_USUARIO` char(20) NOT NULL,
  `EMAIL_USUARIO` char(20) NOT NULL,
  `ALIAS_USUARIO` char(20) NOT NULL,
  `CODIGO_COOKIE_USUARIO` char(20) DEFAULT NULL,
  `CONTRASENA_USUARIO` char(20) NOT NULL,
  `TELEFONO_USUARIO` char(20) DEFAULT NULL,
  `REGISTRADO_USUARIO` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_USUARIO`, `NOMBRE_USUARIO`, `APELLIDO_USUARIO`, `EMAIL_USUARIO`, `ALIAS_USUARIO`, `CODIGO_COOKIE_USUARIO`, `CONTRASENA_USUARIO`, `TELEFONO_USUARIO`, `REGISTRADO_USUARIO`) VALUES
(1, 'Juan', 'Gómez', 'jgomez@gmail.com', 'jgomez22', 'aadsf', '1234', NULL, 0),
(2, 'Jose', 'Garcia', 'aasd@gmail.com', 'eljose', NULL, '1234', NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`ID_USUARIO`,`ID_CARTA`),
  ADD KEY `ID_CARTA` (`ID_CARTA`);

--
-- Indices de la tabla `carta`
--
ALTER TABLE `carta`
  ADD PRIMARY KEY (`ID_CARTA`),
  ADD UNIQUE KEY `ID_CARTA` (`ID_CARTA`),
  ADD UNIQUE KEY `NOMBRE_CARTA` (`NOMBRE_CARTA`);

--
-- Indices de la tabla `historial_partidas`
--
ALTER TABLE `historial_partidas`
  ADD PRIMARY KEY (`ID_USUARIO`,`ID_PARTIDA`),
  ADD KEY `ID_PARTIDA` (`ID_PARTIDA`);

--
-- Indices de la tabla `partida`
--
ALTER TABLE `partida`
  ADD PRIMARY KEY (`ID_PARTIDA`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_USUARIO`),
  ADD UNIQUE KEY `ID_USUARIO` (`ID_USUARIO`),
  ADD UNIQUE KEY `EMAIL_USUARIO` (`EMAIL_USUARIO`),
  ADD UNIQUE KEY `ALIAS_USUARIO` (`ALIAS_USUARIO`),
  ADD UNIQUE KEY `CODIGO_COOKIE_USUARIO` (`CODIGO_COOKIE_USUARIO`),
  ADD UNIQUE KEY `TELEFONO_USUARIO` (`TELEFONO_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carta`
--
ALTER TABLE `carta`
  MODIFY `ID_CARTA` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `partida`
--
ALTER TABLE `partida`
  MODIFY `ID_PARTIDA` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_USUARIO` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
