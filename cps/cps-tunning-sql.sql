--LG Cancel=1,LG Confirm=1,LG Follow Up=5,LG Form=1,LG Issue=5,LG Setup=1,
--LG Follow Up=cps014,LG Issue=cps012,
--LG Follow Up=cps014,LG Issue=cps013,

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
tStatus.FU,
tStatus.FORM,
tStatus.SETUP,
tStatus.ISSUE,
tStatus.GUARANTEE,
tStatus.CANCEL,

ISNULL(tUsr.USER_FU,'') as USER_FU,
ISNULL(tUsr.USER_FORM,'') as USER_FORM,
ISNULL(tUsr.USER_SETUP,'') as USER_SETUP,
ISNULL(tUsr.USER_ISSUE,'') as USER_ISSUE,
ISNULL(tUsr.USER_GUARANTEE,'') as USER_GUARANTEE,
ISNULL(tUsr.USER_CANCEL,'') as USER_CANCEL,

ISNULL(tUsrChk.USER_FU_CHECKER,'') as USER_FU_CHECKER,
ISNULL(tUsrChk.USER_FORM_CHECKER,'') as USER_FORM_CHECKER,
ISNULL(tUsrChk.USER_SETUP_CHECKER,'') as USER_SETUP_CHECKER,
ISNULL(tUsrChk.USER_ISSUE_CHECKER,'') as USER_ISSUE_CHECKER,
ISNULL(tUsrChk.USER_GUARANTEE_CHECKER,'') as USER_GUARANTEE_CHECKER,
ISNULL(tUsrChk.USER_CANCEL_CHECKER,'') as USER_CANCEL_CHECKER

FROM TxnLG LG 
LEFT JOIN TxnReqLG R ON R.ReqID = LG.ReqID 
LEFT JOIN Ref_Objective O ON LG.ObjectiveID = O.ObjectiveID 
LEFT JOIN SystemUser U ON U.UserID = R.CreateBy 
LEFT JOIN Ref_OCCode OC ON OC.OCCode = U.OCCode 
LEFT JOIN Ref_LGStatus S ON S.StatusNo = LG.TxnStatus
LEFT JOIN 
(
SELECT TxnID,[LG Follow Up] as FU, [LG Form] as FORM,[LG Setup] AS SETUP,[LG Issue] AS ISSUE,[LG Confirm] AS GUARANTEE,[LG Cancel] AS CANCEL FROM ( SELECT TxnID,LGTeam, Status FROM LGWorkFlow ) ps PIVOT ( MAX (Status) FOR LGTeam IN ( [LG Follow Up], [LG Form],[LG Setup],[LG Issue],[LG Confirm],[LG Cancel])) AS pvt
) AS tStatus on tStatus.TxnID = LG.TxnID
LEFT JOIN 
(
SELECT TxnID,[LG Follow Up] as USER_FU, [LG Form] as USER_FORM,[LG Setup] AS USER_SETUP,[LG Issue] AS USER_ISSUE,[LG Confirm] AS USER_GUARANTEE,[LG Cancel] AS USER_CANCEL FROM ( SELECT TxnID,LGTeam, UserCode FROM LGWorkFlow ) ps PIVOT ( MAX (UserCode) FOR LGTeam IN ( [LG Follow Up], [LG Form],[LG Setup],[LG Issue],[LG Confirm],[LG Cancel])) AS pvt2
) AS tUsr on tUsr.TxnID = LG.TxnID
LEFT JOIN 
(
SELECT TxnID,[LG Follow Up] as USER_FU_CHECKER, [LG Form] as USER_FORM_CHECKER,[LG Setup] AS USER_SETUP_CHECKER,[LG Issue] AS USER_ISSUE_CHECKER,[LG Confirm] AS USER_GUARANTEE_CHECKER,[LG Cancel] AS USER_CANCEL_CHECKER FROM ( SELECT TxnID,LGTeam, UserChecker FROM LGWorkFlow ) ps PIVOT ( MAX (UserChecker) FOR LGTeam IN ( [LG Follow Up], [LG Form],[LG Setup],[LG Issue],[LG Confirm],[LG Cancel])) AS pvt2
) AS tUsrChk on tUsrChk.TxnID = LG.TxnID
) TXN;





