USE [digitalsm_cpsdata]
GO
/****** Object:  StoredProcedure [dbo].[sp_LGReportQuery]    Script Date: 11/16/2019 4:52:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_LGReportQuery]
(
	@dateQ varchar(50)
)
as
select row_number() over (order by TL.TxnID)as rowno
,TL.TxnID
,TL.PartyName
, oc4.OCName OCName
, oc2.OCName OCName2
, TL.TxnDate
,case when isnull(TD.FormID ,0) = 0 then RD.DocumentName else rf.FormName end as FormName
,TD.DocumentRemark
,TD.SignDate
,isnull(us.UserName,'') as UserName
,rdt.DocumentTypeName Doctype
,oc3.OCName UserBranchOCCName
,TL.BookingBranch Booking
,isnull(B.PathPrint,'') PathPrint
,Datediff(day,TD.SignDate,getdate()) as QueryDate
 
from TxnDocument TD
left join TxnLG TL on TD.TxnID = TL.TxnID
left join TxnReqLG ReqLG on ReqLG.ReqID = TL.ReqID
left join M_LG_Party mLGP on mLGP.PartyID = ReqLG.PartyID
left join ref_form rf on rf.FormID = TD.FormID
left join Ref_DocumentType rdt on rdt.DocumentTypeId = rf.DocumentTypeId
left join Ref_DocumentOther RD on TD.DocumentID = RD.DocumentID
left join SystemUser us on isnull(TD.UserSign,'') = us.UserID
left join SystemUser us2 on isnull(ReqLG.CreateBy,'') = us2.UserID
left join Ref_OCCode oc on us.OCCode = oc.OCCode
left join Ref_OCCode oc2 on us2.OCCode = oc2.OCCode
left join Ref_OCCode oc3 on oc3.OCCode = TL.DestOCCode
left join Ref_OCCode oc4 on oc4.OCCode = mLGP.OCCode

left join FormLG B on TD.TxnID = B.TxnID and TD.FormID = B.FormID

where TD.TxnTypeId = 2
and TD.SignDate is not null
and TD.ReceiveDate is null
and Datediff(day,TD.SignDate,convert(datetime, @dateQ, 102))>30
--exec sp_ReportQuery '2019-06-19'
