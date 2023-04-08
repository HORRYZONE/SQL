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

SELECT doc_name||area AS "Doctor" 
FROM doctor;