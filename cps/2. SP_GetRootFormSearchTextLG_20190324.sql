--USE [digitalsm_CPSDATA]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRootFormSearchTextLG]    Script Date: 3/24/2019 7:09:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Neeranuch.y
-- Create date: 2018-11-27
-- Description:	Get Tree view Form by Search Text
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetRootFormSearchTextLG]
@param_search varchar(max)
,@param_TxnID varchar(100) = ''
AS
BEGIN
	select A.FormID,(B.FormFile +' | '+B.FormName+' | '+B.FormType) as FormName
			,case when C.FormID is null then 'False' else 'True' end as IsChk 
	from TxnPackage A
	left join Ref_form B on A.FormID = B.FormID
	left join FormLG C on C.TxnID = @param_TxnID and A.FormID = C.FormID
	where isnull(A.isDelete,0) = 0 and isnull(TxnPackageParentId,0) != 0 	
	and (B.FormFile like '%'+ @param_search +'%' or B.FormName like '%'+ @param_search +'%' or B.FormType like '%'+ @param_search +'%')
	and B.LegalType = 'LG'
	order by B.FormName
END
