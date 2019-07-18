SELECT 
    *
FROM
    (SELECT 
        InvoiceDate,
            Terms,
            Number,
            PurchaseOrder,
            Customer,
            TotalSubAmount,
            (TotalSubAmount * 0.07) AS Vat7,
            (TotalSubAmount + (TotalSubAmount * 0.07)) AS GrandTotalAmountVat,
            (TotalSubAmount * 0.03) AS WithholdingTax3,
            ((TotalSubAmount + (TotalSubAmount * 0.07)) - (TotalSubAmount * 0.03)) AS TotaAmount,
            DeptBOI,
            CustomerTypeHDD
    FROM
        (SELECT 
        s.sample_invoice AS Number,
            s.sample_invoice_date AS InvoiceDate,
            '' AS Terms,
            s.sample_po AS PurchaseOrder,
            c.company_name AS Customer,
            IFNULL(s.sample_invoice_amount, 0) AS TotalSubAmount,
            (CASE
                WHEN RIGHT(s.job_number, 1) = 'B' THEN 'BOI'
                ELSE 'NBOI'
            END) AS DeptBOI,
            (CASE
                WHEN SUBSTRING_INDEX(s.job_number, '-', 1) = 'ELN' THEN 'non-HDD'
                WHEN SUBSTRING_INDEX(s.job_number, '-', 1) = 'ELP' THEN 'HDD'
                WHEN SUBSTRING_INDEX(s.job_number, '-', 1) = 'GRP' THEN 'HDD'
                WHEN SUBSTRING_INDEX(s.job_number, '-', 1) = 'ELWA' THEN 'HDD'
                ELSE ''
            END) AS CustomerTypeHDD
    FROM
        job_sample s
    LEFT JOIN job_info i ON s.job_id = i.id
    LEFT JOIN m_customer c ON i.customer_id = c.id
    LEFT JOIN m_type_of_test tot ON tot.ID = s.type_of_test_id
    WHERE
        s.sample_po IS NOT NULL) x
    GROUP BY x.InvoiceDate , x.Terms , x.PurchaseOrder , x.Customer , x.TotalSubAmount , x.DeptBOI
    ORDER BY SUBSTRING(x.Number, 3) ASC) X
WHERE
    1 = 1 AND YEAR(X.InvoiceDate) = '2019'