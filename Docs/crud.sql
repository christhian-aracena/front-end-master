-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2024 a las 22:01:47
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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
-- Estructura de tabla para la tabla `camp_grupos`
--

CREATE TABLE `camp_grupos` (
  `id_campania` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `crm` varchar(100) NOT NULL,
  `campania` varchar(100) NOT NULL,
  `grupo` varchar(100) NOT NULL,
  `registro_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE `ocupacion` (
  `id_ocupacion` int(11) NOT NULL,
  `ocupacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ocupacion`
--

INSERT INTO `ocupacion` (`id_ocupacion`, `ocupacion`) VALUES
(1, 'Soporte TI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_usuarios`
--

CREATE TABLE `registro_usuarios` (
  `id_registro` int(11) NOT NULL,
  `usuario_login_id` int(11) NOT NULL,
  `usuario_presencial_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `rol`) VALUES
(1, 'Usuario'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE `supervisor` (
  `id_supervisor` int(11) NOT NULL,
  `nombre_super` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_login`
--

CREATE TABLE `usuario_login` (
  `id_login` int(11) NOT NULL,
  `nombre_login` varchar(100) NOT NULL,
  `apellido_login` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `ocupacion_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_login`
--

INSERT INTO `usuario_login` (`id_login`, `nombre_login`, `apellido_login`, `correo`, `contrasena`, `ocupacion_id`, `rol_id`) VALUES
(3, 'Christhian', 'Aracena', 'caracena@soex.cl', '1234', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_presencial`
--

CREATE TABLE `usuario_presencial` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `rut` varchar(30) NOT NULL,
  `supervisor_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_teletrabajo`
--

CREATE TABLE `usuario_teletrabajo` (
  `id_teletrabajo` int(11) NOT NULL,
  `usuario_vpn` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `fecha_creacion` varchar(100) NOT NULL,
  `fecha_vencimiento` varchar(100) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camp_grupos`
--
ALTER TABLE `camp_grupos`
  ADD PRIMARY KEY (`id_campania`),
  ADD KEY `registro_usuario_id` (`registro_usuario_id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD UNIQUE KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  ADD PRIMARY KEY (`id_ocupacion`);

--
-- Indices de la tabla `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `usuario_login_id` (`usuario_login_id`,`usuario_presencial_id`),
  ADD KEY `usuario_presencial_id` (`usuario_presencial_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`id_supervisor`);

--
-- Indices de la tabla `usuario_login`
--
ALTER TABLE `usuario_login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `ocupacion_id` (`ocupacion_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- Indices de la tabla `usuario_presencial`
--
ALTER TABLE `usuario_presencial`
  ADD UNIQUE KEY `id_usuario` (`id_usuario`),
  ADD KEY `supervisor_id` (`supervisor_id`),
  ADD KEY `cargo_id` (`cargo_id`);

--
-- Indices de la tabla `usuario_teletrabajo`
--
ALTER TABLE `usuario_teletrabajo`
  ADD KEY `estado_id` (`estado_id`,`usuario_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camp_grupos`
--
ALTER TABLE `camp_grupos`
  MODIFY `id_campania` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  MODIFY `id_ocupacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  MODIFY `id_supervisor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_login`
--
ALTER TABLE `usuario_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `camp_grupos`
--
ALTER TABLE `camp_grupos`
  ADD CONSTRAINT `camp_grupos_ibfk_1` FOREIGN KEY (`registro_usuario_id`) REFERENCES `registro_usuarios` (`id_registro`);

--
-- Filtros para la tabla `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  ADD CONSTRAINT `registro_usuarios_ibfk_1` FOREIGN KEY (`usuario_login_id`) REFERENCES `usuario_login` (`id_login`),
  ADD CONSTRAINT `registro_usuarios_ibfk_2` FOREIGN KEY (`usuario_presencial_id`) REFERENCES `usuario_presencial` (`id_usuario`);

--
-- Filtros para la tabla `usuario_login`
--
ALTER TABLE `usuario_login`
  ADD CONSTRAINT `usuario_login_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id_rol`),
  ADD CONSTRAINT `usuario_login_ibfk_2` FOREIGN KEY (`ocupacion_id`) REFERENCES `ocupacion` (`id_ocupacion`);

--
-- Filtros para la tabla `usuario_presencial`
--
ALTER TABLE `usuario_presencial`
  ADD CONSTRAINT `usuario_presencial_ibfk_1` FOREIGN KEY (`supervisor_id`) REFERENCES `supervisor` (`id_supervisor`),
  ADD CONSTRAINT `usuario_presencial_ibfk_2` FOREIGN KEY (`cargo_id`) REFERENCES `cargo` (`id_cargo`);

--
-- Filtros para la tabla `usuario_teletrabajo`
--
ALTER TABLE `usuario_teletrabajo`
  ADD CONSTRAINT `usuario_teletrabajo_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `usuario_teletrabajo_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_presencial` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
