--Part 1

--No idea what I'm supposed to do here, just list the columns and datatypes? I've also 
--included the simple SQL query, just in case.

SELECT 
TABLE_CATALOG,
TABLE_SCHEMA,
TABLE_NAME, 
COLUMN_NAME, 
DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'jobs'

--Returns:
--int Id
--longtext Name
--int EmployerId



--Part 2
select Name from employers
where location="St. Louis City";



--Part 3

