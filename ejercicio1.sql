-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2014 a las 05:08:16
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejercicio1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_alumno`
--

CREATE TABLE IF NOT EXISTS `asignar_alumno` (
`id` int(11) NOT NULL,
  `idg` int(11) DEFAULT NULL,
  `idua` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `asignar_alumno`
--

INSERT INTO `asignar_alumno` (`id`, `idg`, `idua`) VALUES
(4, 2, 7),
(13, 3, 12),
(14, 3, 15),
(19, 1, 15),
(20, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_grupo`
--

CREATE TABLE IF NOT EXISTS `asignar_grupo` (
`id` int(11) NOT NULL,
  `idg` int(11) DEFAULT NULL,
  `idam` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `asignar_grupo`
--

INSERT INTO `asignar_grupo` (`id`, `idg`, `idam`) VALUES
(8, 1, 54),
(9, 1, 52),
(10, 2, 53),
(11, 3, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_materia`
--

CREATE TABLE IF NOT EXISTS `asignar_materia` (
`id` int(11) NOT NULL,
  `idm` int(11) DEFAULT NULL,
  `idma` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Volcado de datos para la tabla `asignar_materia`
--

INSERT INTO `asignar_materia` (`id`, `idm`, `idma`) VALUES
(16, 10, 1),
(35, 2, 1),
(37, 4, 1),
(38, 4, 2),
(51, 2, 2),
(52, 3, 1),
(53, 3, 5),
(54, 3, 3),
(55, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE IF NOT EXISTS `grupo` (
`id` int(5) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `orden` int(3) NOT NULL,
  `estatus` int(2) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id`, `nombre`, `avatar`, `orden`, `estatus`) VALUES
(1, 'TIC 71', 'T71', 1, 1),
(2, 'TIC 72', 'T72', 1, 1),
(3, 'TIC 73', 'T73', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
`id` int(11) NOT NULL,
  `Nombre` varchar(250) NOT NULL,
  `Avatar` varchar(250) NOT NULL,
  `Orden` int(11) NOT NULL,
  `Estatus` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `Nombre`, `Avatar`, `Orden`, `Estatus`) VALUES
(1, 'Matematicas para TI', 'MTI', 1, 2),
(2, 'Ingeniería Económica', 'IE', 1, 2),
(3, 'Optativa', 'OP', 1, 2),
(4, 'Desarrollo de aplicaciones', 'DA', 1, 1),
(5, 'Inglés VI', 'IVI', 1, 2),
(6, 'Administración del tiempo', 'AT', 1, 1),
(7, 'Modelado Procesos de Negocios', 'MPN', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
`id` int(11) NOT NULL,
  `idp` int(11) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `n` int(2) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `idp`, `nombre`, `n`) VALUES
(1, 1, 'Servidor', 1),
(2, 1, 'Cliente (ordenador propio)', 2),
(3, 2, '< ? y ? >', 1),
(4, 2, '< php >< /php >', 2),
(5, 2, '<# y #>', 3),
(6, 3, 'name', 1),
(7, 3, 'file', 2),
(8, 3, 'action', 3),
(9, 3, 'description', 4),
(11, 4, 'if (a=0) print a', 1),
(12, 4, 'if (a==0) echo “hola mundo”;', 2),
(13, 4, 'if (a==0) { echo ok }', 3),
(14, 4, 'if (a==0): print a;', 4),
(15, 5, 'print < strong >Hola Mundo < /strong>;', 1),
(16, 5, 'print (< strong>Hola Mundo< /strong>);', 2),
(17, 5, 'print ("< strong>Hola Mundo < /strong>");', 3),
(18, 6, 'Require e Include', 1),
(19, 6, 'Get y Put', 2),
(20, 6, 'Post y Get', 3),
(21, 6, 'Into e Include', 4),
(22, 7, 'mysql_query', 1),
(23, 7, 'mysql_access', 2),
(24, 7, 'mysql_db_access', 3),
(25, 8, 'Un conjunto de caracteres alfanuméricos', 1),
(26, 8, 'Un sistema para convertir una variable de texto en un número', 2),
(27, 8, 'Un conjunto de elementos', 3),
(28, 9, 'char str;', 1),
(29, 9, 'string str;', 2),
(30, 9, 'En PHP no se define el tipo de las variables explícitamente', 3),
(31, 10, '"12"', 1),
(32, 10, '12', 2),
(33, 10, '"102"', 3),
(34, 10, 'Ninguno (no se puede sumar un número a una cadena)', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE IF NOT EXISTS `preguntas` (
`id` int(11) NOT NULL,
  `pregunta` varchar(500) DEFAULT NULL,
  `respuesta` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `respuesta`) VALUES
(1, '¿En qué lugar se ejecuta el código PHP?', '1'),
(2, '¿Cuáles de estas son marcas para la inserción del código PHP en las páginas HTML?', '1'),
(3, '¿En qué atributo de un formulario especificamos la página a la que se van a enviar los datos del mismo?', '3'),
(4, '¿Cuál de estas instrucciones está correctamente escrita en PHP?', '2'),
(5, '¿Cuál de estas instrucciones PHP imprimirá por pantalla correctamente el mensaje “Hola Mundo” en letra negrita?', '3'),
(6, 'Dos de las formas de pasar los parámetros entre páginas PHP son:', '3'),
(7, '¿Cuál de estas instrucciones se utiliza para realizar una consulta a una base de datos MySQL?', '1'),
(8, 'Un array es...', '3'),
(9, '¿Cómo se define una variable de tipo string en PHP?', '3'),
(10, 'Tenemos el siguiente código: $a=”10”; $b=$a + 2; ¿Cuál será el valor de $b?', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultexamen`
--

CREATE TABLE IF NOT EXISTS `resultexamen` (
`id` int(11) NOT NULL,
  `ida` int(11) DEFAULT NULL,
  `aciertos` varchar(200) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `resultexamen`
--

INSERT INTO `resultexamen` (`id`, `ida`, `aciertos`) VALUES
(1, 15, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
`id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `ApellidoPaterno` varchar(50) NOT NULL,
  `ApellidoMaterno` varchar(50) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Calle` varchar(200) NOT NULL,
  `NumExt` int(11) NOT NULL,
  `NumInt` int(11) NOT NULL,
  `Colonia` varchar(200) NOT NULL,
  `Municipio` varchar(200) NOT NULL,
  `Estado` varchar(200) NOT NULL,
  `CP` int(11) NOT NULL,
  `Correo` varchar(200) NOT NULL,
  `Usuario` varchar(200) NOT NULL,
  `Contrasena` varchar(200) NOT NULL,
  `Nivel` varchar(200) NOT NULL,
  `Estatus` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `Nombre`, `ApellidoPaterno`, `ApellidoMaterno`, `Telefono`, `Calle`, `NumExt`, `NumInt`, `Colonia`, `Municipio`, `Estado`, `CP`, `Correo`, `Usuario`, `Contrasena`, `Nivel`, `Estatus`) VALUES
(1, 'Omar', 'Garcia', 'apellidom', 0, '', 0, 0, '', '', '', 0, '', 'ogarcia', '12345', '1', '1'),
(2, 'Ramón', 'Perez', 'solis', 2147483647, 'Independencia', 45, 66, 'Lerdo', 'Toluca', 'México', 50763, 'rampe@hotmail.com', 'rperez', '12345', '2', '1'),
(3, 'Raul', 'Garcia', 'Mondragon', 0, '', 0, 0, '', '', '', 0, '', 'rgarcia', '12345', '2', '1'),
(4, 'Adan', 'Patricio', 'Bernal', 2147483647, 'Tierra Blanca', 5, 6, 'Santa Cruz', 'Jiquipilco', 'México', 50823, 'adan_utvt@hotmail.com', 'apatricio', '12345', '2', '1'),
(6, 'Omar', 'Garduño', 'Estrado', 0, '', 0, 0, '', '', '', 0, '', 'ogarduño', '12345', '3', '1'),
(7, 'Jose', 'Limón', 'González', 0, '', 0, 0, '', '', '', 0, '', 'jlimon', '12345', '3', '1'),
(8, 'Eduardo', 'Sanchez', 'González', 0, '', 0, 0, '', '', '', 0, '', 'esanchez', '12345', '3', '1'),
(9, 'Miguel', 'Florentino', 'Campos', 0, '', 0, 0, '', '', '', 0, '', 'mcampos', '12345', '2', '1'),
(10, 'Jair', 'Eduardo', 'Monrroy', 0, '', 0, 0, '', '', '', 0, '', 'jeduardo', '12345', '2', '1'),
(12, 'Miguel Anguel', 'Gonzalez', 'Gonzalez', 0, '', 0, 0, '', '', '', 0, '', 'mgonzalez', '12345', '3', '1'),
(13, 'Ruben', 'Gamboa', 'Castillo', 0, '', 0, 0, '', '', '', 0, '', 'rgamboa', '12345', '3', '1'),
(14, 'Axcel', 'Garcia', 'Ramirez', 0, '', 0, 0, '', '', '', 0, '', 'agarcia', '12345', '3', '1'),
(15, 'Adberto ', 'Paz', 'Osorio', 0, '', 0, 0, '', '', '', 0, '', 'apaz', '12345', '3', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignar_alumno`
--
ALTER TABLE `asignar_alumno`
 ADD PRIMARY KEY (`id`), ADD KEY `idg` (`idg`), ADD KEY `idua` (`idua`);

--
-- Indices de la tabla `asignar_grupo`
--
ALTER TABLE `asignar_grupo`
 ADD PRIMARY KEY (`id`), ADD KEY `idg` (`idg`), ADD KEY `idam` (`idam`);

--
-- Indices de la tabla `asignar_materia`
--
ALTER TABLE `asignar_materia`
 ADD PRIMARY KEY (`id`), ADD KEY `idm` (`idm`), ADD KEY `idma` (`idma`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`id`), ADD KEY `idp` (`idp`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resultexamen`
--
ALTER TABLE `resultexamen`
 ADD PRIMARY KEY (`id`), ADD KEY `ida` (`ida`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignar_alumno`
--
ALTER TABLE `asignar_alumno`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `asignar_grupo`
--
ALTER TABLE `asignar_grupo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `asignar_materia`
--
ALTER TABLE `asignar_materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `resultexamen`
--
ALTER TABLE `resultexamen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignar_alumno`
--
ALTER TABLE `asignar_alumno`
ADD CONSTRAINT `asignar_alumno_ibfk_1` FOREIGN KEY (`idg`) REFERENCES `grupo` (`id`),
ADD CONSTRAINT `asignar_alumno_ibfk_2` FOREIGN KEY (`idua`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `asignar_grupo`
--
ALTER TABLE `asignar_grupo`
ADD CONSTRAINT `asignar_grupo_ibfk_1` FOREIGN KEY (`idg`) REFERENCES `grupo` (`id`),
ADD CONSTRAINT `asignar_grupo_ibfk_2` FOREIGN KEY (`idam`) REFERENCES `asignar_materia` (`id`);

--
-- Filtros para la tabla `asignar_materia`
--
ALTER TABLE `asignar_materia`
ADD CONSTRAINT `asignar_materia_ibfk_1` FOREIGN KEY (`idm`) REFERENCES `usuario` (`id`),
ADD CONSTRAINT `asignar_materia_ibfk_2` FOREIGN KEY (`idma`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `opciones`
--
ALTER TABLE `opciones`
ADD CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`idp`) REFERENCES `preguntas` (`id`);

--
-- Filtros para la tabla `resultexamen`
--
ALTER TABLE `resultexamen`
ADD CONSTRAINT `resultexamen_ibfk_1` FOREIGN KEY (`ida`) REFERENCES `usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
