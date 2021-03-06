USE [digitalsm_cpsdata]
GO
/****** Object:  StoredProcedure [dbo].[sp_FormFieldSame]    Script Date: 6/20/2019 8:29:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_FormFieldSameLG]
(
	@TxnID varchar(50) 
)
as
--declare @TxnID varchar(50) = 'CPS1905000010'
--declare @TxnID varchar(50) = 'CPS1905000007'

--Same

select * from (

Select 99999 [FormFieldRunnigID]
,'' as [FormName]
,'' as [FormDesc]
,'' as [FormField]
,[TableName]
,[FieldName]
,[FieldDescription]
,[FormGroup]
,0 as [SortID]
,[PartyFieldID] as [PartyFieldID]
,0 as [FormID]
--,rff.IsDelete as [IsDelete]
,NULL as [IsDelete]
,NULL as[Creator]
,NULL as[CreateDateTime]
,NULL as[Reviser]
,NULL as[ReviserDateTime]
,rff.DisplayFormat as [DisplayFormat]
,'_ข้อมูลที่ใช้ร่วมกัน' as FormDisplay

 from 
 FormLG fl
 left join  Ref_FormField rff on fl.FormID = rff.FormID and TxnID = @TxnID and rff.IsDelete = 0 
 left join Ref_Form rf on fl.FormID = rf.FormID 
 where rff.FormGroup <> 'FREE' 
 
 group by 
 [TableName]
,[FieldName]
,[FieldDescription]
,[FormGroup]
,[PartyFieldID]
,rff.DisplayFormat
having count(*) > 1

--order by [FieldDescription]

union 


 Select rff.*
,rf.FormFile + ' | ' + rf.FormName + ' | ' + rf.FormType as FormDisplay 

 from  FormLG fl
 left join  Ref_FormField rff on fl.FormID = rff.FormID and TxnID = @TxnID and rff.IsDelete = 0 
 left join Ref_Form rf on fl.FormID = rf.FormID 
 where rff.FormGroup <> 'FREE' 



and not EXISTS (
 Select  
 _rff.[TableName]
,_rff.[FieldName]
,_rff.[FieldDescription]
,_rff.[FormGroup]
,_rff.[PartyFieldID]
,_rff.DisplayFormat

 from  FormLG _fl
 left join  Ref_FormField _rff on _fl.FormID = _rff.FormID and _fl.TxnID = @TxnID and _rff.IsDelete = 0 
 left join Ref_Form _rf on _fl.FormID = _rf.FormID 
 where _rff.FormGroup <> 'FREE' 

and rff.[TableName] =_rff.[TableName]
and rff.[FieldName] =_rff.[FieldName]
and rff.[FieldDescription] =_rff.[FieldDescription]
and rff.[FormGroup] =_rff.[FormGroup]
and isnull(rff.[PartyFieldID],'') = isnull(_rff.[PartyFieldID],'')
and isnull(rff.DisplayFormat,'') = isnull(_rff.DisplayFormat,'')

 group by 
 _rff.[TableName]
,_rff.[FieldName]
,_rff.[FieldDescription]
,_rff.[FormGroup]
,_rff.[PartyFieldID]
,_rff.DisplayFormat
having count(*) > 1
 )

 union

  Select rff.*
,rf.FormFile + ' | ' + rf.FormName + ' | ' + rf.FormType as FormDisplay 
 from  FormLG fl
 left join  Ref_FormField rff on fl.FormID = rff.FormID and TxnID = @TxnID and rff.IsDelete = 0 
 left join Ref_Form rf on fl.FormID = rf.FormID 
 where rff.FormGroup = 'FREE'
 ) A

 order by A.FormID,A.SortID,A.FieldDescription