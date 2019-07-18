-- 1950
-- คำนวนเงินเดือน
select d.name,t.transaction_type,sum(t.amount) 
from tb_transaction t
left join tb_m_department d on t.department_id = d.id
where t.payment_date between '2019-06-03' and '2019-06-30' and t.ref_stock_id=1
group by t.department_id,t.transaction_type;



select *
from tb_transaction 
where payment_date between '2019-06-03' and '2019-06-30' and ref_stock_id=1 
-- and department_id=6
order by department_id,transaction_type

-- เดือน 06 เป็นต้นไป คิดตั้งแต่วันที่  3

