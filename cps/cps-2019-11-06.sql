ALTER TABLE [dbo].[TxnLG]
  ADD isDelete bit default 0;

  ALTER TABLE [dbo].[TxnReqLG]
  ADD isDelete bit default 0;


  update [dbo].[TxnLG] set isDelete=0;
  update [dbo].[TxnReqLG] set isDelete=0;