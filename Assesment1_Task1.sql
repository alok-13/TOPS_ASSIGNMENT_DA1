-- 1) Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending
SELECT * FROM worker ORDER BY FIRST_NAME, DEPARTMENT desc; 

-- 2) Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
SELECT * FROM worker where FIRST_NAME = ('Vipul') OR FIRST_NAME = ('Satish'); 

-- 3) Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets
SELECT * FROM worker where FIRST_NAME LIKE ('_____h') ;

-- 4) Write an SQL query to print details of the Workers whose SALARY lies between 1.
SELECT * FROM worker where SALARY LIKE '1%';

-- 5) Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT *, count(JOINING_DATE) FROM worker
 GROUP BY JOINING_DATE HAVING count(*) > 1  ;

-- 6. Write an SQL query to show the top 6 records of a table.
SELECT * FROM worker LIMIT 6;

-- 7) Write an SQL query to fetch the departments that have less than five people in them.
SELECT Count(WORKER_ID), DEPARTMENT FROM worker 
group by DEPARTMENT HAVING Count(WORKER_ID) < 5;  

-- 8) Write an SQL query to show all departments along with the number of people in there.
SELECT Count(WORKER_ID), DEPARTMENT FROM worker group by DEPARTMENT;  

-- 9) Write an SQL query to print the name of employees having the highest salary in each department.
SELECT Max(SALARY), DEPARTMENT FROM worker group by DEPARTMENT Having Max(SALARY);  