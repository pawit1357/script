USE [digitalsm_cpsdata]
GO
/****** Object:  StoredProcedure [dbo].[sp_TxnReqLG_Select]    Script Date: 11/6/2019 9:46:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    ALTER PROCEDURE [dbo].[sp_TxnReqLG_Select]
    (
            @ReqID nvarchar(30) = NULL,
            @FLAG CHAR(1)
    )
    AS
    IF(@FLAG = 'A') --SELECT ALL
    BEGIN
        SELECT * FROM [TxnReqLG] where isDelete=0 ORDER BY REQID
    END
    ELSE IF(@FLAG = 'P') --SELECT BY PRIMARY KEY
    BEGIN
        SELECT * FROM [TxnReqLG]
             WHERE isDelete=0 and ReqID = @ReqID
    END
