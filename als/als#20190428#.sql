 SELECT 
    c.company_name,
    SUM(TO_DAYS(NOW()) - TO_DAYS(s.sample_invoice_date)) AS overDue,
    SUM(s.sample_invoice_amount) AS sumAmout
FROM
    job_sample s
        LEFT JOIN
    job_info j ON j.ID = s.job_id
        LEFT JOIN
    m_customer c ON c.ID = j.customer_id
WHERE
    s.sample_invoice IS NOT NULL
        AND s.sample_invoice <> ''
        AND s.sample_invoice_date IS NOT NULL
        AND s.sample_invoice_complete_date IS NULL
GROUP BY c.ID;                                                    