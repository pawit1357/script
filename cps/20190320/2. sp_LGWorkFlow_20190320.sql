--USE [digitalsm_CPSDATA]
GO
/****** Object:  StoredProcedure [dbo].[sp_LGWorkFlow_Execute]    Script Date: 3/19/2019 8:44:13 PM ******/
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
			@DateECUAssign datetime = NULL,
			@DateTeamAcpt datetime = NULL,
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
            [UserCode],[UserChecker],[DateECUAssign],[DateTeamAcpt])
        VALUES
            (
            @TxnID,
            @LGTeam,
            @Status,
            @Dateentry,
            @UserCode,@UserChecker,@DateECUAssign,@DateTeamAcpt)
    END
    ELSE IF(@FLAG = 'U') --UPDATE FUNCTION
    BEGIN
        UPDATE [LGWorkFlow] SET 
            [Status] = @Status,
            [Dateentry] = @Dateentry,
            [UserCode] = @UserCode,
			[UserChecker] = @UserChecker,
			[DateECUAssign] = @DateECUAssign,
			[DateTeamAcpt] = @DateTeamAcpt
        WHERE 
            TxnID = @TxnID AND 
            LGTeam = @LGTeam
        SELECT @TxnID AS TxnID,@LGTeam AS LGTeam
    END


