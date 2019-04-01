
DECLARE @header_sm_id AS int = 8774;  

select * from [dbo].[scsegment] where HeaderSegment_idHeaderSegment=@header_sm_id;
select * from [dbo].[hs_segment] where idHS_segment=@header_sm_id;
--select * from [dbo].[tlsegment] where HeaderSegment_idHeaderSegment=@header_sm_id;
--select * from [dbo].[pnsegment] where HeaderSegment_idHeaderSegment=@header_sm_id;
--select * from [dbo].[pa_segment] where HeaderSegment_idHeaderSegment=@header_sm_id;
--select * from [dbo].[iq_segment] where HeaderSegment_idHeaderSegment=@header_sm_id;
--select * from [dbo].[idsegment] where HeaderSegment_idHeaderSegment=@header_sm_id;
--select * from [dbo].[headersegment] where idHeaderSegment=@header_sm_id;
--select * from [dbo].[es_segment] where HeaderSegment_idHeaderSegment=@header_sm_id;




-- reset
--delete from [dbo].[scsegment];
--delete from [dbo].[pnsegment];
--delete from [dbo].[pa_segment];
--delete from [dbo].[iq_segment];
--delete from [dbo].[idsegment];
--delete from [dbo].[hs_segment];
--delete from [dbo].[es_segment];
--delete from [dbo].[tlsegment];
--delete from [dbo].[headersegment];


