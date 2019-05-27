SELECT dept.name,trn.description,trn.amount,trn.payment_date -- ,trn.transaction_type,sum(trn.amount) 
FROM tb_transaction trn left join tb_m_department dept on trn.department_id = dept.id
where trn.payment_date between '2019-04-20' and '2019-05-20' 
and trn.transaction_type='I'
-- and trn.department_id=6
and trn.ref_stock_id=1
-- group by dept.id,trn.transaction_type