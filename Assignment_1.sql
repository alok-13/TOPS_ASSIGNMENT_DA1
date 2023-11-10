ALTER TABLE employees RENAME EMP;

ALTER TABLE departments RENAME DEPT;
-- 1) Display all information in the tables EMP and DEPT.
Select * From emp INNER JOIN dept On emp.department_id = dept.department_id;
-- 2) Display only the hire date and employee name for each employee.
SELECT hire_date, first_name FROM EMP;

-- 3) Display the ename concatenated with the job ID, separated by a comma and space, and name the column Employee and Title
SELECT CONCAT(first_name, ", ",  job_id) AS Employe_Title FROM EMP; 

-- 4) Display the hire date, name and department number for all clerks.
SELECT hire_date, first_name, department_id FROM emp 
WHERE job_id = 'ST_CLERK' OR job_id = 'Stock C
lerk' OR job_id ='PU_CLERK' ;

-- 5) Create a query to display all the data from the EMP table. Separate each column by a comma. Name the column THE OUTPUT
SELECT CONCAT_WS(',', employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) 
AS THE_OUTPUT FROM EMP;

-- 6) Display the names and salaries of all empldeptoyees with a salary greater than 2000.
SELECT first_name, salary FROM EMP where salary>2000;

-- 7) Display the names and dates of employees with the column headers "Name" and "StartDate"
SELECT first_name AS Name, hire_date AS Start_Date FROM EMP;
-- 8) Display the names and hire dates of all employees in the order they were hired.
SELECT first_name, hire_date FROM EMP ORDER BY hire_date;
-- 9) Display the names and salaries of all employees in reverse salary order.
SELECT first_name, salary FROM EMP ORDER BY salary desc;

-- 10) Display 'ename" and "deptno" who are all earned commission and display salary in reverse order.
SELECT first_name, department_id, commission_pct FROM emp WHERE commission_pct > 0  ORDER BY commission_pct desc;
-- 11) Display the last name and job title of all employees who do not have a manager
SELECT last_name, job_id FROM EMP where manager_id IS NULL;

-- 12) Display the last name, job, and salary for all employees whose job is sales representative 
-- or stock clerk and whose salary is not equal to $2,500, $3,500, or $5,000

SELECT last_name, job_id, salary FROM EMP
where NOT salary= '2500' OR salary= '3500' OR salary= '5000';
 
 
