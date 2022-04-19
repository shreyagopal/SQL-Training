-----------------------------SINGLE ROW FUNCTIONS-----------------------------
--------Number Functions (ROUND, TRUNC and MOD)-------------
--DUAL is a one row and one column table that is present by default in all Oracle databases.

--ROUND number function (It rounds the value to a specified decimal place.)
SELECT ROUND(92.427,2) FROM DUAL; --92.43
--TRUNC  number function (It truncates the value to a specified decimal place.)
SELECT TRUNC(92.427,2) FROM DUAL; --92.42
--MOD  number function (It returns the remainder when dividing two numbers.)
SELECT MOD(2100,500) FROM DUAL; --100

--------Character Functions (ROUND, TRUNC and MOD)-------------
--Case manipulation functions are LOWER, UPPER and INITCAP. 
--Character manipulation functions are CONCAT, SUBSTRING, LENGTH, INSTRING LPAD/RPAD, TRIM and Replace. 

--Case Manipulation functions
SELECT LOWER('HELLO World') FROM DUAL;
SELECT UPPER('HELLO World') FROM DUAL;
SELECT INITCAP('HELLO World') FROM DUAL;

--Character manipulation functions
--CONCAT function concatenates the first character value with the second one; same as CONCAT operator ||.
SELECT CONCAT('Hello','World') FROM DUAL;
--SUBSTRING returns a specific number of characters from a character value starting from a specific start point. 
SELECT SUBSTR('HelloWorld',6,10) FROM DUAL; --World
--LENGTH counts and returns the number of characters in the expression.  
SELECT LENGTH('HelloWorld') FROM DUAL; --10
--INSTRING returns the position of a named expression.
SELECT INSTR('HelloWorld','e') FROM DUAL; --2
--RPAD pads a specific character value to the right of an expression to a total width of n character positions. LPAD pads it to the left side. 
SELECT LPAD(10000,8,'*') FROM DUAL; --***10000
SELECT RPAD(10000,8,'*') FROM DUAL; --***10000
--TRIM function trims the beginning or trailing characters or both from a character value. 
SELECT TRIM('d' FROM 'HelloWorld') FROM DUAL; --HelloWorl
--REPLACE searches for a specific character expression and replaces it with another expression. 
SELECT REPLACE('HelloWorld','Hello','Bye') FROM DUAL; --ByeWorld

-----------------------Date Functions----------------------------

-- SYSDATE function returns the current date.
SELECT SYSDATE FROM DUAL; --19-APR-22
--MONTHS_BETWEEN, ADD_MONTHS, NEXT_DAY, LAST_DAY, ROUND, TRUNC
SELECT MONTHS_BETWEEN('03-DEC-2010','01-MAR-2010') FROM DUAL; --9.064
SELECT ADD_MONTHS('05-JUN-2021',4) FROM DUAL; --05-OCT-21
SELECT NEXT_DAY('03-JUL-2021','TUESDAY') FROM DUAL; --06-JUL-21
SELECT LAST_DAY('12–FEB-2021') FROM DUAL; --28-FEB-21
SELECT ROUND(SYSDATE,'MONTH') FROM DUAL; --01-MAY-22
SELECT TRUNC(SYSDATE,'MONTH') FROM DUAL; --01-APR-22

----------------Data Type Conversion Functions----------------

--Implicit and Explicit ( TO_CHAR, TO_NUMBER, and TO_DATE) conversions
SELECT name,TO_CHAR(hiredate,'yyyy') "Year Of Joining" FROM emp_tab;
-- NVL function converts a null value to an actual value.  Both expr1 and expr2 must be the same data type.
SELECT NVL(name,'Unavailable') FROM emp_tab;

---------------Conditional Expressions (CASE and DECODE)------------------

--CASE function
SELECT name, job, salary,
CASE job WHEN 'MANAGER' THEN 1.20*salary
	      WHEN 'ANALYST' THEN 1.15*salary
	      WHEN 'CLERK' THEN 1.10*salary
	      ELSE salary 
	      END "Revised Salary"
FROM emp_tab;
--DECODE Function
SELECT name, job, salary,
DECODE(job,'MANAGER',1.20*salary,
	       'ANALYST',1.15*salary,
	       'CLERK',1.10*salary,
	       salary) "Revised Salary"
FROM emp_tab;

------------------------------------GROUP FUNCTIONS------------------------------------

-- A group function works with a group of rows from a table and returns a value for each group. The GROUP BY clause comes after the WHERE condition 
--and before the ORDER BY clause.  SUM, AVG, COUNT, MAX and MIN, VARIANCE and STDDEV
SELECT SUM(salary) FROM emp_tab;
SELECT AVG(NVL(salary,0)) FROM emp_tab;
SELECT MIN(salary), MAX(salary) FROM emp_tab WHERE deptno=30;
SELECT COUNT(*) FROM emp_tab;
SELECT COUNT(name) FROM emp_tab WHERE manager=7003;
SELECT COUNT(DISTINCT(empno)) FROM emp_tab;
SELECT MIN(hiredate), MAX(hiredate) FROM emp_tab;
SELECT MIN(name), MAX(name) FROM emp_tab;
--to find the employee with the highest salary under every manager
SELECT manager, MAX(salary) FROM emp_tab GROUP BY manager ORDER BY MAX(salary) DESC;
