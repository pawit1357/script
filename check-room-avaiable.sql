/****** Script for SelectTopNRows command from SSMS  ******/
SELECT convert(varchar(10),DATE_FROM,108),convert(varchar(10),DATE_TO,108),*
FROM [ITGRB].[dbo].[TB_BOOKING] where BOOKING_ROOM_ID = 2
  AND STATUS <> 3
  AND convert(varchar(10),DATE_FROM,105) = '18-05-2018'  
  ORDER BY DATE_FROM 
SELECT convert(varchar(10),DATE_FROM,108),convert(varchar(10),DATE_TO,108),*
FROM [ITGRB].[dbo].[TB_BOOKING] where BOOKING_ROOM_ID = 2
  AND STATUS <> 3
  AND convert(varchar(10),DATE_FROM,105) = '18-05-2018'  
  AND  
  (
	'2018-05-18 18:30' between DATE_FROM and DATE_TO
  )






  -- sit user --
  --apsgsb5/P@ssw0rd
  
  -- AND '2018-05-18 9:30' <= DATE_TO 
  -- delete from [TB_BOOKING];