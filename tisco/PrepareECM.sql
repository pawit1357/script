USE [Tisco_Onsale]
GO
/****** Object:  StoredProcedure [dbo].[PrepareECM]    Script Date: 4/29/2019 2:44:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[PrepareECM]
    @run_row int
AS 

DECLARE @Temp_ECM Table (
	caseNo varchar(50),
	form_document_id int,
	lot_no varchar(10),
	sequence_no varchar(10)
);

DECLARE @Temp_loan_id Table (
	loan_id int
);

INSERT INTO @Temp_loan_id (loan_id)
SELECT TOP (@run_row)  dbo.TC_Case2.loan_id FROM dbo.TC_Case2 WHERE ecm_flag=0 Order By dbo.TC_Case2.loan_id ASC

INSERT INTO @Temp_ECM ( caseNo, form_document_id, lot_no, sequence_no)
SELECT  caseNo, dbo.On_Form_Document.form_document_id, dbo.On_Form_Document.lot_no, dbo.On_Form_Document.sequence_no
FROM dbo.On_Form_Document LEFT JOIN dbo.TC_Case2 ON dbo.On_Form_Document.loan_id = dbo.TC_Case2.loan_id
WHERE dbo.On_Form_Document.ecm_upload=0 AND dbo.On_Form_Document.loan_id in (SELECT loan_id FROM  @Temp_loan_id)


UPDATE On_Form_Document
SET [ecm_filename] = B.caseNo + '_' + B.lot_no + '_'+ B.sequence_no
      ,[ecm_upload] = 1
FROM On_Form_Document AS A LEFT JOIN @Temp_ECM AS B ON A.form_document_id=B.form_document_id
WHERE A.form_document_id=B.form_document_id

UPDATE TC_Case2
SET [ecm_flag] = 1
FROM TC_Case2 AS A LEFT JOIN @Temp_loan_id AS B ON A.loan_id=B.loan_id 
WHERE A.loan_id=B.loan_id

DELETE @Temp_ECM;
DELETE @Temp_loan_id;