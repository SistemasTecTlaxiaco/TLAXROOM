-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2021 a las 08:27:34
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

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

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`Id_Alquiler`, `Id_Contrato`, `Fecha_Alquiler`, `Fecha_inicio`, `Fecha_Fin`, `Estado`, `Nombre_Alquiler`, `mes`, `Mensualidad_Inmueble`, `Total_renta`, `Id_Inquilino`, `Id_Inmueble`) VALUES
(12, 34, '2021-05-26 00:36:58', '2021-05-26 00:36:58', '2021-05-26 00:36:58', '', 'Saul', '2021-05-05', 2400, 2700, 67, 124678),
(45, 23, '2021-05-26 00:38:17', '2021-05-26 00:38:17', '2021-05-26 00:38:17', '', 'Juan', '2021-06-03', 1900, 2000, 78, 234567);

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
  `Alquiler_Max` double NOT NULL,
  `Profesion` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `inquilinos`
--

INSERT INTO `inquilinos` (`Id_Inquilino`, `Nombre`, `Ap_Paterno`, `Ap_materno`, `Telefono`, `Sexo`, `Alquiler_Max`, `Profesion`, `email`, `Usuario`, `Password`) VALUES
(67, 'Pedro', 'Cruz', 'Santos ', '9531146769', 'M', 2, 'Comerciante ', 'cruz34ty@gmail.com', 'Pedrocs', 'Cruz45gt67'),
(78, 'Yazmin', 'Avendano', 'Lopez', '9531456789', 'F', 1, 'Estudiante ', 'yas45@gmail.com', 'Yazminr', 'yazmin67u89'),
(456, 'ALEX', 'Aguilar ', 'Santiago', '551456789', 'M', 2, 'Estudiante ', 'alex456@gmail.com', 'Alex', 'Alex4567');

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
(3, 'Juansah56@gmail.com', 'juan', '6dd9112776dfecb212744c28560276bf2a8cf65ba4e7e3e9bc3328e3cbf6d06f43b02b570f5b8aaa3bacf528edcd5e6c4365d63101dd5ebfb177d263dfb8dad2'),
(2, 'jaimereyesbarios385@gmail.com', 'jaime', 'd404559f602eab6fd602ac7680dacbfaadd13630335e951f097af3900e9de176b6db28512f2e000b9d04fba5133e8b1c6e8df59db3a8ab9d60be4b97cc9e81db'),
(4, 'Edit453@gmail.com', 'Reyes', '4af7a982f850eff53e1287fab34f967c9180909693999ac4c20f68482ac21df88c259999ddc2731b5ba773a0b3eedead05b4f2d8b054fd47890c04b0a2f2866c'),
(5, 'saul897@gmail.com', 'Saulzx', '17ad794d0e6508c20180d8efdf8111b1c1178faceac21ac57106e328d7c9e204bf1c85ef933c4ba17c8d84d88c5ee6ca38a57d1d9ab1617a7a8a234df45c7a0b');

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
  MODIFY `Id_Inmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234568;

--
-- AUTO_INCREMENT de la tabla `inquilinos`
--
ALTER TABLE `inquilinos`
  MODIFY `Id_Inquilino` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
