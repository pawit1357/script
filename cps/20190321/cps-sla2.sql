---------- # NON-FU # Standard Form# (ไม่มีทีม Form)	  ---------- 
SELECT typ1,typ2,_DATE,_TYP,count(txnId) _VAL FROM (
SELECT 
txnLG.TxnID,
'non-fu' as typ1, 
(CASE WHEN (SELECT COUNT(TXNID) FROM LGWorkFlow WHERE TXNID = txnLG.TxnID AND LGTeam IN('LG Form')) = 0 THEN 'Non-Standard Form' ELSE 'Standard Form' END) typ2,
MONTH(txnLG.DateEntryStart) _DATE,     
(CASE WHEN DATEDIFF(HOUR,txnLG.DateEntryStart,txnLG.DateEntryEnd) > 3 THEN 'MISS SLA' ELSE 'SLA' END) _TYP 
FROM TxnLG txnLG 
WHERE txnLG.ObjectiveID in (1, 2)
AND txnLG.TxnStatus = 6 
--and convert(varchar(8), CreateDatetime,112) between '' and ''
AND txnLG.DateEntryStart is not null 
AND txnLG.DateEntryEnd is not null                                                 
AND  (
SELECT CodeFu FROM Fu_Request WHERE TXNID=txnLG.TxnID) is null 
OR 
txnLG.TxnID in (SELECT TxnID FROM Fu_Request WHERE TXNID=txnLG.TxnID and CodeFu in ('FU1', 'FU2', 'FU3')
)
) X  GROUP BY X.typ1,X.typ2,X._DATE,x._TYP
UNION
SELECT typ1,typ2,_DATE,_TYP,count(txnId) _VAL FROM (
SELECT 
txnLG.TxnID,
'fu' as typ1, 
(CASE WHEN (SELECT COUNT(TXNID) FROM LGWorkFlow WHERE TXNID = txnLG.TxnID AND LGTeam IN('LG Form')) = 0 THEN 'Non-Standard Form' ELSE 'Standard Form' END) typ2,
MONTH(txnLG.DateEntryStart) _DATE,     
(CASE WHEN DATEDIFF(HOUR,txnLG.DateEntryStart,txnLG.DateEntryEnd) > 3 THEN 'MISS SLA' ELSE 'SLA' END) _TYP 
FROM TxnLG txnLG 
WHERE txnLG.ObjectiveID in (1, 2)
AND txnLG.TxnStatus = 6 
--and convert(varchar(8), CreateDatetime,112) between '' and ''
AND txnLG.DateEntryStart is not null 
AND txnLG.DateEntryEnd is not null                                                 
AND txnLG.TxnID in (SELECT TxnID FROM Fu_Request WHERE TXNID=txnLG.TxnID)
) X  GROUP BY X.typ1,X.typ2,X._DATE,x._TYP







--SELECT * FROM LGWorkFlow WHERE  LGTeam IN('LG Form') AND TxnID='CPSLG190300009';
--SELECT * FROM LGWorkFlow WHERE  LGTeam IN('LG Form') AND TxnID='CPSLG190300018';


--select ObjectiveID,TxnStatus,DateEntryStart,DateEntryEnd,
--(CASE WHEN (SELECT COUNT(TXNID) FROM LGWorkFlow WHERE TXNID = txnLG.TxnID AND LGTeam IN('LG Form')) = 0 THEN 'Non-Standard Form' ELSE 'Standard Form' END)
--from TxnLG txnLG where TxnID='CPSLG190300018';
-- SELECT CodeFu FROM Fu_Request WHERE TXNID='CPSLG190300018'