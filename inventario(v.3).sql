-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 20-10-2023 a las 02:21:16
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pipipiip`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `id_Articulo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `costo` double NOT NULL,
  `precio_mayoreo` double NOT NULL,
  `existencia_Almacen` int(50) NOT NULL,
  `existencia_PisoVenta` int(50) NOT NULL,
  `tipo_articulo_id_TipoArticulo` int(11) NOT NULL,
  `proveedor_id_Provedor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_Provedor` int(10) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `callle` varchar(60) NOT NULL,
  `colonia` varchar(60) NOT NULL,
  `estado` varchar(60) NOT NULL,
  `ciudad` varchar(60) NOT NULL,
  `municipio` varchar(60) NOT NULL,
  `codigo_postal` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_Provedor`, `nombre`, `callle`, `colonia`, `estado`, `ciudad`, `municipio`, `codigo_postal`) VALUES
(1, 'Luis Arriaga', 'Perseo', 'Cruz del Sur', 'Aguascalientes', 'Aguscalientes', 'Aguscalientes', '20015'),
(2, 'Angel Contreras', 'Juarez', 'Del Carmen', 'Aguascalientes', 'Aguascalientes', 'Aguascalientes', '25510'),
(3, 'Carmen Torres', 'Amsterdam', 'Tlatelolco', 'Estado de Mexico', 'Cuidad de Mexico', 'Mexico', '01000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_articulo`
--

CREATE TABLE `tipo_articulo` (
  `id_TipoArticulo` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_articulo`
--

INSERT INTO `tipo_articulo` (`id_TipoArticulo`, `descripcion`) VALUES
(1, 'destornilladores'),
(2, 'Alicates y tenazas.'),
(3, 'Cinceles, berbiquíes y barrenas'),
(4, 'Llaves');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_completo` varchar(45) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `contraseña` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_completo`, `correo_electronico`, `contraseña`) VALUES
(1, 'Angela Camila Luna', 'angelacamila@gmail.com', '123456'),
(2, 'Arely Karina ', 'KarinaJuarez@gmail.com', '987654');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id_Articulo`,`tipo_articulo_id_TipoArticulo`,`proveedor_id_Provedor`),
  ADD KEY `fk_articulo_tipo_articulo_idx` (`tipo_articulo_id_TipoArticulo`),
  ADD KEY `fk_articulo_proveedor1_idx` (`proveedor_id_Provedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_Provedor`);

--
-- Indices de la tabla `tipo_articulo`
--
ALTER TABLE `tipo_articulo`
  ADD PRIMARY KEY (`id_TipoArticulo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `id_Articulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_Provedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_articulo`
--
ALTER TABLE `tipo_articulo`
  MODIFY `id_TipoArticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_proveedor1` FOREIGN KEY (`proveedor_id_Provedor`) REFERENCES `proveedor` (`id_Provedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_articulo_tipo_articulo` FOREIGN KEY (`tipo_articulo_id_TipoArticulo`) REFERENCES `tipo_articulo` (`id_TipoArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
