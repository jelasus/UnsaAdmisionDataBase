-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-07-2017 a las 16:53:34
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

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
-- Estructura de tabla para la tabla `area`
--
-- Creación: 26-07-2017 a las 12:28:48
--

CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(45) DEFAULT NULL,
  `Habilitada` tinyint(1) DEFAULT NULL,
  `Integrantes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `area`:
--

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`idArea`, `Nombre`, `Ubicacion`, `Habilitada`, `Integrantes`) VALUES
(1, 'ingenierias', 'av_independencia_sn', 1, 15000),
(2, 'biomedicas', 'av_biomedicas_sn', 1, 1500),
(3, 'sociales', 'av_virgen_del_pilar_sn', 1, 18000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areaxcursoxtema`
--
-- Creación: 26-07-2017 a las 12:28:48
--

CREATE TABLE `areaxcursoxtema` (
  `idAreaXCursoXTema` int(11) NOT NULL,
  `idArea` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `idTema` int(11) DEFAULT NULL,
  `Anho_inclusión` date DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `areaxcursoxtema`:
--   `idArea`
--       `area` -> `idArea`
--   `idCurso`
--       `curso` -> `idCurso`
--   `idTema`
--       `tema` -> `idTema`
--

--
-- Volcado de datos para la tabla `areaxcursoxtema`
--

INSERT INTO `areaxcursoxtema` (`idAreaXCursoXTema`, `idArea`, `idCurso`, `idTema`, `Anho_inclusión`, `Vigente`) VALUES
(5, 2, 4, 28, '2017-06-07', 1),
(6, 1, 2, 24, '2017-07-02', 1),
(7, 3, 3, 8, '2017-03-09', 1),
(8, 1, 7, 17, '2015-09-09', 1),
(9, 2, 6, 28, '2014-11-13', 1),
(11, 3, 2, 19, '2016-08-01', 1),
(12, 3, 5, 17, '2016-02-11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--
-- Creación: 26-07-2017 a las 12:28:48
--

CREATE TABLE `aula` (
  `idAula` int(11) NOT NULL,
  `Pabellon` varchar(45) DEFAULT NULL,
  `Capacidad` varchar(45) DEFAULT NULL,
  `Ubicacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `aula`:
--

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`idAula`, `Pabellon`, `Capacidad`, `Ubicacion`) VALUES
(100, 'Arquitectura', '500', 'ingenieriaa'),
(122, 'Sociologia', '600', 'sociales'),
(136, 'Cs_Nutricion', '280', 'biomedicas'),
(147, 'Ing_Mecanica', '300', 'ingenierias'),
(152, 'Administracion', '550', 'ingenierias'),
(190, 'Enfermeria', '520', 'biomedicas'),
(300, 'Ing_Industrial', '850', 'ingenierias'),
(351, 'Psicologia', '350', 'sociales'),
(356, 'Ing_Electrica', '300', 'ingenierias'),
(402, 'Arte', '350', 'ingenierias'),
(406, 'Ing_Alimentaria', '250', 'ingenierias'),
(411, 'Derecho', '400', 'sociales'),
(415, 'Contabilidad', '350', 'sociales'),
(423, 'Cs_de_la_Computacion', '50', 'ingenierias'),
(436, 'Medicina', '400', 'biomedicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_proceso`
--
-- Creación: 26-07-2017 a las 12:28:48
--

CREATE TABLE `cargo_proceso` (
  `idCargo_Proceso` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `cargo_proceso`:
--

--
-- Volcado de datos para la tabla `cargo_proceso`
--

INSERT INTO `cargo_proceso` (`idCargo_Proceso`, `Nombre`, `Vigente`) VALUES
(1, 'Formulador', 1),
(2, 'Jardinero', 1),
(3, 'Controlador', 1),
(4, 'Tecnico', 1),
(5, 'Contador', 1),
(6, 'Conserje', 1),
(7, 'Portero', 1),
(8, 'Controlador_de_puerta', 1),
(9, 'Formulador', 0),
(10, 'Jardinero', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_procesoxcargo_unsa`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `cargo_procesoxcargo_unsa` (
  `idCargo_ProcesoXCargo_UNSA` int(11) NOT NULL,
  `idCargo_Proceso` int(11) DEFAULT NULL,
  `idCargo_UNSA` int(11) DEFAULT NULL,
  `Es_compatible` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `cargo_procesoxcargo_unsa`:
--   `idCargo_Proceso`
--       `cargo_proceso` -> `idCargo_Proceso`
--   `idCargo_UNSA`
--       `cargo_unsa` -> `idCargo_UNSA`
--

--
-- Volcado de datos para la tabla `cargo_procesoxcargo_unsa`
--

INSERT INTO `cargo_procesoxcargo_unsa` (`idCargo_ProcesoXCargo_UNSA`, `idCargo_Proceso`, `idCargo_UNSA`, `Es_compatible`) VALUES
(1, 1, 2, 0),
(2, 1, 1, 1),
(3, 6, 2, 1),
(4, 2, 1, 0),
(5, 2, 2, 1),
(6, 1, 3, 0),
(7, 7, 1, 0),
(8, 7, 3, 0),
(9, 5, 2, 1),
(10, 6, 3, 0),
(11, 4, 3, 1),
(12, 3, 1, 1),
(13, 5, 1, 1),
(14, 4, 1, 0),
(15, 8, 3, 0),
(16, 10, 1, 0),
(17, 7, 1, 1),
(18, 6, 1, 0),
(19, 4, 2, 1),
(20, 8, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_unsa`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `cargo_unsa` (
  `idCargo_UNSA` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Vigente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `cargo_unsa`:
--

--
-- Volcado de datos para la tabla `cargo_unsa`
--

INSERT INTO `cargo_unsa` (`idCargo_UNSA`, `Nombre`, `Vigente`) VALUES
(1, 'Docente', 1),
(2, 'Administrativo', 1),
(3, 'Estudiante', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `Curricula` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `curso`:
--

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`idCurso`, `Curricula`, `Nombre`) VALUES
(1, 'prospecto_unsa_1', 'Matematica'),
(2, 'prospecto_unsa_1', 'lenguaje'),
(3, 'prospecto_unsa_1', 'literatura'),
(4, 'prospecto_unsa_1', 'historia'),
(5, 'prospecto_unsa_1', 'geografia'),
(6, 'prospecto_unsa_1', 'razonamiento_logico_matematico'),
(7, 'prospecto_unsa_1', 'razonamiento_verbal'),
(8, 'prospecto_unsa_1', 'fisica'),
(9, 'prospecto_unsa_1', 'biologia'),
(10, 'prospecto_unsa_1', 'quimica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participante`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `participante` (
  `DNI` int(11) NOT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Nombres` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) DEFAULT NULL,
  `CUI` int(11) DEFAULT NULL,
  `Numero_de_participaciones` int(11) NOT NULL,
  `Tiene_Cargo_Proceso` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `participante`:
--

--
-- Volcado de datos para la tabla `participante`
--

INSERT INTO `participante` (`DNI`, `Apellidos`, `Nombres`, `Correo`, `CUI`, `Numero_de_participaciones`, `Tiene_Cargo_Proceso`) VALUES
(19265893, 'Soncco Lupa', 'Carlos', 'carlitossl@hotmail.com', 20122585, 2, 0),
(23456598, 'Lazo Quevedo', 'Jesus', 'jesusl@hotmail.com', 20001599, 3, 1),
(29241092, 'Villanueva  Echarri', 'Tomas', 'tomyvilla@hotmail.com', 19921658, 6, 1),
(29262020, 'Guzman Lizarraga', 'Jose', 'jguzman@hotmail.com', 19984658, 1, 1),
(43456110, 'Salazar Uribe', 'Kevin', 'kevinst@hotmail.com', 20011544, 1, 1),
(44608005, 'Paredes Cueva', 'Manuel', 'manu@hotmail.com', 20061779, 1, 0),
(45446012, 'Choque Flores', 'Luis', 'jguzman@hotmail.com', 19951645, 5, 0),
(45458521, 'Ravelo Ticona', 'Daniel', 'dravelo_f@hotmail.com', 20001669, 0, 1),
(45660115, 'Flores Taype', 'Almendra', 'almendraft@hotmail.com', 20031543, 4, 1),
(46830045, 'Puma Leguia', 'Juan Carlos', 'pumita@hotmail.com', 20014585, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantexcargo_unsa`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `participantexcargo_unsa` (
  `idParticipanteXCargo_UNSA` int(11) NOT NULL,
  `DNI` int(11) DEFAULT NULL,
  `idCargo_UNSA` int(11) DEFAULT NULL,
  `Dependencia/Facultad` varchar(45) DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  `Regimen` varchar(45) DEFAULT NULL,
  `Es_cargo_actual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `participantexcargo_unsa`:
--   `idCargo_UNSA`
--       `cargo_unsa` -> `idCargo_UNSA`
--   `DNI`
--       `participante` -> `DNI`
--

--
-- Volcado de datos para la tabla `participantexcargo_unsa`
--

INSERT INTO `participantexcargo_unsa` (`idParticipanteXCargo_UNSA`, `DNI`, `idCargo_UNSA`, `Dependencia/Facultad`, `Categoria`, `Regimen`, `Es_cargo_actual`) VALUES
(10, 45446012, 1, 'Ing_mecanica', 'Principal', 'Nombrado', 1),
(11, 45660115, 1, 'Cs_Nutricion', 'Principal', 'nombrado', 1),
(12, 29262020, 2, 'Ing_mecanica', 'contratado', 'cas', 1),
(13, 44608005, 3, 'Derecho', 'estudiante', 'estudiante', 1),
(14, 46830045, 1, 'Medicina', 'Encargado', 'cas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--
-- Creación: 26-07-2017 a las 12:28:49
--

CREATE TABLE `permisos` (
  `idPermisos` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `permisos`:
--

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idPermisos`, `Descripcion`, `Valor`) VALUES
(1, 'crear_administradores', 1),
(2, 'ver_administradores', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--
-- Creación: 26-07-2017 a las 12:28:50
--

CREATE TABLE `pregunta` (
  `idPregunta` int(11) NOT NULL,
  `Elegida` tinyint(1) DEFAULT NULL,
  `Dificultad` varchar(45) DEFAULT NULL,
  `Inicio_de_pregunta` varchar(45) DEFAULT NULL,
  `Enunciado` varchar(45) DEFAULT NULL,
  `Distractor_A` varchar(45) DEFAULT NULL,
  `Distractor_B` varchar(45) DEFAULT NULL,
  `Distractor_C` varchar(45) DEFAULT NULL,
  `Distractor_D` varchar(45) DEFAULT NULL,
  `Distractor_E` varchar(45) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL,
  `idProceso` int(11) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL,
  `idResolucion` int(11) DEFAULT NULL,
  `idAreaXCursoXTema` int(11) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `pregunta`:
--   `DNI`
--       `participante` -> `DNI`
--   `idProceso`
--       `proceso` -> `idProceso`
--   `idAreaXCursoXTema`
--       `areaxcursoxtema` -> `idAreaXCursoXTema`
--   `idResolucion`
--       `resolucion` -> `idResolucion`
--   `Nombre`
--       `usuario` -> `Nombre`
--

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`idPregunta`, `Elegida`, `Dificultad`, `Inicio_de_pregunta`, `Enunciado`, `Distractor_A`, `Distractor_B`, `Distractor_C`, `Distractor_D`, `Distractor_E`, `Fecha`, `idProceso`, `DNI`, `idResolucion`, `idAreaXCursoXTema`, `Nombre`) VALUES
(1, 1, 'alta', 'Si marco recorre 100km en busca de su mama', '/imagenes/marcoysumama.png', '20 km', '18 km', '25 km', '11 km ', '19 km', '2017-07-23 00:00:00', 2006, 46830045, 8, 6, 'Juan_Perez_Valdivia'),
(2, 0, 'media', 'Que rio no pertenece a la cuenca', '/imagenes/nopertenecealacuenca.png', 'rio chili', 'rio cañaveral', 'rio ucayali', 'rio amazonas', 'rio missisipi', '2017-07-23 09:00:00', 1001, 29262020, 4, 7, 'Pedro_Picapiedra_Roca'),
(3, 1, 'media', 'el autor de este verso es', '/imagenes/pliteratura4.png', 'Mariano Melgar', 'Pablo Neruda', 'Cesar Vallejo', 'Julio Ramon Riveiro', 'Jose Santos Chocano', '2015-02-10 00:00:00', 10056, 23456598, 7, 8, 'Juan_Perez_Valdivia'),
(10, 1, 'baja', 'la siguiente secuencia', '/pregunta/raz3.png', '51', '52', '50', '60', '61', '2015-05-17 00:00:00', 2006, 43456110, 8, 9, 'Pedro_Picapiedra_Roca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--
-- Creación: 26-07-2017 a las 12:28:50
--

CREATE TABLE `proceso` (
  `idProceso` int(11) NOT NULL,
  `Anho` int(11) DEFAULT NULL,
  `Inicio` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL,
  `idTipo_Proceso` int(11) NOT NULL,
  `Fase` int(11) NOT NULL,
  `Nro_total_de_preguntas` int(11) DEFAULT NULL,
  `Nro_hecho_de_preguntas` int(11) DEFAULT NULL,
  `Dia_de_examen_1` datetime DEFAULT NULL,
  `Dia_de_examen_2` datetime DEFAULT NULL,
  `Dia_de_examen_3` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `proceso`:
--   `idTipo_Proceso`
--       `tipo_proceso` -> `idTipo_Proceso`
--

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`idProceso`, `Anho`, `Inicio`, `Fin`, `idTipo_Proceso`, `Fase`, `Nro_total_de_preguntas`, `Nro_hecho_de_preguntas`, `Dia_de_examen_1`, `Dia_de_examen_2`, `Dia_de_examen_3`) VALUES
(1000, 2001, '2001-07-05 00:00:00', '2001-08-12 00:00:00', 1, 2, 100, 20, '2001-07-10 00:00:00', NULL, NULL),
(1001, 2002, '2002-07-13 00:00:00', '2002-12-22 00:00:00', 3, 1, 120, 100, '2002-07-10 00:00:00', '2002-10-10 00:00:00', '2002-12-18 00:00:00'),
(1569, 2009, '2009-03-14 00:00:00', '2009-03-24 00:00:00', 1, 2, 100, 100, '2009-03-22 00:00:00', NULL, NULL),
(2005, 2005, '2005-01-10 00:00:00', '2005-09-19 00:00:00', 3, 2, 100, 100, '2005-01-15 00:00:00', '2005-05-10 00:00:00', '2005-09-05 00:00:00'),
(2006, 2010, '2010-12-06 00:00:00', '2010-12-18 00:00:00', 2, 1, 100, 100, '2010-12-15 00:00:00', NULL, NULL),
(10056, 2008, '2008-11-16 00:00:00', '2008-11-29 00:00:00', 1, 3, 100, 100, '2008-11-27 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso&usuario`
--
-- Creación: 26-07-2017 a las 12:28:50
--

CREATE TABLE `proceso&usuario` (
  `idProceso&Usuario` int(11) NOT NULL,
  `Comentario` varchar(45) DEFAULT NULL,
  `idProceso` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Actual` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `proceso&usuario`:
--   `idProceso`
--       `proceso` -> `idProceso`
--   `Nombre`
--       `usuario` -> `Nombre`
--

--
-- Volcado de datos para la tabla `proceso&usuario`
--

INSERT INTO `proceso&usuario` (`idProceso&Usuario`, `Comentario`, `idProceso`, `Nombre`, `Actual`) VALUES
(12, 'considerar feriado', 1000, 'Juan_Perez_Valdivia', 1),
(13, 'posible huelga', 1001, 'Juan_Perez_Valdivia', 1),
(14, 'se incrementara preguntas de matematica', 1569, 'Pedro_Picapiedra_Roca', 1),
(15, 'ninguno', 2005, 'Pedro_Picapiedra_Roca', 1),
(16, 'ninguno', 10056, 'Fernando_Villanueva_Sanchez', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesoxareaxcursoxtema`
--
-- Creación: 26-07-2017 a las 12:28:50
--

CREATE TABLE `procesoxareaxcursoxtema` (
  `idProcesoXAreaXCursoXTema` int(11) NOT NULL,
  `idProceso` int(11) DEFAULT NULL,
  `idAreaXCursoXTema` int(11) DEFAULT NULL,
  `Nro_hecho_de_preguntas` int(11) DEFAULT NULL,
  `Nro_total_de_preguntas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `procesoxareaxcursoxtema`:
--   `idProceso`
--       `proceso` -> `idProceso`
--   `idAreaXCursoXTema`
--       `areaxcursoxtema` -> `idAreaXCursoXTema`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesoxcargo_proceso`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `procesoxcargo_proceso` (
  `idProcesoXCargo_Proceso` int(11) NOT NULL,
  `idProceso` int(11) DEFAULT NULL,
  `idCargo_Proceso` int(11) DEFAULT NULL,
  `Cupos` int(11) DEFAULT NULL,
  `Cant_seleccionados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `procesoxcargo_proceso`:
--   `idProceso`
--       `proceso` -> `idProceso`
--   `idCargo_Proceso`
--       `cargo_proceso` -> `idCargo_Proceso`
--

--
-- Volcado de datos para la tabla `procesoxcargo_proceso`
--

INSERT INTO `procesoxcargo_proceso` (`idProcesoXCargo_Proceso`, `idProceso`, `idCargo_Proceso`, `Cupos`, `Cant_seleccionados`) VALUES
(555, 1000, 6, 15, 15),
(556, 1001, 1, 10, 10),
(557, 1569, 7, 10, 10),
(558, 2005, 4, 50, 50),
(559, 2006, 5, 20, 20),
(600, 10056, 1, 22, 22),
(601, 2006, 1, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesoxcargo_procesoxarea`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `procesoxcargo_procesoxarea` (
  `idProcesoXCargo_ProcesoXArea` int(11) NOT NULL,
  `idProceso` int(11) DEFAULT NULL,
  `idCargo_Proceso` int(11) DEFAULT NULL,
  `idArea` int(11) DEFAULT NULL,
  `Cupos` int(11) DEFAULT NULL,
  `Cant_seleccionados` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `procesoxcargo_procesoxarea`:
--   `idProceso`
--       `proceso` -> `idProceso`
--   `idCargo_Proceso`
--       `cargo_proceso` -> `idCargo_Proceso`
--   `idArea`
--       `area` -> `idArea`
--

--
-- Volcado de datos para la tabla `procesoxcargo_procesoxarea`
--

INSERT INTO `procesoxcargo_procesoxarea` (`idProcesoXCargo_ProcesoXArea`, `idProceso`, `idCargo_Proceso`, `idArea`, `Cupos`, `Cant_seleccionados`) VALUES
(5, 2005, 5, 1, 12, 12),
(9, 2005, 2, 1, 2, 2),
(100, 2005, 1, 1, 10, 10),
(101, 2005, 3, 1, 25, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesoxparticipantexcargo_procesoxcargo_unsa`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `procesoxparticipantexcargo_procesoxcargo_unsa` (
  `idProcesoXParticipanteXCargo_ProcesoXCargo_UNSA` int(11) NOT NULL,
  `idProceso` int(11) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL,
  `idCargo_Proceso` int(11) DEFAULT NULL,
  `idCargo_UNSA` int(11) DEFAULT NULL,
  `idAula` int(11) DEFAULT NULL,
  `Hora_inicio` time DEFAULT NULL,
  `Hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `procesoxparticipantexcargo_procesoxcargo_unsa`:
--   `idProceso`
--       `proceso` -> `idProceso`
--   `DNI`
--       `participante` -> `DNI`
--   `idCargo_Proceso`
--       `cargo_proceso` -> `idCargo_Proceso`
--   `idCargo_UNSA`
--       `cargo_unsa` -> `idCargo_UNSA`
--   `idAula`
--       `aula` -> `idAula`
--

--
-- Volcado de datos para la tabla `procesoxparticipantexcargo_procesoxcargo_unsa`
--

INSERT INTO `procesoxparticipantexcargo_procesoxcargo_unsa` (`idProcesoXParticipanteXCargo_ProcesoXCargo_UNSA`, `idProceso`, `DNI`, `idCargo_Proceso`, `idCargo_UNSA`, `idAula`, `Hora_inicio`, `Hora_fin`) VALUES
(1, 1001, 45446012, 1, 1, 300, '08:00:00', '13:00:00'),
(2, 1000, 45446012, 3, 3, 411, '08:00:00', '12:00:00'),
(3, 2005, 29241092, 1, 1, 100, '08:00:00', '08:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resolucion`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `resolucion` (
  `idResolucion` int(11) NOT NULL,
  `Alternativa_correcta` varchar(45) DEFAULT NULL,
  `Sustento` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `resolucion`:
--

--
-- Volcado de datos para la tabla `resolucion`
--

INSERT INTO `resolucion` (`idResolucion`, `Alternativa_correcta`, `Sustento`) VALUES
(1, 'A', '/img/respuesta1.png'),
(2, 'E', '/img/respuesta1.png'),
(3, 'D', '/img/respuesta1.png'),
(4, 'E', '/img/respuesta1.png'),
(5, 'C', '/img/respuesta1.png'),
(6, 'B', '/img/respuesta1.png'),
(7, 'C', '/img/respuesta1.png'),
(8, 'D', '/img/respuesta1.png'),
(9, 'A', '/img/respuesta1.png'),
(10, 'A', '/img/respuesta1.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `tema` (
  `idTema` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tema`:
--

--
-- Volcado de datos para la tabla `tema`
--

INSERT INTO `tema` (`idTema`, `Nombre`) VALUES
(1, 'geometria'),
(2, 'trigonometria'),
(3, 'aritmetica'),
(4, 'quimica_organica'),
(5, 'quimica_inorganica'),
(6, 'quimica_analitica'),
(7, 'redox'),
(8, 'anatomia'),
(9, 'ecologia'),
(10, 'calculo'),
(11, 'relaciones_y_funciones'),
(12, 'literatura_universal'),
(13, 'literatura_nacional'),
(14, 'poesia'),
(15, 'elementos_de_la_literatura'),
(16, 'linguistica'),
(17, 'comunicacion_oral'),
(18, 'comunicacion_audiovisual'),
(19, 'caracteristicas_de_la_comunicacion_escrita'),
(20, 'historia_del_peru'),
(21, 'historial_universal'),
(22, 'cultura_andina'),
(23, 'edad_moderna'),
(24, 'cartografia'),
(25, 'geomorfologia_del_peru'),
(26, 'cuentas_hidrograficas'),
(27, 'biogeografia_del_peru'),
(28, 'areas_naturales_protegidas'),
(29, 'poblacion_y_calidad_de_vida'),
(30, 'razonamiento_verbal'),
(31, 'teoria_del_texto'),
(32, 'aptitud_espacio_visual'),
(33, 'razonamiento_logico'),
(34, 'sucesiones_numericas'),
(35, 'operadores'),
(36, 'termodinamica'),
(37, 'aceleracion'),
(38, 'campo_magnetico'),
(39, 'caida_libre'),
(40, 'espejos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_proceso`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `tipo_proceso` (
  `idTipo_Proceso` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Lema` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tipo_proceso`:
--

--
-- Volcado de datos para la tabla `tipo_proceso`
--

INSERT INTO `tipo_proceso` (`idTipo_Proceso`, `Nombre`, `Lema`) VALUES
(1, 'ordinario', 'unico_examen'),
(2, 'extraordinario', 'unico_examen'),
(3, 'ceprunsa', 'tres_examenes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--
-- Creación: 26-07-2017 a las 12:28:51
--

CREATE TABLE `tipo_usuario` (
  `idTipo_Usuario` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Privilegio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tipo_usuario`:
--

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`idTipo_Usuario`, `Nombre`, `Privilegio`) VALUES
(23, 'Administrador', 'absoluto'),
(24, 'Operador', 'restringido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario&permisos`
--
-- Creación: 26-07-2017 a las 12:28:52
--

CREATE TABLE `tipo_usuario&permisos` (
  `idTipo_Usuario&Permisos` int(11) NOT NULL,
  `Vigente` tinyint(1) DEFAULT NULL,
  `idTipo_Usuario` int(11) NOT NULL,
  `idPermisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `tipo_usuario&permisos`:
--   `idTipo_Usuario`
--       `tipo_usuario` -> `idTipo_Usuario`
--   `idPermisos`
--       `permisos` -> `idPermisos`
--

--
-- Volcado de datos para la tabla `tipo_usuario&permisos`
--

INSERT INTO `tipo_usuario&permisos` (`idTipo_Usuario&Permisos`, `Vigente`, `idTipo_Usuario`, `idPermisos`) VALUES
(58, 1, 23, 1),
(59, 1, 24, 2),
(60, 0, 24, 2),
(61, 0, 23, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--
-- Creación: 26-07-2017 a las 12:28:52
--

CREATE TABLE `usuario` (
  `Nombre` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contrasenha` varchar(45) NOT NULL,
  `DNI` varchar(45) NOT NULL,
  `idTipo_Usuario` int(11) NOT NULL COMMENT '		',
  `Online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELACIONES PARA LA TABLA `usuario`:
--   `idTipo_Usuario`
--       `tipo_usuario` -> `idTipo_Usuario`
--

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Nombre`, `Correo`, `Contrasenha`, `DNI`, `idTipo_Usuario`, `Online`) VALUES
('Fernando_Villanueva_Sanchez', 'fernanndov@gmail.com', 'holasoyfernando', '44445521', 23, 1),
('Juan_Perez_Valdivia', 'juanpv@hotmail.com', 'holasoyjuan', '29262524', 23, 0),
('Pedro_Picapiedra_Roca', 'perdropiedra@gmail.com', 'holasoypedro', '15455685', 24, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

--
-- Indices de la tabla `areaxcursoxtema`
--
ALTER TABLE `areaxcursoxtema`
  ADD PRIMARY KEY (`idAreaXCursoXTema`),
  ADD KEY `fk_AreaXCursoXTema_1_idx` (`idArea`),
  ADD KEY `fk_AreaXCursoXTema_2_idx` (`idCurso`),
  ADD KEY `fk_AreaXCursoXTema_3_idx` (`idTema`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`idAula`);

--
-- Indices de la tabla `cargo_proceso`
--
ALTER TABLE `cargo_proceso`
  ADD PRIMARY KEY (`idCargo_Proceso`);

--
-- Indices de la tabla `cargo_procesoxcargo_unsa`
--
ALTER TABLE `cargo_procesoxcargo_unsa`
  ADD PRIMARY KEY (`idCargo_ProcesoXCargo_UNSA`),
  ADD KEY `fk_Cargo_Proceso&Cargo_UNSA_2_idx` (`idCargo_UNSA`),
  ADD KEY `fk_Cargo_ProcesoXCargo_UNSA_1_idx` (`idCargo_Proceso`);

--
-- Indices de la tabla `cargo_unsa`
--
ALTER TABLE `cargo_unsa`
  ADD PRIMARY KEY (`idCargo_UNSA`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indices de la tabla `participante`
--
ALTER TABLE `participante`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `participantexcargo_unsa`
--
ALTER TABLE `participantexcargo_unsa`
  ADD PRIMARY KEY (`idParticipanteXCargo_UNSA`),
  ADD KEY `fk_Participante&Cargo_UNSA_1_idx` (`idCargo_UNSA`),
  ADD KEY `fk_Participante&Cargo_UNSA_2_idx` (`DNI`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`idPermisos`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`idPregunta`),
  ADD KEY `fk_Pregunta_1_idx` (`DNI`),
  ADD KEY `fk_Pregunta_2_idx` (`idProceso`),
  ADD KEY `fk_Pregunta_4_idx` (`idResolucion`),
  ADD KEY `fk_Pregunta_3_idx` (`idAreaXCursoXTema`),
  ADD KEY `fk_Pregunta_5_idx` (`Nombre`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`idProceso`),
  ADD KEY `fk_Proceso_1_idx` (`idTipo_Proceso`);

--
-- Indices de la tabla `proceso&usuario`
--
ALTER TABLE `proceso&usuario`
  ADD PRIMARY KEY (`idProceso&Usuario`),
  ADD KEY `fk_Proceso&Usuario_1_idx` (`idProceso`),
  ADD KEY `fk_Proceso&Usuario_2_idx` (`Nombre`);

--
-- Indices de la tabla `procesoxareaxcursoxtema`
--
ALTER TABLE `procesoxareaxcursoxtema`
  ADD PRIMARY KEY (`idProcesoXAreaXCursoXTema`),
  ADD KEY `fk_ProcesoXAreaXCursoXTema_1_idx` (`idProceso`),
  ADD KEY `fk_ProcesoXAreaXCursoXTema_2_idx` (`idAreaXCursoXTema`);

--
-- Indices de la tabla `procesoxcargo_proceso`
--
ALTER TABLE `procesoxcargo_proceso`
  ADD PRIMARY KEY (`idProcesoXCargo_Proceso`),
  ADD KEY `fk_ProcesoXCargo_Proceso_1_idx` (`idProceso`),
  ADD KEY `fk_ProcesoXCargo_Proceso_2_idx` (`idCargo_Proceso`);

--
-- Indices de la tabla `procesoxcargo_procesoxarea`
--
ALTER TABLE `procesoxcargo_procesoxarea`
  ADD PRIMARY KEY (`idProcesoXCargo_ProcesoXArea`),
  ADD KEY `fk_Proceso&Cargo_Proceso&Area_2_idx` (`idCargo_Proceso`),
  ADD KEY `fk_Proceso&Cargo_Proceso&Area_3_idx` (`idArea`),
  ADD KEY `fk_ProcesoXCargo_ProcesoXArea_1_idx` (`idProceso`);

--
-- Indices de la tabla `procesoxparticipantexcargo_procesoxcargo_unsa`
--
ALTER TABLE `procesoxparticipantexcargo_procesoxcargo_unsa`
  ADD PRIMARY KEY (`idProcesoXParticipanteXCargo_ProcesoXCargo_UNSA`),
  ADD KEY `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_1_idx` (`idProceso`),
  ADD KEY `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_2_idx` (`DNI`),
  ADD KEY `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_3_idx` (`idCargo_Proceso`),
  ADD KEY `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_4_idx` (`idCargo_UNSA`),
  ADD KEY `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_5_idx` (`idAula`);

--
-- Indices de la tabla `resolucion`
--
ALTER TABLE `resolucion`
  ADD PRIMARY KEY (`idResolucion`);

--
-- Indices de la tabla `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);

--
-- Indices de la tabla `tipo_proceso`
--
ALTER TABLE `tipo_proceso`
  ADD PRIMARY KEY (`idTipo_Proceso`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`idTipo_Usuario`);

--
-- Indices de la tabla `tipo_usuario&permisos`
--
ALTER TABLE `tipo_usuario&permisos`
  ADD PRIMARY KEY (`idTipo_Usuario&Permisos`),
  ADD KEY `fk_Tipo_Usuario&Permisos_1_idx` (`idTipo_Usuario`),
  ADD KEY `fk_Tipo_Usuario&Permisos_2_idx` (`idPermisos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Nombre`),
  ADD KEY `fk_Usuario_1_idx` (`idTipo_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo_proceso`
--
ALTER TABLE `cargo_proceso`
  MODIFY `idCargo_Proceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `cargo_procesoxcargo_unsa`
--
ALTER TABLE `cargo_procesoxcargo_unsa`
  MODIFY `idCargo_ProcesoXCargo_UNSA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `cargo_unsa`
--
ALTER TABLE `cargo_unsa`
  MODIFY `idCargo_UNSA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `participantexcargo_unsa`
--
ALTER TABLE `participantexcargo_unsa`
  MODIFY `idParticipanteXCargo_UNSA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `procesoxparticipantexcargo_procesoxcargo_unsa`
--
ALTER TABLE `procesoxparticipantexcargo_procesoxcargo_unsa`
  MODIFY `idProcesoXParticipanteXCargo_ProcesoXCargo_UNSA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_usuario&permisos`
--
ALTER TABLE `tipo_usuario&permisos`
  MODIFY `idTipo_Usuario&Permisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `areaxcursoxtema`
--
ALTER TABLE `areaxcursoxtema`
  ADD CONSTRAINT `fk_AreaXCursoXTema_1` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaXCursoXTema_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_AreaXCursoXTema_3` FOREIGN KEY (`idTema`) REFERENCES `tema` (`idTema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cargo_procesoxcargo_unsa`
--
ALTER TABLE `cargo_procesoxcargo_unsa`
  ADD CONSTRAINT `fk_Cargo_ProcesoXCargo_UNSA_1` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `cargo_proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Cargo_ProcesoXCargo_UNSA_2` FOREIGN KEY (`idCargo_UNSA`) REFERENCES `cargo_unsa` (`idCargo_UNSA`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `participantexcargo_unsa`
--
ALTER TABLE `participantexcargo_unsa`
  ADD CONSTRAINT `fk_ParticipanteXCargo_UNSA_1` FOREIGN KEY (`idCargo_UNSA`) REFERENCES `cargo_unsa` (`idCargo_UNSA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ParticipanteXCargo_UNSA_2` FOREIGN KEY (`DNI`) REFERENCES `participante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `fk_Pregunta_1` FOREIGN KEY (`DNI`) REFERENCES `participante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_2` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_3` FOREIGN KEY (`idAreaXCursoXTema`) REFERENCES `areaxcursoxtema` (`idAreaXCursoXTema`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_4` FOREIGN KEY (`idResolucion`) REFERENCES `resolucion` (`idResolucion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pregunta_5` FOREIGN KEY (`Nombre`) REFERENCES `usuario` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD CONSTRAINT `fk_Proceso_1` FOREIGN KEY (`idTipo_Proceso`) REFERENCES `tipo_proceso` (`idTipo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proceso&usuario`
--
ALTER TABLE `proceso&usuario`
  ADD CONSTRAINT `fk_Proceso&Usuario_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Proceso&Usuario_2` FOREIGN KEY (`Nombre`) REFERENCES `usuario` (`Nombre`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `procesoxareaxcursoxtema`
--
ALTER TABLE `procesoxareaxcursoxtema`
  ADD CONSTRAINT `fk_ProcesoXAreaXCursoXTema_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXAreaXCursoXTema_2` FOREIGN KEY (`idAreaXCursoXTema`) REFERENCES `areaxcursoxtema` (`idAreaXCursoXTema`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `procesoxcargo_proceso`
--
ALTER TABLE `procesoxcargo_proceso`
  ADD CONSTRAINT `fk_ProcesoXCargo_Proceso_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXCargo_Proceso_2` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `cargo_proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `procesoxcargo_procesoxarea`
--
ALTER TABLE `procesoxcargo_procesoxarea`
  ADD CONSTRAINT `fk_ProcesoXCargo_ProcesoXArea_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXCargo_ProcesoXArea_2` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `cargo_proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXCargo_ProcesoXArea_3` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `procesoxparticipantexcargo_procesoxcargo_unsa`
--
ALTER TABLE `procesoxparticipantexcargo_procesoxcargo_unsa`
  ADD CONSTRAINT `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_1` FOREIGN KEY (`idProceso`) REFERENCES `proceso` (`idProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_2` FOREIGN KEY (`DNI`) REFERENCES `participante` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_3` FOREIGN KEY (`idCargo_Proceso`) REFERENCES `cargo_proceso` (`idCargo_Proceso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_4` FOREIGN KEY (`idCargo_UNSA`) REFERENCES `cargo_unsa` (`idCargo_UNSA`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ProcesoXParticipanteXCargo_ProcesoXCargo_UNSA_5` FOREIGN KEY (`idAula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_usuario&permisos`
--
ALTER TABLE `tipo_usuario&permisos`
  ADD CONSTRAINT `fk_Tipo_Usuario&Permisos_1` FOREIGN KEY (`idTipo_Usuario`) REFERENCES `tipo_usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tipo_Usuario&Permisos_2` FOREIGN KEY (`idPermisos`) REFERENCES `permisos` (`idPermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_1` FOREIGN KEY (`idTipo_Usuario`) REFERENCES `tipo_usuario` (`idTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
