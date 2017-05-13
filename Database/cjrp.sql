SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `cjrp` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `cjrp` ;

-- -----------------------------------------------------
-- Table `cjrp`.`label`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`label` (
  `label_id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NULL COMMENT 'island, city, company_hotel, company_car, car_make, car_type, rating_delay',
  `value` VARCHAR(45) NULL,
  PRIMARY KEY (`label_id`),
  UNIQUE INDEX `label_id_UNIQUE` (`label_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cjrp`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`company` (
  `company_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `island_label_id` INT NOT NULL,
  `city_label_id` INT NOT NULL,
  `type_label_id` INT NOT NULL COMMENT 'hotel or car',
  `rating` DOUBLE(2,1) NULL,
  `description` LONGTEXT NULL,
  PRIMARY KEY (`company_id`, `island_label_id`, `city_label_id`, `type_label_id`),
  INDEX `fk_company_label_idx` (`island_label_id` ASC),
  INDEX `fk_company_label1_idx` (`city_label_id` ASC),
  INDEX `fk_company_label2_idx` (`type_label_id` ASC),
  UNIQUE INDEX `company_id_UNIQUE` (`company_id` ASC),
  CONSTRAINT `fk_company_label`
    FOREIGN KEY (`island_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_label1`
    FOREIGN KEY (`city_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_company_label2`
    FOREIGN KEY (`type_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cjrp`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`car` (
  `car_id` INT NOT NULL AUTO_INCREMENT,
  `make_label_id` INT NOT NULL,
  `model` VARCHAR(45) NULL,
  `type_label_id` INT NOT NULL,
  `capacity` INT NULL,
  PRIMARY KEY (`car_id`, `make_label_id`, `type_label_id`),
  INDEX `fk_car_label1_idx` (`make_label_id` ASC),
  INDEX `fk_car_label2_idx` (`type_label_id` ASC),
  UNIQUE INDEX `car_id_UNIQUE` (`car_id` ASC),
  CONSTRAINT `fk_car_label1`
    FOREIGN KEY (`make_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_car_label2`
    FOREIGN KEY (`type_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = ' ';


-- -----------------------------------------------------
-- Table `cjrp`.`carRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`carRating` (
  `rating_id` INT NOT NULL AUTO_INCREMENT,
  `company_id` INT NOT NULL,
  `car_id` INT NOT NULL,
  `perDay` DOUBLE(6,2) NOT NULL,
  `perWeekRatio` DOUBLE(5,4) NOT NULL,
  `fee` DOUBLE(6,2) NOT NULL,
  PRIMARY KEY (`rating_id`, `company_id`, `car_id`),
  INDEX `fk_rating_company1_idx` (`company_id` ASC),
  UNIQUE INDEX `rating_id_UNIQUE` (`rating_id` ASC),
  INDEX `fk_rating_car1_idx` (`car_id` ASC),
  CONSTRAINT `fk_rating_company1`
    FOREIGN KEY (`company_id`)
    REFERENCES `cjrp`.`company` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_rating_car1`
    FOREIGN KEY (`car_id`)
    REFERENCES `cjrp`.`car` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cjrp`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`room` (
  `room_id` INT NOT NULL,
  `type_label_id` INT NOT NULL,
  `capacity` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`room_id`, `type_label_id`),
  UNIQUE INDEX `room_id_UNIQUE` (`room_id` ASC),
  INDEX `fk_room_label1_idx` (`type_label_id` ASC),
  CONSTRAINT `fk_room_label1`
    FOREIGN KEY (`type_label_id`)
    REFERENCES `cjrp`.`label` (`label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cjrp`.`hotelRating`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cjrp`.`hotelRating` (
  `rating_id` INT NOT NULL AUTO_INCREMENT,
  `company_id` INT NOT NULL,
  `perDay` DOUBLE(6,2) NOT NULL,
  `perWeekRatio` DOUBLE(5,4) NOT NULL,
  `fee` DOUBLE(6,2) NOT NULL,
  `type_label_id` INT NOT NULL,
  PRIMARY KEY (`rating_id`, `company_id`, `type_label_id`),
  INDEX `fk_rating_company1_idx` (`company_id` ASC),
  UNIQUE INDEX `rating_id_UNIQUE` (`rating_id` ASC),
  INDEX `fk_hotelRating_room1_idx` (`type_label_id` ASC),
  CONSTRAINT `fk_rating_company10`
    FOREIGN KEY (`company_id`)
    REFERENCES `cjrp`.`company` (`company_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_hotelRating_room1`
    FOREIGN KEY (`type_label_id`)
    REFERENCES `cjrp`.`room` (`type_label_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
