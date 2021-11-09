-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2021 a las 14:08:06
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sharktech`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `alumno` varchar(40) NOT NULL,
  `cialumno` int(10) NOT NULL,
  `grupo` varchar(40) NOT NULL,
  `telefono` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`alumno`, `cialumno`, `grupo`, `telefono`, `id`) VALUES
('George Perez', 12345675, '1BE', 99215644, 1),
('Castillo Peruano', 57602742, '3BA', 94652743, 7),
('Daniel Rivas', 51876434, '2BG', 91339425, 8),
('Hugo Garia', 57685941, '1BA', 98475822, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratoristas`
--

CREATE TABLE `laboratoristas` (
  `id` int(10) NOT NULL,
  `nombrelab` varchar(40) NOT NULL,
  `cilab` int(10) NOT NULL,
  `turno` varchar(40) NOT NULL,
  `fechain` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `laboratoristas`
--

INSERT INTO `laboratoristas` (`id`, `nombrelab`, `cilab`, `turno`, `fechain`) VALUES
(1, 'Juan Pedro Ramón', 51849581, 'Vespertino', '2021-10-30'),
(5, 'Joaquin Jorge', 56543243, 'Nocturno', '2021-10-26'),
(6, 'Mercedes ', 111111, 'Matutino', '2021-03-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `nombre` varchar(40) NOT NULL,
  `numserie` varchar(60) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`nombre`, `numserie`, `estado`, `id`) VALUES
('Clamshell', 'B2981GH98', 'Roto', 22),
('USB 16gb', 'CRTD65DRT', 'Roto', 23),
('Mouse', '', 'Sano', 24),
('Impresora 3D', 'No tiene', 'Sano', 25),
('Impresora Laser', 'BAH525', 'Irreparable', 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `cialumno` int(10) NOT NULL,
  `recurso` varchar(40) NOT NULL,
  `plazo` date NOT NULL,
  `fechadevo` date NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`cialumno`, `recurso`, `plazo`, `fechadevo`, `id`) VALUES
(52847511, 'Cargador', '2021-10-08', '2022-10-10', 1),
(57286955, 'Clamshell', '2021-10-20', '2021-10-23', 2),
(45727182, 'Clamshell', '2021-10-22', '2021-10-22', 6),
(53426542, 'Mouse', '2021-10-26', '2021-10-30', 8),
(1234567, 'Mouse', '2021-10-27', '2021-10-28', 9),
(51876494, 'Impresora 3D', '2021-10-26', '2021-10-31', 10),
(51876492, 'USB 16gb', '2021-10-22', '2021-10-28', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `contraseña`) VALUES
(1, 'Joaquin', '123');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cialumno` (`cialumno`);

--
-- Indices de la tabla `laboratoristas`
--
ALTER TABLE `laboratoristas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cilab` (`cilab`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `laboratoristas`
--
ALTER TABLE `laboratoristas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
