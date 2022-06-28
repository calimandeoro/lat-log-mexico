-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-06-2022 a las 12:13:47
-- Versión del servidor: 10.6.7-MariaDB-2ubuntu1
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `xpertshop_acuario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` bigint(20) UNSIGNED NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `status` enum('Activo','Inactivo') NOT NULL,
  `abreviacion` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `id_pais`, `nombre`, `status`, `abreviacion`) VALUES
(1, 1, 'Aguascalientes', 'Activo', 'AG'),
(2, 1, 'Baja California', 'Activo', 'BC'),
(3, 1, 'Baja California Sur', 'Activo', 'BC'),
(4, 1, 'Campeche', 'Activo', 'CM'),
(5, 1, 'Coahuila de Zaragoza', 'Activo', 'CO'),
(6, 1, 'Colima', 'Activo', 'CL'),
(7, 1, 'Chiapas', 'Activo', 'CH'),
(8, 1, 'Chihuahua', 'Activo', 'CI'),
(9, 1, 'Ciudad de México', 'Activo', 'DF'),
(10, 1, 'Durango', 'Activo', 'DU'),
(11, 1, 'Guanajuato', 'Activo', 'GT'),
(12, 1, 'Guerrero', 'Activo', 'GR'),
(13, 1, 'Hidalgo', 'Activo', 'HD'),
(14, 1, 'Jalisco', 'Activo', 'JA'),
(15, 1, 'México', 'Activo', 'EM'),
(16, 1, 'Michoacán de Ocampo', 'Activo', 'MI'),
(17, 1, 'Morelos', 'Activo', 'MO'),
(18, 1, 'Nayarit', 'Activo', 'NA'),
(19, 1, 'Nuevo León', 'Activo', 'NL'),
(20, 1, 'Oaxaca', 'Activo', 'OA'),
(21, 1, 'Puebla', 'Activo', 'PU'),
(22, 1, 'Querétaro', 'Activo', 'QR'),
(23, 1, 'Quintana Roo', 'Activo', 'QN'),
(24, 1, 'San Luis Potosí', 'Activo', 'SP'),
(25, 1, 'Sinaloa', 'Activo', 'SI'),
(26, 1, 'Sonora', 'Activo', 'SO'),
(27, 1, 'Tabasco', 'Activo', 'TB'),
(28, 1, 'Tamaulipas', 'Activo', 'TA'),
(29, 1, 'Tlaxcala', 'Activo', 'TL'),
(30, 1, 'Veracruz de Ignacio de la Llave', 'Activo', 'VE'),
(31, 1, 'Yucatán', 'Activo', 'YU'),
(32, 1, 'Zacatecas', 'Activo', 'ZA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
