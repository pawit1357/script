-- alter field length
ALTER TABLE TxnReqLG ALTER COLUMN BenefitaryCode nvarchar(200);
ALTER TABLE TxnLG ALTER COLUMN BenefitaryCode nvarchar(200);

-- add column
ALTER TABLE TxnReqLG ADD owner nvarchar(200);
ALTER TABLE TxnReqLG ALTER COLUMN UserBranch nvarchar(6);-- drop
--
ALTER TABLE TxnReqLG ADD BookBranch  nvarchar(4);
ALTER TABLE TxnReqLG ADD DocDate  Date;
ALTER TABLE TxnReqLG ADD EcuStatus  varchar(1);


-- ALTER TABLE Ref_Objective ADD Seq int;
-- EXEC sp_rename 'dbo.TxnReqLG', 'UserBranch', 'CreateBy';  

-- sp_RENAME 'TxnReqLG.UserBranch', 'CreateBy' , 'COLUMN';



SELECT reqStatus,userCode,* FROM TxnReqLG;
SELECT * FROM TxnLG;
SELECT * FROM AttachFileLG;
SELECT * FROM LGWorkFlow;
SELECT * FROM FU_Request;
SELECT * FROM Ref_OCCode where OCCode='2536';

select * FROM FormLG;

-- init data
-- delete FROM AttachFileLG;
-- delete FROM LGWorkFlow;
-- delete FROM FU_Request;
-- delete FROM TxnReqLG;
-- delete FROM TxnLG;
-- delete FROM FormLG;
-- delete FROM M_LGStock;
-- delete FROM M_LGStockControl;

SELECT * FROM M_LGStockControl;
SELECT * FROM M_LGStock;




update TxnReqLG set reqStatus=1 

-- ALTER TABLE TxnReqLG DROP "UserBranch";
-- ALTER TABLE TxnReqLG ALTER COLUMN UserBranch nvarchar(6);-- drop
--delete from attachFileLG where TxnID in ('7651f31ba8a8','e09c54d05111','71a5f20dd4d3','59c4ce17dc14','59c4ce17dc14');

--delete from attachFileLG where FileName='';



SELECT * FROM [Ref_Province] ORDER BY ProvinceName

SELECT * FROM [Ref_OCCode] ORDER BY OCName
