/****** Script for SelectTopNRows command from SSMS  ******/
SELECT req.[ReqDate]
      ,req.[PartyName]
	  ,req.[PartyAge]
      ,req.[Nationality]
      ,req.[Citizenship]
      ,req.[AddressNo]
      ,req.[Moo]
      ,req.[Soi]
      ,req.[Street]
      ,req.[Trok]
      ,req.[District]
      ,req.[Amphur]
      ,req.[ProvinceID]
	  ,refProv.ProvinceName AS ProvinceName
	  ,req.[PhoneNo]
      ,req.[AuthorityName]
      ,req.[AccountType]
	  ,req.[AccountNo]
      ,req.[AccountName]
      ,req.[AccountBranch]
      ,req.[EMobileNo]
      ,req.[EEmailAddress]
      ,req.[OCCode]
	  ,refOcc.[OCName]
	  -- BeneName
	  ,refOcc.[OAddressNo]
	  ,refOcc.[OMoo]
	  ,refOcc.[OSoi]
	  ,refOcc.[OStreet]
	  ,refOcc.[ODistrict]
	  ,refOcc.[OAmphur]
	  ,refOcc.[OProvinceID]
	  ,refOcc.[OPhoneNo]
      ,req.[LGAmt]
      ,req.[StartDate]
      ,req.[EndDate]
	  ,req.[StartDate] AS NStartDate
  FROM [TxnReqLG] req 
  left join Ref_Province refProv on req.ProvinceID = refProv.ProvinceID
  left join Ref_OCCode refOcc on req.OCCode = refOcc.OCCode
  


  select * from [dbo].[Ref_OCCode];
  select * from [dbo].[Ref_Benefitary];