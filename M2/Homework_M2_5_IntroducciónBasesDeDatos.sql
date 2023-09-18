-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS Henry DEFAULT CHARACTER SET utf8 ;
USE Henry ;

-- -----------------------------------------------------
-- Table Henry.`Carrera`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Henry.`Carrera` (
  `IdCarrera` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`IdCarrera`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Henry.`Instructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Henry.`Instructor` (
  `IDInstructor` INT NOT NULL AUTO_INCREMENT,
  `CedulaIdentidad` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `FechaNacimiento` DATE NULL,
  `FechaIncorporacion` DATE NULL,
  PRIMARY KEY (`IDInstructor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Henry.`Cohorte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Henry.`Cohorte` (
  `IDCohorte` INT NOT NULL AUTO_INCREMENT,
  `Codigo` VARCHAR(45) NULL,
  `IDCarrera` INT NOT NULL,
  `FechaInicio` DATE NULL,
  `FechaFin` DATE NULL,
  `IDInstructor` INT NOT NULL,
  PRIMARY KEY (`IDCohorte`),
  INDEX `fk_Cohorte_Instructor1_idx` (`IDInstructor` ASC) VISIBLE,
  INDEX `fk_Cohorte_Carrera1_idx` (`IDCarrera` ASC) VISIBLE,
  CONSTRAINT `fk_Cohorte_Instructor1`
    FOREIGN KEY (`IDInstructor`)
    REFERENCES Henry.`Instructor` (`IDInstructor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cohorte_Carrera1`
    FOREIGN KEY (`IDCarrera`)
    REFERENCES Henry.`Carrera` (`IdCarrera`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Henry.`Alumno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Henry.`Alumno` (
  `IDAlumno` INT NOT NULL AUTO_INCREMENT,
  `CedulaIdentidad` VARCHAR(45) NULL,
  `Nombre` VARCHAR(45) NULL,
  `Apellido` VARCHAR(45) NULL,
  `FechaNacimiento` DATE NULL,
  `FechaIngreso` DATE NULL,
  `IDCohorte` INT NOT NULL,
  PRIMARY KEY (`IDAlumno`),
  INDEX `fk_Alumno_Cohorte1_idx` (`IDCohorte` ASC) VISIBLE,
  CONSTRAINT `fk_Alumno_Cohorte1`
    FOREIGN KEY (`IDCohorte`)
    REFERENCES Henry.`Cohorte` (`IDCohorte`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
