select ROW_NUMBER() OVER(ORDER BY txnLG.TxnID ASC) AS SEQ,
txnLG.TxnID,
formLG.FormID,
txnLG.LGNo,
txnLG.PartyName,
formLG.FormName,
formLG.PathFileDownload,
PathFileUpload,
txnLG.TxnDate,
'L/G' as FormType,
txnLG.LGNo 
from[dbo].[TxnLG] txnLG  
left join[dbo].[FormLG] formLG on txnLG.TxnID = formLG.TxnID 
--WHERE txnLG.LGNo <> '' AND txnLG.Printed = ''