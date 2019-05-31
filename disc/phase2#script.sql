-- #1
ALTER TABLE `salayateac_disc`.`questionnaire` 
ADD COLUMN `group_id` INT NULL AFTER `id`,
ADD COLUMN `start_date` DATETIME NULL AFTER `person_email`,
ADD COLUMN `end_date` DATETIME NULL AFTER `start_date`,
ADD COLUMN `image_url` VARCHAR(255) NULL AFTER `end_date`;

-- #2
CREATE TABLE `salayateac_disc`.`tb_management_group` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(200) NULL,
  `is_active` VARCHAR(1) NULL DEFAULT 'I',
  PRIMARY KEY (`id`));

-- #3
INSERT INTO `salayateac_disc`.`tb_management_group` (`name`, `description`, `is_active`) VALUES ('Default', 'Default', 'A');

-- #4
ALTER TABLE `salayateac_disc`.`questionnaire` 
ADD INDEX `fk_management_group_idx` (`group_id` ASC);
;
ALTER TABLE `salayateac_disc`.`questionnaire` 
ADD CONSTRAINT `fk_management_group`
  FOREIGN KEY (`group_id`)
  REFERENCES `salayateac_disc`.`tb_management_group` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- #5
ALTER TABLE `salayateac_disc`.`questionnaire` 
DROP FOREIGN KEY `fk_management_group`;
ALTER TABLE `salayateac_disc`.`questionnaire` 
CHANGE COLUMN `group_id` `group_id` INT(11) NULL DEFAULT 1 ;
ALTER TABLE `salayateac_disc`.`questionnaire` 
ADD CONSTRAINT `fk_management_group`
  FOREIGN KEY (`group_id`)
  REFERENCES `salayateac_disc`.`tb_management_group` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

-- #6
update `salayateac_disc`.`questionnaire`  set group_id =1;


-- #7
INSERT INTO `salayateac_disc`.`menu` (`MENU_ICON`, `MENU_NAME`, `URL_NAVIGATE`, `PREVIOUS_MENU_ID`, `DISPLAY_ORDER`, `UPDATE_BY`, `CREATE_DATE`, `UPDATE_DATE`) VALUES ('icon-grid', 'จัดการกลุ่มอบรม', '/index.php/ManagementGroup', '1', '2', 'SYSTEM', '2015-02-13', '2015-02-13');
