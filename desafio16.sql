USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN 
    DECLARE qts_jobs INT;
    SELECT COUNT(*) 
    FROM hr.employees AS e
    INNER JOIN  hr.job_history AS jh 
    ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
    WHERE e.EMAIL = email INTO @qtd_jobs;
    RETURN @qtd_jobs;    
END $$ 
