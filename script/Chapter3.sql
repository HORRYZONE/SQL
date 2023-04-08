-- to view all from the table
SELECT * FROM doctor; 

-- to view spesific row from the table
SELECT doc_name, area, annual_bonus 
FROM doctor; 

-- using operator to see value if data + smtg else
SELECT doc_name, (annual_bonus + 500) 
FROM doctor;

-- multiply first then add
SELECT doc_name, annual_bonus, 
10*annual_bonus+500 
FROM doctor;

-- add first then multiply answer
SELECT doc_name, annual_bonus, 
10*(annual_bonus+500) 
FROM doctor;

--column alias
 SELECT doc_name AS name, annual_bonus 
FROM doctor;

--display doc_name as Name on run
SELECT doc_name AS "Name", annual_bonus AS 
"Bonus" 
FROM doctor;

SELECT doc_name, annual_bonus AS "Bonus Upgrade" 
FROM doctor;

--concantenational operator ( || ) use to bind 2 variable in 1 space
SELECT doc_name||area AS "Doctor" 
FROM doctor;

--Each character string is output once for each row return
SELECT doc_name || ' is from ' || area AS "DOCTOR" 
FROM doctor;

--return unique values for the specified column. how many type is there
SELECT DISTINCT area 
FROM doctor; 

--Limiting the Rows Selected
SELECT *| { [DISTINCT] column | expression 
[alias],...} 
FROM table 
WHERE condition(s);

-- find doctor who charge per appoint is >= 40
SELECT doc_name 
FROM doctor 
WHERE chgperappt >= 40;

-- find doc which annual between 2 values
SELECT doc_name, annual_bonus
FROM doctor 
WHERE annual_bonus BETWEEN 2000 AND 
4000;

--find doc_name that start with 'J'
SELECT * 
FROM doctor 
WHERE doc_name LIKE 'J%';

--use concan operator & AS cmd & LIKE cmd
SELECT lname || ', ' || fname AS "FULL NAME", phone 
FROM customer 
WHERE phone LIKE '549-67__' ;

-- use NOT operator to find condition needed
SELECT doc_id, doc_name, annual_bonus 
FROM doctor 
WHERE annual_bonus IS NOT NULL; 