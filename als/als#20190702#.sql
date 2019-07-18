SELECT * FROM job_sample_group_invoice;



ALTER TABLE `alsi`.`job_sample_group_so` 
ADD COLUMN `so_company` VARCHAR(2000) NULL AFTER `quantity`;


ALTER TABLE `alsi`.`job_sample_group_invoice` 
ADD COLUMN `company` VARCHAR(500) NULL AFTER `update_date`;


INSERT INTO `alsi`.`m_specification` (`ID`, `name`, `status`) VALUES ('0', 'DUMMY', 'A');
INSERT INTO `alsi`.`m_type_of_test` (`ID`, `specification_id`, `name`) VALUES ('0', '0', 'DUMMY');

UPDATE `alsi`.`m_type_of_test` SET `specification_id` = '29' WHERE (`ID` = '324');


update job_sample set specification_id=29,type_of_test_id=324 where specification_id=0 and type_of_test_id=0;