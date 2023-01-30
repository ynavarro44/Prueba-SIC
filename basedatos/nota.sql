-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-01-2023 a las 14:34:21
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `radicaciones`
--

CREATE TABLE `radicaciones` (
  `id_radicacion` int(11) NOT NULL,
  `nombre_solicitante` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `asunto` varchar(100) NOT NULL,
  `texto_solicitud` text NOT NULL,
  `fk_usuario_crea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `radicaciones`
--

INSERT INTO `radicaciones` (`id_radicacion`, `nombre_solicitante`, `fecha`, `asunto`, `texto_solicitud`, `fk_usuario_crea`) VALUES
(1, 'Sulay Sepulveda', '2023-30-01 09:11:39', 'peticion', 'Quiero hacer cambio en las escrituras', 1),
(2, 'Laura Melo', '2023-30-01 09:11:41', 'Reclamo', 'Nombre mal escrito', 1),
(3, 'Yina Navarro', '2023-30-01 09:11:43', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(4, 'Emilio Navarro', '2023-30-01 09:11:55', 'Reclamo', 'Quedo mal escrito mi nombre y numero de documento', 1),
(5, 'Sara Marin', '2023-30-01 09:11:57', 'Reclamo', 'Nombre mal escrito', 1),
(6, 'Yina Navarro', '2023-30-01 10:01:45', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(7, 'Sulay Sepulveda', '2023-30-10 09:11:39', 'peticion', 'Quiero hacer cambio en las escrituras', 1),
(8, 'Laura Melo', '2023-30-01 10:21:41', 'Reclamo', 'Nombre mal escrito', 1),
(9, 'Yina Navarro', '2023-30-01 10:28:43', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(10, 'Emilio Navarro', '2023-30-01 10:32:55', 'Reclamo', 'Quiero hacer cambio en las escrituras', 1),
(11, 'Sara Marin', '2023-30-01 10:41:52', 'Reclamo', 'Nombre mal escrito', 1),
(12, 'Yina Navarro', '2023-30-01 10:53:48', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(13, 'Sulay Sepulveda', '2023-30-01 11:11:39', 'peticion', 'Quiero hacer cambio en las escrituras', 1),
(14, 'Laura Melo', '2023-30-01 11:11:41', 'Reclamo', 'Nombre mal escrito', 1),
(15, 'Yina Navarro', '2023-30-01 11:11:43', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(16, 'Emilio Navarro', '2023-30-01 11:11:55', 'Reclamo', 'Quiero hacer cambio en las escrituras', 1),
(17, 'Sara Marin', '2023-30-01 11:11:57', 'Reclamo', 'Quedo mal escrito mi nombre y numero de documento', 1),
(18, 'Yina Navarro', '2023-30-01 11:01:45', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(19, 'Sulay Sepulveda', '2023-30-11 09:11:39', 'peticion', 'Quiero hacer cambio en las escrituras', 1),
(20, 'Laura Melo', '2023-30-01 11:22:40', 'Reclamo', 'Nombre mal escrito', 1),
(21, 'Yina Navarro', '2023-30-01 11:28:41', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(22, 'Emilio Navarro', '2023-30-01 11:33:51', 'Reclamo', 'Quiero hacer cambio en las escrituras', 1),
(23, 'Sara Marin', '2023-30-01 11:41:52', 'Reclamo', 'Nombre mal escrito', 1),
(24, 'Yina Navarro', '2023-30-01 11:43:42', 'Peticion', 'Me gustaria dejar o agregar un nuevo integrante en las escrituras', 1),
(25, 'Laura Melo', '2023-30-01 11:51:46', 'Reclamo', 'Nombre mal escrito', 1),
(26, 'Yina Navarro', '2023-30-01 11:52:43', 'Peticion', 'Agregar un nuevo beneficiario', 1),
(27, 'Emilio Navarro', '2023-30-01 11:54:58', 'Reclamo', 'Quiero hacer cambio en las escrituras', 1),
(28, 'Sara Marin', '2023-30-01 11:55:56', 'Reclamo', 'Nombre mal escrito', 1),

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `radicaciones_log`
--

CREATE TABLE `radicaciones_log` (
  `id_log` int(11) NOT NULL,
  `tipo_cambio` varchar(50) NOT NULL,
  `fecha_cambio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `fk_usuario_realiza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `radicaciones_log`
--

- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `intentos` int(11) NOT NULL DEFAULT 0,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `email`, `nombre`, `password`, `intentos`, `estado`) VALUES
(1, 'yina11@hotmail.com', 'Yinapa', '123456', 0, 1),
(2, 'laurita0607@hotmail.com', 'laurita0706', '6789', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `radicaciones`
--
ALTER TABLE `radicaciones`
  ADD PRIMARY KEY (`id_radicacion`);

--
-- Indices de la tabla `radicaciones_log`
--
ALTER TABLE `radicaciones_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indices de la tabla `id_usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `radicaciones`
--
ALTER TABLE `radicaciones`
  MODIFY `id_radicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `radicaciones_log`
--
ALTER TABLE `radicaciones_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;