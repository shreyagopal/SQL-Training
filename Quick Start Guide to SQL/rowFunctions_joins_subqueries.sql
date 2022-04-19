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







