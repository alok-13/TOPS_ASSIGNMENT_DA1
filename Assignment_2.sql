-- 1) Display the maximum, minimum and average salary and commission earned.

SELECT MAX(salary), MIN(salary), AVG(salary) FROM emp ;

SELECT department_id, SUM(salary) FROM emp GROUP BY (department_id)
 ORDER BY (SUM(salary)) desc;   
 
SELECT department_id, Count(department_id) FROM emp GROUP BY (department_id)
 ORDER BY (Count(department_id)) desc;  