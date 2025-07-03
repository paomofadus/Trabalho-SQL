SELECT department, FLOOR(SUM(salary)/9 + (SUM(salary)/9) * 0.15) AS salario_medio,
FLOOR(MAX(salary) + MAX(salary) * 0.15) AS maior_salario,
FLOOR(MAX(salary) + MAX(salary) * 0.15) - FLOOR(SUM(salary)/9 + (SUM(salary)/9) * 0.15) AS diferença_absoluta
FROM employees
WHERE last_name LIKE '%n_%'
GROUP BY department
ORDER BY FLOOR(SUM(salary)/9) DESC
LIMIT 1
;
