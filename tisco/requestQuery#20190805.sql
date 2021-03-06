--รบกวนขอ Query สำหรับ export ข้อมูลจาก Backweb DB ดังนี้
--1) Hiree Request No.
--2) วันที่ Submit Date
--3) แบบสินเชื่อ ( HP New Car, HP Used Car, LAAL)
--4) CMR code เจ้าของ เคสดังกล่าว
--5) สถานะบัตรประชาชนของลูกค้า

--โดยขอ query เฉพาะข้อมูลที่ สถานะบัตรประชาชนของลูกค้า เฉพาะ "สถานะไม่ปกติ"

SELECT 
TC.caseNo as 'Hiree Request No.',
TC.createdDateTime as 'Submit Date',
TC.loan_type as 'แบบสินเชื่อ',
TC.user_code as 'CMR code',C.ID_StatusDesc
FROM TC_Case TC
left join TC_Customer C ON TC.loan_id = C.loan_id WHERE C.ID_StatusDesc LIKE 'สถานะไม่ปกติ%';
