SELECT * 
FROM (SELECT ROW_NUMBER() OVER(ORDER BY LG.TxnID ASC) AS SEQ,
LG.ReqID,
LG.TxnID,
O.ObjectiveName,
LG.TxnDate,
LG.TxnStatus,
S.StatusDescription,
ISNULL(LG.UserECU,'') UserECU,
LG.PartyName,
LG.ObjectiveID,
OC.OCName AS OwnerBranch,
R.UpdateDate as ApproveDate,
LG.DateEntryStart,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Follow Up' AND TxnID = LG.TxnID) AS FU,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Form' AND TxnID = LG.TxnID) AS FORM,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Setup' AND TxnID = LG.TxnID) AS SETUP,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Issue' AND TxnID = LG.TxnID) AS ISSUE,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Confirm' AND TxnID = LG.TxnID) AS GUARANTEE,
(SELECT LGWorkFlow.Status FROM LGWorkFlow WHERE LGTeam = 'LG Cancel' AND TxnID = LG.TxnID) AS CANCEL,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Follow Up' AND TxnID = LG.TxnID) AS USER_FU,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Form' AND TxnID = LG.TxnID) AS USER_FORM,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Setup' AND TxnID = LG.TxnID) AS USER_SETUP,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Issue' AND TxnID = LG.TxnID) AS USER_ISSUE,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Confirm' AND TxnID = LG.TxnID) AS USER_GUARANTEE,
(SELECT ISNULL(LGWorkFlow.UserCode,'') FROM LGWorkFlow WHERE LGTeam = 'LG Cancel' AND TxnID = LG.TxnID) AS USER_CANCEL 
FROM TxnLG LG 
LEFT JOIN TxnReqLG R ON R.ReqID = LG.ReqID
LEFT JOIN Ref_Objective O ON LG.ObjectiveID = O.ObjectiveID 
LEFT JOIN SystemUser U ON U.UserID = R.CreateBy
LEFT JOIN Ref_OCCode OC ON OC.OCCode = U.OCCode
LEFT JOIN Ref_LGStatus S ON S.StatusNo = LG.TxnStatus
) TXN;