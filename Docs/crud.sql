-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-03-2024 a las 03:33:18
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

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
  `grupo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `camp_grupos`
--

INSERT INTO `camp_grupos` (`id_campania`, `cliente`, `crm`, `campania`, `grupo`) VALUES
(0, 'No Aplica', 'No Aplica', 'No Aplica', 'No Aplica'),
(1, 'BECS', 'A - (B.ESTADO) CROSS SONAP RF', '1 - B.ESTADO CROSS SONAP', '15 - CALIDAD'),
(2, 'BECS', 'A - (B.ESTADO) CROSS SONAP RF', '1 - B.ESTADO CROSS SONAP', '2 - CROSS SONAP'),
(3, 'BECS', 'A - (B.ESTADO) HOSPITALIZACION NORMAL', '100 - C2C HOSPITALIZACION', '116 - C2C_HOSP'),
(4, 'CARDIF', 'A - (CARDIF) - SEGURO AUTOS', '103 - AUTOLAND (SEGURO AUTOS)', '80 - AUTOLAND (SEGURO AUTOS)'),
(5, 'BECS', 'A - (B.ESTADO) SONAP', '11 - B.ESTADO SONAP SJ', '9 - B_ESTADO_SONAP'),
(6, 'CARDIF', 'A - (CARDIF) COOPEUCH SEGURO AUTOS', '110 - AUTOLAND COOPEUCH (SEGURO AUTOS)', '75 - COOPEUCH SEGURO AUTOMOVIL'),
(7, 'BECS', 'A - (B.ESTADO) CROSS RENO HOSPITALIZACION', '113 - CROSS RENO HOSPITALIZACION', '85 - CROSS RENO HOSPITALIZACION'),
(8, 'BECS', 'A - (B.ESTADO) RENOVACION EGRA', '116 - RENOVACION_EGRA', '95 - RENOVACION EGRA'),
(9, 'CARDIF', 'A - (CARDIF) RENTA DIARIA', '117 - CARDIF RENTA DIARIA ASISTIDO', '100 - CARDIF RENTA DIARIA ASISTIDO'),
(10, 'BECS', 'A - (B.ESTADO) SONAP REGALO', '124 - SONAP REGALO', '91 - SONAP REGALO'),
(11, 'BECS', 'A - (B.ESTADO) AHORRO RENOVACION EJERCITO', '126 - RENO AHORRO EJERCITO', '89 - RENO AHORRO EJERCITO'),
(12, 'BECS', 'A - (B.ESTADO) AHORRO REGALO', '127 - AHORRO NORMAL REGALO', '90 - AHORRO REGALO'),
(13, 'BECS', 'A - (B.ESTADO) AHORRO ESPECIAL', '130 - AHORRO ESPECIAL', '92 - AHORRO ESPECIAL'),
(14, 'BECS', 'A - (B.ESTADO) RENOVACION REGALO SONAP', '131 - RENOVACION REGALO SONAP', '94 - RENO_SONAP_REGALO'),
(15, 'BECS', 'A - (B.ESTADO) RENOVACION REGALO AP AHORRO ', '132 - RENOVACION REGALO AHORRO', '97 - RENOVACION REGALO AHORRO'),
(16, 'CARDIF', 'A - (CARDIF) ONCOLOGICO', '135 - CARDIF ONCOLOGICO ASISTIDO', '99 - CARDIF ONCOLOGICO ASISTIDO'),
(17, 'CARDIF', 'C - (CENCOSUD)', '136 - (CENCOSUD) VIVIR MAS CROSS', '102 - CENCOSUD_CROSS'),
(18, 'CARDIF', 'C - (CENCOSUD)', '137 - (CENCOSUD) VIVIR MAS MASIVA', '101 - CENCOSUD'),
(19, 'CARDIF', 'C - (CENCOSUD)', '138 - (CENCOSUD) VIVIR MAS APERTURA', '101 - CENCOSUD'),
(20, 'CARDIF', 'C - (CENCOSUD)', '140 - (CENCOSUD) ONCOLOGICO CROSS', '104 - CENCOSUD_ONCOLOGICO_CROSS'),
(21, 'CARDIF', 'A - (CARDIF) AP ONCOLOGICO CON BONIFICACION', '141 - CARDIF AP ONCOLOGICO CON BONIFICACION', '105 - CARDIF_AP_ONCOLOGICO'),
(22, 'CARDIF', 'A - (CARDIF) SEGURO ROBO 360 SCOTIABANK', '142 - SEGURO ROBO 360 TENTADOS', '62 - SEGURO ROBO 360 SCOTIABANK'),
(23, 'CARDIF', 'A - (CARDIF) AP ONCOLOGICO CON BONIFICACION', '143 - CARDIF AP ONCOLOGICO CON BONIFICACION ESPECIAL', '107 - CARDIF_AP_ONCOLOGICO _ASISTIDO'),
(24, 'BECS', 'A - (B.ESTADO) AHORRO RENOVACION FUNDACION INTEGRA', '145 - AHORRO RENO FUNDACION INTEGRA', '106 - AHORRO_RENO_FUNDACION_INTEGRA'),
(25, 'CARDIF', 'C - (CENCOSUD)', '146 - (CENCOSUD) VIVIR MAS CROSS ASISTIDA', '108 - CENCOSUD_CROSS_ASISTIDO'),
(26, 'BECS', 'A - (B.ESTADO) CROSS AHORRO', '147 - CROSS AHORRO (N)', '127 - CROSS_AHORRO_N'),
(27, 'METLIFE', 'D - (METLIFE) CLINICA EVEREST', '148 - (EVEREST) DENTAL + SEGURO CANCER E INFARTO', '110 - METLIFE_CLINICA_EVEREST'),
(28, 'METLIFE', 'D - (METLIFE) CLINICA SANASALUD', '149 - (SANASALUD) SEGURO EGRA + DENTAL', '111 - METLIFE_CLINICA_SANASALUD'),
(29, 'METLIFE', 'D - (METLIFE) CLINICA UNO SALUD DENTAL', '150 - (UNOSALUD) EGRA + AP + DENTAL', '112 - METLIFE_UNO_SALUD_DENTAL'),
(30, 'CARDIF', 'A - (CARDIF) ZERO PORTONAZO', '151 - ROBO ZERO PORTONAZO', '113 - ZERO_PORTONAZO'),
(31, 'CARDIF', 'A - (CARDIF) CAJA LOS ANDES', '152 - CAJA LOS ANDES CROSS', '114 - CAJA LOS ANDES CROSS'),
(32, 'CARDIF', 'A - (CARDIF) ZERO ACCIDENTE', '154 - ZERO ACCIDENTE', '117 - ZERO_ACCIDENTE'),
(33, 'BECS', 'A - (B.ESTADO) AHORRO NORMAL', '155 - C2C AHORRO MASIVO', '118 - C2C AHORRO MASIVO'),
(34, 'CARDIF', 'A - (CARDIF) ZERO DAÑOS (CELULARES)', '156 - ZERO DAÑOS (CELULAR)', '119 - ZERO_CELULAR'),
(35, 'CARDIF', 'A - (CARDIF) CLA AP + BENEFICIOS POR PERMANENCIA', '159 - CLA AP + Bonificacion', '121 - CLA_AP'),
(36, 'BECS', 'A - (B.ESTADO) RENOVACION SONAP', '16 - RENO SONAP', '17 - RENO SONAP'),
(37, 'CARDIF', 'A - (CARDIF) CLA AP + BENEFICIOS POR PERMANENCIA', '160 - CLA AP + Bonificacion Cross', '122 - CLA_AP_CROSS'),
(38, 'CARDIF', 'A - (CARDIF) PROTECCION HOSPITALARIA', '162 - PROTECCION HOSPITALARIA', '124 - PROTECCION_HOSPITALARIA_MASIVA'),
(39, 'METLIFE', 'D - (METLIFE) AP + AHORRO ENTEL', '163 - ENTEL AP + AHORRO', '126 - ENTEL_AP_AHORRO'),
(40, 'CARDIF', 'A - (CARDIF) AP BONIFICACION', '164 - CARDIF AP BONIFICACION', '128 - CARDIF_AP_BONIFICACION'),
(41, 'CARDIF', 'A - (CARDIF) PROTECCION HOSPITALARIA', '165 - PROTECCION HOSPITA CROSS', '125 - PROTECCION_HOSPITALARIA_CROSS'),
(42, 'BECS', 'A - (B.ESTADO) CROSS SONAP RF', '166 - B.ESTADO CROSS SONAP BEME', '129 - CROSS_SONAP_BEME'),
(43, 'BECS', 'A - (B.ESTADO) CROSS RENO HOSPITALIZACION', '167 - CROSS RENO HOSPITALIZACION BEME', '130 - CROSS_RENO_HOSP_BEME'),
(44, 'CARDIF', 'C - (CENCOSUD)', '168 - (CENCOSUD) AP BONIFICACION CROSS', '131 - CENCOSUD_AP_BONIFICACION_CROSS'),
(45, 'BECS', 'A - (B.ESTADO) CROSS EGRA RF', '17 - B.ESTADO CROSS EGRA RD', '19 - B_ESTADO_CROSS_EGRA'),
(46, 'BECS', 'A - (B.ESTADO) SONAP ESPECIAL', '48 - B. ESTADO SONAP_ESPECIAL', '36 - SONAP ESPECIAL'),
(47, 'BECS', 'A - (B.ESTADO) EGRA ESPECIAL', '52 - B. ESTADO EGRA ESPECIAL', '40 - B. ESTADO EGRA ESPECIAL'),
(48, 'CARDIF', 'A - (CARDIF) RENTA DIARIA', '55 - CARDIF RENTA DIARIA', '42 - CARDIF RENTA DIARIA'),
(49, 'CARDIF', 'A - (CARDIF) ONCOLOGICO', '60 - CARDIF ONOCOLOGICO', '43 - CARDIF ONCOLOGICO'),
(50, 'BECS', 'A - (B.ESTADO) SALE SEGURO NORMAL', '67 - SALE_SEGURO_NORMAL', '48 - SALE SEGURO NORMAL'),
(51, 'BECS', 'A - (B.ESTADO) SALE SEGURO ESPECIAL', '68 - SALE_SEGURO_ESPECIAL', '49 - SALE SEGURO ESPECIAL'),
(52, 'BECS', 'A - (B.ESTADO) HOSPITALIZACION NORMAL', '69 - HOSPITALIZACION NORMAL', '50 - HOSPITALIZACION NORMAL'),
(53, 'BECS', 'A - (B.ESTADO) HOSPITALIZACION ESPECIAL', '70 - HOSPITALIZACION ESPECIAL', '51 - HOSPITALIZACION ESPECIAL'),
(54, 'BECS', 'A - (B.ESTADO) SONAP', '73 - C2C SONAP MASIVO', '54 - C2C SONAP MASIVO'),
(55, 'BECS', 'A - (B.ESTADO) EGRA', '74 - C2C EGRA MASIVO', '55 - C2C EGRA MASIVO'),
(56, 'CARDIF', 'A - (CARDIF) SEGURO ROBO 360 SCOTIABANK', '83 - SEGURO ROBO 360 SCOTIABANK', '62 - SEGURO ROBO 360 SCOTIABANK'),
(57, 'CARDIF', 'A - (CARDIF) CAJA LOS ANDES', '88 - CAJA LOS ANDES', '67 - CAJA LOS ANDES'),
(58, 'BECS', 'A - (B.ESTADO) EGRA', '9 - B. ESTADO EGRA MASIVA', '10 - B ESTADO EGRA'),
(59, 'BECS', 'A - (B.ESTADO) AHORRO NORMAL', '90 - AHORRO NORMAL', '68 - AHORRO NORMAL'),
(60, 'BECS', 'A - (B.ESTADO) RENOVACION HOSPITALIZACION', '91 - RENOVACION HOSPITALIZACION', '69 - RENOVACION HOSPITALIZACION'),
(61, 'BECS', 'A - (B.ESTADO) CROSS AHORRO', '92 - CROSS AHORRO', '70 - CROSS AHORRO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `cargo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `cargo`) VALUES
(1, 'Ejecutivo(a)'),
(2, 'Psicólogo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_global`
--

CREATE TABLE `log_global` (
  `id_global` int(11) NOT NULL,
  `nombre` int(100) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
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

--
-- Volcado de datos para la tabla `supervisor`
--

INSERT INTO `supervisor` (`id_supervisor`, `nombre_super`) VALUES
(6, 'No aplica'),
(7, 'Rodrigo Mora'),
(8, 'Adela Diaz'),
(9, 'Leslie Palma'),
(10, 'Antonio Prieto'),
(11, 'Valeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_camp`
--

CREATE TABLE `usuario_camp` (
  `id_us_camp` int(11) NOT NULL,
  `registro_usuario_id` int(11) NOT NULL,
  `camp_grupos_id` int(11) NOT NULL
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
  `fecha_creacion_usuario` date NOT NULL DEFAULT current_timestamp(),
  `supervisor_id` int(11) NOT NULL,
  `cargo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario_presencial`
--

INSERT INTO `usuario_presencial` (`id_usuario`, `nombre`, `apellido`, `contrasena`, `rut`, `fecha_creacion_usuario`, `supervisor_id`, `cargo_id`) VALUES
(7020, 'Tian', 'Aracena Lamatta', '7021', '16345839-k', '2017-03-24', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_teletrabajo`
--

CREATE TABLE `usuario_teletrabajo` (
  `id_teletrabajo` int(11) NOT NULL,
  `usuario_vpn` varchar(100) NOT NULL,
  `clave_vpn` varchar(100) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_vencimiento` varchar(100) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camp_grupos`
--
ALTER TABLE `camp_grupos`
  ADD PRIMARY KEY (`id_campania`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD UNIQUE KEY `id_cargo` (`id_cargo`);

--
-- Indices de la tabla `log_global`
--
ALTER TABLE `log_global`
  ADD PRIMARY KEY (`id_global`);

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
-- Indices de la tabla `usuario_camp`
--
ALTER TABLE `usuario_camp`
  ADD PRIMARY KEY (`id_us_camp`),
  ADD KEY `registro_usuario_id` (`registro_usuario_id`,`camp_grupos_id`),
  ADD KEY `camp_grupos_id` (`camp_grupos_id`);

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
  ADD KEY `estado_id` (`usuario_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `log_global`
--
ALTER TABLE `log_global`
  MODIFY `id_global` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id_supervisor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuario_camp`
--
ALTER TABLE `usuario_camp`
  MODIFY `id_us_camp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_login`
--
ALTER TABLE `usuario_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  ADD CONSTRAINT `registro_usuarios_ibfk_1` FOREIGN KEY (`usuario_login_id`) REFERENCES `usuario_login` (`id_login`),
  ADD CONSTRAINT `registro_usuarios_ibfk_2` FOREIGN KEY (`usuario_presencial_id`) REFERENCES `usuario_presencial` (`id_usuario`);

--
-- Filtros para la tabla `usuario_camp`
--
ALTER TABLE `usuario_camp`
  ADD CONSTRAINT `usuario_camp_ibfk_2` FOREIGN KEY (`registro_usuario_id`) REFERENCES `registro_usuarios` (`id_registro`),
  ADD CONSTRAINT `usuario_camp_ibfk_3` FOREIGN KEY (`camp_grupos_id`) REFERENCES `camp_grupos` (`id_campania`);

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
  ADD CONSTRAINT `usuario_teletrabajo_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario_presencial` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
