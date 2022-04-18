----------------------------FETCH DATA FROM TABLE-----------------------------
-------Basic Select Statements-------

--To retrieve all the column and all the rows from table
SELECT * FROM emp_tab;

--To fetch only two specific columns from the table
SELECT empno,name FROM emp_tab;

-------Operators-------
-----2 types: arithmetic operators and character string operators.
--Character string operators are used with strings, like concat symbol, which 
--is two pipelines, single quotes and double quotes.

-- Change the column heading by giving an alias name
SELECT empno AS ID, name AS "Employee Name" FROM emp_tab;

--Use literals (they need to be enclosed in single quotes) 
SELECT name||' belongs to '|| deptno||' department' AS "Employee Department" 
FROM emp_tab;

--To eliminate duplicate rows
SELECT DISTINCT deptno FROM emp_tab;

-------Data Types-------
-----VARCHAR2(size), CHAR(size), NUMBER(p,s), DATE, LONG, CLOB, RAW, BLOB, 
--BFILE, ROWID

---------------------------------FILTERING DATA---------------------------------
-------Comparision Conditions-------

--To fetch employee data whose salaries are greater than 3000
SELECT empno,name,salary FROM emp_tab WHERE salary>3000;

--To fetch employee data whose salaries range from 2000 to 5000
SELECT * FROM emp_tab WHERE salary BETWEEN 2000 AND 5000;

--To fetch employee data who belongs to department number 30 & 70
SELECT * FROM emp_tab WHERE deptno IN (30,70);

--To fetch employee data whose name second letter is 'I'
SELECT * FROM emp_tab WHERE name LIKE '_I%';

--To fetch employee data whose department number is NULL
SELECT * FROM emp_tab WHERE deptno IS NULL;

-------Logical Conditions (AND, OR, NOT)-------




-------











