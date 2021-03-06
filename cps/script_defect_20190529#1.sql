USE [digitalsm_cpssit]
GO
/****** Object:  StoredProcedure [dbo].[sp_FU_Request_Execute]    Script Date: 6/7/2019 1:43:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: sql_createstore.sql|1963|0|\\Mac\Home\Desktop\sql_createstore.sql
/*MONCHIAN T.*/
    ALTER PROCEDURE  [dbo].[sp_FU_Request_Execute]
    (
            @TxnID nvarchar(30),
            @LGTeam nvarchar(20),
            @DateFUReq datetime = NULL,
            @Remark nvarchar(200) = NULL,
            @UserCode nvarchar(6) = NULL,
			@CodeFu varchar(3) = NULL,
			@FuStatus int ,
			@CloseUserCode nvarchar(6) = NULL,
			@DateFuReqClose datetime = NULL,
			@CloseFuRemark nvarchar(200) = NULL,
            @FLAG CHAR(1)
    )
    AS
    IF(@FLAG = 'I') --INSERT FUNCTION
    BEGIN
        INSERT INTO [FU_Request]
            (
            [TxnID],
            [LGTeam],
            [DateFUReq],
            [Remark],
            [UserCode],[CodeFu],[FuStatus],[CloseUserCode],[DateFuReqClose],[CloseFuRemark])
        VALUES
            (
            @TxnID,
            @LGTeam,
            @DateFUReq,
            @Remark,
            @UserCode,@CodeFu,@FuStatus,@CloseUserCode,@DateFuReqClose,@CloseFuRemark)
    END
    ELSE IF(@FLAG = 'U') --UPDATE FUNCTION
    BEGIN
        UPDATE [FU_Request] SET 
            [DateFUReq] = @DateFUReq,
            [Remark] = @Remark,
            [UserCode] = @UserCode,
			[CodeFu] = @CodeFu,
			[FuStatus]=@FuStatus,
			[CloseUserCode]=@CloseUserCode,
			[DateFuReqClose]=@DateFuReqClose,
			[CloseFuRemark]=@CloseFuRemark
        WHERE 
            TxnID = @TxnID AND 
            LGTeam = @LGTeam
        SELECT @TxnID AS TxnID,@LGTeam AS LGTeam
    END


