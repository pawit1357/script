select ROW_NUMBER() OVER(ORDER BY txnLG.TxnID ASC) AS SEQ,
txnLG.DestOCCode,
txnLG.TxnID,
txnLG.ObjectiveID,
formLG.FormID,
txnLG.ReqID,
txnLG.Printed,
txnLG.LGNo,
txnLG.PartyName,
formLG.FormName,
formLG.cancelRemark,
formLG.PathFileDownload,
PathFileUpload,
txnLG.DateEntryEnd,'L/G' as FormType,
txnLG.PrintedDate,
(case when formLG.isCancel = 1 then 'ยกเลิก' else RefLGStatus.StatusDescription end) as StatusDescription,
txnLG.LGStockNo,txnLG.LGNo 
from[dbo].[TxnLG] txnLG  
left join[dbo].[FormLG] formLG on txnLG.TxnID = formLG.TxnID 
LEFT JOIN Ref_LGStatus RefLGStatus ON txnLG.TxnStatus = RefLGStatus.Status 
WHERE txnLG.LGNo <> '' 
and txnLG.TxnStatus=6 
--and txnLG.DestOCCode ='0620' 
AND ISNULl(formLG.IsPrint,0) = 0 
AND formLG.isCancel=0 order by txnLG.DateEntryEnd desc;


