-- # หาว่าแต่ละ stock เหลือเท่าไหร่
select id,name,quantity,sellCnt,(quantity-sellCnt) as remainCnt from(
select _tbL.id,_tbL.name,_tbL.quantity,
ifnull((
select count(tbTran.id) icnt
from tb_transaction tbTran
left join tb_stock tbS on tbTran.ref_stock_id = tbS.id
left join tb_lots tbL on tbS.lot_id = tbL.id
where tbTran.ref_stock_id <> 1 and tbL.id = _tbL.id
group by tbTran.transaction_type,tbS.lot_id),0) sellCnt
from tb_lots _tbL 
) x;

-- # xxxx
select DATE_FORMAT(tbTrn.payment_date,'%y-%m-%d') pmtd,tbDept.name,tbTrn.transaction_type,sum(tbTrn.amount) amt
from tb_transaction tbTrn
left join tb_m_department tbDept on tbTrn.department_id = tbDept.id
where tbTrn.ref_stock_id = 1 and tbTrn.transaction_type='E'
group by DATE_FORMAT(tbTrn.payment_date,'%y-%m-%d'),tbDept.id,tbTrn.transaction_type
order by tbTrn.payment_date asc;




