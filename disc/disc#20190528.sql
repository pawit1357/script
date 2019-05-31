SELECT 
    (CASE
        WHEN type = 'D' THEN 1
        WHEN type = 'I' THEN 2
        WHEN type = 'S' THEN 3
        WHEN type = 'C' THEN 4
    END) AS SEQ,
    type,
    (CASE 
		WHEN type = 'D' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'M' AND D <> '' AND D <= M)
        WHEN type = 'I' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'M' AND I <> '' AND I <= M)
        WHEN type = 'S' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'M' AND S <> '' AND S <= M)
        WHEN type = 'C' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'M' AND C <> '' AND C <= M) 
	END) AS M,
    (CASE
        WHEN type = 'D' THEN 28 - (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'L' AND D <> '' AND D <= L)
        WHEN type = 'I' THEN 28 - (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'L' AND I <> '' AND I <= L)
        WHEN type = 'S' THEN 28 - (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'L' AND S <> '' AND S <= L)
        WHEN type = 'C' THEN 28 - (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'L' AND C <> '' AND C <= L)
    END) AS L,
    (CASE 
		WHEN type = 'D' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'O' AND D <> '' AND D <= A)
        WHEN type = 'I' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'O' AND I <> '' AND I <= A)
        WHEN type = 'S' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'O' AND S <> '' AND S <= A)
        WHEN type = 'C' THEN (SELECT IFNULL(MAX(seq), 0) FROM m_data WHERE type = 'O' AND C <> '' AND C <= A)
    END) AS A
FROM
    questionnaire_result
WHERE
    person_phone_num = '0954562333'
        AND type <> '#'
ORDER BY SEQ
    
