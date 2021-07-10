-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema showerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `showerdb` ;

-- -----------------------------------------------------
-- Schema showerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `showerdb` DEFAULT CHARACTER SET utf8 ;
USE `showerdb` ;

-- -----------------------------------------------------
-- Table `Shower`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Shower` ;

CREATE TABLE IF NOT EXISTS `Shower` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `price` DECIMAL(2,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS student@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'student'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Shower`
-- -----------------------------------------------------
START TRANSACTION;
USE `showerdb`;
INSERT INTO `Shower` (`id`, `address`, `city`, `price`) VALUES (1, '1 Colorado st', 'Pueblo', NULL);

COMMIT;

