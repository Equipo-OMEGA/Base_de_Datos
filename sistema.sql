-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2023 a las 01:47:33
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
-- Base de datos: `sistema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `catalogos`
--

CREATE TABLE `catalogos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `catalogos`
--

INSERT INTO `catalogos` (`id`, `Nombre`) VALUES
(1, 'llaves'),
(2, 'destornilladores'),
(3, 'actuadores'),
(4, 'electricas'),
(5, 'alicates'),
(6, 'tenazas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `cod_Herramienta` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Disponibles` varchar(50) NOT NULL,
  `Imagenes` longblob NOT NULL,
  `Tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`cod_Herramienta`, `Nombre`, `Disponibles`, `Imagenes`, `Tipo_id`) VALUES
(1, 'llave de boca fija', '2', '', 1),
(2, 'llave de vaso', '1', '', 1),
(3, 'llave inglesa', '3', '', 1),
(4, 'llave francesa', '3', '', 1),
(5, 'pinzas-llave', '3', '', 1),
(6, 'llave de tubo', '2', '', 1),
(7, 'llave de estrella', '5', '', 1),
(8, 'destornillador de punta plana', '2', '', 2),
(9, 'destornillador de estrella Phillips', '5', '', 2),
(10, 'destornillador con punta Torx', '11', '', 2),
(11, 'destornillador Hexagonal', '4', '', 2),
(12, 'destornillador Aislado', '4', '', 2),
(13, 'llaves allen', '3', '', 1),
(14, 'llave de cruz', '11', '', 1),
(15, 'llave para filtro de aceite', '6', '', 1),
(16, 'llave de bujias', '7', '', 1),
(17, 'válvulas', '4', '', 3),
(18, 'bombas', '7', '', 3),
(19, 'compresores', '4', '', 3),
(20, 'ventiladores', '7', '', 3),
(21, 'gato hidraulico', '6', '', 3),
(22, 'llave Dinamométrica', '4', '', 1),
(23, 'soldador eléctrico', '2', '', 4),
(24, 'polímetro digital', '7', '', 4),
(25, 'lámpara en serie', '4', '', 4),
(26, 'comprobador de baterías', '3', '', 4),
(27, 'cargador de baterías', '11', '', 4),
(28, 'regloscopio', '5', '', 4),
(29, 'equipos de diagnosis', '4', '', 4),
(30, 'pulidora', '3', '', 4),
(31, 'pluma hidráulica', '4', '', 3),
(32, 'caballete para coches', '10', '', 3),
(33, 'multimetro digital', '11', '', 4),
(34, 'escáner para coches', '2', '', 4),
(35, 'pistola de impacto', '8', '', 4),
(36, 'atornilladores', '4', '', 4),
(37, 'lijadora electrica', '7', '', 4),
(38, 'alicates de corte', '8', '', 5),
(39, 'alicate universal', '7', '', 5),
(40, 'alicates de punta', '4', '', 5),
(41, 'alicates de punta plana', '7', '', 5),
(42, 'alicates de punta redonda', '4', '', 5),
(43, 'alicates de punta curva', '7', '', 5),
(44, 'alicates ajustables', '6', '', 5),
(45, 'alicates de crimpar', '5', '', 5),
(46, 'alicates de presión', '4', '', 5),
(47, 'tenaza de encofrador', '4', '', 6),
(48, 'tenaza de carpintero', '7', '', 6),
(49, 'tenaza de alicatado', '6', '', 6),
(50, 'tenazas de sujeción', '12', '', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `cod_Rol` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`cod_Rol`, `Descripcion`) VALUES
(1, 'Administrador'),
(2, 'Usuario'),
(3, 'Almacenador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo_Electronico` varchar(100) NOT NULL,
  `Usuario` varchar(100) NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `id_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_Usuario`, `Nombre`, `Correo_Electronico`, `Usuario`, `Contraseña`, `Telefono`, `id_Rol`) VALUES
(1, '', '', 'gg', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', '', 1),
(2, '', '', 'xd', '3043aa4a83b0934982956a90828140cb834869135b5f294938865de12e036de440a330e1e8529bec15ddd59f18d1161a97bfec110d2622680f2c714a737d7061', '', 2),
(3, 'cd', 'cd@gmail.com', 'cd', '8ea15870987d34972ee28de0e6b8ad0217970d473bb0414911753e8a1101cec81ba9f6b0db7fec16b2d0b9cd4c91337896ebdaa033b47955f620834761415c44', '4494975649', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`cod_Herramienta`),
  ADD KEY `Tipo` (`Tipo_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`cod_Rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `id_Rol` (`id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `catalogos`
--
ALTER TABLE `catalogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `cod_Herramienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `cod_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`Tipo_id`) REFERENCES `catalogos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`cod_Rol`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
