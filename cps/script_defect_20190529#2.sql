
  -- 1)
ALTER TABLE FU_Request add  CloseUserCode nvarchar(6);
ALTER TABLE FU_Request add  DateFuReqClose datetime;
ALTER TABLE FU_Request add  CloseFuRemark nvarchar(200);