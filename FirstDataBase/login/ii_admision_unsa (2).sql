-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-07-2017 a las 18:43:28
-- Versión del servidor: 10.1.24-MariaDB
-- Versión de PHP: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ii_admision_unsa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Area`
--

CREATE TABLE `Area` (
  `idArea` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(45) DEFAULT NULL,
  `Habilitada` tinyint(1) DEFAULT NULL,
  `Integrantes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Area`
--

INSERT INTO `Area` (`idArea`, `Nombre`, `Ubicacion`, `Habilitada`, `Integrantes`) VALUES
(0, NULL, NULL, NULL, NULL),
(1, 'Sociales', 'Estadio', 1, 152),
(2, 'Ingenierias', 'Independencia', 1, 126),
(3, 'Biomedicas', 'Pampilla', 1, 135);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Area&Cargo_Proceso`
--

CREATE TABLE `Area&Cargo_Proceso` (
  `idArea&Cargo_Proceso` int(11) NOT NULL,
  `Cupos` int(10) UNSIGNED DEFAULT NULL,
  `Cant_seleccionados` int(10) UNSIGNED DEFAULT NULL,
  `idCargo_Proceso` int(11) NOT NULL,
  `idArea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Area&Cargo_Proceso`
--

INSERT INTO `Area&Cargo_Proceso` (`idArea&Cargo_Proceso`, `Cupos`, `Cant_seleccionados`, `idCargo_Proceso`, `idArea`) VALUES
(1001, 25, 4, 1, 1),
(1002, 25, 5, 2, 2),
(1003, 25, 6, 3, 3),
(1004, 25, 9, 4, 2),
(1005, 25, 7, 5, 1),
(1006, 25, 8, 6, 3),
(1007, 25, 6, 7, 2),
(1008, 25, 3, 8, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo_Proceso`
--

CREATE TABLE `Cargo_Proceso` (
  `idCargo_Proceso` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Cargo_Proceso`
--

INSERT INTO `Cargo_Proceso` (`idCargo_Proceso`, `Nombre`, `Vigente`) VALUES
(1, 'Formulador', 1),
(2, 'Controlador', 1),
(3, 'Jardinero', 0),
(4, 'Tecnico', 1),
(5, 'Contador', 1),
(6, 'Conserje', 1),
(7, 'Portero', 1),
(8, 'Controlador de puerta', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo_UNSA`
--

CREATE TABLE `Cargo_UNSA` (
  `idCargo_UNSA` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Cargo_UNSA`
--

INSERT INTO `Cargo_UNSA` (`idCargo_UNSA`, `Nombre`, `Vigente`) VALUES
(1, 'Docente', 1),
(2, 'Alumno', 1),
(3, 'Administrativo', 1),
(4, 'Magister', 0),
(5, 'Decano', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso`
--

CREATE TABLE `Curso` (
  `idCurso` int(11) NOT NULL,
  `Curricula` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Curso`
--

INSERT INTO `Curso` (`idCurso`, `Curricula`, `Nombre`) VALUES
(221343, '2003', 'Historia'),
(456122, '2013', 'Anatomia'),
(546544, '2007', 'Razonamiento Verbal'),
(564121, '2005', 'Lenguaje'),
(564654, '2012', 'Constitucion'),
(566442, '2013', 'Biologia'),
(654123, '2010', 'Literatura'),
(654312, '2011', 'Quimica'),
(654545, '2008', 'Razonamiento Logico'),
(654564, '2002', 'Matematicas'),
(654654, '2004', 'Geografia'),
(886545, '2006', 'Fisica'),
(987456, '2009', 'Psicologia'),
(987457, '2008', 'Filosofia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Curso&Area`
--

CREATE TABLE `Curso&Area` (
  `idCurso&Area` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idArea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Curso&Area`
--

INSERT INTO `Curso&Area` (`idCurso&Area`, `idCurso`, `idArea`) VALUES
(20154864, 564121, 1),
(84651231, 987456, 2),
(87645561, 654654, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Participacion`
--

CREATE TABLE `Participacion` (
  `idParticipacion` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `idParticipante&Cargos` int(11) NOT NULL,
  `Seleccionado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Participante`
--

CREATE TABLE `Participante` (
  `DNI` int(11) NOT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Dependencia/Facultad` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Regimen` varchar(45) DEFAULT NULL,
  `Estado` tinyint(1) DEFAULT NULL,
  `CUI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Participante`
--

INSERT INTO `Participante` (`DNI`, `Apellidos`, `Nombres`, `Dependencia/Facultad`, `Correo`, `Categoria`, `Regimen`, `Estado`, `CUI`) VALUES
(23431234, 'Salazar', 'Kevin', 'Ciencia de la Comunicacion', 'kst_kevin@gmail.com', 'practicante', 'Normal', 1, 20160245),
(54321641, 'Soncco', 'Carlos', 'Ciencia de la Computacion', 'carlosSl@gmail.com', 'Alumno', 'Normal', 1, 20160757),
(56431326, 'Torrez', 'Gabriel', 'Ing.Telecomunicaciones', 'gabriel_torres@gmail.com', '5to Anio', 'Normal', 1, 54212312),
(65412312, 'Neyra', 'Dereck', 'Trabajo Social', 'neyraimport@gmail.com', 'Alumno', 'Normal', 1, 21456532),
(68465132, 'Laquise', 'Juan', 'Enfermeria', 'juan_L@gmail.com', 'Docente', 'Normal', 1, 54789621),
(74652132, 'Moroco ', 'Felix', 'Ingenieria Civil', 'felixks@gmail.com', 'Nombrado', 'Normal', 1, 23165478),
(89465456, 'Villanueva', 'Fernando', 'Medicina', 'villa_fer@gmail.com', 'Docente', 'Normal', 1, 65321456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Participante&Cargos`
--

CREATE TABLE `Participante&Cargos` (
  `idParticipante&Cargos` int(11) NOT NULL,
  `DNI` int(11) DEFAULT NULL,
  `idCargo_Proceso` int(11) NOT NULL,
  `idCargo_UNSA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Participante&Cargos`
--

INSERT INTO `Participante&Cargos` (`idParticipante&Cargos`, `DNI`, `idCargo_Proceso`, `idCargo_UNSA`) VALUES
(100001, 68465132, 5, 1),
(100002, 74652132, 1, 1),
(100003, 65412312, 7, 3),
(100004, 23431234, 4, 1),
(100005, 89465456, 1, 1),
(100006, 54321641, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permisos`
--

CREATE TABLE `Permisos` (
  `idPermisos` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Permisos`
--

INSERT INTO `Permisos` (`idPermisos`, `Descripcion`, `Valor`) VALUES
(1, 'Visualizar', 1),
(2, 'Modificar', 2),
(3, 'Registrar', 3),
(4, 'Crear', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pregunta`
--

CREATE TABLE `Pregunta` (
  `idPregunta` int(11) NOT NULL,
  `Elegida` tinyint(1) DEFAULT NULL,
  `Dificultad` varchar(45) DEFAULT NULL,
  `Enunciado` varchar(45) DEFAULT NULL,
  `Distractor_A` varchar(45) DEFAULT NULL,
  `Distractor_B` varchar(45) DEFAULT NULL,
  `Distractor_C` varchar(45) DEFAULT NULL,
  `Distractor_D` varchar(45) DEFAULT NULL,
  `Distractor_E` varchar(45) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `DNI` int(11) NOT NULL,
  `idProceso` int(11) NOT NULL,
  `Nombre` int(11) NOT NULL,
  `idResolucion` int(11) NOT NULL,
  `idCurso&Area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proceso`
--

CREATE TABLE `Proceso` (
  `idProceso` int(11) NOT NULL,
  `Año` int(11) DEFAULT NULL,
  `Inicio` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  `idTipo_Proceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Proceso`
--

INSERT INTO `Proceso` (`idProceso`, `Año`, `Inicio`, `Fin`, `idTipo_Proceso`) VALUES
(1, 2000, '2000-03-10 04:14:10', '2000-03-28 08:15:14', 1),
(2, 2000, '2000-07-15 04:14:10', '2000-07-30 04:14:10', 2),
(3, 2000, '2000-12-07 04:14:10', '2000-12-27 04:14:10', 3),
(4, 2001, '2001-03-09 04:14:10', '2001-03-27 04:14:10', 4),
(5, 2001, '2001-04-05 04:14:10', '2001-04-22 04:14:10', 5),
(6, 2002, '2002-03-07 04:14:10', '2001-03-28 04:14:10', 6),
(7, 2002, '2002-08-08 04:14:10', '2001-08-30 04:14:10', 7),
(8, 2002, '2001-10-22 04:14:10', '2001-11-28 04:14:10', 8),
(9, 2003, '2001-03-07 04:14:10', '2001-03-28 04:14:10', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proceso&Usuario`
--

CREATE TABLE `Proceso&Usuario` (
  `idProceso&Usuario` int(11) NOT NULL,
  `Comentario` varchar(45) DEFAULT NULL,
  `idProceso` int(11) NOT NULL,
  `Nombre` int(11) NOT NULL,
  `Actual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Resolucion`
--

CREATE TABLE `Resolucion` (
  `idResolucion` int(11) NOT NULL,
  `Alternativa_correcta` varchar(45) DEFAULT NULL,
  `Distractor_correcto` varchar(45) DEFAULT NULL,
  `Sustento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Resolucion`
--

INSERT INTO `Resolucion` (`idResolucion`, `Alternativa_correcta`, `Distractor_correcto`, `Sustento`) VALUES
(101, 'B', '18', '/html/mysql/11.jpg'),
(102, 'E', '25000-80000', '/html/mysql/22.1.jpg'),
(103, 'E', '15', '/html/mysql/33.jpg'),
(104, 'D', '100 y 20', '/html/mysql/44.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tema`
--

CREATE TABLE `Tema` (
  `idTema` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tema`
--

INSERT INTO `Tema` (`idTema`, `Nombre`) VALUES
(1000, 'Geometria_plana'),
(1001, 'Geometria del espacio'),
(1002, 'Funciones trigonometricas'),
(1003, 'Matrices'),
(1004, 'Ecuaciones'),
(1005, 'Algebra'),
(1006, 'Biologia'),
(1007, 'Celulas'),
(1008, 'Tejidos'),
(1009, 'Sistema Digestivo'),
(1010, 'Genetica'),
(1011, 'Organos'),
(1012, 'Enfermedades'),
(1013, 'Materia'),
(1014, 'Tabla Periodica'),
(1015, 'Acidos y bases'),
(1016, 'Estados de la Materia'),
(1017, 'Electroquimica'),
(1018, 'Hidrocarburos'),
(1019, 'Vectores'),
(1020, 'Dinamica'),
(1021, 'Trabajo y Energia'),
(1022, 'Temperatura'),
(1023, 'Optica Geometrica'),
(1024, 'Los Valores'),
(1025, 'Actitud Filosofica'),
(1026, 'Metodos Filosoficos'),
(1027, 'Logica Dialectica'),
(1028, 'Ciencia'),
(1029, 'Tierra y Luna'),
(1030, 'Geografia Europea'),
(1031, 'Geografia Europea'),
(1032, 'Relaciones Internacionales'),
(1035, 'Edad Media'),
(1036, 'Tiempos Modernos'),
(1037, 'Revolucion Francesa'),
(1038, 'Independencia'),
(1039, 'Civilizacion Antigua'),
(1040, 'Incas'),
(1041, 'Sociedad Colonial'),
(1042, 'Derechos Humanos'),
(1043, 'Acentos'),
(1044, 'Verbo'),
(1045, 'Adverbio'),
(1046, 'Preposicion'),
(1047, 'Signos de puntuacion'),
(1048, 'Literatura Regional'),
(1049, 'Literatura Universal'),
(1050, 'Literatura Nacional'),
(1051, 'Imaginacion'),
(1052, 'Inteligencia'),
(1053, 'Desarrollo y comportamiento'),
(1054, 'Pensamiento y lenguaje'),
(1055, 'Personalidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tema&Curso`
--

CREATE TABLE `Tema&Curso` (
  `idTema&Curso` int(11) NOT NULL,
  `Anho_inclusion` varchar(45) DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL,
  `idCurso` int(11) NOT NULL,
  `idTema` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tema&Curso`
--

INSERT INTO `Tema&Curso` (`idTema&Curso`, `Anho_inclusion`, `Vigente`, `idCurso`, `idTema`) VALUES
(1001, '2001', 1, 654564, 1000),
(1002, '2001', 1, 654564, 1001),
(1003, '2002', 1, 654564, 1002),
(1004, '2002', 1, 654564, 1003),
(1005, '2001', 1, 654564, 1004),
(1006, '2001', 1, 654564, 1005),
(10006, '2000', 1, 566442, 1006);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Proceso`
--

CREATE TABLE `Tipo_Proceso` (
  `idTipo_Proceso` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Lema` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_Proceso`
--

INSERT INTO `Tipo_Proceso` (`idTipo_Proceso`, `Nombre`, `Lema`) VALUES
(1, 'Ordinario I', 'vamos con fuerza'),
(2, 'Ordinario II', 'Sigue para adelante'),
(3, 'Cepreunsa', 'No te rindas'),
(4, 'Extraordinario', 'Tu puedes'),
(5, 'Ordinario I', 'la unsa la mejor'),
(6, 'Ordinario II', 'Resale a los santos'),
(7, 'Cepreunsa', 'vamos a mejorar'),
(8, 'Ordinario I', 'si se puede'),
(9, 'Ordinario II', 'todo sea por ingresar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Usuario`
--

CREATE TABLE `Tipo_Usuario` (
  `idTipo_Usuario` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Privilegio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_Usuario`
--

INSERT INTO `Tipo_Usuario` (`idTipo_Usuario`, `Nombre`, `Privilegio`) VALUES
(1, 'Admibistrador', '2'),
(2, 'Operador', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Usuario&Permisos`
--

CREATE TABLE `Tipo_Usuario&Permisos` (
  `idTipo_Usuario&Permisos` int(11) NOT NULL,
  `Vigente` tinyint(1) DEFAULT NULL,
  `idTipo_Usuario` int(11) NOT NULL,
  `idPermisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Tipo_Usuario&Permisos`
--

INSERT INTO `Tipo_Usuario&Permisos` (`idTipo_Usuario&Permisos`, `Vigente`, `idTipo_Usuario`, `idPermisos`) VALUES
(101, 1, 1, 1),
(102, 1, 1, 2),
(103, 1, 1, 3),
(104, 1, 1, 4),
(105, 1, 2, 1),
(106, 1, 2, 2),
(107, 1, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contrasenha` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `idTipo_Usuario` int(11) NOT NULL COMMENT '		',
  `Online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`Nombre`, `Correo`, `Contrasenha`, `DNI`, `idTipo_Usuario`, `Online`) VALUES
('alexsoto', 'alexcondo@gmail.com', 'alexander123', '846564311', 2, 0),
('carlos123', 'carlossi@gmail.com', 'carlos123', '54321641', 1, 0),
('fernandocs', 'villa_fer@gmail.com', 'fernanflow', '89465456', 2, 0),
('jesuslazo23', 'jesuslazo@gmail.com', 'jesuslazo', '65642113', 1, 0),
('kevinkst', 'kst_kevin@gmail.com', 'kevin.123', '23431234', 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Area`
--
ALTER TABLE `Area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `Area&Cargo_Proceso`
--
ALTER TABLE `Area&Cargo_Proceso`
  ADD PRIMARY KEY (`idArea&Cargo_Proceso`),
  ADD KEY `fk_Área&Cargo_Proceso_1_idx` (`idCargo_Proceso`),
  ADD KEY `fk_Área&Cargo_Proceso_2_idx` (`idArea`);

--
-- Indices de la tabla `Cargo_Proceso`
--
ALTER TABLE `Cargo_Proceso`
  ADD PRIMARY KEY (`idCargo_Proceso`);

--
-- Indices de la tabla `Cargo_UNSA`
--
ALTER TABLE `Cargo_UNSA`
  ADD PRIMARY KEY (`idCargo_UNSA`);

--
-- Indices de la tabla `Curso`
--
ALTER TABLE `Curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `Curso&Area`
--
ALTER TABLE `Curso&Area`
  ADD PRIMARY KEY (`idCurso&Area`),
  ADD KEY `fk_Curso&Área_1_idx` (`idCurso`),
  ADD KEY `fk_Curso&Área_2_idx` (`idArea`);

--
-- Indices de la tabla `Participacion`
--
ALTER TABLE `Participacion`
  ADD PRIMARY KEY (`idParticipacion`),
  ADD KEY `fk_Participación_2_idx` (`idProceso`),
  ADD KEY `fk_Participacion_1_idx` (`idParticipante&Cargos`);

--
-- Indices de la tabla `Participante`
--
ALTER TABLE `Participante`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `Participante&Cargos`
--
ALTER TABLE `Participante&Cargos`
  ADD PRIMARY KEY (`idParticipante&Cargos`),
  ADD KEY `fk_Participante&Cargos_1_idx` (`idCargo_Proceso`),
  ADD KEY `fk_Participante&Cargos_2_idx` (`idCargo_UNSA`),
  ADD KEY `fk_Participante&Cargos_3_idx` (`DNI`);

--
-- Indices de la tabla `Permisos`
--
ALTER TABLE `Permisos`
  ADD PRIMARY KEY (`idPermisos`);

--
-- Indices de la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  ADD PRIMARY KEY (`idPregunta`),
  ADD KEY `fk_Pregunta_1_idx` (`DNI`),
  ADD KEY `fk_Pregunta_2_idx` (`idProceso`),
  ADD KEY `fk_Pregunta_4_idx` (`idResolucion`),
  ADD KEY `fk_Pregunta_3_idx` (`idCurso&Area`),
  ADD KEY `fk_Pregunta_5_idx` (`Nombre`);

--
-- Indices de la tabla `Proceso`
--
ALTER TABLE `Proceso`
  ADD PRIMARY KEY (`idProceso`),
  ADD KEY `fk_Proceso_1_idx` (`idTipo_Proceso`);

--
-- Indices de la tabla `Proceso&Usuario`
--
ALTER TABLE `Proceso&Usuario`
  ADD PRIMARY KEY (`idProceso&Usuario`),
  ADD KEY `fk_Proceso&Usuario_1_idx` (`idProceso`),
  ADD KEY `fk_Proceso&Usuario_2_idx` (`Nombre`);

--
-- Indices de la tabla `Resolucion`
--
ALTER TABLE `Resolucion`
  ADD PRIMARY KEY (`idResolucion`);

--
-- Indices de la tabla `Tema`
--
ALTER TABLE `Tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `Tema&Curso`
--
ALTER TABLE `Tema&Curso`
  ADD PRIMARY KEY (`idTema&Curso`),
  ADD KEY `fk_Tema&Curso_1_idx` (`idCurso`),
  ADD KEY `fk_Tema&Curso_2_idx` (`idTema`);

--
-- Indices de la tabla `Tipo_Proceso`
--
ALTER TABLE `Tipo_Proceso`
  ADD PRIMARY KEY (`idTipo_Proceso`);

--
-- Indices de la tabla `Tipo_Usuario`
--
ALTER TABLE `Tipo_Usuario`
  ADD PRIMARY KEY (`idTipo_Usuario`);

--
-- Indices de la tabla `Tipo_Usuario&Permisos`
--
ALTER TABLE `Tipo_Usuario&Permisos`
  ADD PRIMARY KEY (`idTipo_Usuario&Permisos`),
  ADD KEY `fk_Tipo_Usuario&Permisos_1_idx` (`idTipo_Usuario`),
  ADD KEY `fk_Tipo_Usuario&Permisos_2_idx` (`idPermisos`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`Nombre`),
  ADD KEY `fk_Usuario_1_idx` (`idTipo_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Area&Cargo_Proceso`
--
ALTER TABLE `Area&Cargo_Proceso`
  MODIFY `idArea&Cargo_Proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;
--
-- AUTO_INCREMENT de la tabla `Participacion`
--
ALTER TABLE `Participacion`
  MODIFY `idParticipacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `Tipo_Usuario&Permisos`
--
ALTER TABLE `Tipo_Usuario&Permisos`
  MODIFY `idTipo_Usuario&Permisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Area&Cargo_Proceso`
--
ALTER TABLE `Area&Cargo_Proceso`
  ADD CONSTRAINT `fk_Área&Cargo_Proceso_1` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `Cargo_Proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Área&Cargo_Proceso_2` FOREIGN KEY (`idArea`) REFERENCES `Area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Curso&Area`
--
ALTER TABLE `Curso&Area`
  ADD CONSTRAINT `fk_Curso&Área_1` FOREIGN KEY (`idCurso`) REFERENCES `Curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Curso&Área_2` FOREIGN KEY (`idArea`) REFERENCES `Area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Participacion`
--
ALTER TABLE `Participacion`
  ADD CONSTRAINT `fk_Participacion_1` FOREIGN KEY (`idParticipante&Cargos`) REFERENCES `Participante&Cargos` (`idParticipante&Cargos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Participación_2` FOREIGN KEY (`idProceso`) REFERENCES `Proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Participante&Cargos`
--
ALTER TABLE `Participante&Cargos`
  ADD CONSTRAINT `fk_Participante&Cargos_1` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `Cargo_Proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Participante&Cargos_2` FOREIGN KEY (`idCargo_UNSA`) REFERENCES `Cargo_UNSA` (`idCargo_UNSA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Participante&Cargos_3` FOREIGN KEY (`DNI`) REFERENCES `Participante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Pregunta`
--
ALTER TABLE `Pregunta`
  ADD CONSTRAINT `fk_Pregunta_1` FOREIGN KEY (`DNI`) REFERENCES `Participante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_2` FOREIGN KEY (`idProceso`) REFERENCES `Proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_3` FOREIGN KEY (`idCurso&Area`) REFERENCES `Curso&Area` (`idCurso&Area`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_4` FOREIGN KEY (`idResolucion`) REFERENCES `Resolucion` (`idResolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_5` FOREIGN KEY (`Nombre`) REFERENCES `Usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Proceso`
--
ALTER TABLE `Proceso`
  ADD CONSTRAINT `fk_Proceso_1` FOREIGN KEY (`idTipo_Proceso`) REFERENCES `Tipo_Proceso` (`idTipo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Proceso&Usuario`
--
ALTER TABLE `Proceso&Usuario`
  ADD CONSTRAINT `fk_Proceso&Usuario_1` FOREIGN KEY (`idProceso`) REFERENCES `Proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proceso&Usuario_2` FOREIGN KEY (`Nombre`) REFERENCES `Usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Tema&Curso`
--
ALTER TABLE `Tema&Curso`
  ADD CONSTRAINT `fk_Tema&Curso_1` FOREIGN KEY (`idCurso`) REFERENCES `Curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tema&Curso_2` FOREIGN KEY (`idTema`) REFERENCES `Tema` (`idTema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Tipo_Usuario&Permisos`
--
ALTER TABLE `Tipo_Usuario&Permisos`
  ADD CONSTRAINT `fk_Tipo_Usuario&Permisos_1` FOREIGN KEY (`idTipo_Usuario`) REFERENCES `Tipo_Usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tipo_Usuario&Permisos_2` FOREIGN KEY (`idPermisos`) REFERENCES `Permisos` (`idPermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD CONSTRAINT `fk_Usuario_1` FOREIGN KEY (`idTipo_Usuario`) REFERENCES `Tipo_Usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
