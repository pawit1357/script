USE [digitalsm_cpssit]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRootForm]    Script Date: 3/16/2019 11:36:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Neerancuh.y
-- Create date: 2018-11-23
-- Description:	Get root Form
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetRootForm]
@param_Type varchar(10)
,@param_PackageTypeId varchar(100) = ''
,@param_parent varchar(10) = ''
,@param_TxnID varchar(100) = ''
AS
BEGIN
	if (@param_Type = 1)
	begin
		select * from Ref_PackageType where isnull(isDelete,0) != 1 
	end

	else if (@param_Type = 2)
	begin
		SELECT  DISTINCT  f.FormID,*,      
		   CASE
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) = 0 
					THEN   p.TxnPackageName
			 WHEN  isnull(p.FormID,0)!= 0  THEN  f.FormFile +' | '+f.FormName+' | '+f.FormType
          
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) != 0 THEN   dt.DocumentTypeName

			 else 'ไม่พบข้อมูล'
			 END
			 as PackageName   
		 FROM         TxnPackage  p 
		 left join       Ref_Form f  on p.FormID=f.FormID 
		 left join  Ref_DocumentType dt on p.DocumentTypeId = dt.DocumentTypeId
        
		WHERE (NOT (p.PackageTypeId IS NULL)) and isnull(p.IsDelete,0) = 0  and isnull(dt.IsDelete,0) = 0 and ISNULL(TxnPackageParentId,0) = 0 and PackageTypeId = @param_PackageTypeId
	end

	else if (@param_Type = 3)
	begin
		SELECT  DISTINCT  f.FormID,*,      
		   CASE
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) = 0 
					THEN   p.TxnPackageName
			 WHEN  isnull(p.FormID,0)!= 0  THEN  f.FormFile +' | '+f.FormName+' | '+f.FormType
          
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) != 0 THEN   dt.DocumentTypeName

			 else 'ไม่พบข้อมูล'
			 END as PackageName
		   ,case when C.FormID is null then 'False' else 'True' end as IsChk 
		 FROM         TxnPackage  p 
		 left join Ref_Form f  on p.FormID=f.FormID 
		 left join Ref_DocumentType dt on p.DocumentTypeId = dt.DocumentTypeId
         left join FormLegal C on C.TxnID = @param_TxnID and p.FormID = C.FormID
		WHERE (NOT (p.PackageTypeId IS NULL)) and isnull(p.IsDelete,0) = 0  and isnull(dt.IsDelete,0) = 0 
		and isnull( p.TxnPackageParentId,0) = @param_parent and PackageTypeId = @param_PackageTypeId
		and f.LegalType = 'LEGAL'
		ORDER BY f.FormName
	end

	else if (@param_Type = 4)
	begin
		SELECT  DISTINCT  f.FormID,*,      
		   CASE
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) = 0 
					THEN   p.TxnPackageName
			 WHEN  isnull(p.FormID,0)!= 0  THEN  f.FormFile +' | '+f.FormName+' | '+f.FormType
          
			 WHEN  isnull(f.FormID,0) = 0  and isnull(p.DocumentTypeId,0) != 0 THEN   dt.DocumentTypeName

			 else 'ไม่พบข้อมูล'
			 END as PackageName
		   ,case when C.FormID is null then 'False' else 'True' end as IsChk 
		 FROM         TxnPackage  p 
		 left join Ref_Form f  on p.FormID=f.FormID 
		 left join Ref_DocumentType dt on p.DocumentTypeId = dt.DocumentTypeId
         left join FormLG C on p.FormID = C.FormID -- and C.TxnID = @param_TxnID
		WHERE (NOT (p.PackageTypeId IS NULL)) and isnull(p.IsDelete,0) = 0  and isnull(dt.IsDelete,0) = 0 
		-- and isnull( p.TxnPackageParentId,0) = @param_parent and PackageTypeId = @param_PackageTypeId
		and f.LegalType = 'LG'
		ORDER BY f.FormName
	end
END
