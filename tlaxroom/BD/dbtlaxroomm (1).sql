-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 07-07-2021 a las 03:11:00
-- Versión del servidor: 10.4.18-MariaDB-log
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtlaxroomm`
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

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`Id_Alquiler`, `Id_Contrato`, `Fecha_Alquiler`, `Fecha_inicio`, `Fecha_Fin`, `Estado`, `Nombre_Alquiler`, `mes`, `Mensualidad_Inmueble`, `Total_renta`, `Id_Inquilino`, `Id_Inmueble`) VALUES
(12, 34, '2021-05-26 00:36:58', '2021-05-26 00:36:58', '2021-05-26 00:36:58', '1', 'Saul', '2021-05-05', 2400, 2700, 67, 124678),
(45, 23, '2021-05-26 00:38:17', '2021-05-26 00:38:17', '2021-05-26 00:38:17', '1', 'Juan', '2021-06-03', 1900, 2000, 78, 234567);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(11) NOT NULL,
  `rfc` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `razon` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `rfc`, `nombre`, `telefono`, `direccion`, `razon`) VALUES
(1, '1234559', 'Tlaxroom', '9531109135', 'Heroica Ciudad de Tlaxiaco', '');

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

--
-- Volcado de datos para la tabla `contrato`
--

INSERT INTO `contrato` (`Id_Contrato`, `Identificador_Inquilino`, `Descripcion`, `Estado_Mensual`, `Fecha_Contrato`, `Mensualidad_Inmueble`, `Documentos`, `Deposito`, `Estado`, `Id_Inmueble`, `Usuario`, `Id_Inquilino`) VALUES
(23, '123', '', 1245, '2021-05-04', 1300, '', 1480, '', 234567, 'itzel', 78),
(34, '23', '', 1390, '2021-05-06', 200, '', 1200, 'en excelente estado', 124678, 'Juan', 67);

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

--
-- Volcado de datos para la tabla `costos`
--

INSERT INTO `costos` (`Id_Costos`, `Id_Inmueble`, `Monto`, `Concepto`, `Factura`) VALUES
(145, 124678, 1200, 'Renta de habitacion', ''),
(160, 234567, 1800, 'Renta mensual de una habitación ', '');

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

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`Id_Inmueble`, `Nombre_habitacion`, `Num_Inmueble`, `Tipo_Inmueble`, `Descripcion`, `Direccion`, `Caracteristicas`, `Mensualidad_Inmueble`, `Servicios`, `Estado`, `Foto_inmueble`, `Id_Propietario`) VALUES
(124678, 'H23L', 145, 'cuartos', 'Disponible', 'lindavista', 'cuarto limpio y seguro', '$1800', 'Telefono,Banos,Internet,Agua ', 'cuarto amueblado en buenas condiciones ', '', 3),
(234567, 'HabitacionF', 67, 'Cuartos', 'cuartos amueblados en buen estado', 'Benito juearez12', 'cuarto limpio y seguro', '$1200', 'Telefono,Banos,Internet,Agua y luz', 'en excelente estado', '', 1);

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
  `Profesion` varchar(50) NOT NULL,
  `Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inquilinos`
--

INSERT INTO `inquilinos` (`Id_Inquilino`, `Nombre`, `Ap_Paterno`, `Ap_materno`, `Telefono`, `Sexo`, `Profesion`, `Estado`) VALUES
(67, 'Pedro', 'Cruz', 'Santos ', '9531146769', 'M', 'Comerciante ', 1),
(78, 'Yazmin', 'Avendano', 'Lopez', '9531456789', 'F', 'Estudiante ', 1),
(456, 'ALEX', 'Aguilar ', 'Santiago', '551456789', 'M', 'Estudiante ', 1),
(458, 'EDITH', 'REYES', 'SANCHEZ', '9531109135', 'M', 'Estudiante', 1);

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
  `Nombre_Inquilino` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`Id_Pagos`, `Id_Alquiler`, `Fecha_mensualidad`, `Mensualidad_inmueble`, `Estado`, `Nombre_Inquilino`) VALUES
(123, 12, '2021-05-04', 1200, '', 'Juan'),
(156, 45, '2021-05-14', 1300, '', 'Alex');

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

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`Id_Propietario`, `Nombre`, `Ap_Paterno`, `Ap_materno`, `Telefono`, `Sexo`, `Direccion`, `Profesion`, `Email`, `Usuario`, `Password`) VALUES
(1, 'Pedro', 'Solano', 'Suarez', '9531146779', 'M', 'Benito juearez12', 'ingeniero', 'pedros234@gmail.com', 'Pedro', 'Pedro123'),
(3, 'Itzel', 'Ramos', 'Rojas', '9567891234', 'F', 'lindavista', 'licenciada', 'itzel564gt@gmail.com', 'itzel', 'ramos123RY'),
(4, 'Ramon', 'Villa', 'Lopez', '551456789', 'M', 'peru23', 'ingeniero', 'lopez67@gmail.com', 'Ramon23', 'RAM789zty');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `correo`, `clave`, `rol`, `estado`) VALUES
(1, 'admin', 'admin', 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Administrador', 1),
(2, 'edith', 'edith', 'edith@gmail.com', '3b4bb6dc4b5cd4785cede954ed18246fee7429e8cb77e2179e632a2651b52f52', 'Vendedor', 0),
(4, 'prueba', 'prueba', 'rey@gmail.com', '655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b', 'Administrador', 1),
(5, 'Carlos', 'carlos', 'carlos@gmail.com', '7b85175b455060e3237e925f023053ca9515e8682a83c8b09911c724a1f8b75f', 'Administrador', 1);

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
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `Id_Alquiler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2347;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `Id_Contrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `Id_Inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234568;

--
-- AUTO_INCREMENT de la tabla `inquilinos`
--
ALTER TABLE `inquilinos`
  MODIFY `Id_Inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=459;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `Id_Propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `publicacion`
--
ALTER TABLE `publicacion`
  MODIFY `Id_Publicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
