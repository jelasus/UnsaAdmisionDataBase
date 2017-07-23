-- MySQL Script generated by MySQL Workbench
-- dom 23 jul 2017 00:54:46 PET
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ii_admision_unsa
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ii_admision_unsa
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ii_admision_unsa` DEFAULT CHARACTER SET utf8 ;
USE `ii_admision_unsa` ;

-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Cargo_Proceso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Cargo_Proceso` (
  `idCargo_Proceso` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Vigente` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idCargo_Proceso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Cargo_UNSA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Cargo_UNSA` (
  `idCargo_UNSA` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Vigente` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`idCargo_UNSA`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Participante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Participante` (
  `DNI` INT NOT NULL,
  `Apellidos` VARCHAR(45) NULL DEFAULT NULL,
  `Nombres` VARCHAR(45) NULL DEFAULT NULL,
  `Dependencia/Facultad` VARCHAR(45) NULL DEFAULT NULL,
  `Correo` VARCHAR(45) NULL DEFAULT NULL,
  `Categoria` VARCHAR(45) NULL DEFAULT NULL,
  `Regimen` VARCHAR(45) NULL DEFAULT NULL,
  `Estado` TINYINT(1) NULL DEFAULT NULL,
  `CUI` INT NULL DEFAULT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Participante&Cargos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Participante&Cargos` (
  `idParticipante&Cargos` INT NOT NULL,
  `DNI` INT NULL,
  `idCargo_Proceso` INT NOT NULL,
  `idCargo_UNSA` INT NOT NULL,
  PRIMARY KEY (`idParticipante&Cargos`),
  INDEX `fk_Participante&Cargos_1_idx` (`idCargo_Proceso` ASC),
  INDEX `fk_Participante&Cargos_2_idx` (`idCargo_UNSA` ASC),
  INDEX `fk_Participante&Cargos_3_idx` (`DNI` ASC),
  CONSTRAINT `fk_Participante&Cargos_1`
    FOREIGN KEY (`idCargo_Proceso`)
    REFERENCES `ii_admision_unsa`.`Cargo_Proceso` (`idCargo_Proceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante&Cargos_2`
    FOREIGN KEY (`idCargo_UNSA`)
    REFERENCES `ii_admision_unsa`.`Cargo_UNSA` (`idCargo_UNSA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participante&Cargos_3`
    FOREIGN KEY (`DNI`)
    REFERENCES `ii_admision_unsa`.`Participante` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Tipo_Proceso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Tipo_Proceso` (
  `idTipo_Proceso` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Lema` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipo_Proceso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Proceso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Proceso` (
  `idProceso` INT NOT NULL,
  `Año` INT NULL DEFAULT NULL,
  `Inicio` DATETIME NULL DEFAULT NULL,
  `Fin` DATETIME NULL DEFAULT NULL,
  `idTipo_Proceso` INT NOT NULL,
  PRIMARY KEY (`idProceso`),
  INDEX `fk_Proceso_1_idx` (`idTipo_Proceso` ASC),
  CONSTRAINT `fk_Proceso_1`
    FOREIGN KEY (`idTipo_Proceso`)
    REFERENCES `ii_admision_unsa`.`Tipo_Proceso` (`idTipo_Proceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Area` (
  `idArea` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Ubicacion` VARCHAR(45) NULL DEFAULT NULL,
  `Habilitada` TINYINT(1) NULL DEFAULT NULL,
  `Integrantes` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idArea`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Curso` (
  `idCurso` INT NOT NULL,
  `Curricula` VARCHAR(45) NULL DEFAULT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCurso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Curso&Area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Curso&Area` (
  `idCurso&Area` INT NOT NULL,
  `idCurso` INT NOT NULL,
  `idArea` INT NOT NULL,
  PRIMARY KEY (`idCurso&Area`),
  INDEX `fk_Curso&Área_1_idx` (`idCurso` ASC),
  INDEX `fk_Curso&Área_2_idx` (`idArea` ASC),
  CONSTRAINT `fk_Curso&Área_1`
    FOREIGN KEY (`idCurso`)
    REFERENCES `ii_admision_unsa`.`Curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Curso&Área_2`
    FOREIGN KEY (`idArea`)
    REFERENCES `ii_admision_unsa`.`Area` (`idArea`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Resolucion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Resolucion` (
  `idResolucion` INT NOT NULL,
  `Alternativa_correcta` VARCHAR(45) NULL DEFAULT NULL,
  `Distractor_correcto` VARCHAR(45) NULL DEFAULT NULL,
  `Sustento` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idResolucion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Tipo_Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Tipo_Usuario` (
  `idTipo_Usuario` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Privilegio` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTipo_Usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Usuario` (
  `Nombre` VARCHAR(45) NOT NULL,
  `Correo` VARCHAR(45) NOT NULL,
  `Contrasenha` VARCHAR(45) NOT NULL,
  `DNI` VARCHAR(45) NOT NULL,
  `idTipo_Usuario` INT NOT NULL COMMENT '		',
  `Online` TINYINT(1) NOT NULL,
  INDEX `fk_Usuario_1_idx` (`idTipo_Usuario` ASC),
  PRIMARY KEY (`Nombre`),
  CONSTRAINT `fk_Usuario_1`
    FOREIGN KEY (`idTipo_Usuario`)
    REFERENCES `ii_admision_unsa`.`Tipo_Usuario` (`idTipo_Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Pregunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Pregunta` (
  `idPregunta` INT NOT NULL AUTO_INCREMENT,
  `Elegida` TINYINT(1) NULL DEFAULT NULL,
  `Dificultad` VARCHAR(45) NULL DEFAULT NULL,
  `Enunciado` VARCHAR(45) NULL DEFAULT NULL,
  `Distractor_A` VARCHAR(45) NULL DEFAULT NULL,
  `Distractor_B` VARCHAR(45) NULL DEFAULT NULL,
  `Distractor_C` VARCHAR(45) NULL,
  `Distractor_D` VARCHAR(45) NULL,
  `Distractor_E` VARCHAR(45) NULL,
  `Fecha` DATETIME NULL,
  `DNI` INT NOT NULL,
  `idProceso` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `idResolucion` INT NOT NULL,
  PRIMARY KEY (`idPregunta`),
  INDEX `fk_Pregunta_1_idx` (`DNI` ASC),
  INDEX `fk_Pregunta_2_idx` (`idProceso` ASC),
  INDEX `fk_Pregunta_4_idx` (`idResolucion` ASC),
  CONSTRAINT `fk_Pregunta_1`
    FOREIGN KEY (`DNI`)
    REFERENCES `ii_admision_unsa`.`Participante` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pregunta_2`
    FOREIGN KEY (`idProceso`)
    REFERENCES `ii_admision_unsa`.`Proceso` (`idProceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pregunta_4`
    FOREIGN KEY (`idResolucion`)
    REFERENCES `ii_admision_unsa`.`Resolucion` (`idResolucion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Tema`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Tema` (
  `idTema` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idTema`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Tema&Curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Tema&Curso` (
  `idTema&Curso` INT NOT NULL,
  `Anho_inclusion` VARCHAR(45) NULL DEFAULT NULL,
  `Vigente` TINYINT(1) NULL DEFAULT NULL,
  `idCurso` INT NOT NULL,
  `idTema` INT NOT NULL,
  PRIMARY KEY (`idTema&Curso`),
  INDEX `fk_Tema&Curso_1_idx` (`idCurso` ASC),
  INDEX `fk_Tema&Curso_2_idx` (`idTema` ASC),
  CONSTRAINT `fk_Tema&Curso_1`
    FOREIGN KEY (`idCurso`)
    REFERENCES `ii_admision_unsa`.`Curso` (`idCurso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tema&Curso_2`
    FOREIGN KEY (`idTema`)
    REFERENCES `ii_admision_unsa`.`Tema` (`idTema`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Area&Cargo_Proceso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Area&Cargo_Proceso` (
  `idArea&Cargo_Proceso` INT NOT NULL AUTO_INCREMENT,
  `Cupos` INT UNSIGNED NULL DEFAULT NULL,
  `Cant_seleccionados` INT UNSIGNED NULL DEFAULT NULL,
  `idCargo_Proceso` INT NOT NULL,
  `idArea` INT NOT NULL,
  PRIMARY KEY (`idArea&Cargo_Proceso`),
  INDEX `fk_Área&Cargo_Proceso_1_idx` (`idCargo_Proceso` ASC),
  INDEX `fk_Área&Cargo_Proceso_2_idx` (`idArea` ASC),
  CONSTRAINT `fk_Área&Cargo_Proceso_1`
    FOREIGN KEY (`idCargo_Proceso`)
    REFERENCES `ii_admision_unsa`.`Cargo_Proceso` (`idCargo_Proceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Área&Cargo_Proceso_2`
    FOREIGN KEY (`idArea`)
    REFERENCES `ii_admision_unsa`.`Area` (`idArea`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Participacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Participacion` (
  `idParticipacion` INT NOT NULL AUTO_INCREMENT,
  `idCargo_UNSA` INT NOT NULL,
  `idProceso` INT NOT NULL,
  PRIMARY KEY (`idParticipacion`),
  INDEX `fk_Participación_1_idx` (`idCargo_UNSA` ASC),
  INDEX `fk_Participación_2_idx` (`idProceso` ASC),
  CONSTRAINT `fk_Participación_1`
    FOREIGN KEY (`idCargo_UNSA`)
    REFERENCES `ii_admision_unsa`.`Cargo_UNSA` (`idCargo_UNSA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Participación_2`
    FOREIGN KEY (`idProceso`)
    REFERENCES `ii_admision_unsa`.`Proceso` (`idProceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Permisos` (
  `idPermisos` INT NOT NULL,
  `Descripcion` VARCHAR(45) NOT NULL,
  `Valor` INT NOT NULL,
  PRIMARY KEY (`idPermisos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Tipo_Usuario&Permisos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Tipo_Usuario&Permisos` (
  `idTipo_Usuario&Permisos` INT NOT NULL AUTO_INCREMENT,
  `Vigente` TINYINT(1) NULL DEFAULT NULL,
  `idTipo_Usuario` INT NOT NULL,
  `idPermisos` INT NOT NULL,
  PRIMARY KEY (`idTipo_Usuario&Permisos`),
  INDEX `fk_Tipo_Usuario&Permisos_1_idx` (`idTipo_Usuario` ASC),
  INDEX `fk_Tipo_Usuario&Permisos_2_idx` (`idPermisos` ASC),
  CONSTRAINT `fk_Tipo_Usuario&Permisos_1`
    FOREIGN KEY (`idTipo_Usuario`)
    REFERENCES `ii_admision_unsa`.`Tipo_Usuario` (`idTipo_Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tipo_Usuario&Permisos_2`
    FOREIGN KEY (`idPermisos`)
    REFERENCES `ii_admision_unsa`.`Permisos` (`idPermisos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ii_admision_unsa`.`Proceso&Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ii_admision_unsa`.`Proceso&Usuario` (
  `idProceso&Usuario` INT NOT NULL,
  `Comentario` VARCHAR(45) NULL DEFAULT NULL,
  `idProceso` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `Actual` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idProceso&Usuario`),
  INDEX `fk_Proceso&Usuario_1_idx` (`idProceso` ASC),
  CONSTRAINT `fk_Proceso&Usuario_1`
    FOREIGN KEY (`idProceso`)
    REFERENCES `ii_admision_unsa`.`Proceso` (`idProceso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
