-- USE [digitalsm_cpssit]
GO
/****** Object:  StoredProcedure [dbo].[sp_FormLG_Execute]    Script Date: 3/28/2019 8:41:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: sql_createstore.sql|1815|0|\\Mac\Home\Desktop\sql_createstore.sql


/*MONCHIAN T.*/
    ALTER PROCEDURE  [dbo].[sp_FormLG_Execute]
    (
            @TxnID nvarchar(30),
            @FormID int,
            @FormName nvarchar(255)  = NULL,   
            @PathFileDownload varchar(max) = NULL,
            @IsDownload bit = NULL,
            @PathFileUpload varchar(max) = NULL,
            @IsUpload bit = NULL,
            @PathPrint varchar(max) = NULL,
            @IsPrint bit = NULL,
            @CountPrint int = NULL,
			@isCancel bit = NULL,
			@cancelRemark varchar(200) = NULL,
            @FLAG CHAR(1)
    )
    AS
    IF(@FLAG = 'I') --INSERT FUNCTION
    BEGIN
        INSERT INTO [FormLG]
            (
            [TxnID],
            [FormID],
            [FormName],
            [PathFileDownload],
            [IsDownload],
            [PathFileUpload],
            [IsUpload],
            [PathPrint],
            [IsPrint],
            [CountPrint],[isCancel],[cancelRemark])
        VALUES
            (
            @TxnID,
            @FormID,
            @FormName,
            @PathFileDownload,
            @IsDownload,
            @PathFileUpload,
            @IsUpload,
            @PathPrint,
            @IsPrint,
            @CountPrint,
			@isCancel,@cancelRemark)
    END
    ELSE IF(@FLAG = 'U') --UPDATE FUNCTION
    BEGIN
        UPDATE [FormLG] SET 
            [FormName] = @FormName,
            [PathFileDownload] = @PathFileDownload,
            [IsDownload] = @IsDownload,
            [PathFileUpload] = @PathFileUpload,
            [IsUpload] = @IsUpload,
            [PathPrint] = @PathPrint,
            [IsPrint] = @IsPrint,
            [CountPrint] = @CountPrint,
			[isCancel]=@isCancel,
			[cancelRemark]=@cancelRemark
        WHERE 
            TxnID = @TxnID AND 
            FormID = @FormID
        SELECT @TxnID AS TxnID,@FormID AS FormID
    END


