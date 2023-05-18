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
-- Table `movie_analytics`.`genome_tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`genome_tags` (
  `tag_id` INT NOT NULL,
  `tag` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`tag_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`movie` (
  `movie_id` INT NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `genres` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE INDEX `movieId_UNIQUE` (`movie_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`link`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`link` (
  `imdb_id` INT NOT NULL,
  `tmdb_id` INT NOT NULL,
  `movie_movie_id` INT NOT NULL,
  PRIMARY KEY (`movie_movie_id`),
  CONSTRAINT `fk_link_movie1`
    FOREIGN KEY (`movie_movie_id`)
    REFERENCES `movie_analytics`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`tag`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`tag` (
  `user_id` INT NOT NULL,
  `time_stamp` DATETIME NOT NULL,
  `tag` VARCHAR(25) NOT NULL,
  `movie_movie_id` INT NOT NULL,
  PRIMARY KEY (`movie_movie_id`),
  INDEX `fk_tag_movie1_idx` (`movie_movie_id` ASC) VISIBLE,
  UNIQUE INDEX `time_stamp_UNIQUE` (`time_stamp` ASC) VISIBLE,
  CONSTRAINT `fk_tag_movie1`
    FOREIGN KEY (`movie_movie_id`)
    REFERENCES `movie_analytics`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_analytics`.`rating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`rating` (
  `user_id` INT NOT NULL,
  `time_stamp` DATETIME NOT NULL,
  `rating` INT NOT NULL,
  `movie_movie_id` INT NOT NULL,
  PRIMARY KEY (`movie_movie_id`),
  INDEX `fk_rating_movie1_idx` (`movie_movie_id` ASC) VISIBLE,
  UNIQUE INDEX `time_stamp_UNIQUE` (`time_stamp` ASC) VISIBLE,
  CONSTRAINT `fk_rating_movie1`
    FOREIGN KEY (`movie_movie_id`)
    REFERENCES `movie_analytics`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `movie_analytics`.`genome_scores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_analytics`.`genome_scores` (
  `relevance` DOUBLE NOT NULL,
  `movie_movie_id` INT NOT NULL,
  `genome_tags_tag_id` INT NOT NULL,
  PRIMARY KEY (`movie_movie_id`, `genome_tags_tag_id`),
  INDEX `fk_genome_scores_genome_tags1_idx` (`genome_tags_tag_id` ASC) VISIBLE,
  CONSTRAINT `fk_genome_scores_movie1`
    FOREIGN KEY (`movie_movie_id`)
    REFERENCES `movie_analytics`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_genome_scores_genome_tags1`
    FOREIGN KEY (`genome_tags_tag_id`)
    REFERENCES `movie_analytics`.`genome_tags` (`tag_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
