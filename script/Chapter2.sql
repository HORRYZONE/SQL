
--Create TABLE with PT_ID as Primary key
-- and DOC_ID from DOCTOR table as foreign key
CREATE TABLE PATIENT 
(PT_ID NUMBER(3), 
PT_LNAME VARCHAR2(15), 
PT_FNAME VARCHAR2(15), 
PTDOB DATE, 
DOC_ID NUMBER(3), 
NEXTAPPTDATE DATE, 
LASTAPPTDATE DATE, 
CONSTRAINT PATIENT_PT_ID_PK PRIMARY KEY (PT_ID), 
CONSTRAINT PATIENT_DOC_ID_FK FOREIGN KEY(DOC_ID) 
REFERENCES DOCTOR);

desc PATIENT

-- add CONSTRAINT after table is created
ALTER TABLE nurse 
ADD CONSTRAINT nurse_s_id_fk FOREIGN KEY (s_id) 
REFERENCES doctor (doc_id), 

--DROP CONSTRAINT 
ALTER TABLE major 
DROP PRIMARY KEY CASCADE; 

ALTER TABLE employee 
DROP CONSTRAINT employee_deptid_fk; 

--TRUNCATE a table (same like DELETE but it is no reversable)
TRUNCATE TABLE employee;

--view CONSTRAINT information
-- C = Not Null/check
-- U = unique
-- P = for Primary key
-- R = foreign key
SELECT constraint_name, constraint_type, table_name
FROM user_constraints
WHERE table_name IN ('DOCTOR', 'PATIENT'); 