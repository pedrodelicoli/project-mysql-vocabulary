SELECT CONCAT(e.FIRST_NAME,' ',e.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(STR_TO_DATE(jh.START_DATE, '%Y-%m-%d'), '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(STR_TO_DATE(jh.END_DATE, '%Y-%m-%d'), '%d/%m/%Y') AS 'Data de rescisão',
ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE))/365, 2) AS 'Anos trabalhados'
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY CONCAT(e.FIRST_NAME,' ',e.LAST_NAME), ROUND((DATEDIFF(jh.END_DATE, jh.START_DATE))/365, 2);
