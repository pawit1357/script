CREATE TABLE `csps`.`tb_transaction` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `department_id` INT NULL,
  `transaction_type` VARCHAR(1) NULL COMMENT 'I=Income,E=Expenses',
  `description` VARCHAR(200) NULL,
  `amount` DOUBLE NULL,
  `payment_date` DATETIME NULL,
  `create_date` DATETIME NULL,
  `create_by` INT NULL,
  `update_date` DATETIME NULL,
  `update_by` INT NULL,
  PRIMARY KEY (`id`));
-- 

ALTER TABLE `csps`.`tb_transaction` 
ADD INDEX `fk_department_id_idx` (`department_id` ASC),
ADD INDEX `fk_create_by_idx` (`create_by` ASC),
ADD INDEX `fk_update_by_idx` (`update_by` ASC);
;
ALTER TABLE `csps`.`tb_transaction` 
ADD CONSTRAINT `fk_department_id`
  FOREIGN KEY (`department_id`)
  REFERENCES `csps`.`tb_m_department` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_create_by`
  FOREIGN KEY (`create_by`)
  REFERENCES `csps`.`users_login` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_update_by`
  FOREIGN KEY (`update_by`)
  REFERENCES `csps`.`users_login` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
