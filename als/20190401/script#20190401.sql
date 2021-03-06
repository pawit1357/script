# -- script (1)
CREATE TABLE `template_seagate_gcms_coverpage_2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) DEFAULT NULL,
  `procedure_no` varchar(45) DEFAULT NULL,
  `sample_id` int(11) DEFAULT NULL,
  `sample_size` varchar(45) DEFAULT NULL,
  `extraction_medium` varchar(45) DEFAULT NULL,
  `extraction_volumn` varchar(45) DEFAULT NULL,
  `UnitMotorOilContamination` int(11) DEFAULT NULL,
  `UnitMotorHub` int(11) DEFAULT NULL,
  `UnitMotorHubSub` int(11) DEFAULT NULL,
  `UnitMotorBase` int(11) DEFAULT NULL,
  `UnitMotorBaseSub` int(11) DEFAULT NULL,
  `UnitCompound` int(11) DEFAULT NULL,
  `row_type` int(11) DEFAULT NULL,
  `A` varchar(255) DEFAULT NULL,
  `B` varchar(255) DEFAULT NULL,
  `C` varchar(255) DEFAULT NULL,
  `B13` varchar(20) DEFAULT NULL,
  `B14` varchar(20) DEFAULT NULL,
  `B15` varchar(20) DEFAULT NULL,
  `B16` varchar(20) DEFAULT NULL,
  `B17` varchar(20) DEFAULT NULL,
  `B18` varchar(20) DEFAULT NULL,
  `B19` varchar(20) DEFAULT NULL,
  `B20` varchar(20) DEFAULT NULL,
  `B21` varchar(20) DEFAULT NULL,
  `B22` varchar(20) DEFAULT NULL,
  `B23` varchar(20) DEFAULT NULL,
  `B24` varchar(20) DEFAULT NULL,
  `B25` varchar(20) DEFAULT NULL,
  `B26` varchar(20) DEFAULT NULL,
  `B27` varchar(20) DEFAULT NULL,
  `B28` varchar(20) DEFAULT NULL,
  `B29` varchar(20) DEFAULT NULL,
  `B30` varchar(20) DEFAULT NULL,
  `B31` varchar(20) DEFAULT NULL,
  `B32` varchar(20) DEFAULT NULL,
  `B34` varchar(20) DEFAULT NULL,
  `B35` varchar(20) DEFAULT NULL,
  `B36` varchar(20) DEFAULT NULL,
  `B39` varchar(20) DEFAULT NULL,
  `B40` varchar(20) DEFAULT NULL,
  `B41` varchar(20) DEFAULT NULL,
  `B42` varchar(20) DEFAULT NULL,
  `B43` varchar(20) DEFAULT NULL,
  `B44` varchar(20) DEFAULT NULL,
  `B45` varchar(20) DEFAULT NULL,
  `B46` varchar(20) DEFAULT NULL,
  `B47` varchar(20) DEFAULT NULL,
  `B48` varchar(20) DEFAULT NULL,
  `B49` varchar(20) DEFAULT NULL,
  `B50` varchar(20) DEFAULT NULL,
  `B51` varchar(20) DEFAULT NULL,
  `B52` varchar(20) DEFAULT NULL,
  `C40` varchar(20) DEFAULT NULL,
  `C41` varchar(20) DEFAULT NULL,
  `C42` varchar(20) DEFAULT NULL,
  `B53` varchar(20) DEFAULT NULL,
  `B54` varchar(20) DEFAULT NULL,
  `B55` varchar(20) DEFAULT NULL,
  `B56` varchar(20) DEFAULT NULL,
  `B57` varchar(20) DEFAULT NULL,
  `B58` varchar(20) DEFAULT NULL,
  `B59` varchar(20) DEFAULT NULL,
  `B60` varchar(20) DEFAULT NULL,
  `B61` varchar(20) DEFAULT NULL,
  `B62` varchar(20) DEFAULT NULL,
  `C23` varchar(20) DEFAULT NULL,
  `C24` varchar(20) DEFAULT NULL,
  `C25` varchar(20) DEFAULT NULL,
  `C26` varchar(20) DEFAULT NULL,
  `C27` varchar(20) DEFAULT NULL,
  `C28` varchar(20) DEFAULT NULL,
  `C30` varchar(20) DEFAULT NULL,
  `C31` varchar(20) DEFAULT NULL,
  `C32` varchar(20) DEFAULT NULL,
  `C34` varchar(20) DEFAULT NULL,
  `C35` varchar(20) DEFAULT NULL,
  `C36` varchar(20) DEFAULT NULL,
  `C43` varchar(20) DEFAULT NULL,
  `C44` varchar(20) DEFAULT NULL,
  `C45` varchar(20) DEFAULT NULL,
  `C46` varchar(20) DEFAULT NULL,
  `C47` varchar(20) DEFAULT NULL,
  `C48` varchar(20) DEFAULT NULL,
  `C49` varchar(20) DEFAULT NULL,
  `C50` varchar(20) DEFAULT NULL,
  `C51` varchar(20) DEFAULT NULL,
  `C52` varchar(20) DEFAULT NULL,
  `D40` varchar(20) DEFAULT NULL,
  `D41` varchar(20) DEFAULT NULL,
  `D42` varchar(20) DEFAULT NULL,
  `D43` varchar(20) DEFAULT NULL,
  `D44` varchar(20) DEFAULT NULL,
  `D45` varchar(20) DEFAULT NULL,
  `D46` varchar(20) DEFAULT NULL,
  `D47` varchar(20) DEFAULT NULL,
  `D48` varchar(20) DEFAULT NULL,
  `D49` varchar(20) DEFAULT NULL,
  `D50` varchar(20) DEFAULT NULL,
  `D51` varchar(20) DEFAULT NULL,
  `D52` varchar(20) DEFAULT NULL,
  `selected_base` int(11) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `C20` varchar(20) DEFAULT NULL,
  `C21` varchar(20) DEFAULT NULL,
  `C22` varchar(20) DEFAULT NULL,
  `C29` varchar(20) DEFAULT NULL,
  `D20` varchar(20) DEFAULT NULL,
  `D21` varchar(20) DEFAULT NULL,
  `D22` varchar(20) DEFAULT NULL,
  `D23` varchar(20) DEFAULT NULL,
  `D24` varchar(20) DEFAULT NULL,
  `D25` varchar(20) DEFAULT NULL,
  `D26` varchar(20) DEFAULT NULL,
  `D27` varchar(20) DEFAULT NULL,
  `D28` varchar(20) DEFAULT NULL,
  `D29` varchar(20) DEFAULT NULL,
  `D30` varchar(20) DEFAULT NULL,
  `D31` varchar(20) DEFAULT NULL,
  `D32` varchar(20) DEFAULT NULL,
  `C14` varchar(20) DEFAULT NULL,
  `C15` varchar(20) DEFAULT NULL,
  `C16` varchar(20) DEFAULT NULL,
  `C17` varchar(20) DEFAULT NULL,
  `C18` varchar(20) DEFAULT NULL,
  `C19` varchar(20) DEFAULT NULL,
  `E20` varchar(20) DEFAULT NULL,
  `E21` varchar(20) DEFAULT NULL,
  `E22` varchar(20) DEFAULT NULL,
  `E23` varchar(20) DEFAULT NULL,
  `E24` varchar(20) DEFAULT NULL,
  `E25` varchar(20) DEFAULT NULL,
  `E26` varchar(20) DEFAULT NULL,
  `E27` varchar(20) DEFAULT NULL,
  `E28` varchar(20) DEFAULT NULL,
  `E29` varchar(20) DEFAULT NULL,
  `E30` varchar(20) DEFAULT NULL,
  `E31` varchar(20) DEFAULT NULL,
  `E32` varchar(20) DEFAULT NULL,
  `F20` varchar(20) DEFAULT NULL,
  `F21` varchar(20) DEFAULT NULL,
  `F22` varchar(20) DEFAULT NULL,
  `F23` varchar(20) DEFAULT NULL,
  `F24` varchar(20) DEFAULT NULL,
  `F25` varchar(20) DEFAULT NULL,
  `F26` varchar(20) DEFAULT NULL,
  `F27` varchar(20) DEFAULT NULL,
  `F28` varchar(20) DEFAULT NULL,
  `F29` varchar(20) DEFAULT NULL,
  `F30` varchar(20) DEFAULT NULL,
  `F31` varchar(20) DEFAULT NULL,
  `F32` varchar(20) DEFAULT NULL,
  `C13` varchar(20) DEFAULT NULL,
  `E13` varchar(20) DEFAULT NULL,
  `E14` varchar(20) DEFAULT NULL,
  `E15` varchar(20) DEFAULT NULL,
  `E16` varchar(20) DEFAULT NULL,
  `E17` varchar(20) DEFAULT NULL,
  `E18` varchar(20) DEFAULT NULL,
  `E19` varchar(20) DEFAULT NULL,
  `F13` varchar(20) DEFAULT NULL,
  `F14` varchar(20) DEFAULT NULL,
  `F15` varchar(20) DEFAULT NULL,
  `F16` varchar(20) DEFAULT NULL,
  `F17` varchar(20) DEFAULT NULL,
  `F18` varchar(20) DEFAULT NULL,
  `F19` varchar(20) DEFAULT NULL,
  `remark1` varchar(150) DEFAULT NULL,
  `remark2` varchar(150) DEFAULT NULL,
  `remark3` varchar(150) DEFAULT NULL,
  `remark4` varchar(150) DEFAULT NULL,
  `remark5` varchar(150) DEFAULT NULL,
  `UnitCompoundSub` int(11) DEFAULT NULL,
  `cp_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_sample_idx_81_idx` (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14893 DEFAULT CHARSET=utf8;

# -- script (2)
ALTER TABLE `template_seagate_gcms_coverpage`
  add column `E13` varchar(20) DEFAULT NULL,
  add column `E14` varchar(20) DEFAULT NULL,
  add column `E15` varchar(20) DEFAULT NULL,
  add column `E16` varchar(20) DEFAULT NULL,
  add column `E17` varchar(20) DEFAULT NULL,
  add column `E18` varchar(20) DEFAULT NULL,
  add column `E19` varchar(20) DEFAULT NULL,
  add column `F13` varchar(20) DEFAULT NULL,
  add column `F14` varchar(20) DEFAULT NULL,
  add column `F15` varchar(20) DEFAULT NULL,
  add column `F16` varchar(20) DEFAULT NULL,
  add column `F17` varchar(20) DEFAULT NULL,
  add column `F18` varchar(20) DEFAULT NULL,
  add column `F19` varchar(20) DEFAULT NULL;
  
  
  
  # -- script (3)
  

ALTER TABLE `alsi`.`tb_m_component` 
CHANGE COLUMN `A` `A` VARCHAR(500) NULL DEFAULT NULL ;