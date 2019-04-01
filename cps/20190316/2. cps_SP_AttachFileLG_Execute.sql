   ALTER PROCEDURE  [dbo].[sp_AttachFileLG_Execute]
    (
            @TxnID nvarchar(30) = NULL,
            @ReqID nvarchar(30),
            @FileName nvarchar(100),
            @Location nvarchar(255) = NULL,
            @Type nvarchar(5) = NULL,
            @Description nvarchar(100) = NULL,
			@UserOwner nvarchar(6) = NULL,
            @FLAG CHAR(1)
    )
    AS
    IF(@FLAG = 'I') --INSERT FUNCTION
    BEGIN
        INSERT INTO [AttachFileLG]
            (
            [TxnID],
            [ReqID],
            [FileName],
            [Location],
            [Type],
            [Description],[UserOwner])
        VALUES
            (
            @TxnID,
            @ReqID,
            @FileName,
            @Location,
            @Type,
            @Description,@UserOwner)
    END
    ELSE IF(@FLAG = 'U') --UPDATE FUNCTION
    BEGIN
        UPDATE [AttachFileLG] SET 
            [TxnID] = @TxnID,
            [Location] = @Location,
            [Type] = @Type,
            [Description] = @Description,
			[UserOwner] = @UserOwner
        WHERE 
            ReqID = @ReqID AND 
            FileName = @FileName
        SELECT @ReqID AS ReqID,@FileName AS FileName
    END