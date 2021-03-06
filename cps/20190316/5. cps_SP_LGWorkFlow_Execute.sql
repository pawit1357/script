USE [digitalsm_cpssit]
GO
/****** Object:  StoredProcedure [dbo].[sp_LGWorkFlow_Execute]    Script Date: 3/18/2019 2:38:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Batch submitted through debugger: sql_createstore.sql|2564|0|\\Mac\Home\Desktop\sql_createstore.sql
/*MONCHIAN T.*/
    ALTER PROCEDURE  [dbo].[sp_LGWorkFlow_Execute]
    (
            @TxnID nvarchar(30),
            @LGTeam nvarchar(20),
            @Status varchar(1) = NULL,
            @Dateentry datetime = NULL,
            @UserCode nvarchar(6) = NULL,
			@UserChecker nvarchar(6) = NULL,
			@DateECUAssign datetime,
            @FLAG CHAR(1)
    )
    AS
    IF(@FLAG = 'I') --INSERT FUNCTION
    BEGIN
        INSERT INTO [LGWorkFlow]
            (
            [TxnID],
            [LGTeam],
            [Status],
            [Dateentry],
            [UserCode],[UserChecker],[DateECUAssign])
        VALUES
            (
            @TxnID,
            @LGTeam,
            @Status,
            @Dateentry,
            @UserCode,@UserChecker,@DateECUAssign)
    END
    ELSE IF(@FLAG = 'U') --UPDATE FUNCTION
    BEGIN
        UPDATE [LGWorkFlow] SET 
            [Status] = @Status,
            [Dateentry] = @Dateentry,
            [UserCode] = @UserCode,
			[UserChecker] = @UserChecker,
			[DateECUAssign] = @DateECUAssign
        WHERE 
            TxnID = @TxnID AND 
            LGTeam = @LGTeam
        SELECT @TxnID AS TxnID,@LGTeam AS LGTeam
    END


