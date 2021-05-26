-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2021 a las 22:48:54
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tlax`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `Id_Alquiler` int(11) NOT NULL,
  `Id_Contrato` int(11) NOT NULL,
  `Fecha_Alquiler` datetime NOT NULL,
  `Fecha_inicio` datetime NOT NULL,
  `Fecha_Fin` datetime NOT NULL,
  `Estado` varchar(80) NOT NULL,
  `Nombre_Alquiler` varchar(50) NOT NULL,
  `mes` date NOT NULL,
  `Mensualidad_Inmueble` float NOT NULL,
  `Total_renta` float NOT NULL,
  `Id_Inquilino` int(11) NOT NULL,
  `Id_Inmueble` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `Id_Contrato` int(11) NOT NULL,
  `Identificador_Inquilino` varchar(50) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Estado_Mensual` double NOT NULL,
  `Fecha_Contrato` date NOT NULL,
  `Mensualidad_Inmueble` double NOT NULL,
  `Documentos` varchar(100) NOT NULL,
  `Deposito` double NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Id_Inmueble` int(11) NOT NULL,
  `Usuario` varchar(60) NOT NULL,
  `Id_Inquilino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `costos`
--

CREATE TABLE `costos` (
  `Id_Costos` int(11) NOT NULL,
  `Id_Inmueble` int(11) NOT NULL,
  `Monto` double NOT NULL,
  `Concepto` varchar(100) NOT NULL,
  `Factura` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `Id_Inmueble` int(11) NOT NULL,
  `Nombre_habitacion` varchar(60) NOT NULL,
  `Num_Inmueble` int(11) NOT NULL,
  `Tipo_Inmueble` varchar(60) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Caracteristicas` varchar(60) NOT NULL,
  `Mensualidad_Inmueble` varchar(80) NOT NULL,
  `Servicios` varchar(60) NOT NULL,
  `Estado` varchar(60) NOT NULL,
  `Foto_inmueble` blob NOT NULL,
  `Id_Propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inquilinos`
--

CREATE TABLE `inquilinos` (
  `Id_Inquilino` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Ap_Paterno` varchar(50) NOT NULL,
  `Ap_materno` varchar(50) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Sexo` enum('F','M','O') NOT NULL,
  `Alquiler_Max` double NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `correo` varchar(123) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(200) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `correo`, `usuario`, `clave`) VALUES
(1, 'jcsanti@gmail.com', 'root', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `Id_Pagos` int(11) NOT NULL,
  `Id_Alquiler` int(11) NOT NULL,
  `Fecha_mensualidad` date NOT NULL,
  `Mensualidad_inmueble` double NOT NULL,
  `Estado` varchar(100) NOT NULL,
  `Nombre_Inquilino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `Id_Propietario` int(11) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Ap_Paterno` varchar(60) NOT NULL,
  `Ap_materno` varchar(60) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Sexo` enum('F','M','O') NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicacion`
--

CREATE TABLE `publicacion` (
  `Id_Publicacion` int(11) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  `Id_Inmueble` int(11) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Fecha_Publicacion` date NOT NULL,
  `Id_Propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`Id_Alquiler`),
  ADD KEY `Alquiler-Contrato` (`Id_Contrato`),
  ADD KEY `Alquiler-Inquilino` (`Id_Inquilino`),
  ADD KEY `Alquiler-Inmuebles` (`Id_Inmueble`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`Id_Contrato`),
  ADD KEY `Contrato-Inmueble` (`Id_Inmueble`),
  ADD KEY `Contrato-Inquilino` (`Id_Inquilino`);

--
-- Indices de la tabla `costos`
--
ALTER TABLE `costos`
  ADD PRIMARY KEY (`Id_Costos`),
  ADD KEY `Costos-Inmuebles` (`Id_Inmueble`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`Id_Inmueble`),
  ADD KEY `Imueble-Propietario` (`Id_Propietario`);

--
-- Indices de la tabla `inquilinos`
--
ALTER TABLE `inquilinos`
  ADD PRIMARY KEY (`Id_Inquilino`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`Id_Pagos`),
  ADD KEY `Pagos-Alquiler` (`Id_Alquiler`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`Id_Propietario`);

--
-- Indices de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD PRIMARY KEY (`Id_Publicacion`),
  ADD KEY `Publicaciones-Propietario` (`Id_Propietario`),
  ADD KEY `Publicacion-Inmueble` (`Id_Inmueble`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `Id_Alquiler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2347;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `Id_Contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `Id_Inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `inquilinos`
--
ALTER TABLE `inquilinos`
  MODIFY `Id_Inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `Id_Propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `Id_Publicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `Alquiler-Contrato` FOREIGN KEY (`Id_Contrato`) REFERENCES `contrato` (`Id_Contrato`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Alquiler-Inmuebles` FOREIGN KEY (`Id_Inmueble`) REFERENCES `inmueble` (`Id_Inmueble`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Alquiler-Inquilino` FOREIGN KEY (`Id_Inquilino`) REFERENCES `inquilinos` (`Id_Inquilino`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `Contrato-Inmueble` FOREIGN KEY (`Id_Inmueble`) REFERENCES `inmueble` (`Id_Inmueble`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Contrato-Inquilino` FOREIGN KEY (`Id_Inquilino`) REFERENCES `inquilinos` (`Id_Inquilino`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `costos`
--
ALTER TABLE `costos`
  ADD CONSTRAINT `Costos-Inmuebles` FOREIGN KEY (`Id_Inmueble`) REFERENCES `inmueble` (`Id_Inmueble`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD CONSTRAINT `Imueble-Propietario` FOREIGN KEY (`Id_Propietario`) REFERENCES `propietario` (`Id_Propietario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `Pagos-Alquiler` FOREIGN KEY (`Id_Alquiler`) REFERENCES `alquiler` (`Id_Alquiler`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `publicacion`
--
ALTER TABLE `publicacion`
  ADD CONSTRAINT `Publicacion-Inmueble` FOREIGN KEY (`Id_Inmueble`) REFERENCES `inmueble` (`Id_Inmueble`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Publicaciones-Propietario` FOREIGN KEY (`Id_Propietario`) REFERENCES `propietario` (`Id_Propietario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
