-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movie_analytics
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movie_analytics
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_analytics` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `movie_analytics` ;

-- -----------------------------------------------------
-- Table `movie_analytics`.`genome_scores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`genome_scores` (
  `movieId` INT NULL DEFAULT NULL,
  `tagId` INT NULL DEFAULT NULL,
  `relevance` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`genome_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`genome_tags` (
  `tagId` INT NULL DEFAULT NULL,
  `tag` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`link`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`link` (
  `movieId` INT NULL DEFAULT NULL,
  `imdbId` INT NULL DEFAULT NULL,
  `tmdbId` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`movie` (
  `movieId` INT NULL DEFAULT NULL,
  `title` TEXT NULL DEFAULT NULL,
  `genres` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`rating` (
  `userId` INT NULL DEFAULT NULL,
  `movieId` INT NULL DEFAULT NULL,
  `rating` DOUBLE NULL DEFAULT NULL,
  `timestamp` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`tag` (
  `userId` INT NULL DEFAULT NULL,
  `movieId` INT NULL DEFAULT NULL,
  `tag` TEXT NULL DEFAULT NULL,
  `timestamp` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
