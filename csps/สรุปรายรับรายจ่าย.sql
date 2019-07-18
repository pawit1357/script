-- รายได้คาร์แคร์
SELECT 'รายรับคาร์แคร์' _type,sum(amount) _amt FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=7 and transaction_type='I' and description='คาร์แค์'
group by month(payment_date)
union
SELECT 'เงินเดือนเหลียง' _type,sum(amount) _amt FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=7  and description like '%หลียง%'
group by month(payment_date)
union
SELECT 'เงินเดือนเหมัด' _type,sum(amount) _amt FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=7  and description like '%หมัด%'
group by month(payment_date)
union
SELECT 'เงินเดือนเแพร' _type,sum(amount) _amt FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=7  and description like '%แพร%'
group by month(payment_date)
union
SELECT 'เงินเดือนเชท' _type,sum(amount) _amt FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=7  and description like '%เชท%'
group by month(payment_date)
union
select 'รายจ่ายอื่นๆ' _type,sum(amount) _amt  from tb_transaction where payment_date between '2019-06-03' and '2019-06-30' and department_id=7 and transaction_type='E' and id not in(
SELECT id FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' and department_id=7  and description like '%หลียง%' or description like '%แพร%' or description like '%หมัด%' or description like '%เชท%'
) group by month(payment_date)
--  ร้านเนต & csps
union
SELECT (case when transaction_type='E' then 'csps รายจ่าย' else 'csps รายรับ' end) _type,sum(amount) _amt
FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=6 and ref_stock_id=1
group by month(payment_date),transaction_type
union
SELECT (case when transaction_type='E' then 'csps รายจ่าย' else 'csps รายรับพระ' end) _type,sum(amount) _amt
FROM tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' 
and department_id=6 and ref_stock_id <>1
group by month(payment_date),transaction_type

