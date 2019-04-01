
ALTER TABLE FormLG ADD isCancel BIT NOT NULL DEFAULT 0;
ALTER TABLE FormLG ADD cancelRemark varchar(200) default NULL;