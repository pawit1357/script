
-- tuning procedure
insert On_Config(config_name,config_value,description,config_type_id) values('ExecuteCommandTimeOut','300','Execute Command TimeOut (second)',3);

-- create index (tc_case2)
CREATE INDEX idx_caseStatusCPO ON TC_Case2 (caseStatusCPO);
CREATE INDEX idx_mobile_key ON TC_Case2 (mobile_key);
CREATE INDEX idx_loan_id ON TC_Case2 (loan_id);
CREATE INDEX idx_ecm_flag ON TC_Case2 (ecm_flag);

CREATE INDEX idx_ecm_upload ON On_Form_Document (ecm_upload);
CREATE INDEX idx_loan_id ON On_Form_Document (loan_id);

